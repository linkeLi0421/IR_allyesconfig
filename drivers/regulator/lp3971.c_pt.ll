; ModuleID = '/llk/IR_all_yes/drivers/regulator/lp3971.c_pt.bc'
source_filename = "../drivers/regulator/lp3971.c"
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
%struct.lp3971 = type { ptr, %struct.mutex, ptr }
%struct.lp3971_platform_data = type { i32, ptr }
%struct.lp3971_regulator_subdev = type { i32, ptr }

@__initcall__kmod_lp3971__291_455_lp3971_i2c_driver_init6 = internal global ptr @lp3971_i2c_driver_init, section ".initcall6.init", align 4
@lp3971_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @lp3971_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp3971_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lp3971_i2c_driver_exit = internal global ptr @lp3971_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"lp3971.file=drivers/regulator/lp3971\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"lp3971.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [58 x i8] c"lp3971.author=Marek Szyprowski <m.szyprowski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [38 x i8] c"lp3971.description=LP3971 PMIC driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LP3971\00", [25 x i8] zeroinitializer }, align 32
@lp3971_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp3971\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lp3971_i2c_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp3971\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp3971_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/lp3971.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No platform init data supplied\0A\00", [32 x i8] zeroinitializer }, align 32
@lp3971_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lp3971->io_lock\00", [47 x i8] zeroinitializer }, align 32
@lp3971_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to detect device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp3971_i2c_probe._entry_ptr = internal global ptr @lp3971_i2c_probe._entry, section ".printk_index", align 4
@regulators = internal constant { [8 x %struct.regulator_desc], [480 x i8] } { [8 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @lp3971_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo123_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @lp3971_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo123_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 16, i32 0, ptr @lp3971_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo123_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @lp3971_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo45_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @lp3971_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo45_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 26, i32 0, ptr @lp3971_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @buck_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 26, i32 0, ptr @lp3971_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @buck_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 26, i32 0, ptr @lp3971_dcdc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @buck_voltage_map, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [480 x i8] zeroinitializer }, align 32
@setup_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 395, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regulator init failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_regulators\00", [47 x i8] zeroinitializer }, align 32
@setup_regulators._entry_ptr = internal global ptr @setup_regulators._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@lp3971_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp3971_ldo_set_voltage_sel, ptr null, ptr @lp3971_ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp3971_ldo_enable, ptr @lp3971_ldo_disable, ptr @lp3971_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo123_voltage_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@ldo45_voltage_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1800000, i32 1900000, i32 2500000, i32 2800000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@lp3971_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp3971_dcdc_set_voltage_sel, ptr null, ptr @lp3971_dcdc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lp3971_dcdc_enable, ptr @lp3971_dcdc_disable, ptr @lp3971_dcdc_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck_voltage_map = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 0, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1800000, i32 1900000, i32 2500000, i32 2800000, i32 3000000, i32 3300000], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC3\00", [26 x i8] zeroinitializer }, align 32
@lp3971_set_bits.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp3971_set_bits\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reg write 0x%02x -> 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@lp3971_reg_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lp3971_reg_read\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg read 0x%02x -> 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@buck_base_addr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 35, i32 41, i32 50], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"lp3971_i2c_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 447, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 449, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"lp3971_i2c_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 441, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 411, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 422, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 429, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 242, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 394, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 244, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"lp3971_ldo_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 158, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"ldo123_voltage_map\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 98, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 253, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 262, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 271, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"ldo45_voltage_map\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 93, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 280, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 289, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"lp3971_dcdc_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 232, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"buck_voltage_map\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 62, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 298, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 307, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 367, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 348, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"buck_base_addr\00", align 1
@___asan_gen_.126 = private constant [30 x i8] c"../drivers/regulator/lp3971.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 53, i32 18 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lp3971_i2c_driver_exit, ptr @__initcall__kmod_lp3971__291_455_lp3971_i2c_driver_init6, ptr @lp3971_i2c_driver_exit, ptr @lp3971_i2c_probe._entry, ptr @lp3971_i2c_probe._entry_ptr, ptr @setup_regulators._entry, ptr @setup_regulators._entry_ptr, ptr @lp3971_i2c_driver, ptr @.str, ptr @lp3971_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lp3971_i2c_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @regulators, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @lp3971_ldo_ops, ptr @ldo123_voltage_map, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ldo45_voltage_map, ptr @.str.15, ptr @.str.16, ptr @lp3971_dcdc_ops, ptr @buck_voltage_map, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @buck_base_addr], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3971_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3971_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3971_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3971_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3971_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo123_voltage_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo45_voltage_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3971_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_voltage_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_base_addr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp3971_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp3971_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lp3971_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_i2c_probe(ptr noundef %i2c) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_i2c_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_i2c_probe, %cleanup)) #6
          to label %if.then6 [label %cleanup], !srcloc !83

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_i2c_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %i2c13 = getelementptr inbounds %struct.lp3971, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %i2c13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c13, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %io_lock = getelementptr inbounds %struct.lp3971, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @lp3971_i2c_probe.__key) #6
  %call.i58 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp1.i = icmp slt i32 %call.i58, 0
  br i1 %cmp1.i, label %if.end12.do.end30_crit_edge, label %land.lhs.true

if.end12.do.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

land.lhs.true:                                    ; preds = %if.end12
  %4 = and i32 %call.i58, 207
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp21.not = icmp eq i32 %4, 64
  br i1 %cmp21.not, label %if.end32, label %land.lhs.true.do.end30_crit_edge

land.lhs.true.do.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end30:                                         ; preds = %land.lhs.true.do.end30_crit_edge, %if.end12.do.end30_crit_edge
  %ret.0.ph = phi i32 [ %call.i58, %if.end12.do.end30_crit_edge ], [ -19, %land.lhs.true.do.end30_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.i = icmp sgt i32 %6, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.body.lr.ph.i:                                 ; preds = %if.end32
  %regulators.i = getelementptr inbounds %struct.lp3971_platform_data, ptr %1, i32 0, i32 1
  %init_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %7 = call ptr @memset(ptr %init_data.i, i32 0, i32 20)
  %8 = ptrtoint ptr %regulators.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulators.i, align 4
  %arrayidx.i = getelementptr %struct.lp3971_regulator_subdev, ptr %9, i32 %i.022.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %config.i, align 4
  %initdata.i = getelementptr %struct.lp3971_regulator_subdev, ptr %9, i32 %i.022.i, i32 1
  %13 = ptrtoint ptr %initdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %initdata.i, align 4
  %15 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %init_data.i, align 4
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [8 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %18
  %call.i60 = call ptr @devm_regulator_register(ptr noundef %11, ptr noundef %arrayidx3.i, ptr noundef nonnull %config.i) #6
  %cmp.i.i = icmp ugt ptr %call.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %setup_regulators.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %cmp.i = icmp slt i32 %inc.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end37_crit_edge

for.inc.i.if.end37_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

setup_regulators.exit:                            ; preds = %for.body.i
  %21 = ptrtoint ptr %call.i60 to i32
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9, i32 noundef %21) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  %cmp34 = icmp slt ptr %call.i60, null
  br i1 %cmp34, label %setup_regulators.exit.cleanup_crit_edge, label %setup_regulators.exit.if.end37_crit_edge

setup_regulators.exit.if.end37_crit_edge:         ; preds = %setup_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

setup_regulators.exit.cleanup_crit_edge:          ; preds = %setup_regulators.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %setup_regulators.exit.if.end37_crit_edge, %for.inc.i.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %setup_regulators.exit.cleanup_crit_edge, %do.end30, %if.end8.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.0.ph, %do.end30 ], [ 0, %if.end37 ], [ -19, %if.then6 ], [ -12, %if.end8.cleanup_crit_edge ], [ %21, %setup_regulators.exit.cleanup_crit_edge ], [ -19, %do.body ]
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
define internal i32 @lp3971_ldo_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %0 = lshr i32 %call1, 1
  %1 = trunc i32 %0 to i8
  %conv = add i8 %1, 57
  %and = shl i32 %call1, 2
  %shl = and i32 %and, 4
  %shl2 = shl nuw nsw i32 15, %shl
  %conv3 = trunc i32 %shl2 to i16
  %shl6 = shl i32 %selector, %shl
  %conv7 = trunc i32 %shl6 to i16
  %call8 = tail call fastcc i32 @lp3971_set_bits(ptr noundef %call, i8 noundef zeroext %conv, i16 noundef zeroext %conv3, i16 noundef zeroext %conv7)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_ldo_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %0 = lshr i32 %call1, 1
  %1 = trunc i32 %0 to i8
  %conv = add i8 %1, 57
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_ldo_get_voltage_sel, %lp3971_reg_read.exit)) #6
          to label %if.then.i [label %lp3971_reg_read.exit], !srcloc !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv.i = zext i8 %conv to i32
  %7 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef %conv.i, i32 noundef %7) #6
  br label %lp3971_reg_read.exit

lp3971_reg_read.exit:                             ; preds = %if.then.i, %entry
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv4 = and i32 %4, 255
  %and = shl i32 %call1, 2
  %shl = and i32 %and, 4
  %shr5 = lshr i32 %conv4, %shl
  %conv7 = and i32 %shr5, 15
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_ldo_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %add = add i32 %call1, 1
  %shl = shl nuw i32 1, %add
  %conv = trunc i32 %shl to i16
  %call2 = tail call fastcc i32 @lp3971_set_bits(ptr noundef %call, i8 noundef zeroext 18, i16 noundef zeroext %conv, i16 noundef zeroext %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_ldo_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %entry.lp3971_set_bits.exit_crit_edge, label %if.then.i

entry.lp3971_set_bits.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3971_set_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %call1, 1
  %shl = shl nuw i32 1, %add
  %conv = trunc i32 %shl to i8
  %conv.i.i = trunc i32 %call.i.i to i8
  %neg.i = xor i8 %conv, -1
  %and.i = and i8 %conv.i.i, %neg.i
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 18, i8 noundef zeroext %and.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_ldo_disable, %lp3971_set_bits.exit)) #6
          to label %if.then11.i [label %lp3971_set_bits.exit], !srcloc !83

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef 18, i32 noundef 0) #6
  br label %lp3971_set_bits.exit

lp3971_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i, %entry.lp3971_set_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.then11.i ], [ %call.i.i, %entry.lp3971_set_bits.exit_crit_edge ], [ %call.i27.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_ldo_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 18) #6
  %2 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_ldo_is_enabled, %lp3971_reg_read.exit)) #6
          to label %if.then.i [label %lp3971_reg_read.exit], !srcloc !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %5 = and i32 %2, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef 18, i32 noundef %5) #6
  br label %lp3971_reg_read.exit

lp3971_reg_read.exit:                             ; preds = %if.then.i, %entry
  %add = add i32 %call1, 1
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv4 = and i32 %2, 255
  %6 = lshr i32 %conv4, %add
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lp3971_set_bits(ptr noundef %lp3971, i8 noundef zeroext %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.lp3971, ptr %lp3971, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #6
  %i2c = getelementptr inbounds %struct.lp3971, ptr %lp3971, i32 0, i32 2
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_set_bits, %if.end15)) #6
          to label %if.then11 [label %if.end15], !srcloc !83

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lp3971 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp3971, align 4
  %conv12 = zext i8 %reg to i32
  %6 = and i16 %val, 255
  %and14 = zext i16 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %conv12, i32 noundef %and14) #6
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
define internal i32 @lp3971_dcdc_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
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
  %call3 = tail call fastcc i32 @lp3971_set_bits(ptr noundef %call, i8 noundef zeroext %conv, i16 noundef zeroext 63, i16 noundef zeroext %conv2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool4.not = icmp eq i32 %sub, 0
  %shl = select i1 %tobool4.not, i32 0, i32 4
  %and = and i32 %sub, -2
  %or = or i32 %shl, %and
  %shl6 = shl i32 3, %or
  %conv7 = trunc i32 %shl6 to i16
  %shl16 = shl nuw i32 1, %or
  %conv17 = trunc i32 %shl16 to i16
  %call18 = tail call fastcc i32 @lp3971_set_bits(ptr noundef %call, i8 noundef zeroext 32, i16 noundef zeroext %conv7, i16 noundef zeroext %conv17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end21.lp3971_set_bits.exit_crit_edge, label %if.then.i

if.end21.lp3971_set_bits.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3971_set_bits.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = trunc i32 %call.i.i to i16
  %neg.i = xor i16 %conv7, -1
  %and.i = and i16 %conv.i.i, %neg.i
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %conv.i26.i = trunc i16 %and.i to i8
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 32, i8 noundef zeroext %conv.i26.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_dcdc_set_voltage_sel, %lp3971_set_bits.exit)) #6
          to label %if.then11.i [label %lp3971_set_bits.exit], !srcloc !83

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef 32, i32 noundef 0) #6
  br label %lp3971_set_bits.exit

lp3971_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i, %if.end21.lp3971_set_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.then11.i ], [ %call.i.i, %if.end21.lp3971_set_bits.exit_crit_edge ], [ %call.i27.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lp3971_set_bits.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %lp3971_set_bits.exit ], [ %call3, %entry.cleanup_crit_edge ], [ %call18, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_dcdc_get_voltage_sel(ptr noundef %dev) #2 align 64 {
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
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #6
  %4 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_dcdc_get_voltage_sel, %lp3971_reg_read.exit)) #6
          to label %if.then.i [label %lp3971_reg_read.exit], !srcloc !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %conv.i = and i32 %1, 255
  %7 = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef %conv.i, i32 noundef %7) #6
  br label %lp3971_reg_read.exit

lp3971_reg_read.exit:                             ; preds = %if.then.i, %entry
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %8 = and i32 %4, 63
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_dcdc_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %sub = shl i32 %call1, 1
  %mul = add i32 %sub, -10
  %shl = shl nuw i32 1, %mul
  %conv = trunc i32 %shl to i16
  %call2 = tail call fastcc i32 @lp3971_set_bits(ptr noundef %call, i8 noundef zeroext 16, i16 noundef zeroext %conv, i16 noundef zeroext %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_dcdc_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %entry.lp3971_set_bits.exit_crit_edge, label %if.then.i

entry.lp3971_set_bits.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lp3971_set_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = shl i32 %call1, 1
  %mul = add i32 %sub, -10
  %shl = shl nuw i32 1, %mul
  %conv = trunc i32 %shl to i8
  %conv.i.i = trunc i32 %call.i.i to i8
  %neg.i = xor i8 %conv, -1
  %and.i = and i8 %conv.i.i, %neg.i
  %2 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c.i, align 4
  %call.i27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %and.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_set_bits.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_dcdc_disable, %lp3971_set_bits.exit)) #6
          to label %if.then11.i [label %lp3971_set_bits.exit], !srcloc !83

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_set_bits.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef 16, i32 noundef 0) #6
  br label %lp3971_set_bits.exit

lp3971_set_bits.exit:                             ; preds = %if.then11.i, %if.then.i, %entry.lp3971_set_bits.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i27.i, %if.then11.i ], [ %call.i.i, %entry.lp3971_set_bits.exit_crit_edge ], [ %call.i27.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3971_dcdc_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %io_lock.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #6
  %i2c.i = getelementptr inbounds %struct.lp3971, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 16) #6
  %2 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lp3971_reg_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lp3971_dcdc_is_enabled, %lp3971_reg_read.exit)) #6
          to label %if.then.i [label %lp3971_reg_read.exit], !srcloc !83

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %5 = and i32 %2, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lp3971_reg_read.__UNIQUE_ID_ddebug288, ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef 16, i32 noundef %5) #6
  br label %lp3971_reg_read.exit

lp3971_reg_read.exit:                             ; preds = %if.then.i, %entry
  %sub = shl i32 %call1, 1
  %mul = add i32 %sub, -10
  tail call void @mutex_unlock(ptr noundef %io_lock.i) #6
  %conv4 = and i32 %2, 255
  %6 = lshr i32 %conv4, %mul
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_lp3971__291_455_lp3971_i2c_driver_init6, !1, !"__initcall__kmod_lp3971__291_455_lp3971_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/lp3971.c", i32 455, i32 1}
!2 = !{ptr @__exitcall_lp3971_i2c_driver_exit, !1, !"__exitcall_lp3971_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file292, !4, !"__UNIQUE_ID_file292", i1 false, i1 false}
!4 = !{!"../drivers/regulator/lp3971.c", i32 457, i32 1}
!5 = !{ptr @__UNIQUE_ID_license293, !4, !"__UNIQUE_ID_license293", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author294, !7, !"__UNIQUE_ID_author294", i1 false, i1 false}
!7 = !{!"../drivers/regulator/lp3971.c", i32 458, i32 1}
!8 = !{ptr @__UNIQUE_ID_description295, !9, !"__UNIQUE_ID_description295", i1 false, i1 false}
!9 = !{!"../drivers/regulator/lp3971.c", i32 459, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/lp3971.c", i32 449, i32 11}
!12 = !{ptr @lp3971_i2c_driver, !13, !"lp3971_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/lp3971.c", i32 447, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/lp3971.c", i32 411, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lp3971_i2c_probe.__UNIQUE_ID_ddebug290, !15, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!20 = !{ptr @lp3971_i2c_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/regulator/lp3971.c", i32 422, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/lp3971.c", i32 429, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lp3971_i2c_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @lp3971_i2c_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/lp3971.c", i32 394, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @setup_regulators._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @setup_regulators._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/lp3971.c", i32 244, i32 11}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/lp3971.c", i32 253, i32 11}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/lp3971.c", i32 262, i32 11}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/lp3971.c", i32 271, i32 11}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/lp3971.c", i32 280, i32 11}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/lp3971.c", i32 289, i32 11}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/lp3971.c", i32 298, i32 11}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/lp3971.c", i32 307, i32 11}
!50 = !{ptr @regulators, !51, !"regulators", i1 false, i1 false}
!51 = !{!"../drivers/regulator/lp3971.c", i32 242, i32 36}
!52 = !{ptr @lp3971_ldo_ops, !53, !"lp3971_ldo_ops", i1 false, i1 false}
!53 = !{!"../drivers/regulator/lp3971.c", i32 158, i32 35}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/lp3971.c", i32 367, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @lp3971_set_bits.__UNIQUE_ID_ddebug289, !55, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/lp3971.c", i32 348, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lp3971_reg_read.__UNIQUE_ID_ddebug288, !59, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!62 = !{ptr @ldo123_voltage_map, !63, !"ldo123_voltage_map", i1 false, i1 false}
!63 = !{!"../drivers/regulator/lp3971.c", i32 98, i32 27}
!64 = !{ptr @ldo45_voltage_map, !65, !"ldo45_voltage_map", i1 false, i1 false}
!65 = !{!"../drivers/regulator/lp3971.c", i32 93, i32 27}
!66 = !{ptr @lp3971_dcdc_ops, !67, !"lp3971_dcdc_ops", i1 false, i1 false}
!67 = !{!"../drivers/regulator/lp3971.c", i32 232, i32 35}
!68 = !{ptr @buck_base_addr, !69, !"buck_base_addr", i1 false, i1 false}
!69 = !{!"../drivers/regulator/lp3971.c", i32 53, i32 18}
!70 = !{ptr @buck_voltage_map, !71, !"buck_voltage_map", i1 false, i1 false}
!71 = !{!"../drivers/regulator/lp3971.c", i32 62, i32 27}
!72 = !{ptr @lp3971_i2c_id, !73, !"lp3971_i2c_id", i1 false, i1 false}
!73 = !{!"../drivers/regulator/lp3971.c", i32 441, i32 35}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148156720, i64 2148156725, i64 2148156738, i64 2148156782, i64 2148156816, i64 2148156837}
