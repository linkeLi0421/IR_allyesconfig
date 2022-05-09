; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps6524x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps6524x-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.supply_info = type { ptr, i32, ptr, i32, ptr, %struct.field, %struct.field, %struct.field }
%struct.field = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tps6524x = type { ptr, ptr, %struct.mutex, [7 x %struct.regulator_desc] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_tps6524x_regulator__292_634_pmic_driver_init6 = internal global ptr @pmic_driver_init, section ".initcall6.init", align 4
@pmic_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @pmic_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pmic_driver_exit = internal global ptr @pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [52 x i8] c"tps6524x_regulator.description=TPS6524X PMIC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [44 x i8] c"tps6524x_regulator.author=Cyril Chemparathy\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [61 x i8] c"tps6524x_regulator.file=drivers/regulator/tps6524x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [31 x i8] c"tps6524x_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [38 x i8] c"tps6524x_regulator.alias=spi:tps6524x\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps6524x\00", [23 x i8] zeroinitializer }, align 32
@supply_info = internal constant { [7 x %struct.supply_info], [120 x i8] } { [7 x %struct.supply_info] [%struct.supply_info { ptr @.str.7, i32 32, ptr @dcdc1_voltages, i32 1, ptr @fixed_2400000_ilimsel, %struct.field { i32 3, i32 0, i32 1 }, %struct.field { i32 2, i32 0, i32 31 }, %struct.field zeroinitializer }, %struct.supply_info { ptr @.str.8, i32 32, ptr @dcdc2_voltages, i32 1, ptr @fixed_1200000_ilimsel, %struct.field { i32 3, i32 2, i32 1 }, %struct.field { i32 2, i32 5, i32 31 }, %struct.field zeroinitializer }, %struct.supply_info { ptr @.str.9, i32 25, ptr @dcdc3_voltages, i32 1, ptr @fixed_1200000_ilimsel, %struct.field { i32 3, i32 4, i32 1 }, %struct.field { i32 2, i32 10, i32 31 }, %struct.field zeroinitializer }, %struct.supply_info { ptr @.str.10, i32 16, ptr @ldo1_voltages, i32 2, ptr @ldo_ilimsel, %struct.field { i32 1, i32 0, i32 1 }, %struct.field { i32 0, i32 0, i32 15 }, %struct.field { i32 0, i32 8, i32 1 } }, %struct.supply_info { ptr @.str.11, i32 16, ptr @ldo2_voltages, i32 2, ptr @ldo_ilimsel, %struct.field { i32 1, i32 1, i32 1 }, %struct.field { i32 0, i32 4, i32 15 }, %struct.field { i32 0, i32 12, i32 1 } }, %struct.supply_info { ptr @.str.12, i32 1, ptr @fixed_5000000_voltage, i32 4, ptr @usb_ilimsel, %struct.field { i32 1, i32 3, i32 1 }, %struct.field zeroinitializer, %struct.field { i32 4, i32 0, i32 3 } }, %struct.supply_info { ptr @.str.13, i32 1, ptr @fixed_5000000_voltage, i32 1, ptr @fixed_400000_ilimsel, %struct.field { i32 1, i32 2, i32 1 }, %struct.field zeroinitializer, %struct.field zeroinitializer }], [120 x i8] zeroinitializer }, align 32
@pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not find regulator platform data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pmic_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps6524x-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pmic_probe._entry_ptr = internal global ptr @pmic_probe._entry, section ".printk_index", align 4
@pmic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hw->lock\00", [22 x i8] zeroinitializer }, align 32
@regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @set_voltage_sel, ptr null, ptr @get_voltage_sel, ptr @set_current_limit, ptr @get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enable_supply, ptr @disable_supply, ptr @is_supply_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@dcdc1_voltages = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1525000, i32 1550000, i32 1575000], [32 x i8] zeroinitializer }, align 32
@fixed_2400000_ilimsel = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2400000], [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@dcdc2_voltages = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000, i32 2050000, i32 2100000, i32 2150000, i32 2200000, i32 2250000, i32 2300000, i32 2350000, i32 2400000, i32 2450000, i32 2500000, i32 2550000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2950000], [32 x i8] zeroinitializer }, align 32
@fixed_1200000_ilimsel = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1200000], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@dcdc3_voltages = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 2400000, i32 2450000, i32 2500000, i32 2550000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2950000, i32 3000000, i32 3050000, i32 3100000, i32 3150000, i32 3200000, i32 3250000, i32 3300000, i32 3350000, i32 3400000, i32 3450000, i32 3500000, i32 3550000, i32 3600000], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@ldo1_voltages = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 4300000, i32 4350000, i32 4400000, i32 4450000, i32 4500000, i32 4550000, i32 4600000, i32 4650000, i32 4700000, i32 4750000, i32 4800000, i32 4850000, i32 4900000, i32 4950000, i32 5000000, i32 5050000], [32 x i8] zeroinitializer }, align 32
@ldo_ilimsel = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 400000, i32 1500000], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@ldo2_voltages = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 3150000, i32 3200000, i32 3250000, i32 3300000, i32 3350000, i32 3400000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@fixed_5000000_voltage = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5000000], [28 x i8] zeroinitializer }, align 32
@usb_ilimsel = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 200000, i32 400000, i32 800000, i32 1000000], [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCD\00", [28 x i8] zeroinitializer }, align 32
@fixed_400000_ilimsel = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 400000], [28 x i8] zeroinitializer }, align 32
@rmw_protect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set write enable\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rmw_protect\00", [20 x i8] zeroinitializer }, align 32
@rmw_protect._entry_ptr = internal global ptr @rmw_protect._entry, section ".printk_index", align 4
@rmw_protect._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to rmw register %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rmw_protect._entry_ptr.18 = internal global ptr @rmw_protect._entry.16, section ".printk_index", align 4
@rmw_protect._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 271, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to clear write enable\0A\00", [34 x i8] zeroinitializer }, align 32
@rmw_protect._entry_ptr.21 = internal global ptr @rmw_protect._entry.19, section ".printk_index", align 4
@__write_reg.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps6524x_regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__write_reg\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wrote reg %d, data %x, status %x\0A\00", [62 x i8] zeroinitializer }, align 32
@__read_reg.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__read_reg\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read reg %d, data %x, status %x\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"pmic_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 627, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 630, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"supply_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 374, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 591, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 604, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"regulator_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 567, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 376, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"dcdc1_voltages\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 303, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"fixed_2400000_ilimsel\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 359, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 387, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"dcdc2_voltages\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 314, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"fixed_1200000_ilimsel\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 363, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 398, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"dcdc3_voltages\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 325, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 409, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"ldo1_voltages\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 333, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"ldo_ilimsel\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 351, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 422, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"ldo2_voltages\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 340, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 435, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"fixed_5000000_voltage\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 347, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"usb_ilimsel\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 355, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 446, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"fixed_400000_ilimsel\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 367, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 261, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 267, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 271, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 225, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [42 x i8] c"../drivers/regulator/tps6524x-regulator.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 172, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_pmic_driver_exit, ptr @__initcall__kmod_tps6524x_regulator__292_634_pmic_driver_init6, ptr @pmic_driver_exit, ptr @pmic_probe._entry, ptr @pmic_probe._entry_ptr, ptr @rmw_protect._entry, ptr @rmw_protect._entry.16, ptr @rmw_protect._entry.19, ptr @rmw_protect._entry_ptr, ptr @rmw_protect._entry_ptr.18, ptr @rmw_protect._entry_ptr.21, ptr @pmic_driver, ptr @.str, ptr @supply_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pmic_probe.__key, ptr @.str.6, ptr @regulator_ops, ptr @.str.7, ptr @dcdc1_voltages, ptr @fixed_2400000_ilimsel, ptr @.str.8, ptr @dcdc2_voltages, ptr @fixed_1200000_ilimsel, ptr @.str.9, ptr @dcdc3_voltages, ptr @.str.10, ptr @ldo1_voltages, ptr @ldo_ilimsel, ptr @.str.11, ptr @ldo2_voltages, ptr @.str.12, ptr @fixed_5000000_voltage, ptr @usb_ilimsel, ptr @.str.13, ptr @fixed_400000_ilimsel, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supply_info to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc1_voltages to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_2400000_ilimsel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc2_voltages to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_1200000_ilimsel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc3_voltages to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_voltages to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_ilimsel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_voltages to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_5000000_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ilimsel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_400000_ilimsel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmw_protect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmw_protect._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmw_protect._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @pmic_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @pmic_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_probe(ptr noundef %spi) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1808, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = getelementptr inbounds i8, ptr %call.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 1800)
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %call.i, align 4
  %spi8 = getelementptr inbounds %struct.tps6524x, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %spi8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %spi8, align 4
  %lock = getelementptr inbounds %struct.tps6524x, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @pmic_probe.__key) #5
  %init_data27 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %i.081 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc.for.body_crit_edge ]
  %init_data.080 = phi ptr [ %3, %if.end6 ], [ %incdec.ptr35, %for.inc.for.body_crit_edge ]
  %info.079 = phi ptr [ @supply_info, %if.end6 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %info.079 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.079, align 4
  %arrayidx = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx, align 4
  %id = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081, i32 6
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %i.081, ptr %id, align 4
  %n_voltages = getelementptr inbounds %struct.supply_info, ptr %info.079, i32 0, i32 1
  %13 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_voltages, align 4
  %n_voltages17 = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081, i32 8
  %15 = ptrtoint ptr %n_voltages17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %n_voltages17, align 4
  %voltages = getelementptr inbounds %struct.supply_info, ptr %info.079, i32 0, i32 2
  %16 = ptrtoint ptr %voltages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %voltages, align 4
  %volt_table = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081, i32 23
  %18 = ptrtoint ptr %volt_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %volt_table, align 4
  %ops = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081, i32 10
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @regulator_ops, ptr %ops, align 4
  %type = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081, i32 12
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %owner = getelementptr %struct.tps6524x, ptr %call.i, i32 0, i32 3, i32 %i.081, i32 13
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %owner, align 4
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spi, ptr %config, align 4
  %23 = ptrtoint ptr %init_data27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %init_data.080, ptr %init_data27, align 4
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data, align 4
  %call30 = call ptr @devm_regulator_register(ptr noundef %spi, ptr noundef %arrayidx, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %for.inc

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %call30 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.081, 1
  %incdec.ptr = getelementptr %struct.supply_info, ptr %info.079, i32 1
  %incdec.ptr35 = getelementptr %struct.regulator_init_data, ptr %init_data.080, i32 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then32, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %25, %if.then32 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %voltage = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 6
  %call2 = tail call fastcc i32 @write_field(ptr noundef %call, ptr noundef %voltage, i32 noundef %selector)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %voltage = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 6
  %4 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %voltage, align 4
  %lock.i.i = getelementptr inbounds %struct.tps6524x, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #5
  %call.i.i = tail call fastcc i32 @__read_reg(ptr noundef %call, i32 noundef %5) #5
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %read_field.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

read_field.exit:                                  ; preds = %if.end
  %shift.i = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 6, i32 1
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift.i, align 4
  %shr5.i = lshr i32 %call.i.i, %7
  %mask.i = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 6, i32 2
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr5.i, %9
  %n_voltages6 = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 1
  %10 = ptrtoint ptr %n_voltages6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_voltages6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %11)
  %cmp7.not = icmp slt i32 %and.i, %11
  br i1 %cmp7.not, label %read_field.exit.cleanup_crit_edge, label %do.end, !prof !98

read_field.exit.cleanup_crit_edge:                ; preds = %read_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %read_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 485, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %read_field.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ -5, %do.end ], [ %and.i, %read_field.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %0 = and i32 %call1, 536870911
  %1 = add nsw i32 %0, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %1)
  %cmp = icmp ult i32 %1, -3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_ilimsels = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 3
  %2 = ptrtoint ptr %n_ilimsels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ilimsels, align 4
  %ilimsels = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %i.0.in = phi i32 [ %3, %if.end ], [ %i.0, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp3 = icmp sgt i32 %i.0, -1
  br i1 %cmp3, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = ptrtoint ptr %ilimsels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ilimsels, align 4
  %arrayidx4 = getelementptr i32, ptr %5, i32 %i.0
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %min_uA)
  %cmp5.not = icmp ult i32 %7, %min_uA
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %max_uA)
  %cmp8.not = icmp ugt i32 %7, %max_uA
  %or.cond = or i1 %cmp5.not, %cmp8.not
  br i1 %or.cond, label %for.body.for.cond_crit_edge, label %if.then9

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %ilimsel = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 7
  %call10 = tail call fastcc i32 @write_field(ptr noundef %call, ptr noundef %ilimsel, i32 noundef %i.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %n_ilimsels = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 3
  %0 = and i32 %call1, 536870911
  %1 = add nsw i32 %0, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %1)
  %cmp = icmp ult i32 %1, -3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ilimsels = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 4
  %2 = ptrtoint ptr %ilimsels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ilimsels, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ilimsel = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 7
  %6 = ptrtoint ptr %ilimsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ilimsel, align 4
  %lock.i.i = getelementptr inbounds %struct.tps6524x, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #5
  %call.i.i = tail call fastcc i32 @__read_reg(ptr noundef %call, i32 noundef %7) #5
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %read_field.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

read_field.exit:                                  ; preds = %if.end
  %shift.i = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 7, i32 1
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i, align 4
  %shr5.i = lshr i32 %call.i.i, %9
  %mask.i = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 7, i32 2
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr5.i, %11
  %12 = ptrtoint ptr %n_ilimsels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ilimsels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %13)
  %cmp8.not = icmp slt i32 %and.i, %13
  br i1 %cmp8.not, label %if.end31, label %do.end, !prof !98

do.end:                                           ; preds = %read_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 528, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end31:                                         ; preds = %read_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ilimsels32 = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 4
  %14 = ptrtoint ptr %ilimsels32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ilimsels32, align 4
  %arrayidx33 = getelementptr i32, ptr %15, i32 %and.i
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -5, %do.end ], [ %17, %if.end31 ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_supply(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %enable = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 5
  %call2 = tail call fastcc i32 @write_field(ptr noundef %call, ptr noundef %enable, i32 noundef 1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disable_supply(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %enable = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 5
  %call2 = tail call fastcc i32 @write_field(ptr noundef %call, ptr noundef %enable, i32 noundef 0)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is_supply_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %enable = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 5
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable, align 4
  %lock.i.i = getelementptr inbounds %struct.tps6524x, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #5
  %call.i.i = tail call fastcc i32 @__read_reg(ptr noundef %call, i32 noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.read_field.exit_crit_edge, label %if.end.i

entry.read_field.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_field.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 5, i32 1
  %2 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shift.i, align 4
  %shr5.i = lshr i32 %call.i.i, %3
  %mask.i = getelementptr [7 x %struct.supply_info], ptr @supply_info, i32 0, i32 %call1, i32 5, i32 2
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr5.i, %5
  br label %read_field.exit

read_field.exit:                                  ; preds = %if.end.i, %entry.read_field.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.end.i ], [ %call.i.i, %entry.read_field.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_field(ptr noundef %hw, ptr nocapture noundef readonly %field, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.field, ptr %field, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %neg = xor i32 %1, -1
  %and = and i32 %neg, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field, align 4
  %shift = getelementptr inbounds %struct.field, ptr %field, i32 0, i32 1
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %shl = shl i32 %1, %5
  %shl3 = shl i32 %val, %5
  %lock.i = getelementptr inbounds %struct.tps6524x, ptr %hw, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @__write_reg(ptr noundef %hw, i32 noundef 13, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.error.sink.split.i_crit_edge

if.end.error.sink.split.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error.sink.split.i

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call fastcc i32 @__read_reg(ptr noundef %hw, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.do.end6.i_crit_edge, label %__rmw_reg.exit.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

__rmw_reg.exit.i:                                 ; preds = %if.end.i
  %neg.i.i = xor i32 %shl, -1
  %and.i.i = and i32 %call.i.i, %neg.i.i
  %or.i.i = or i32 %and.i.i, %shl3
  %call1.i.i = tail call fastcc i32 @__write_reg(ptr noundef %hw, i32 noundef %3, i32 noundef %or.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool2.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool2.not.i, label %__rmw_reg.exit.i.if.end8.i_crit_edge, label %__rmw_reg.exit.i.do.end6.i_crit_edge

__rmw_reg.exit.i.do.end6.i_crit_edge:             ; preds = %__rmw_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

__rmw_reg.exit.i.if.end8.i_crit_edge:             ; preds = %__rmw_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

do.end6.i:                                        ; preds = %__rmw_reg.exit.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, i32 noundef %3) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end6.i, %__rmw_reg.exit.i.if.end8.i_crit_edge
  %call9.i = tail call fastcc i32 @__write_reg(ptr noundef %hw, i32 noundef 13, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.rmw_protect.exit_crit_edge, label %if.end8.i.error.sink.split.i_crit_edge

if.end8.i.error.sink.split.i_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error.sink.split.i

if.end8.i.rmw_protect.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rmw_protect.exit

error.sink.split.i:                               ; preds = %if.end8.i.error.sink.split.i_crit_edge, %if.end.error.sink.split.i_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.14, %if.end.error.sink.split.i_crit_edge ], [ @.str.20, %if.end8.i.error.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %call.i, %if.end.error.sink.split.i_crit_edge ], [ %call9.i, %if.end8.i.error.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull %.str.20.sink.i) #8
  br label %rmw_protect.exit

rmw_protect.exit:                                 ; preds = %error.sink.split.i, %if.end8.i.rmw_protect.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end8.i.rmw_protect.exit_crit_edge ], [ %ret.0.ph.i, %error.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %return

return:                                           ; preds = %rmw_protect.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %rmw_protect.exit ], [ -75, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__write_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca i16, align 2
  %out = alloca i16, align 2
  %status = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %t = alloca [3 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #5
  %reg.tr = trunc i32 %reg to i16
  %0 = shl i16 %reg.tr, 6
  %conv = or i16 %0, 32
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %cmd, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out) #5
  %conv1 = trunc i32 %val to i16
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv1, ptr %out, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #5
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !99
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t) #5
  %4 = getelementptr inbounds i8, ptr %m, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %10 = getelementptr inbounds i8, ptr %t, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 284)
  %12 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %14 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %bits_per_word, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %arrayidx5 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %out, ptr %arrayidx5, align 4
  %len8 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len8, align 4
  %bits_per_word10 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %bits_per_word10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %bits_per_word10, align 1
  %transfer_list.i48 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i48, ptr noundef %23, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i50, label %if.end.i.i.i52, label %spi_message_add_tail.exit.spi_message_add_tail.exit53_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit53_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit53

if.end.i.i.i52:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i48, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %m, ptr %transfer_list.i48, align 4
  %prev3.i.i.i51 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i51, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i48, ptr %23, align 4
  br label %spi_message_add_tail.exit53

spi_message_add_tail.exit53:                      ; preds = %if.end.i.i.i52, %spi_message_add_tail.exit.spi_message_add_tail.exit53_crit_edge
  %rx_buf = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %status, ptr %rx_buf, align 4
  %len14 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %len14, align 4
  %bits_per_word16 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 8
  %30 = ptrtoint ptr %bits_per_word16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %bits_per_word16, align 1
  %transfer_list.i54 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i56 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i54, ptr noundef %32, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i56, label %if.end.i.i.i58, label %spi_message_add_tail.exit53.spi_message_add_tail.exit59_crit_edge

spi_message_add_tail.exit53.spi_message_add_tail.exit59_crit_edge: ; preds = %spi_message_add_tail.exit53
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit59

if.end.i.i.i58:                                   ; preds = %spi_message_add_tail.exit53
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i54, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %m, ptr %transfer_list.i54, align 4
  %prev3.i.i.i57 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i57, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i54, ptr %32, align 4
  br label %spi_message_add_tail.exit59

spi_message_add_tail.exit59:                      ; preds = %if.end.i.i.i58, %spi_message_add_tail.exit53.spi_message_add_tail.exit59_crit_edge
  %spi = getelementptr inbounds %struct.tps6524x, ptr %hw, i32 0, i32 1
  %37 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %m) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %spi_message_add_tail.exit59.cleanup_crit_edge, label %do.body

spi_message_add_tail.exit59.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %spi_message_add_tail.exit59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__write_reg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__write_reg, %do.end)) #5
          to label %if.then23 [label %do.end], !srcloc !100

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %41 = ptrtoint ptr %out to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %out, align 2
  %conv24 = zext i16 %42 to i32
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status, align 1
  %conv25 = zext i8 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__write_reg.__UNIQUE_ID_ddebug291, ptr noundef %40, ptr noundef nonnull @.str.24, i32 noundef %reg, i32 noundef %conv24, i32 noundef %conv25) #5
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %status, align 1
  %conv27 = zext i8 %46 to i32
  %47 = and i32 %conv27, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %47)
  %.not = icmp eq i32 %47, 12
  br i1 %.not, label %if.end33, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %and35 = and i32 %conv27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %call. = select i1 %tobool36.not, i32 %call, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end.cleanup_crit_edge, %spi_message_add_tail.exit59.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %spi_message_add_tail.exit59.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ %call., %if.end33 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__read_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca i16, align 2
  %in = alloca i16, align 2
  %status = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %t = alloca [3 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #5
  %reg.tr = trunc i32 %reg to i16
  %conv = shl i16 %reg.tr, 6
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %cmd, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %in) #5
  %1 = ptrtoint ptr %in to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %in, align 2, !annotation !99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !99
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t) #5
  %3 = getelementptr inbounds i8, ptr %m, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %9 = getelementptr inbounds i8, ptr %t, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 284)
  %11 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %13 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 12, ptr %bits_per_word, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %in, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len6, align 4
  %bits_per_word8 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %bits_per_word8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %bits_per_word8, align 1
  %transfer_list.i47 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i49 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i47, ptr noundef %22, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i49, label %if.end.i.i.i51, label %spi_message_add_tail.exit.spi_message_add_tail.exit52_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit52_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit52

if.end.i.i.i51:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i47, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i47, align 4
  %prev3.i.i.i50 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i50, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i47, ptr %22, align 4
  br label %spi_message_add_tail.exit52

spi_message_add_tail.exit52:                      ; preds = %if.end.i.i.i51, %spi_message_add_tail.exit.spi_message_add_tail.exit52_crit_edge
  %rx_buf11 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %rx_buf11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %status, ptr %rx_buf11, align 4
  %len13 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %len13, align 4
  %bits_per_word15 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 8
  %29 = ptrtoint ptr %bits_per_word15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %bits_per_word15, align 1
  %transfer_list.i53 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i55 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i53, ptr noundef %31, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i55, label %if.end.i.i.i57, label %spi_message_add_tail.exit52.spi_message_add_tail.exit58_crit_edge

spi_message_add_tail.exit52.spi_message_add_tail.exit58_crit_edge: ; preds = %spi_message_add_tail.exit52
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit58

if.end.i.i.i57:                                   ; preds = %spi_message_add_tail.exit52
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i53, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m, ptr %transfer_list.i53, align 4
  %prev3.i.i.i56 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i56, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i53, ptr %31, align 4
  br label %spi_message_add_tail.exit58

spi_message_add_tail.exit58:                      ; preds = %if.end.i.i.i57, %spi_message_add_tail.exit52.spi_message_add_tail.exit58_crit_edge
  %spi = getelementptr inbounds %struct.tps6524x, ptr %hw, i32 0, i32 1
  %36 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %m) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %spi_message_add_tail.exit58.cleanup_crit_edge, label %do.body

spi_message_add_tail.exit58.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit58
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %spi_message_add_tail.exit58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__read_reg.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__read_reg, %do.end)) #5
          to label %if.then22 [label %do.end], !srcloc !100

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %40 = ptrtoint ptr %in to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %in, align 2
  %conv23 = zext i16 %41 to i32
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %status, align 1
  %conv24 = zext i8 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__read_reg.__UNIQUE_ID_ddebug290, ptr noundef %39, ptr noundef nonnull @.str.26, i32 noundef %reg, i32 noundef %conv23, i32 noundef %conv24) #5
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %status, align 1
  %conv26 = zext i8 %45 to i32
  %46 = and i32 %conv26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %if.end32, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %and34 = and i32 %conv26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %in to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %in, align 2
  %conv38 = zext i16 %49 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge, %do.end.cleanup_crit_edge, %spi_message_add_tail.exit58.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv38, %if.end37 ], [ %call, %spi_message_add_tail.exit58.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %in) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_tps6524x_regulator__292_634_pmic_driver_init6, !1, !"__initcall__kmod_tps6524x_regulator__292_634_pmic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 634, i32 1}
!2 = !{ptr @__exitcall_pmic_driver_exit, !1, !"__exitcall_pmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 636, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 637, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 638, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias297, !11, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!11 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 639, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 630, i32 11}
!14 = !{ptr @pmic_driver, !15, !"pmic_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 627, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 591, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pmic_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pmic_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pmic_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 604, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 376, i32 12}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 387, i32 12}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 398, i32 12}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 409, i32 12}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 422, i32 12}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 435, i32 12}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 446, i32 12}
!41 = !{ptr @supply_info, !42, !"supply_info", i1 false, i1 false}
!42 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 374, i32 33}
!43 = !{ptr @dcdc1_voltages, !44, !"dcdc1_voltages", i1 false, i1 false}
!44 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 303, i32 27}
!45 = !{ptr @fixed_2400000_ilimsel, !46, !"fixed_2400000_ilimsel", i1 false, i1 false}
!46 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 359, i32 27}
!47 = !{ptr @dcdc2_voltages, !48, !"dcdc2_voltages", i1 false, i1 false}
!48 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 314, i32 27}
!49 = !{ptr @fixed_1200000_ilimsel, !50, !"fixed_1200000_ilimsel", i1 false, i1 false}
!50 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 363, i32 27}
!51 = !{ptr @dcdc3_voltages, !52, !"dcdc3_voltages", i1 false, i1 false}
!52 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 325, i32 27}
!53 = !{ptr @ldo1_voltages, !54, !"ldo1_voltages", i1 false, i1 false}
!54 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 333, i32 27}
!55 = !{ptr @ldo_ilimsel, !56, !"ldo_ilimsel", i1 false, i1 false}
!56 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 351, i32 27}
!57 = !{ptr @ldo2_voltages, !58, !"ldo2_voltages", i1 false, i1 false}
!58 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 340, i32 27}
!59 = !{ptr @fixed_5000000_voltage, !60, !"fixed_5000000_voltage", i1 false, i1 false}
!60 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 347, i32 27}
!61 = !{ptr @usb_ilimsel, !62, !"usb_ilimsel", i1 false, i1 false}
!62 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 355, i32 27}
!63 = !{ptr @fixed_400000_ilimsel, !64, !"fixed_400000_ilimsel", i1 false, i1 false}
!64 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 367, i32 27}
!65 = !{ptr @regulator_ops, !66, !"regulator_ops", i1 false, i1 false}
!66 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 567, i32 35}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 261, i32 3}
!69 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rmw_protect._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rmw_protect._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 267, i32 3}
!74 = !{ptr @rmw_protect._entry.16, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rmw_protect._entry_ptr.18, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 271, i32 3}
!78 = !{ptr @rmw_protect._entry.19, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rmw_protect._entry_ptr.21, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 225, i32 2}
!82 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__write_reg.__UNIQUE_ID_ddebug291, !81, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/tps6524x-regulator.c", i32 172, i32 2}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @__read_reg.__UNIQUE_ID_ddebug290, !86, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{!"auto-init"}
!100 = !{i64 2148704654, i64 2148704659, i64 2148704672, i64 2148704716, i64 2148704750, i64 2148704771}
