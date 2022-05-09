; ModuleID = '/llk/IR_all_yes/drivers/regulator/s5m8767.c_pt.bc'
source_filename = "../drivers/regulator/s5m8767.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sec_voltage_desc = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sec_platform_data = type { ptr, ptr, i32, [3 x i32], [3 x i32], [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.sec_regulator_data = type { i32, ptr, ptr, ptr }
%struct.sec_opmode_data = type { i32, i32 }
%struct.s5m8767_info = type { ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [3 x i32], [3 x i32], i32 }

@__initcall__kmod_s5m8767__288_1007_s5m8767_pmic_driver_init6 = internal global ptr @s5m8767_pmic_driver_init, section ".initcall6.init", align 4
@s5m8767_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5m8767_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s5m8767_pmic_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5m8767_pmic_driver_exit = internal global ptr @s5m8767_pmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"s5m8767.author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"s5m8767.description=Samsung S5M8767 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"s5m8767.file=drivers/regulator/s5m8767\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"s5m8767.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5m8767-pmic\00", [19 x i8] zeroinitializer }, align 32
@s5m8767_pmic_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s5m8767-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Platform data not supplied\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s5m8767_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/s5m8767.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr = internal global ptr @s5m8767_pmic_probe._entry, section ".printk_index", align 4
@s5m8767_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"S5M8767 GPIO DVS NOT VALID\0A\00", [36 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.8 = internal global ptr @s5m8767_pmic_probe._entry.6, section ".printk_index", align 4
@s5m8767_pmic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.10 = internal global ptr @s5m8767_pmic_probe._entry.9, section ".printk_index", align 4
@s5m8767_pmic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 725, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.12 = internal global ptr @s5m8767_pmic_probe._entry.11, section ".printk_index", align 4
@buck_voltage_val2 = internal constant { %struct.sec_voltage_desc, [20 x i8] } { %struct.sec_voltage_desc { i32 1600000, i32 600000, i32 6250 }, [20 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 804, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GPIO NOT VALID\0A\00", [16 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.15 = internal global ptr @s5m8767_pmic_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S5M8767 SET1\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S5M8767 SET2\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"S5M8767 SET3\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5M8767 DS2\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5M8767 DS3\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5M8767 DS4\00", [20 x i8] zeroinitializer }, align 32
@reg_voltage_map = internal constant { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr @ldo_voltage_val2, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val2, ptr @ldo_voltage_val2, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @ldo_voltage_val1, ptr @buck_voltage_val1, ptr @buck_voltage_val2, ptr @buck_voltage_val2, ptr @buck_voltage_val2, ptr @buck_voltage_val1, ptr @buck_voltage_val1, ptr @buck_voltage_val3, ptr @buck_voltage_val3, ptr @buck_voltage_val3], [44 x i8] zeroinitializer }, align 32
@regulators = internal global { [37 x %struct.regulator_desc], [2268 x i8] } { [37 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.76, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.77, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.78, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.79, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.80, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.81, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.82, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.83, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.84, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.85, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.86, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.87, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.88, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.89, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.90, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.91, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.92, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.93, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.94, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.95, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.96, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.97, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.98, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.99, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.100, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.101, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.102, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.103, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.104, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.105, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.106, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.107, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.108, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.109, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.110, ptr null, ptr null, i8 0, ptr null, ptr null, i32 34, i8 0, i32 0, i32 0, ptr @s5m8767_buck78_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.111, ptr null, ptr null, i8 0, ptr null, ptr null, i32 35, i8 0, i32 0, i32 0, ptr @s5m8767_buck78_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.112, ptr null, ptr null, i8 0, ptr null, ptr null, i32 36, i8 0, i32 0, i32 0, ptr @s5m8767_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [2268 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 946, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error reading registers\0A\00", [39 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.24 = internal global ptr @s5m8767_pmic_probe._entry.22, section ".printk_index", align 4
@s5m8767_pmic_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulator init failed for %d\0A\00", [34 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.27 = internal global ptr @s5m8767_pmic_probe._entry.25, section ".printk_index", align 4
@s5m8767_pmic_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 985, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable gpio control over %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@s5m8767_pmic_probe._entry_ptr.30 = internal global ptr @s5m8767_pmic_probe._entry.28, section ".printk_index", align 4
@s5m8767_pmic_dt_parse_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not find pmic sub-node\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5m8767_pmic_dt_parse_pdata\00", [36 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find regulators sub-node\0A\00", [60 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.36 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.34, section ".printk_index", align 4
@s5m8767_pmic_dt_parse_pdata._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.3, i32 570, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"don't know how to configure regulator %pOFn\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.40 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.37, section ".printk_index", align 4
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5m8767,pmic-ext-control\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5m8767\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"op_mode\00", [24 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.3, i32 599, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no op_mode property at %pOF\0A\00", [35 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.46 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5m8767,pmic-buck2-uses-gpio-dvs\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767,pmic-buck2-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.32, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck2 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.51 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5m8767,pmic-buck3-uses-gpio-dvs\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767,pmic-buck3-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.32, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck3 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.56 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s5m8767,pmic-buck4-uses-gpio-dvs\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767,pmic-buck4-dvs-voltage\00", [33 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.32, ptr @.str.3, i32 636, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buck4 voltages not specified\0A\00", [34 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.61 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s5m8767,pmic-buck-default-dvs-idx\00", [62 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.32, ptr @.str.3, i32 655, ptr @.str.65, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid value for default dvs index, use 0\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_pdata._entry_ptr.66 = internal global ptr @s5m8767_pmic_dt_parse_pdata._entry.63, section ".printk_index", align 4
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767,pmic-buck2-ramp-enable\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767,pmic-buck3-ramp-enable\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767,pmic-buck4-ramp-enable\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5m8767,pmic-buck-ramp-delay\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s5m8767,pmic-buck-dvs-gpios\00", [36 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_dvs_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid gpio[%d]: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5m8767_pmic_dt_parse_dvs_gpio\00", [33 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_dvs_gpio._entry_ptr = internal global ptr @s5m8767_pmic_dt_parse_dvs_gpio._entry, section ".printk_index", align 4
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5m8767,pmic-buck-ds-gpios\00", [37 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_ds_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.75, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"s5m8767_pmic_dt_parse_ds_gpio\00", [34 x i8] zeroinitializer }, align 32
@s5m8767_pmic_dt_parse_ds_gpio._entry_ptr = internal global ptr @s5m8767_pmic_dt_parse_ds_gpio._entry, section ".printk_index", align 4
@ldo_voltage_val2 = internal constant { %struct.sec_voltage_desc, [20 x i8] } { %struct.sec_voltage_desc { i32 2375000, i32 800000, i32 25000 }, [20 x i8] zeroinitializer }, align 32
@ldo_voltage_val1 = internal constant { %struct.sec_voltage_desc, [20 x i8] } { %struct.sec_voltage_desc { i32 3950000, i32 800000, i32 50000 }, [20 x i8] zeroinitializer }, align 32
@buck_voltage_val1 = internal constant { %struct.sec_voltage_desc, [20 x i8] } { %struct.sec_voltage_desc { i32 2225000, i32 650000, i32 6250 }, [20 x i8] zeroinitializer }, align 32
@buck_voltage_val3 = internal constant { %struct.sec_voltage_desc, [20 x i8] } { %struct.sec_voltage_desc { i32 3000000, i32 750000, i32 12500 }, [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@s5m8767_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @s5m8767_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5m8767_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO10\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO11\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO12\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO13\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO14\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO15\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO16\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO17\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO18\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO19\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO20\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO21\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO22\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO23\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO24\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO25\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO26\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO27\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO28\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK7\00", [26 x i8] zeroinitializer }, align 32
@s5m8767_buck78_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK8\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK9\00", [26 x i8] zeroinitializer }, align 32
@s5m8767_opmode_reg = internal constant { [37 x [4 x i32]], [144 x i8] } { [37 x [4 x i32]] [[4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 2, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1], [4 x i32] [i32 0, i32 3, i32 1, i32 1]], [144 x i8] zeroinitializer }, align 32
@s5m8767_regulator_config_ext_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 447, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ext-control for %pOFn: mismatched op_mode (%x), ignoring\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"s5m8767_regulator_config_ext_control\00", [59 x i8] zeroinitializer }, align 32
@s5m8767_regulator_config_ext_control._entry_ptr = internal global ptr @s5m8767_regulator_config_ext_control._entry, section ".printk_index", align 4
@s5m8767_regulator_config_ext_control._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.3, i32 454, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ext-control for %pOFn: GPIO not valid, ignoring\0A\00", [47 x i8] zeroinitializer }, align 32
@s5m8767_regulator_config_ext_control._entry_ptr.117 = internal global ptr @s5m8767_regulator_config_ext_control._entry.115, section ".printk_index", align 4
@switch.table.s5m8767_pmic_probe = internal constant { [37 x i32], [44 x i8] } { [37 x i32] [i32 92, i32 93, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 50, i32 52, i32 61, i32 70, i32 79, i32 84, i32 86, i32 88, i32 90], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 10, i64 25, i64 50, i64 100]
@__sancov_gen_cov_switch_values.118 = internal global [39 x i64] [i64 37, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36]
@__sancov_gen_cov_switch_values.119 = internal global [37 x i64] [i64 35, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 36]
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"s5m8767_pmic_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1000, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 1002, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"s5m8767_pmic_id\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 994, i32 40 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 699, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 711, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 718, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 725, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"buck_voltage_val2\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 54, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 804, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 809, i32 6 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 814, i32 6 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 819, i32 6 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 834, i32 57 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 838, i32 57 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 842, i32 57 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"reg_voltage_map\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 78, i32 39 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 384, i32 30 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 946, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 975, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 983, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 531, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 535, i32 48 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 537, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 568, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 577, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 579, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 595, i32 36 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 597, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 608, i32 31 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 612, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 614, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 619, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 623, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 625, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 630, i32 31 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 634, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 636, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 648, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 654, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 664, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 667, i32 31 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 670, i32 31 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 675, i32 37 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 492, i32 6 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 494, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 510, i32 6 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 512, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"ldo_voltage_val2\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 72, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"ldo_voltage_val1\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 66, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant [18 x i8] c"buck_voltage_val1\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 48, i32 38 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"buck_voltage_val3\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 60, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 385, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [12 x i8] c"s5m8767_ops\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 349, i32 35 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 386, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 387, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 388, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 389, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 390, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 391, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 392, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 393, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 394, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 395, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 396, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 397, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 398, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 399, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 400, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 401, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 402, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 403, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 404, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 405, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 406, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 407, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 408, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 409, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 410, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 411, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 412, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 413, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 414, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 415, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 416, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 417, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 418, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 419, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"s5m8767_buck78_ops\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 359, i32 35 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 420, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 421, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [19 x i8] c"s5m8767_opmode_reg\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 118, i32 27 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 445, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.478 = private constant [31 x i8] c"../drivers/regulator/s5m8767.c\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 452, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [32 x i8] c"switch.table.s5m8767_pmic_probe\00", align 1
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_s5m8767_pmic_driver_exit, ptr @__initcall__kmod_s5m8767__288_1007_s5m8767_pmic_driver_init6, ptr @s5m8767_pmic_driver_exit, ptr @s5m8767_pmic_dt_parse_ds_gpio._entry, ptr @s5m8767_pmic_dt_parse_ds_gpio._entry_ptr, ptr @s5m8767_pmic_dt_parse_dvs_gpio._entry, ptr @s5m8767_pmic_dt_parse_dvs_gpio._entry_ptr, ptr @s5m8767_pmic_dt_parse_pdata._entry, ptr @s5m8767_pmic_dt_parse_pdata._entry.34, ptr @s5m8767_pmic_dt_parse_pdata._entry.37, ptr @s5m8767_pmic_dt_parse_pdata._entry.44, ptr @s5m8767_pmic_dt_parse_pdata._entry.49, ptr @s5m8767_pmic_dt_parse_pdata._entry.54, ptr @s5m8767_pmic_dt_parse_pdata._entry.59, ptr @s5m8767_pmic_dt_parse_pdata._entry.63, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.36, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.40, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.46, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.51, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.56, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.61, ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.66, ptr @s5m8767_pmic_probe._entry, ptr @s5m8767_pmic_probe._entry.11, ptr @s5m8767_pmic_probe._entry.13, ptr @s5m8767_pmic_probe._entry.22, ptr @s5m8767_pmic_probe._entry.25, ptr @s5m8767_pmic_probe._entry.28, ptr @s5m8767_pmic_probe._entry.6, ptr @s5m8767_pmic_probe._entry.9, ptr @s5m8767_pmic_probe._entry_ptr, ptr @s5m8767_pmic_probe._entry_ptr.10, ptr @s5m8767_pmic_probe._entry_ptr.12, ptr @s5m8767_pmic_probe._entry_ptr.15, ptr @s5m8767_pmic_probe._entry_ptr.24, ptr @s5m8767_pmic_probe._entry_ptr.27, ptr @s5m8767_pmic_probe._entry_ptr.30, ptr @s5m8767_pmic_probe._entry_ptr.8, ptr @s5m8767_regulator_config_ext_control._entry, ptr @s5m8767_regulator_config_ext_control._entry.115, ptr @s5m8767_regulator_config_ext_control._entry_ptr, ptr @s5m8767_regulator_config_ext_control._entry_ptr.117, ptr @s5m8767_pmic_driver, ptr @.str, ptr @s5m8767_pmic_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @buck_voltage_val2, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @reg_voltage_map, ptr @regulators, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @ldo_voltage_val2, ptr @ldo_voltage_val1, ptr @buck_voltage_val1, ptr @buck_voltage_val3, ptr @.str.76, ptr @s5m8767_ops, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @s5m8767_buck78_ops, ptr @.str.111, ptr @.str.112, ptr @s5m8767_opmode_reg, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @switch.table.s5m8767_pmic_probe], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_voltage_val2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_voltage_map to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 9028, i32 11296, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_pdata._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_dvs_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_pmic_dt_parse_ds_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_voltage_val2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_voltage_val1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_voltage_val1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_voltage_val3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_buck78_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_opmode_reg to i32), i32 592, i32 736, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_regulator_config_ext_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_regulator_config_ext_control._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5m8767_pmic_probe to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m8767_pmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5m8767_pmic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5m8767_pmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5m8767_pmic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m8767_pmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %pdata1 = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %6 = call ptr @memset(ptr %config, i32 0, i32 24)
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  br label %cleanup423

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.end.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %10, ptr noundef nonnull @.str.33) #6
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.35) #9
  br label %cleanup423

if.end10.i:                                       ; preds = %if.end.i
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end10.i.of_get_child_count.exit.i_crit_edge, label %if.end10.i.for.body.i.i_crit_edge

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

if.end10.i.of_get_child_count.exit.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end10.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end10.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end10.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %num_regulators.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %num_regulators.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %num.0.lcssa.i.i, ptr %num_regulators.i, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i, i32 16) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %of_get_child_count.exit.i.if.then16.i_crit_edge, label %devm_kcalloc.exit.i, !prof !252

of_get_child_count.exit.i.if.then16.i_crit_edge:  ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %16 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #6
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit.i.if.then16.i_crit_edge, label %if.end17.i

devm_kcalloc.exit.i.if.then16.i_crit_edge:        ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

if.then16.i:                                      ; preds = %devm_kcalloc.exit.i.if.then16.i_crit_edge, %of_get_child_count.exit.i.if.then16.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  br label %cleanup423

if.end17.i:                                       ; preds = %devm_kcalloc.exit.i
  %17 = ptrtoint ptr %num_regulators.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_regulators.i, align 4
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 8) #6
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end17.i.if.then22.i_crit_edge, label %devm_kcalloc.exit274.i, !prof !252

if.end17.i.if.then22.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22.i

devm_kcalloc.exit274.i:                           ; preds = %if.end17.i
  %21 = extractvalue { i32, i1 } %19, 0
  %call5.i.i271.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %21, i32 noundef 3520) #6
  %tobool21.not.i = icmp eq ptr %call5.i.i271.i, null
  br i1 %tobool21.not.i, label %devm_kcalloc.exit274.i.if.then22.i_crit_edge, label %if.end23.i

devm_kcalloc.exit274.i.if.then22.i_crit_edge:     ; preds = %devm_kcalloc.exit274.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22.i

if.then22.i:                                      ; preds = %devm_kcalloc.exit274.i.if.then22.i_crit_edge, %if.end17.i.if.then22.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  br label %cleanup423

if.end23.i:                                       ; preds = %devm_kcalloc.exit274.i
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i.i, ptr %5, align 4
  %opmode.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %opmode.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i271.i, ptr %opmode.i, align 4
  %call24.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef null) #6
  %cmp.not308.i = icmp eq ptr %call24.i, null
  br i1 %cmp.not308.i, label %if.end23.i.for.end69.i_crit_edge, label %if.end23.i.for.cond25.preheader.i_crit_edge

if.end23.i.for.cond25.preheader.i_crit_edge:      ; preds = %if.end23.i
  br label %for.cond25.preheader.i

if.end23.i.for.end69.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69.i

for.cond25.preheader.i:                           ; preds = %for.inc67.i.for.cond25.preheader.i_crit_edge, %if.end23.i.for.cond25.preheader.i_crit_edge
  %rmode.0313.i = phi ptr [ %rmode.1.i, %for.inc67.i.for.cond25.preheader.i_crit_edge ], [ %call5.i.i271.i, %if.end23.i.for.cond25.preheader.i_crit_edge ]
  %rdata.0312.i = phi ptr [ %rdata.1.i, %for.inc67.i.for.cond25.preheader.i_crit_edge ], [ %call5.i.i.i, %if.end23.i.for.cond25.preheader.i_crit_edge ]
  %reg_np.0309.i = phi ptr [ %call68.i, %for.inc67.i.for.cond25.preheader.i_crit_edge ], [ %call24.i, %if.end23.i.for.cond25.preheader.i_crit_edge ]
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc.i.for.body27.i_crit_edge, %for.cond25.preheader.i
  %i.0307.i = phi i32 [ 0, %for.cond25.preheader.i ], [ %inc.i, %for.inc.i.for.body27.i_crit_edge ]
  %arrayidx.i = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %i.0307.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call28.i = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %reg_np.0309.i, ptr noundef %25) #6
  br i1 %call28.i, label %cond.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body27.i
  %inc.i = add nuw nsw i32 %i.0307.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 37
  br i1 %exitcond.not.i, label %do.end35.i, label %for.inc.i.for.body27.i_crit_edge

for.inc.i.for.body27.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27.i

do.end35.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.38, ptr noundef nonnull %reg_np.0309.i) #9
  br label %for.inc67.i

cond.end.i:                                       ; preds = %for.body27.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %reg_np.0309.i, i32 0, i32 3
  %call.i275.i = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev, ptr noundef %fwnode.i, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 23, ptr noundef nonnull @.str.42) #6
  %ext_control_gpiod.i = getelementptr inbounds %struct.sec_regulator_data, ptr %rdata.0312.i, i32 0, i32 3
  %28 = ptrtoint ptr %ext_control_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i275.i, ptr %ext_control_gpiod.i, align 4
  %cmp43.i = icmp eq ptr %call.i275.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp43.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ext_control_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %ext_control_gpiod.i, align 4
  br label %if.end52.i

if.else.i:                                        ; preds = %cond.end.i
  %cmp.i.i = icmp ugt ptr %call.i275.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %s5m8767_pmic_dt_parse_pdata.exit, label %if.else.i.if.end52.i_crit_edge

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i.if.end52.i_crit_edge, %if.then44.i
  %30 = ptrtoint ptr %rdata.0312.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0307.i, ptr %rdata.0312.i, align 4
  %call55.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef nonnull %reg_np.0309.i, ptr noundef %arrayidx.i) #6
  %initdata.i = getelementptr inbounds %struct.sec_regulator_data, ptr %rdata.0312.i, i32 0, i32 1
  %31 = ptrtoint ptr %initdata.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call55.i, ptr %initdata.i, align 4
  %reg_node.i = getelementptr inbounds %struct.sec_regulator_data, ptr %rdata.0312.i, i32 0, i32 2
  %32 = ptrtoint ptr %reg_node.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %reg_np.0309.i, ptr %reg_node.i, align 4
  %incdec.ptr.i = getelementptr %struct.sec_regulator_data, ptr %rdata.0312.i, i32 1
  %33 = ptrtoint ptr %rmode.0313.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0307.i, ptr %rmode.0313.i, align 4
  %mode.i = getelementptr inbounds %struct.sec_opmode_data, ptr %rmode.0313.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %reg_np.0309.i, ptr noundef nonnull @.str.43, ptr noundef %mode.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool58.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool58.not.i, label %if.end52.i.if.end65.i_crit_edge, label %do.end62.i

if.end52.i.if.end65.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

do.end62.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.45, ptr noundef nonnull %reg_np.0309.i) #9
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %mode.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end62.i, %if.end52.i.if.end65.i_crit_edge
  %incdec.ptr66.i = getelementptr %struct.sec_opmode_data, ptr %rmode.0313.i, i32 1
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %if.end65.i, %do.end35.i
  %rdata.1.i = phi ptr [ %rdata.0312.i, %do.end35.i ], [ %incdec.ptr.i, %if.end65.i ]
  %rmode.1.i = phi ptr [ %rmode.0313.i, %do.end35.i ], [ %incdec.ptr66.i, %if.end65.i ]
  %call68.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call3.i, ptr noundef nonnull %reg_np.0309.i) #6
  %cmp.not.i = icmp eq ptr %call68.i, null
  br i1 %cmp.not.i, label %for.inc67.i.for.end69.i_crit_edge, label %for.inc67.i.for.cond25.preheader.i_crit_edge

for.inc67.i.for.cond25.preheader.i_crit_edge:     ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond25.preheader.i

for.inc67.i.for.end69.i_crit_edge:                ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69.i

for.end69.i:                                      ; preds = %for.inc67.i.for.end69.i_crit_edge, %if.end23.i.for.end69.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  %call70.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.47, ptr noundef null) #6
  %tobool71.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool71.not.i, label %for.end69.i.if.end81.i_crit_edge, label %if.then72.i

for.end69.i.if.end81.i_crit_edge:                 ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

if.then72.i:                                      ; preds = %for.end69.i
  %buck2_gpiodvs.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 6
  %37 = ptrtoint ptr %buck2_gpiodvs.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %buck2_gpiodvs.i, align 4
  %buck2_voltage.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 5
  %call.i276.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.48, ptr noundef %buck2_voltage.i, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i276.i)
  %tobool74.not.i = icmp sgt i32 %call.i276.i, -1
  br i1 %tobool74.not.i, label %if.then72.i.if.end81.i_crit_edge, label %do.end78.i

if.then72.i.if.end81.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

do.end78.i:                                       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.50) #9
  br label %cleanup423

if.end81.i:                                       ; preds = %if.then72.i.if.end81.i_crit_edge, %for.end69.i.if.end81.i_crit_edge
  %call82.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.52, ptr noundef null) #6
  %tobool83.not.i = icmp eq ptr %call82.i, null
  br i1 %tobool83.not.i, label %if.end81.i.if.end94.i_crit_edge, label %if.then84.i

if.end81.i.if.end94.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

if.then84.i:                                      ; preds = %if.end81.i
  %buck3_gpiodvs.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 8
  %40 = ptrtoint ptr %buck3_gpiodvs.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %buck3_gpiodvs.i, align 4
  %buck3_voltage.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 7
  %call.i277.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.53, ptr noundef %buck3_voltage.i, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i277.i)
  %tobool87.not.i = icmp sgt i32 %call.i277.i, -1
  br i1 %tobool87.not.i, label %if.then84.i.if.end94.i_crit_edge, label %do.end91.i

if.then84.i.if.end94.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

do.end91.i:                                       ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.55) #9
  br label %cleanup423

if.end94.i:                                       ; preds = %if.then84.i.if.end94.i_crit_edge, %if.end81.i.if.end94.i_crit_edge
  %call95.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.57, ptr noundef null) #6
  %tobool96.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool96.not.i, label %if.end94.i.if.end107.i_crit_edge, label %if.then97.i

if.end94.i.if.end107.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.i

if.then97.i:                                      ; preds = %if.end94.i
  %buck4_gpiodvs.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 10
  %43 = ptrtoint ptr %buck4_gpiodvs.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %buck4_gpiodvs.i, align 4
  %buck4_voltage.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 9
  %call.i278.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.58, ptr noundef %buck4_voltage.i, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i278.i)
  %tobool100.not.i = icmp sgt i32 %call.i278.i, -1
  br i1 %tobool100.not.i, label %if.then97.i.if.end107.i_crit_edge, label %do.end104.i

if.then97.i.if.end107.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.i

do.end104.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.60) #9
  br label %cleanup423

if.end107.i:                                      ; preds = %if.then97.i.if.end107.i_crit_edge, %if.end94.i.if.end107.i_crit_edge
  %buck2_gpiodvs108.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 6
  %46 = ptrtoint ptr %buck2_gpiodvs108.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buck2_gpiodvs108.i, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool109.not.i = icmp eq i8 %47, 0
  br i1 %tobool109.not.i, label %lor.lhs.false.i, label %if.end107.i.if.then115.i_crit_edge

if.end107.i.if.then115.i_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115.i

lor.lhs.false.i:                                  ; preds = %if.end107.i
  %buck3_gpiodvs110.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 8
  %48 = ptrtoint ptr %buck3_gpiodvs110.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buck3_gpiodvs110.i, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool111.not.i = icmp eq i8 %49, 0
  br i1 %tobool111.not.i, label %lor.lhs.false112.i, label %lor.lhs.false.i.if.then115.i_crit_edge

lor.lhs.false.i.if.then115.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115.i

lor.lhs.false112.i:                               ; preds = %lor.lhs.false.i
  %buck4_gpiodvs113.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 10
  %50 = ptrtoint ptr %buck4_gpiodvs113.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %buck4_gpiodvs113.i, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool114.not.i = icmp eq i8 %51, 0
  br i1 %tobool114.not.i, label %lor.lhs.false112.i.if.end135.i_crit_edge, label %lor.lhs.false112.i.if.then115.i_crit_edge

lor.lhs.false112.i.if.then115.i_crit_edge:        ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115.i

lor.lhs.false112.i.if.end135.i_crit_edge:         ; preds = %lor.lhs.false112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135.i

if.then115.i:                                     ; preds = %lor.lhs.false112.i.if.then115.i_crit_edge, %lor.lhs.false.i.if.then115.i_crit_edge, %if.end107.i.if.then115.i_crit_edge
  %call.i.i279.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i279.i)
  %52 = icmp ult i32 %call.i.i279.i, 2048
  br i1 %52, label %if.end.i.i, label %if.then115.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge

if.then115.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge: ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_pmic_dt_parse_dvs_gpio.exit.i

if.end.i.i:                                       ; preds = %if.then115.i
  %arrayidx.i.i = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 3, i32 0
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i.i279.i, ptr %arrayidx.i.i, align 4
  %call.i.1.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.71, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.1.i.i)
  %54 = icmp ult i32 %call.i.1.i.i, 2048
  br i1 %54, label %if.end.1.i.i, label %if.end.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge

if.end.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_pmic_dt_parse_dvs_gpio.exit.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.1.i.i = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i.1.i.i, ptr %arrayidx.1.i.i, align 4
  %call.i.2.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.71, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.2.i.i)
  %56 = icmp ult i32 %call.i.2.i.i, 2048
  br i1 %56, label %if.end119.i, label %if.end.1.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge

if.end.1.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_pmic_dt_parse_dvs_gpio.exit.i

s5m8767_pmic_dt_parse_dvs_gpio.exit.i:            ; preds = %if.end.1.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge, %if.end.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge, %if.then115.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge
  %i.010.lcssa.i.i = phi i32 [ 0, %if.then115.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ 1, %if.end.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ 2, %if.end.1.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ]
  %call.i.lcssa.i.i = phi i32 [ %call.i.i279.i, %if.then115.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ %call.i.1.i.i, %if.end.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ], [ %call.i.2.i.i, %if.end.1.i.i.s5m8767_pmic_dt_parse_dvs_gpio.exit.i_crit_edge ]
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.72, i32 noundef %i.010.lcssa.i.i, i32 noundef %call.i.lcssa.i.i) #9
  br label %cleanup423

if.end119.i:                                      ; preds = %if.end.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i.2.i.i, ptr %arrayidx.2.i.i, align 4
  %buck_default_idx.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 11
  %call.i.i280.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.62, ptr noundef %buck_default_idx.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i280.i)
  %tobool121.not.i = icmp sgt i32 %call.i.i280.i, -1
  br i1 %tobool121.not.i, label %if.else124.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %buck_default_idx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %buck_default_idx.i, align 4
  br label %if.end135.i

if.else124.i:                                     ; preds = %if.end119.i
  %61 = ptrtoint ptr %buck_default_idx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %buck_default_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %62)
  %cmp126.i = icmp sgt i32 %62, 7
  br i1 %cmp126.i, label %if.then127.i, label %if.else124.i.if.end135.i_crit_edge

if.else124.i.if.end135.i_crit_edge:               ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135.i

if.then127.i:                                     ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %buck_default_idx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %buck_default_idx.i, align 4
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.64) #9
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then127.i, %if.else124.i.if.end135.i_crit_edge, %if.then122.i, %lor.lhs.false112.i.if.end135.i_crit_edge
  %call.i.i281.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i281.i)
  %66 = icmp ult i32 %call.i.i281.i, 2048
  br i1 %66, label %if.end.i287.i, label %if.end135.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge

if.end135.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge: ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_pmic_dt_parse_ds_gpio.exit.i

if.end.i287.i:                                    ; preds = %if.end135.i
  %arrayidx.i285.i = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 4, i32 0
  %67 = ptrtoint ptr %arrayidx.i285.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i.i281.i, ptr %arrayidx.i285.i, align 4
  %call.i.1.i286.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.1.i286.i)
  %68 = icmp ult i32 %call.i.1.i286.i, 2048
  br i1 %68, label %if.end.1.i290.i, label %if.end.i287.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge

if.end.i287.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge: ; preds = %if.end.i287.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_pmic_dt_parse_ds_gpio.exit.i

if.end.1.i290.i:                                  ; preds = %if.end.i287.i
  %arrayidx.1.i288.i = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx.1.i288.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i.1.i286.i, ptr %arrayidx.1.i288.i, align 4
  %call.i.2.i289.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.2.i289.i)
  %70 = icmp ult i32 %call.i.2.i289.i, 2048
  br i1 %70, label %if.end139.i, label %if.end.1.i290.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge

if.end.1.i290.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge: ; preds = %if.end.1.i290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_pmic_dt_parse_ds_gpio.exit.i

s5m8767_pmic_dt_parse_ds_gpio.exit.i:             ; preds = %if.end.1.i290.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge, %if.end.i287.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge, %if.end135.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge
  %i.010.lcssa.i282.i = phi i32 [ 0, %if.end135.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge ], [ 1, %if.end.i287.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge ], [ 2, %if.end.1.i290.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge ]
  %call.i.lcssa.i283.i = phi i32 [ %call.i.i281.i, %if.end135.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge ], [ %call.i.1.i286.i, %if.end.i287.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge ], [ %call.i.2.i289.i, %if.end.1.i290.i.s5m8767_pmic_dt_parse_ds_gpio.exit.i_crit_edge ]
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.72, i32 noundef %i.010.lcssa.i282.i, i32 noundef %call.i.lcssa.i283.i) #9
  br label %cleanup423

if.end139.i:                                      ; preds = %if.end.1.i290.i
  %arrayidx.2.i291.i = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %arrayidx.2.i291.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i.2.i289.i, ptr %arrayidx.2.i291.i, align 4
  %call140.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.67, ptr noundef null) #6
  %tobool141.not.i = icmp eq ptr %call140.i, null
  br i1 %tobool141.not.i, label %if.end139.i.if.end143.i_crit_edge, label %if.then142.i

if.end139.i.if.end143.i_crit_edge:                ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143.i

if.then142.i:                                     ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  %buck2_ramp_enable.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 13
  %74 = ptrtoint ptr %buck2_ramp_enable.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %buck2_ramp_enable.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then142.i, %if.end139.i.if.end143.i_crit_edge
  %call144.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.68, ptr noundef null) #6
  %tobool145.not.i = icmp eq ptr %call144.i, null
  br i1 %tobool145.not.i, label %if.end143.i.if.end147.i_crit_edge, label %if.then146.i

if.end143.i.if.end147.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

if.then146.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #8
  %buck3_ramp_enable.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 14
  %75 = ptrtoint ptr %buck3_ramp_enable.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %buck3_ramp_enable.i, align 1
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then146.i, %if.end143.i.if.end147.i_crit_edge
  %call148.i = tail call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.69, ptr noundef null) #6
  %tobool149.not.i = icmp eq ptr %call148.i, null
  br i1 %tobool149.not.i, label %if.end147.i.if.end151.i_crit_edge, label %if.then150.i

if.end147.i.if.end151.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151.i

if.then150.i:                                     ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #8
  %buck4_ramp_enable.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 15
  %76 = ptrtoint ptr %buck4_ramp_enable.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %buck4_ramp_enable.i, align 2
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then150.i, %if.end147.i.if.end151.i_crit_edge
  %buck2_ramp_enable152.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 13
  %77 = ptrtoint ptr %buck2_ramp_enable152.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %buck2_ramp_enable152.i, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool153.not.i = icmp eq i8 %78, 0
  br i1 %tobool153.not.i, label %lor.lhs.false154.i, label %if.end151.i.if.then160.i_crit_edge

if.end151.i.if.then160.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then160.i

lor.lhs.false154.i:                               ; preds = %if.end151.i
  %buck3_ramp_enable155.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 14
  %79 = ptrtoint ptr %buck3_ramp_enable155.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buck3_ramp_enable155.i, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool156.not.i = icmp eq i8 %80, 0
  br i1 %tobool156.not.i, label %lor.lhs.false157.i, label %lor.lhs.false154.i.if.then160.i_crit_edge

lor.lhs.false154.i.if.then160.i_crit_edge:        ; preds = %lor.lhs.false154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then160.i

lor.lhs.false157.i:                               ; preds = %lor.lhs.false154.i
  %buck4_ramp_enable158.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 15
  %81 = ptrtoint ptr %buck4_ramp_enable158.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %buck4_ramp_enable158.i, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool159.not.i = icmp eq i8 %82, 0
  br i1 %tobool159.not.i, label %lor.lhs.false157.i.if.end11_crit_edge, label %lor.lhs.false157.i.if.then160.i_crit_edge

lor.lhs.false157.i.if.then160.i_crit_edge:        ; preds = %lor.lhs.false157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then160.i

lor.lhs.false157.i.if.end11_crit_edge:            ; preds = %lor.lhs.false157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then160.i:                                     ; preds = %lor.lhs.false157.i.if.then160.i_crit_edge, %lor.lhs.false154.i.if.then160.i_crit_edge, %if.end151.i.if.then160.i_crit_edge
  %buck_ramp_delay.i = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 12
  %call.i.i294.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.70, ptr noundef %buck_ramp_delay.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i294.i)
  %tobool162.not.i = icmp sgt i32 %call.i.i294.i, -1
  br i1 %tobool162.not.i, label %if.then160.i.if.end11_crit_edge, label %if.then163.i

if.then160.i.if.end11_crit_edge:                  ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then163.i:                                     ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %buck_ramp_delay.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %buck_ramp_delay.i, align 4
  br label %if.end11

s5m8767_pmic_dt_parse_pdata.exit:                 ; preds = %if.else.i
  tail call void @of_node_put(ptr noundef nonnull %reg_np.0309.i) #6
  tail call void @of_node_put(ptr noundef nonnull %call3.i) #6
  %84 = ptrtoint ptr %ext_control_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ext_control_gpiod.i, align 4
  %86 = ptrtoint ptr %85 to i32
  %tobool8.not = icmp eq ptr %85, null
  br i1 %tobool8.not, label %s5m8767_pmic_dt_parse_pdata.exit.if.end11_crit_edge, label %s5m8767_pmic_dt_parse_pdata.exit.cleanup423_crit_edge

s5m8767_pmic_dt_parse_pdata.exit.cleanup423_crit_edge: ; preds = %s5m8767_pmic_dt_parse_pdata.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

s5m8767_pmic_dt_parse_pdata.exit.if.end11_crit_edge: ; preds = %s5m8767_pmic_dt_parse_pdata.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %s5m8767_pmic_dt_parse_pdata.exit.if.end11_crit_edge, %if.then163.i, %if.then160.i.if.end11_crit_edge, %lor.lhs.false157.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %buck2_gpiodvs = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 6
  %87 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %buck2_gpiodvs, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool12.not = icmp eq i8 %88, 0
  %buck3_gpiodvs23 = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 8
  %89 = ptrtoint ptr %buck3_gpiodvs23 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %buck3_gpiodvs23, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool24.not = icmp eq i8 %90, 0
  br i1 %tobool12.not, label %if.end22, label %if.then13

if.then13:                                        ; preds = %if.end11
  br i1 %tobool24.not, label %lor.lhs.false, label %if.then13.do.end19_crit_edge

if.then13.do.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.then13
  %buck4_gpiodvs = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 10
  %91 = ptrtoint ptr %buck4_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %buck4_gpiodvs, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool15.not = icmp eq i8 %92, 0
  br i1 %tobool15.not, label %if.end22.thread, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end19:                                         ; preds = %lor.lhs.false.do.end19_crit_edge, %if.then13.do.end19_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup423

if.end22:                                         ; preds = %if.end11
  %buck4_gpiodvs38766 = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 10
  br i1 %tobool24.not, label %if.end22.if.end52_crit_edge, label %lor.lhs.false28

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end22.thread:                                  ; preds = %lor.lhs.false
  %93 = ptrtoint ptr %buck3_gpiodvs23 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %buck3_gpiodvs23, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool24.not708 = icmp eq i8 %94, 0
  br i1 %tobool24.not708, label %if.end37.thread, label %if.end22.thread.do.end34_crit_edge

if.end22.thread.do.end34_crit_edge:               ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

lor.lhs.false28:                                  ; preds = %if.end22
  %95 = ptrtoint ptr %buck4_gpiodvs38766 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %buck4_gpiodvs38766, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool30.not = icmp eq i8 %96, 0
  br i1 %tobool30.not, label %if.end37, label %lor.lhs.false28.do.end34_crit_edge

lor.lhs.false28.do.end34_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false28.do.end34_crit_edge, %if.end22.thread.do.end34_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup423

if.end37:                                         ; preds = %lor.lhs.false28
  %buck4_gpiodvs38 = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 10
  %97 = ptrtoint ptr %buck4_gpiodvs38 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %buck4_gpiodvs38, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool39.not = icmp eq i8 %98, 0
  %brmerge = or i1 %tobool24.not, %tobool39.not
  br i1 %brmerge, label %if.end37.if.end52_crit_edge, label %if.end37.do.end49_crit_edge

if.end37.do.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end37.thread:                                  ; preds = %if.end22.thread
  %99 = ptrtoint ptr %buck4_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %buck4_gpiodvs, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool39.not718 = icmp eq i8 %100, 0
  br i1 %tobool39.not718, label %if.end37.thread.if.end52_crit_edge, label %if.end37.thread.do.end49_crit_edge

if.end37.thread.do.end49_crit_edge:               ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

if.end37.thread.if.end52_crit_edge:               ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end49:                                         ; preds = %if.end37.thread.do.end49_crit_edge, %if.end37.do.end49_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup423

if.end52:                                         ; preds = %if.end37.thread.if.end52_crit_edge, %if.end37.if.end52_crit_edge, %if.end22.if.end52_crit_edge
  %buck4_gpiodvs38723 = phi ptr [ %buck4_gpiodvs, %if.end37.thread.if.end52_crit_edge ], [ %buck4_gpiodvs38, %if.end37.if.end52_crit_edge ], [ %buck4_gpiodvs38766, %if.end22.if.end52_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #6
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %if.end52.cleanup423_crit_edge, label %if.end57

if.end52.cleanup423_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end57:                                         ; preds = %if.end52
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %dev, ptr %call.i, align 4
  %iodev60 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 1
  %102 = ptrtoint ptr %iodev60 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %3, ptr %iodev60, align 4
  %num_regulators = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 2
  %103 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num_regulators, align 4
  %num_regulators61 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 2
  %105 = ptrtoint ptr %num_regulators61 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %num_regulators61, align 4
  %driver_data.i.i643 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %106 = ptrtoint ptr %driver_data.i.i643 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i, ptr %driver_data.i.i643, align 4
  %buck_default_idx = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 11
  %107 = ptrtoint ptr %buck_default_idx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %buck_default_idx, align 4
  %buck_gpioindex = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 16
  %109 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %buck_gpioindex, align 4
  %110 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %buck2_gpiodvs, align 4, !range !253
  %buck2_gpiodvs64 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 8
  %112 = ptrtoint ptr %buck2_gpiodvs64 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %buck2_gpiodvs64, align 1
  %113 = ptrtoint ptr %buck3_gpiodvs23 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %buck3_gpiodvs23, align 4, !range !253
  %buck3_gpiodvs67 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 9
  %115 = ptrtoint ptr %buck3_gpiodvs67 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %buck3_gpiodvs67, align 4
  %116 = ptrtoint ptr %buck4_gpiodvs38723 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %buck4_gpiodvs38723, align 4, !range !253
  %buck4_gpiodvs71 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 10
  %118 = ptrtoint ptr %buck4_gpiodvs71 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %buck4_gpiodvs71, align 1
  %buck_gpios = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 3
  %119 = ptrtoint ptr %buck_gpios to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %buck_gpios, align 4
  %buck_gpios73 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 14
  %121 = ptrtoint ptr %buck_gpios73 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %buck_gpios73, align 4
  %arrayidx76 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 3, i32 1
  %122 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx76, align 4
  %arrayidx78 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 14, i32 1
  %124 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx78, align 4
  %arrayidx80 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 3, i32 2
  %125 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx80, align 4
  %arrayidx82 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 14, i32 2
  %127 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx82, align 4
  %buck_ds = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 4
  %128 = ptrtoint ptr %buck_ds to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %buck_ds, align 4
  %buck_ds84 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 15
  %130 = ptrtoint ptr %buck_ds84 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %buck_ds84, align 4
  %arrayidx87 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 4, i32 1
  %131 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx87, align 4
  %arrayidx89 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 15, i32 1
  %133 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %arrayidx89, align 4
  %arrayidx91 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 4, i32 2
  %134 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx91, align 4
  %arrayidx93 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 15, i32 2
  %136 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx93, align 4
  %buck_ramp_delay = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 12
  %137 = ptrtoint ptr %buck_ramp_delay to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %buck_ramp_delay, align 4
  %ramp_delay = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 4
  %139 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %ramp_delay, align 4
  %buck2_ramp_enable = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 13
  %140 = ptrtoint ptr %buck2_ramp_enable to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %buck2_ramp_enable, align 4, !range !253
  %buck2_ramp = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 5
  %142 = ptrtoint ptr %buck2_ramp to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %buck2_ramp, align 4
  %buck3_ramp_enable = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 14
  %143 = ptrtoint ptr %buck3_ramp_enable to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %buck3_ramp_enable, align 1, !range !253
  %buck3_ramp = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 6
  %145 = ptrtoint ptr %buck3_ramp to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %buck3_ramp, align 1
  %buck4_ramp_enable = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 15
  %146 = ptrtoint ptr %buck4_ramp_enable to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %buck4_ramp_enable, align 2, !range !253
  %buck4_ramp = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 7
  %148 = ptrtoint ptr %buck4_ramp to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %buck4_ramp, align 2
  %opmode = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 1
  %149 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %opmode, align 4
  %opmode100 = getelementptr inbounds %struct.s5m8767_info, ptr %call.i, i32 0, i32 3
  %151 = ptrtoint ptr %opmode100 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %opmode100, align 4
  %buck2_init = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 16
  %152 = ptrtoint ptr %buck2_init to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %buck2_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %153)
  %cmp1.i = icmp sgt i32 %153, 1600000
  %154 = tail call i32 @llvm.smax.i32(i32 %153, i32 600000) #6
  %sub9.i = add nsw i32 %154, -593751
  %div1.i = udiv i32 %sub9.i, 6250
  %retval.0.i644 = select i1 %cmp1.i, i32 -22, i32 %div1.i
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %3, i32 0, i32 2
  %155 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regmap_pmic, align 4
  %call103 = tail call i32 @regmap_write(ptr noundef %156, i32 noundef 54, i32 noundef %retval.0.i644) #6
  %buck3_init = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 17
  %157 = ptrtoint ptr %buck3_init to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %buck3_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %158)
  %cmp1.i645 = icmp sgt i32 %158, 1600000
  %159 = tail call i32 @llvm.smax.i32(i32 %158, i32 600000) #6
  %sub9.i646 = add nsw i32 %159, -593751
  %div1.i647 = udiv i32 %sub9.i646, 6250
  %retval.0.i648 = select i1 %cmp1.i645, i32 -22, i32 %div1.i647
  %160 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %iodev60, align 4
  %regmap_pmic106 = getelementptr inbounds %struct.sec_pmic_dev, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %regmap_pmic106 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap_pmic106, align 4
  %call107 = tail call i32 @regmap_write(ptr noundef %163, i32 noundef 63, i32 noundef %retval.0.i648) #6
  %buck4_init = getelementptr inbounds %struct.sec_platform_data, ptr %5, i32 0, i32 18
  %164 = ptrtoint ptr %buck4_init to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %buck4_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %165)
  %cmp1.i649 = icmp sgt i32 %165, 1600000
  %166 = tail call i32 @llvm.smax.i32(i32 %165, i32 600000) #6
  %sub9.i650 = add nsw i32 %166, -593751
  %div1.i651 = udiv i32 %sub9.i650, 6250
  %retval.0.i652 = select i1 %cmp1.i649, i32 -22, i32 %div1.i651
  %167 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %iodev60, align 4
  %regmap_pmic110 = getelementptr inbounds %struct.sec_pmic_dev, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %regmap_pmic110 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regmap_pmic110, align 4
  %call111 = tail call i32 @regmap_write(ptr noundef %170, i32 noundef 72, i32 noundef %retval.0.i652) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end57
  %i.0743 = phi i32 [ 0, %if.end57 ], [ %inc, %for.inc.for.body_crit_edge ]
  %171 = ptrtoint ptr %buck2_gpiodvs64 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %buck2_gpiodvs64, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool113.not = icmp eq i8 %172, 0
  br i1 %tobool113.not, label %for.body.if.end118_crit_edge, label %if.then114

for.body.if.end118_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then114:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx115 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 5, i32 %i.0743
  %173 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %174)
  %cmp1.i653 = icmp sgt i32 %174, 1600000
  %175 = tail call i32 @llvm.smax.i32(i32 %174, i32 600000) #6
  %sub9.i654 = add nsw i32 %175, -593751
  %div1.i655 = udiv i32 %sub9.i654, 6250
  %176 = trunc i32 %div1.i655 to i8
  %conv = select i1 %cmp1.i653, i8 -22, i8 %176
  %arrayidx117 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 11, i32 %i.0743
  %177 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv, ptr %arrayidx117, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %for.body.if.end118_crit_edge
  %178 = ptrtoint ptr %buck3_gpiodvs67 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %buck3_gpiodvs67, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool120.not = icmp eq i8 %179, 0
  br i1 %tobool120.not, label %if.end118.if.end126_crit_edge, label %if.then121

if.end118.if.end126_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx122 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 7, i32 %i.0743
  %180 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %181)
  %cmp1.i657 = icmp sgt i32 %181, 1600000
  %182 = tail call i32 @llvm.smax.i32(i32 %181, i32 600000) #6
  %sub9.i658 = add nsw i32 %182, -593751
  %div1.i659 = udiv i32 %sub9.i658, 6250
  %183 = trunc i32 %div1.i659 to i8
  %conv124 = select i1 %cmp1.i657, i8 -22, i8 %183
  %arrayidx125 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 12, i32 %i.0743
  %184 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv124, ptr %arrayidx125, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.end118.if.end126_crit_edge
  %185 = ptrtoint ptr %buck4_gpiodvs71 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %buck4_gpiodvs71, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool128.not = icmp eq i8 %186, 0
  br i1 %tobool128.not, label %if.end126.for.inc_crit_edge, label %if.then129

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx130 = getelementptr %struct.sec_platform_data, ptr %5, i32 0, i32 9, i32 %i.0743
  %187 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %188)
  %cmp1.i661 = icmp sgt i32 %188, 1600000
  %189 = tail call i32 @llvm.smax.i32(i32 %188, i32 600000) #6
  %sub9.i662 = add nsw i32 %189, -593751
  %div1.i663 = udiv i32 %sub9.i662, 6250
  %190 = trunc i32 %div1.i663 to i8
  %conv132 = select i1 %cmp1.i661, i8 -22, i8 %190
  %arrayidx133 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 13, i32 %i.0743
  %191 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv132, ptr %arrayidx133, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then129, %if.end126.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0743, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %192 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %buck2_gpiodvs, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool136.not = icmp eq i8 %193, 0
  br i1 %tobool136.not, label %lor.lhs.false138, label %for.end.if.then146_crit_edge

for.end.if.then146_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then146

lor.lhs.false138:                                 ; preds = %for.end
  %194 = ptrtoint ptr %buck3_gpiodvs23 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %buck3_gpiodvs23, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool140.not = icmp eq i8 %195, 0
  br i1 %tobool140.not, label %lor.lhs.false142, label %lor.lhs.false138.if.then146_crit_edge

lor.lhs.false138.if.then146_crit_edge:            ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then146

lor.lhs.false142:                                 ; preds = %lor.lhs.false138
  %196 = ptrtoint ptr %buck4_gpiodvs38723 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %buck4_gpiodvs38723, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool144.not = icmp eq i8 %197, 0
  br i1 %tobool144.not, label %lor.lhs.false142.if.end201_crit_edge, label %lor.lhs.false142.if.then146_crit_edge

lor.lhs.false142.if.then146_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then146

lor.lhs.false142.if.end201_crit_edge:             ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

if.then146:                                       ; preds = %lor.lhs.false142.if.then146_crit_edge, %lor.lhs.false138.if.then146_crit_edge, %for.end.if.then146_crit_edge
  %198 = ptrtoint ptr %buck_gpios to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %buck_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %199)
  %200 = icmp ult i32 %199, 2048
  br i1 %200, label %lor.lhs.false150, label %if.then146.do.end161_crit_edge

if.then146.do.end161_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161

lor.lhs.false150:                                 ; preds = %if.then146
  %201 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %202)
  %203 = icmp ult i32 %202, 2048
  br i1 %203, label %lor.lhs.false154, label %lor.lhs.false150.do.end161_crit_edge

lor.lhs.false150.do.end161_crit_edge:             ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161

lor.lhs.false154:                                 ; preds = %lor.lhs.false150
  %204 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %205)
  %206 = icmp ult i32 %205, 2048
  br i1 %206, label %if.end163, label %lor.lhs.false154.do.end161_crit_edge

lor.lhs.false154.do.end161_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161

do.end161:                                        ; preds = %lor.lhs.false154.do.end161_crit_edge, %lor.lhs.false150.do.end161_crit_edge, %if.then146.do.end161_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup423

if.end163:                                        ; preds = %lor.lhs.false154
  %call167 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %199, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end163.cleanup423_crit_edge

if.end163.cleanup423_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end170:                                        ; preds = %if.end163
  %207 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx76, align 4
  %call174 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %208, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.end170.cleanup423_crit_edge

if.end170.cleanup423_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end177:                                        ; preds = %if.end170
  %209 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx80, align 4
  %call181 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %210, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end177.cleanup423_crit_edge

if.end177.cleanup423_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end184:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  %211 = ptrtoint ptr %buck_gpios to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %buck_gpios, align 4
  %213 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %buck_gpioindex, align 4
  %shr641 = lshr i32 %214, 2
  %and = and i32 %shr641, 1
  %call.i665 = tail call ptr @gpio_to_desc(i32 noundef %212) #6
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i665, i32 noundef %and) #6
  %215 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx76, align 4
  %217 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %buck_gpioindex, align 4
  %shr192642 = lshr i32 %218, 1
  %and193 = and i32 %shr192642, 1
  %call.i666 = tail call ptr @gpio_to_desc(i32 noundef %216) #6
  %call1.i667 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i666, i32 noundef %and193) #6
  %219 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx80, align 4
  %221 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %buck_gpioindex, align 4
  %and199 = and i32 %222, 1
  %call.i668 = tail call ptr @gpio_to_desc(i32 noundef %220) #6
  %call1.i669 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i668, i32 noundef %and199) #6
  br label %if.end201

if.end201:                                        ; preds = %if.end184, %lor.lhs.false142.if.end201_crit_edge
  %223 = ptrtoint ptr %buck_ds to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %buck_ds, align 4
  %call205 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %224, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %if.end201.cleanup423_crit_edge

if.end201.cleanup423_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end208:                                        ; preds = %if.end201
  %225 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx87, align 4
  %call212 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %226, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end215, label %if.end208.cleanup423_crit_edge

if.end208.cleanup423_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end215:                                        ; preds = %if.end208
  %227 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx91, align 4
  %call219 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %228, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end215.cleanup423_crit_edge

if.end215.cleanup423_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

if.end222:                                        ; preds = %if.end215
  %229 = ptrtoint ptr %buck_ds to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %buck_ds, align 4
  %call.i670 = tail call ptr @gpio_to_desc(i32 noundef %230) #6
  %call1.i671 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i670, i32 noundef 0) #6
  %231 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx87, align 4
  %call.i672 = tail call ptr @gpio_to_desc(i32 noundef %232) #6
  %call1.i673 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i672, i32 noundef 0) #6
  %233 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx91, align 4
  %call.i674 = tail call ptr @gpio_to_desc(i32 noundef %234) #6
  %call1.i675 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i674, i32 noundef 0) #6
  %235 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %iodev60, align 4
  %regmap_pmic233 = getelementptr inbounds %struct.sec_pmic_dev, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %regmap_pmic233 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regmap_pmic233, align 4
  %239 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %buck2_gpiodvs, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool235.not = icmp eq i8 %240, 0
  %cond = select i1 %tobool235.not, i32 0, i32 2
  %call.i676 = tail call i32 @regmap_update_bits_base(ptr noundef %238, i32 noundef 52, i32 noundef 2, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %241 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %iodev60, align 4
  %regmap_pmic239 = getelementptr inbounds %struct.sec_pmic_dev, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %regmap_pmic239 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regmap_pmic239, align 4
  %245 = ptrtoint ptr %buck3_gpiodvs23 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %buck3_gpiodvs23, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool241.not = icmp eq i8 %246, 0
  %cond243 = select i1 %tobool241.not, i32 0, i32 2
  %call.i677 = tail call i32 @regmap_update_bits_base(ptr noundef %244, i32 noundef 61, i32 noundef 2, i32 noundef %cond243, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %247 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %iodev60, align 4
  %regmap_pmic246 = getelementptr inbounds %struct.sec_pmic_dev, ptr %248, i32 0, i32 2
  %249 = ptrtoint ptr %regmap_pmic246 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regmap_pmic246, align 4
  %251 = ptrtoint ptr %buck4_gpiodvs38723 to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %buck4_gpiodvs38723, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool248.not = icmp eq i8 %252, 0
  %cond250 = select i1 %tobool248.not, i32 0, i32 2
  %call.i678 = tail call i32 @regmap_update_bits_base(ptr noundef %250, i32 noundef 70, i32 noundef 2, i32 noundef %cond250, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.body255

for.body255:                                      ; preds = %for.inc288.for.body255_crit_edge, %if.end222
  %i.1747 = phi i32 [ 0, %if.end222 ], [ %inc289, %for.inc288.for.body255_crit_edge ]
  %253 = ptrtoint ptr %buck2_gpiodvs64 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %buck2_gpiodvs64, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool257.not = icmp eq i8 %254, 0
  br i1 %tobool257.not, label %for.body255.if.end265_crit_edge, label %if.then258

for.body255.if.end265_crit_edge:                  ; preds = %for.body255
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end265

if.then258:                                       ; preds = %for.body255
  call void @__sanitizer_cov_trace_pc() #8
  %255 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %iodev60, align 4
  %regmap_pmic260 = getelementptr inbounds %struct.sec_pmic_dev, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %regmap_pmic260 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regmap_pmic260, align 4
  %add = add nuw nsw i32 %i.1747, 53
  %arrayidx262 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 11, i32 %i.1747
  %259 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx262, align 1
  %conv263 = zext i8 %260 to i32
  %call264 = tail call i32 @regmap_write(ptr noundef %258, i32 noundef %add, i32 noundef %conv263) #6
  br label %if.end265

if.end265:                                        ; preds = %if.then258, %for.body255.if.end265_crit_edge
  %261 = ptrtoint ptr %buck3_gpiodvs67 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %buck3_gpiodvs67, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool267.not = icmp eq i8 %262, 0
  br i1 %tobool267.not, label %if.end265.if.end276_crit_edge, label %if.then268

if.end265.if.end276_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end276

if.then268:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #8
  %263 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %iodev60, align 4
  %regmap_pmic270 = getelementptr inbounds %struct.sec_pmic_dev, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %regmap_pmic270 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regmap_pmic270, align 4
  %add271 = add nuw nsw i32 %i.1747, 62
  %arrayidx273 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 12, i32 %i.1747
  %267 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx273, align 1
  %conv274 = zext i8 %268 to i32
  %call275 = tail call i32 @regmap_write(ptr noundef %266, i32 noundef %add271, i32 noundef %conv274) #6
  br label %if.end276

if.end276:                                        ; preds = %if.then268, %if.end265.if.end276_crit_edge
  %269 = ptrtoint ptr %buck4_gpiodvs71 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %buck4_gpiodvs71, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool278.not = icmp eq i8 %270, 0
  br i1 %tobool278.not, label %if.end276.for.inc288_crit_edge, label %if.then279

if.end276.for.inc288_crit_edge:                   ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc288

if.then279:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #8
  %271 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %iodev60, align 4
  %regmap_pmic281 = getelementptr inbounds %struct.sec_pmic_dev, ptr %272, i32 0, i32 2
  %273 = ptrtoint ptr %regmap_pmic281 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %regmap_pmic281, align 4
  %add282 = add nuw nsw i32 %i.1747, 71
  %arrayidx284 = getelementptr %struct.s5m8767_info, ptr %call.i, i32 0, i32 13, i32 %i.1747
  %275 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx284, align 1
  %conv285 = zext i8 %276 to i32
  %call286 = tail call i32 @regmap_write(ptr noundef %274, i32 noundef %add282, i32 noundef %conv285) #6
  br label %for.inc288

for.inc288:                                       ; preds = %if.then279, %if.end276.for.inc288_crit_edge
  %inc289 = add nuw nsw i32 %i.1747, 1
  %exitcond764.not = icmp eq i32 %inc289, 8
  br i1 %exitcond764.not, label %for.end290, label %for.inc288.for.body255_crit_edge

for.inc288.for.body255_crit_edge:                 ; preds = %for.inc288
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body255

for.end290:                                       ; preds = %for.inc288
  %277 = ptrtoint ptr %buck2_ramp to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %buck2_ramp, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool292.not = icmp eq i8 %278, 0
  br i1 %tobool292.not, label %for.end290.if.end297_crit_edge, label %if.then293

for.end290.if.end297_crit_edge:                   ; preds = %for.end290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end297

if.then293:                                       ; preds = %for.end290
  call void @__sanitizer_cov_trace_pc() #8
  %279 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %iodev60, align 4
  %regmap_pmic295 = getelementptr inbounds %struct.sec_pmic_dev, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %regmap_pmic295 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regmap_pmic295, align 4
  %call.i679 = tail call i32 @regmap_update_bits_base(ptr noundef %282, i32 noundef 15, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %for.end290.if.end297_crit_edge
  %283 = ptrtoint ptr %buck3_ramp to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %buck3_ramp, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool299.not = icmp eq i8 %284, 0
  br i1 %tobool299.not, label %if.end297.if.end304_crit_edge, label %if.then300

if.end297.if.end304_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end304

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #8
  %285 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %iodev60, align 4
  %regmap_pmic302 = getelementptr inbounds %struct.sec_pmic_dev, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %regmap_pmic302 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regmap_pmic302, align 4
  %call.i680 = tail call i32 @regmap_update_bits_base(ptr noundef %288, i32 noundef 15, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end304

if.end304:                                        ; preds = %if.then300, %if.end297.if.end304_crit_edge
  %289 = ptrtoint ptr %buck4_ramp to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %buck4_ramp, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool306.not = icmp eq i8 %290, 0
  br i1 %tobool306.not, label %if.end304.if.end311_crit_edge, label %if.then307

if.end304.if.end311_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end311

if.then307:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #8
  %291 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %iodev60, align 4
  %regmap_pmic309 = getelementptr inbounds %struct.sec_pmic_dev, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %regmap_pmic309 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %regmap_pmic309, align 4
  %call.i681 = tail call i32 @regmap_update_bits_base(ptr noundef %294, i32 noundef 15, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end311

if.end311:                                        ; preds = %if.then307, %if.end304.if.end311_crit_edge
  %295 = ptrtoint ptr %buck2_ramp to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %buck2_ramp, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool313.not = icmp eq i8 %296, 0
  br i1 %tobool313.not, label %lor.lhs.false315, label %if.end311.if.then323_crit_edge

if.end311.if.then323_crit_edge:                   ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then323

lor.lhs.false315:                                 ; preds = %if.end311
  %297 = ptrtoint ptr %buck3_ramp to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %buck3_ramp, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool317.not = icmp eq i8 %298, 0
  br i1 %tobool317.not, label %lor.lhs.false319, label %lor.lhs.false315.if.then323_crit_edge

lor.lhs.false315.if.then323_crit_edge:            ; preds = %lor.lhs.false315
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then323

lor.lhs.false319:                                 ; preds = %lor.lhs.false315
  %299 = ptrtoint ptr %buck4_ramp to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %buck4_ramp, align 2, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool321.not = icmp eq i8 %300, 0
  br i1 %tobool321.not, label %lor.lhs.false319.if.end332_crit_edge, label %lor.lhs.false319.if.then323_crit_edge

lor.lhs.false319.if.then323_crit_edge:            ; preds = %lor.lhs.false319
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then323

lor.lhs.false319.if.end332_crit_edge:             ; preds = %lor.lhs.false319
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end332

if.then323:                                       ; preds = %lor.lhs.false319.if.then323_crit_edge, %lor.lhs.false315.if.then323_crit_edge, %if.end311.if.then323_crit_edge
  %301 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ramp_delay, align 4
  %303 = zext i32 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values)
  switch i32 %302, label %sw.default [
    i32 5, label %if.then323.sw.epilog_crit_edge
    i32 10, label %sw.bb325
    i32 25, label %sw.bb326
    i32 50, label %sw.bb327
    i32 100, label %sw.bb328
  ]

if.then323.sw.epilog_crit_edge:                   ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb325:                                         ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb326:                                         ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb328:                                         ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb328, %sw.bb327, %sw.bb326, %sw.bb325, %if.then323.sw.epilog_crit_edge
  %val.0 = phi i32 [ 144, %sw.default ], [ 240, %sw.bb328 ], [ 224, %sw.bb327 ], [ 208, %sw.bb326 ], [ 144, %sw.bb325 ], [ 64, %if.then323.sw.epilog_crit_edge ]
  %304 = ptrtoint ptr %iodev60 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %iodev60, align 4
  %regmap_pmic330 = getelementptr inbounds %struct.sec_pmic_dev, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %regmap_pmic330 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regmap_pmic330, align 4
  %call.i682 = tail call i32 @regmap_update_bits_base(ptr noundef %307, i32 noundef 15, i32 noundef 240, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end332

if.end332:                                        ; preds = %sw.epilog, %lor.lhs.false319.if.end332_crit_edge
  %308 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %cmp335751 = icmp sgt i32 %309, 0
  br i1 %cmp335751, label %for.body337.lr.ph, label %if.end332.cleanup423_crit_edge

if.end332.cleanup423_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

for.body337.lr.ph:                                ; preds = %if.end332
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %of_node379 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  br label %for.body337

for.body337:                                      ; preds = %for.inc420.for.body337_crit_edge, %for.body337.lr.ph
  %i.2752 = phi i32 [ 0, %for.body337.lr.ph ], [ %inc421, %for.inc420.for.body337_crit_edge ]
  %310 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %5, align 4
  %arrayidx338 = getelementptr %struct.sec_regulator_data, ptr %311, i32 %i.2752
  %312 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx338, align 4
  %arrayidx340 = getelementptr [37 x ptr], ptr @reg_voltage_map, i32 0, i32 %313
  %314 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx340, align 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %315, align 4
  %min = getelementptr inbounds %struct.sec_voltage_desc, ptr %315, i32 0, i32 1
  %318 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %min, align 4
  %sub = sub i32 %317, %319
  %step = getelementptr inbounds %struct.sec_voltage_desc, ptr %315, i32 0, i32 2
  %320 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %step, align 4
  %div = sdiv i32 %sub, %321
  %add343 = add i32 %div, 1
  %n_voltages = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 8
  %322 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %add343, ptr %n_voltages, align 4
  %323 = load i32, ptr %min, align 4
  %min_uV = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 14
  %324 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %min_uV, align 4
  %325 = load i32, ptr %step, align 4
  %uV_step = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 15
  %326 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %uV_step, align 4
  %327 = zext i32 %313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %327, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %313, label %for.body337.s5m8767_get_vsel_reg.exit_crit_edge [
    i32 0, label %for.body337.sw.bb.i_crit_edge
    i32 1, label %for.body337.sw.bb.i_crit_edge812
    i32 2, label %for.body337.sw.bb1.i_crit_edge
    i32 3, label %for.body337.sw.bb1.i_crit_edge813
    i32 4, label %for.body337.sw.bb1.i_crit_edge814
    i32 5, label %for.body337.sw.bb1.i_crit_edge815
    i32 6, label %for.body337.sw.bb1.i_crit_edge816
    i32 7, label %for.body337.sw.bb1.i_crit_edge817
    i32 8, label %for.body337.sw.bb1.i_crit_edge818
    i32 9, label %for.body337.sw.bb1.i_crit_edge819
    i32 10, label %for.body337.sw.bb1.i_crit_edge820
    i32 11, label %for.body337.sw.bb1.i_crit_edge821
    i32 12, label %for.body337.sw.bb1.i_crit_edge822
    i32 13, label %for.body337.sw.bb1.i_crit_edge823
    i32 14, label %for.body337.sw.bb1.i_crit_edge824
    i32 15, label %for.body337.sw.bb1.i_crit_edge825
    i32 16, label %for.body337.sw.bb1.i_crit_edge826
    i32 17, label %for.body337.sw.bb1.i_crit_edge827
    i32 18, label %for.body337.sw.bb1.i_crit_edge828
    i32 19, label %for.body337.sw.bb1.i_crit_edge829
    i32 20, label %for.body337.sw.bb1.i_crit_edge830
    i32 21, label %for.body337.sw.bb1.i_crit_edge831
    i32 22, label %for.body337.sw.bb1.i_crit_edge832
    i32 23, label %for.body337.sw.bb1.i_crit_edge833
    i32 24, label %for.body337.sw.bb1.i_crit_edge834
    i32 25, label %for.body337.sw.bb1.i_crit_edge835
    i32 26, label %for.body337.sw.bb1.i_crit_edge836
    i32 27, label %for.body337.sw.bb1.i_crit_edge837
    i32 28, label %for.body337.sw.epilog.i_crit_edge
    i32 29, label %sw.bb5.i
    i32 30, label %sw.bb7.i
    i32 31, label %sw.bb13.i
    i32 32, label %sw.bb19.i
    i32 33, label %for.body337.sw.bb20.i_crit_edge
    i32 34, label %for.body337.sw.bb20.i_crit_edge838
    i32 35, label %for.body337.sw.bb20.i_crit_edge839
    i32 36, label %for.body337.sw.bb20.i_crit_edge840
  ]

for.body337.sw.bb20.i_crit_edge840:               ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20.i

for.body337.sw.bb20.i_crit_edge839:               ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20.i

for.body337.sw.bb20.i_crit_edge838:               ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20.i

for.body337.sw.bb20.i_crit_edge:                  ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb20.i

for.body337.sw.epilog.i_crit_edge:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.body337.sw.bb1.i_crit_edge837:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge836:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge835:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge834:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge833:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge832:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge831:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge830:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge829:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge828:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge827:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge826:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge825:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge824:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge823:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge822:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge821:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge820:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge819:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge818:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge817:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge816:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge815:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge814:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge813:                ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb1.i_crit_edge:                   ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

for.body337.sw.bb.i_crit_edge812:                 ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body337.sw.bb.i_crit_edge:                    ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body337.s5m8767_get_vsel_reg.exit_crit_edge:  ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %s5m8767_get_vsel_reg.exit

sw.bb.i:                                          ; preds = %for.body337.sw.bb.i_crit_edge, %for.body337.sw.bb.i_crit_edge812
  %add.i = add nuw nsw i32 %313, 92
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %for.body337.sw.bb1.i_crit_edge, %for.body337.sw.bb1.i_crit_edge813, %for.body337.sw.bb1.i_crit_edge814, %for.body337.sw.bb1.i_crit_edge815, %for.body337.sw.bb1.i_crit_edge816, %for.body337.sw.bb1.i_crit_edge817, %for.body337.sw.bb1.i_crit_edge818, %for.body337.sw.bb1.i_crit_edge819, %for.body337.sw.bb1.i_crit_edge820, %for.body337.sw.bb1.i_crit_edge821, %for.body337.sw.bb1.i_crit_edge822, %for.body337.sw.bb1.i_crit_edge823, %for.body337.sw.bb1.i_crit_edge824, %for.body337.sw.bb1.i_crit_edge825, %for.body337.sw.bb1.i_crit_edge826, %for.body337.sw.bb1.i_crit_edge827, %for.body337.sw.bb1.i_crit_edge828, %for.body337.sw.bb1.i_crit_edge829, %for.body337.sw.bb1.i_crit_edge830, %for.body337.sw.bb1.i_crit_edge831, %for.body337.sw.bb1.i_crit_edge832, %for.body337.sw.bb1.i_crit_edge833, %for.body337.sw.bb1.i_crit_edge834, %for.body337.sw.bb1.i_crit_edge835, %for.body337.sw.bb1.i_crit_edge836, %for.body337.sw.bb1.i_crit_edge837
  %add3.i = add nuw nsw i32 %313, 95
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %for.body337
  %328 = ptrtoint ptr %buck2_gpiodvs64 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %buck2_gpiodvs64, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool.not.i684 = icmp eq i8 %329, 0
  br i1 %tobool.not.i684, label %sw.bb5.i.sw.epilog.i_crit_edge, label %if.then.i

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then.i:                                        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  %330 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %buck_gpioindex, align 4
  %add6.i = add i32 %331, 53
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %for.body337
  %332 = ptrtoint ptr %buck3_gpiodvs67 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %buck3_gpiodvs67, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %tobool8.not.i = icmp eq i8 %333, 0
  br i1 %tobool8.not.i, label %sw.bb7.i.sw.epilog.i_crit_edge, label %if.then9.i

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  %334 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %buck_gpioindex, align 4
  %add11.i = add i32 %335, 62
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %for.body337
  %336 = ptrtoint ptr %buck4_gpiodvs71 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %buck4_gpiodvs71, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool14.not.i = icmp eq i8 %337, 0
  br i1 %tobool14.not.i, label %sw.bb13.i.sw.epilog.i_crit_edge, label %if.then15.i

sw.bb13.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then15.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #8
  %338 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %buck_gpioindex, align 4
  %add17.i = add i32 %339, 71
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %for.body337
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %for.body337.sw.bb20.i_crit_edge, %for.body337.sw.bb20.i_crit_edge838, %for.body337.sw.bb20.i_crit_edge839, %for.body337.sw.bb20.i_crit_edge840
  %sub21.i = shl nuw nsw i32 %313, 1
  %add22.i = add nuw nsw i32 %sub21.i, 19
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb19.i, %if.then15.i, %sw.bb13.i.sw.epilog.i_crit_edge, %if.then9.i, %sw.bb7.i.sw.epilog.i_crit_edge, %if.then.i, %sw.bb5.i.sw.epilog.i_crit_edge, %sw.bb1.i, %sw.bb.i, %for.body337.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ %add22.i, %sw.bb20.i ], [ 80, %sw.bb19.i ], [ %add17.i, %if.then15.i ], [ 71, %sw.bb13.i.sw.epilog.i_crit_edge ], [ %add11.i, %if.then9.i ], [ 62, %sw.bb7.i.sw.epilog.i_crit_edge ], [ %add6.i, %if.then.i ], [ 53, %sw.bb5.i.sw.epilog.i_crit_edge ], [ %add3.i, %sw.bb1.i ], [ %add.i, %sw.bb.i ], [ 51, %for.body337.sw.epilog.i_crit_edge ]
  br label %s5m8767_get_vsel_reg.exit

s5m8767_get_vsel_reg.exit:                        ; preds = %sw.epilog.i, %for.body337.s5m8767_get_vsel_reg.exit_crit_edge
  %retval.0.i687 = phi i32 [ %reg.0.i, %sw.epilog.i ], [ -22, %for.body337.s5m8767_get_vsel_reg.exit_crit_edge ]
  %vsel_reg = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 27
  %340 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %retval.0.i687, ptr %vsel_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %313)
  %cmp351 = icmp slt i32 %313, 28
  %spec.select = select i1 %cmp351, i32 63, i32 255
  %341 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 28
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %spec.select, ptr %341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %313)
  %343 = icmp ult i32 %313, 37
  br i1 %343, label %switch.lookup, label %s5m8767_get_vsel_reg.exit.do.end363_crit_edge

s5m8767_get_vsel_reg.exit.do.end363_crit_edge:    ; preds = %s5m8767_get_vsel_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end363

switch.lookup:                                    ; preds = %s5m8767_get_vsel_reg.exit
  %switch.gep = getelementptr inbounds [37 x i32], ptr @switch.table.s5m8767_pmic_probe, i32 0, i32 %313
  %344 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %344)
  %switch.load = load i32, ptr %switch.gep, align 4
  %345 = ptrtoint ptr %num_regulators61 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %num_regulators61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %cmp45.i = icmp sgt i32 %346, 0
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %switch.lookup.do.end363_crit_edge

switch.lookup.do.end363_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end363

for.body.lr.ph.i:                                 ; preds = %switch.lookup
  %347 = ptrtoint ptr %opmode100 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %opmode100, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i699.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i697, %for.inc.i699.for.body.i_crit_edge ]
  %arrayidx.i696 = getelementptr %struct.sec_opmode_data, ptr %348, i32 %i.046.i
  %349 = ptrtoint ptr %arrayidx.i696 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx.i696, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %350, i32 %313)
  %cmp13.i = icmp eq i32 %350, %313
  br i1 %cmp13.i, label %if.end365, label %for.inc.i699

for.inc.i699:                                     ; preds = %for.body.i
  %inc.i697 = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i698 = icmp eq i32 %inc.i697, %346
  br i1 %exitcond.not.i698, label %for.inc.i699.do.end363_crit_edge, label %for.inc.i699.for.body.i_crit_edge

for.inc.i699.for.body.i_crit_edge:                ; preds = %for.inc.i699
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i699.do.end363_crit_edge:                 ; preds = %for.inc.i699
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end363

do.end363:                                        ; preds = %for.inc.i699.do.end363_crit_edge, %switch.lookup.do.end363_crit_edge, %s5m8767_get_vsel_reg.exit.do.end363_crit_edge
  %351 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.23) #9
  br label %cleanup423

if.end365:                                        ; preds = %for.body.i
  %mode16.i = getelementptr %struct.sec_opmode_data, ptr %348, i32 %i.046.i, i32 1
  %353 = ptrtoint ptr %mode16.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %mode16.i, align 4
  %arrayidx22.i = getelementptr [37 x [4 x i32]], ptr @s5m8767_opmode_reg, i32 0, i32 %313, i32 %354
  %355 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx22.i, align 4
  %shl.i = shl i32 %356, 6
  %enable_reg367 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 34
  %357 = ptrtoint ptr %enable_reg367 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %switch.load, ptr %enable_reg367, align 4
  %enable_mask = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 35
  %358 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 192, ptr %enable_mask, align 4
  %enable_val370 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313, i32 36
  %359 = ptrtoint ptr %enable_val370 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %shl.i, ptr %enable_val370, align 4
  %360 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %call.i, align 4
  %362 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %361, ptr %config, align 4
  %363 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %5, align 4
  %initdata = getelementptr %struct.sec_regulator_data, ptr %364, i32 %i.2752, i32 1
  %365 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %initdata, align 4
  %367 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %366, ptr %init_data, align 4
  %368 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %call.i, ptr %driver_data, align 4
  %369 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %regmap_pmic, align 4
  %371 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %370, ptr %regmap, align 4
  %372 = load ptr, ptr %5, align 4
  %reg_node = getelementptr %struct.sec_regulator_data, ptr %372, i32 %i.2752, i32 2
  %373 = ptrtoint ptr %reg_node to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %reg_node, align 4
  %375 = ptrtoint ptr %of_node379 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %374, ptr %of_node379, align 4
  %376 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr null, ptr %ena_gpiod, align 4
  %377 = load ptr, ptr %5, align 4
  %ext_control_gpiod = getelementptr %struct.sec_regulator_data, ptr %377, i32 %i.2752, i32 3
  %378 = ptrtoint ptr %ext_control_gpiod to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %ext_control_gpiod, align 4
  %tobool382.not = icmp eq ptr %379, null
  br i1 %tobool382.not, label %if.end365.if.end388_crit_edge, label %if.then383

if.end365.if.end388_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end388

if.then383:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx381 = getelementptr %struct.sec_regulator_data, ptr %377, i32 %i.2752
  call fastcc void @s5m8767_regulator_config_ext_control(ptr noundef nonnull %call.i, ptr noundef %arrayidx381, ptr noundef nonnull %config)
  %380 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %call.i, align 4
  %382 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ena_gpiod, align 4
  call void @devm_gpiod_unhinge(ptr noundef %381, ptr noundef %383) #6
  br label %if.end388

if.end388:                                        ; preds = %if.then383, %if.end365.if.end388_crit_edge
  %arrayidx390 = getelementptr [37 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %313
  %call391 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx390, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call391, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then393, label %if.end399

if.then393:                                       ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #8
  %384 = ptrtoint ptr %call391 to i32
  %385 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %386, ptr noundef nonnull @.str.26, i32 noundef %313) #9
  br label %cleanup423

if.end399:                                        ; preds = %if.end388
  %387 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %5, align 4
  %ext_control_gpiod402 = getelementptr %struct.sec_regulator_data, ptr %388, i32 %i.2752, i32 3
  %389 = ptrtoint ptr %ext_control_gpiod402 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ext_control_gpiod402, align 4
  %tobool403.not = icmp eq ptr %390, null
  br i1 %tobool403.not, label %if.end399.for.inc420_crit_edge, label %if.then404

if.end399.for.inc420_crit_edge:                   ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc420

if.then404:                                       ; preds = %if.end399
  %call405 = call fastcc i32 @s5m8767_enable_ext_control(ptr noundef nonnull %call.i, ptr noundef %call391)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call405)
  %cmp406 = icmp slt i32 %call405, 0
  br i1 %cmp406, label %do.end411, label %if.then404.for.inc420_crit_edge

if.then404.for.inc420_crit_edge:                  ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc420

do.end411:                                        ; preds = %if.then404
  call void @__sanitizer_cov_trace_pc() #8
  %391 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %call.i, align 4
  %393 = ptrtoint ptr %call391 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %call391, align 8
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %394, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.29, ptr noundef %396, i32 noundef %call405) #9
  br label %cleanup423

for.inc420:                                       ; preds = %if.then404.for.inc420_crit_edge, %if.end399.for.inc420_crit_edge
  %inc421 = add nuw nsw i32 %i.2752, 1
  %397 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %num_regulators, align 4
  %cmp335 = icmp slt i32 %inc421, %398
  br i1 %cmp335, label %for.inc420.for.body337_crit_edge, label %for.inc420.cleanup423_crit_edge

for.inc420.cleanup423_crit_edge:                  ; preds = %for.inc420
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup423

for.inc420.for.body337_crit_edge:                 ; preds = %for.inc420
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body337

cleanup423:                                       ; preds = %for.inc420.cleanup423_crit_edge, %do.end411, %if.then393, %do.end363, %if.end332.cleanup423_crit_edge, %if.end215.cleanup423_crit_edge, %if.end208.cleanup423_crit_edge, %if.end201.cleanup423_crit_edge, %if.end177.cleanup423_crit_edge, %if.end170.cleanup423_crit_edge, %if.end163.cleanup423_crit_edge, %do.end161, %if.end52.cleanup423_crit_edge, %do.end49, %do.end34, %do.end19, %s5m8767_pmic_dt_parse_pdata.exit.cleanup423_crit_edge, %s5m8767_pmic_dt_parse_ds_gpio.exit.i, %s5m8767_pmic_dt_parse_dvs_gpio.exit.i, %do.end104.i, %do.end91.i, %do.end78.i, %if.then22.i, %if.then16.i, %do.end8.i, %do.end
  %retval.2 = phi i32 [ -22, %do.end19 ], [ -22, %do.end34 ], [ -22, %do.end49 ], [ -22, %do.end161 ], [ -19, %do.end ], [ %86, %s5m8767_pmic_dt_parse_pdata.exit.cleanup423_crit_edge ], [ -12, %if.end52.cleanup423_crit_edge ], [ %call167, %if.end163.cleanup423_crit_edge ], [ %call174, %if.end170.cleanup423_crit_edge ], [ %call181, %if.end177.cleanup423_crit_edge ], [ %call205, %if.end201.cleanup423_crit_edge ], [ %call212, %if.end208.cleanup423_crit_edge ], [ %call219, %if.end215.cleanup423_crit_edge ], [ -22, %s5m8767_pmic_dt_parse_ds_gpio.exit.i ], [ -22, %s5m8767_pmic_dt_parse_dvs_gpio.exit.i ], [ -22, %do.end8.i ], [ -12, %if.then16.i ], [ -12, %if.then22.i ], [ -22, %do.end104.i ], [ -22, %do.end91.i ], [ -22, %do.end78.i ], [ %call405, %do.end411 ], [ %384, %if.then393 ], [ -22, %do.end363 ], [ 0, %if.end332.cleanup423_crit_edge ], [ 0, %for.inc420.cleanup423_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5m8767_regulator_config_ext_control(ptr nocapture noundef readonly %s5m8767, ptr nocapture noundef readonly %rdata, ptr nocapture noundef writeonly %config) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %1)
  %cmp.not = icmp eq i32 %1, 36
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup23

for.cond.preheader:                               ; preds = %entry
  %num_regulators = getelementptr inbounds %struct.s5m8767_info, ptr %s5m8767, i32 0, i32 2
  %2 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp149 = icmp sgt i32 %3, 0
  br i1 %cmp149, label %for.body.lr.ph, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %opmode2 = getelementptr inbounds %struct.s5m8767_info, ptr %s5m8767, i32 0, i32 3
  %4 = ptrtoint ptr %opmode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opmode2, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sec_opmode_data, ptr %5, i32 %i.050
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %7)
  %cmp5 = icmp eq i32 %7, 36
  br i1 %cmp5, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body
  %mode9 = getelementptr %struct.sec_opmode_data, ptr %5, i32 %i.050, i32 1
  %8 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode9, align 4
  %arrayidx10 = getelementptr [37 x [4 x i32]], ptr @s5m8767_opmode_reg, i32 0, i32 36, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp12.not = icmp eq i32 %11, 1
  br i1 %cmp12.not, label %if.end14, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %mode.247 = phi i32 [ %11, %for.end.do.end_crit_edge ], [ 0, %for.cond.preheader.do.end_crit_edge ], [ 0, %for.inc.do.end_crit_edge ]
  %12 = ptrtoint ptr %s5m8767 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s5m8767, align 4
  %reg_node = getelementptr inbounds %struct.sec_regulator_data, ptr %rdata, i32 0, i32 2
  %14 = ptrtoint ptr %reg_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_node, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.113, ptr noundef %15, i32 noundef %mode.247) #9
  br label %cleanup23

if.end14:                                         ; preds = %for.end
  %ext_control_gpiod = getelementptr inbounds %struct.sec_regulator_data, ptr %rdata, i32 0, i32 3
  %16 = ptrtoint ptr %ext_control_gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_control_gpiod, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %s5m8767 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s5m8767, align 4
  %reg_node20 = getelementptr inbounds %struct.sec_regulator_data, ptr %rdata, i32 0, i32 2
  %20 = ptrtoint ptr %reg_node20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_node20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.116, ptr noundef %21) #9
  br label %cleanup23

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %22 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %ena_gpiod, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %do.end18, %do.end, %entry.cleanup23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_unhinge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s5m8767_enable_ext_control(ptr nocapture noundef readonly %s5m8767, ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call)
  %cmp.not = icmp eq i32 %call, 36
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_regulators.i = getelementptr inbounds %struct.s5m8767_info, ptr %s5m8767, i32 0, i32 2
  %0 = ptrtoint ptr %num_regulators.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_regulators.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp45.i = icmp sgt i32 %1, 0
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %opmode.i = getelementptr inbounds %struct.s5m8767_info, ptr %s5m8767, i32 0, i32 3
  %2 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opmode.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sec_opmode_data, ptr %3, i32 %i.046.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %5)
  %cmp13.i = icmp eq i32 %5, 36
  br i1 %cmp13.i, label %if.end3, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %iodev = getelementptr inbounds %struct.s5m8767_info, ptr %s5m8767, i32 0, i32 1
  %6 = ptrtoint ptr %iodev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iodev, align 4
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_pmic, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 90, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m8767_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.else28_crit_edge
    i32 1, label %entry.if.else28_crit_edge68
    i32 2, label %entry.if.else28_crit_edge69
    i32 3, label %entry.if.else28_crit_edge70
    i32 4, label %entry.if.else28_crit_edge71
    i32 5, label %entry.if.else28_crit_edge72
    i32 6, label %entry.if.else28_crit_edge73
    i32 7, label %entry.if.else28_crit_edge74
    i32 8, label %entry.if.else28_crit_edge75
    i32 9, label %entry.if.else28_crit_edge76
    i32 10, label %entry.if.else28_crit_edge77
    i32 11, label %entry.if.else28_crit_edge78
    i32 12, label %entry.if.else28_crit_edge79
    i32 13, label %entry.if.else28_crit_edge80
    i32 14, label %entry.if.else28_crit_edge81
    i32 15, label %entry.if.else28_crit_edge82
    i32 16, label %entry.if.else28_crit_edge83
    i32 17, label %entry.if.else28_crit_edge84
    i32 18, label %entry.if.else28_crit_edge85
    i32 19, label %entry.if.else28_crit_edge86
    i32 20, label %entry.if.else28_crit_edge87
    i32 21, label %entry.if.else28_crit_edge88
    i32 22, label %entry.if.else28_crit_edge89
    i32 23, label %entry.if.else28_crit_edge90
    i32 24, label %entry.if.else28_crit_edge91
    i32 25, label %entry.if.else28_crit_edge92
    i32 26, label %entry.if.else28_crit_edge93
    i32 27, label %entry.if.else28_crit_edge94
    i32 36, label %entry.if.else28_crit_edge95
    i32 33, label %entry.if.else28_crit_edge96
    i32 32, label %entry.if.else28_crit_edge97
    i32 29, label %land.lhs.true
    i32 30, label %land.lhs.true4
    i32 31, label %land.lhs.true10
    i32 28, label %entry.if.else28_crit_edge98
  ]

entry.if.else28_crit_edge98:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge97:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge96:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge95:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge94:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge93:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge92:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge87:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge86:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge85:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge84:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge83:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge82:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge81:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge80:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge79:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge78:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge75:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge74:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge73:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge72:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge71:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge70:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge69:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge68:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.if.else28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %buck2_gpiodvs = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %buck2_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buck2_gpiodvs, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true.if.else28_crit_edge, label %if.then

land.lhs.true.if.else28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %buck2_vol = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 11
  br label %sw.epilog

land.lhs.true4:                                   ; preds = %entry
  %buck3_gpiodvs = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %buck3_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buck3_gpiodvs, align 4, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.else28_crit_edge, label %if.then6

land.lhs.true4.if.else28_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  %buck3_vol = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 12
  br label %sw.epilog

land.lhs.true10:                                  ; preds = %entry
  %buck4_gpiodvs = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %buck4_gpiodvs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buck4_gpiodvs, align 1, !range !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  %buck4_vol = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 13
  br i1 %tobool11.not, label %land.lhs.true10.if.else28_crit_edge, label %land.lhs.true10.sw.epilog_crit_edge

land.lhs.true10.sw.epilog_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true10.if.else28_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

sw.epilog:                                        ; preds = %land.lhs.true10.sw.epilog_crit_edge, %if.then6, %if.then
  %buck234_vol.0 = phi ptr [ %buck2_vol, %if.then ], [ %buck3_vol, %if.then6 ], [ %buck4_vol, %land.lhs.true10.sw.epilog_crit_edge ]
  %tobool17.not = icmp eq ptr %buck234_vol.0, null
  br i1 %tobool17.not, label %sw.epilog.if.else28_crit_edge, label %while.cond.preheader

sw.epilog.if.else28_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else28

while.cond.preheader:                             ; preds = %sw.epilog
  %7 = ptrtoint ptr %buck234_vol.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buck234_vol.0, align 1
  %conv64 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv64, i32 %selector)
  %cmp19.not65 = icmp eq i32 %conv64, %selector
  br i1 %cmp19.not65, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buck234_vol.167 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buck234_vol.0, %while.cond.preheader.while.body_crit_edge ]
  %index.066 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buck234_vol.167, i32 1
  %inc = add i32 %index.066, 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv = zext i8 %10 to i32
  %cmp19.not = icmp eq i32 %conv, %selector
  br i1 %cmp19.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %index.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %buck_gpioindex = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 16
  %11 = ptrtoint ptr %buck_gpioindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buck_gpioindex, align 4
  store i32 %index.0.lcssa, ptr %buck_gpioindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa, i32 %12)
  %cmp22 = icmp sgt i32 %index.0.lcssa, %12
  %buck_gpios.i = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 14
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %buck_gpios.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buck_gpios.i, align 4
  %shr1.i = lshr i32 %index.0.lcssa, 2
  %and.i = and i32 %shr1.i, 1
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %14) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef %and.i) #6
  %arrayidx2.i = getelementptr %struct.s5m8767_info, ptr %call, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %shr32.i = lshr i32 %index.0.lcssa, 1
  %and4.i = and i32 %shr32.i, 1
  %call.i3.i = tail call ptr @gpio_to_desc(i32 noundef %16) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i3.i, i32 noundef %and4.i) #6
  %arrayidx6.i = getelementptr %struct.s5m8767_info, ptr %call, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i, align 4
  %and7.i = and i32 %index.0.lcssa, 1
  %call.i4.i = tail call ptr @gpio_to_desc(i32 noundef %18) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4.i, i32 noundef %and7.i) #6
  br label %cleanup

if.else26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.s5m8767_info, ptr %call, i32 0, i32 14, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %and.i55 = and i32 %index.0.lcssa, 1
  %call.i.i56 = tail call ptr @gpio_to_desc(i32 noundef %20) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i56, i32 noundef %and.i55) #6
  %arrayidx2.i57 = getelementptr %struct.s5m8767_info, ptr %call, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %arrayidx2.i57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.i57, align 4
  %shr1.i58 = lshr i32 %index.0.lcssa, 1
  %and3.i = and i32 %shr1.i58, 1
  %call.i3.i59 = tail call ptr @gpio_to_desc(i32 noundef %22) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i3.i59, i32 noundef %and3.i) #6
  %23 = ptrtoint ptr %buck_gpios.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buck_gpios.i, align 4
  %shr62.i = lshr i32 %index.0.lcssa, 2
  %and7.i60 = and i32 %shr62.i, 1
  %call.i4.i61 = tail call ptr @gpio_to_desc(i32 noundef %24) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i4.i61, i32 noundef %and7.i60) #6
  br label %cleanup

if.else28:                                        ; preds = %sw.epilog.if.else28_crit_edge, %land.lhs.true10.if.else28_crit_edge, %land.lhs.true4.if.else28_crit_edge, %land.lhs.true.if.else28_crit_edge, %entry.if.else28_crit_edge, %entry.if.else28_crit_edge68, %entry.if.else28_crit_edge69, %entry.if.else28_crit_edge70, %entry.if.else28_crit_edge71, %entry.if.else28_crit_edge72, %entry.if.else28_crit_edge73, %entry.if.else28_crit_edge74, %entry.if.else28_crit_edge75, %entry.if.else28_crit_edge76, %entry.if.else28_crit_edge77, %entry.if.else28_crit_edge78, %entry.if.else28_crit_edge79, %entry.if.else28_crit_edge80, %entry.if.else28_crit_edge81, %entry.if.else28_crit_edge82, %entry.if.else28_crit_edge83, %entry.if.else28_crit_edge84, %entry.if.else28_crit_edge85, %entry.if.else28_crit_edge86, %entry.if.else28_crit_edge87, %entry.if.else28_crit_edge88, %entry.if.else28_crit_edge89, %entry.if.else28_crit_edge90, %entry.if.else28_crit_edge91, %entry.if.else28_crit_edge92, %entry.if.else28_crit_edge93, %entry.if.else28_crit_edge94, %entry.if.else28_crit_edge95, %entry.if.else28_crit_edge96, %entry.if.else28_crit_edge97, %entry.if.else28_crit_edge98
  %call29 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %selector) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else28, %if.else26, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.else26 ], [ %call29, %if.else28 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5m8767_set_voltage_time_sel(ptr noundef %rdev, i32 noundef %old_sel, i32 noundef %new_sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel, i32 %old_sel)
  %cmp = icmp ugt i32 %new_sel, %old_sel
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %ramp_delay = getelementptr inbounds %struct.s5m8767_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ramp_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %uV_step = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %uV_step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uV_step, align 4
  %sub = sub i32 %new_sel, %old_sel
  %mul = mul i32 %5, %sub
  %mul2 = mul i32 %1, 1000
  %add = add i32 %mul2, -1
  %sub3 = add i32 %add, %mul
  %div = udiv i32 %sub3, %mul2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !85, !86, !88, !90, !92, !93, !94, !96, !98, !100, !101, !102, !104, !106, !108, !109, !110, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !136, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !236, !237, !239, !240, !241}
!llvm.module.flags = !{!243, !244, !245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !{ptr @__initcall__kmod_s5m8767__288_1007_s5m8767_pmic_driver_init6, !1, !"__initcall__kmod_s5m8767__288_1007_s5m8767_pmic_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/s5m8767.c", i32 1007, i32 1}
!2 = !{ptr @__exitcall_s5m8767_pmic_driver_exit, !1, !"__exitcall_s5m8767_pmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/s5m8767.c", i32 1010, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/s5m8767.c", i32 1011, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/s5m8767.c", i32 1012, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/s5m8767.c", i32 1002, i32 11}
!12 = !{ptr @s5m8767_pmic_driver, !13, !"s5m8767_pmic_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/s5m8767.c", i32 1000, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/s5m8767.c", i32 699, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @s5m8767_pmic_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @s5m8767_pmic_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/s5m8767.c", i32 711, i32 4}
!24 = !{ptr @s5m8767_pmic_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @s5m8767_pmic_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @s5m8767_pmic_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/regulator/s5m8767.c", i32 718, i32 4}
!28 = !{ptr @s5m8767_pmic_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @s5m8767_pmic_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/regulator/s5m8767.c", i32 725, i32 4}
!31 = !{ptr @s5m8767_pmic_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/s5m8767.c", i32 804, i32 4}
!34 = !{ptr @s5m8767_pmic_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @s5m8767_pmic_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/s5m8767.c", i32 809, i32 6}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/s5m8767.c", i32 814, i32 6}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/s5m8767.c", i32 819, i32 6}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/s5m8767.c", i32 834, i32 57}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/s5m8767.c", i32 838, i32 57}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/s5m8767.c", i32 842, i32 57}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/s5m8767.c", i32 946, i32 5}
!50 = !{ptr @s5m8767_pmic_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5m8767_pmic_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/s5m8767.c", i32 975, i32 4}
!54 = !{ptr @s5m8767_pmic_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5m8767_pmic_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/s5m8767.c", i32 983, i32 5}
!58 = !{ptr @s5m8767_pmic_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s5m8767_pmic_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/s5m8767.c", i32 531, i32 3}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/s5m8767.c", i32 535, i32 48}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/s5m8767.c", i32 537, i32 3}
!69 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/s5m8767.c", i32 568, i32 4}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.37, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/s5m8767.c", i32 577, i32 4}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/s5m8767.c", i32 579, i32 4}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/s5m8767.c", i32 595, i32 36}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/s5m8767.c", i32 597, i32 4}
!84 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/s5m8767.c", i32 608, i32 31}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/s5m8767.c", i32 612, i32 5}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/s5m8767.c", i32 614, i32 4}
!92 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.49, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.51, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/s5m8767.c", i32 619, i32 31}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/s5m8767.c", i32 623, i32 5}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/s5m8767.c", i32 625, i32 4}
!100 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/s5m8767.c", i32 630, i32 31}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/s5m8767.c", i32 634, i32 5}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/s5m8767.c", i32 636, i32 4}
!108 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.59, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/s5m8767.c", i32 648, i32 5}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/s5m8767.c", i32 654, i32 5}
!114 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry.63, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @s5m8767_pmic_dt_parse_pdata._entry_ptr.66, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/s5m8767.c", i32 664, i32 31}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/s5m8767.c", i32 667, i32 31}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/s5m8767.c", i32 670, i32 31}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/s5m8767.c", i32 675, i32 37}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/s5m8767.c", i32 492, i32 6}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/s5m8767.c", i32 494, i32 4}
!129 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @s5m8767_pmic_dt_parse_dvs_gpio._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @s5m8767_pmic_dt_parse_dvs_gpio._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/s5m8767.c", i32 510, i32 6}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/s5m8767.c", i32 512, i32 4}
!136 = !{ptr @s5m8767_pmic_dt_parse_ds_gpio._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @s5m8767_pmic_dt_parse_ds_gpio._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @buck_voltage_val2, !139, !"buck_voltage_val2", i1 false, i1 false}
!139 = !{!"../drivers/regulator/s5m8767.c", i32 54, i32 38}
!140 = !{ptr @reg_voltage_map, !141, !"reg_voltage_map", i1 false, i1 false}
!141 = !{!"../drivers/regulator/s5m8767.c", i32 78, i32 39}
!142 = !{ptr @ldo_voltage_val2, !143, !"ldo_voltage_val2", i1 false, i1 false}
!143 = !{!"../drivers/regulator/s5m8767.c", i32 72, i32 38}
!144 = !{ptr @ldo_voltage_val1, !145, !"ldo_voltage_val1", i1 false, i1 false}
!145 = !{!"../drivers/regulator/s5m8767.c", i32 66, i32 38}
!146 = !{ptr @buck_voltage_val1, !147, !"buck_voltage_val1", i1 false, i1 false}
!147 = !{!"../drivers/regulator/s5m8767.c", i32 48, i32 38}
!148 = !{ptr @buck_voltage_val3, !149, !"buck_voltage_val3", i1 false, i1 false}
!149 = !{!"../drivers/regulator/s5m8767.c", i32 60, i32 38}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/regulator/s5m8767.c", i32 385, i32 2}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/regulator/s5m8767.c", i32 386, i32 2}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/regulator/s5m8767.c", i32 387, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/regulator/s5m8767.c", i32 388, i32 2}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/regulator/s5m8767.c", i32 389, i32 2}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/regulator/s5m8767.c", i32 390, i32 2}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/s5m8767.c", i32 391, i32 2}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/regulator/s5m8767.c", i32 392, i32 2}
!166 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/s5m8767.c", i32 393, i32 2}
!168 = !{ptr @.str.85, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/regulator/s5m8767.c", i32 394, i32 2}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/s5m8767.c", i32 395, i32 2}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/regulator/s5m8767.c", i32 396, i32 2}
!174 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/regulator/s5m8767.c", i32 397, i32 2}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/regulator/s5m8767.c", i32 398, i32 2}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/s5m8767.c", i32 399, i32 2}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/s5m8767.c", i32 400, i32 2}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/s5m8767.c", i32 401, i32 2}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/regulator/s5m8767.c", i32 402, i32 2}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/regulator/s5m8767.c", i32 403, i32 2}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/regulator/s5m8767.c", i32 404, i32 2}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/regulator/s5m8767.c", i32 405, i32 2}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/s5m8767.c", i32 406, i32 2}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/regulator/s5m8767.c", i32 407, i32 2}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/regulator/s5m8767.c", i32 408, i32 2}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/regulator/s5m8767.c", i32 409, i32 2}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/s5m8767.c", i32 410, i32 2}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/regulator/s5m8767.c", i32 411, i32 2}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/regulator/s5m8767.c", i32 412, i32 2}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/regulator/s5m8767.c", i32 413, i32 2}
!208 = !{ptr @.str.105, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/regulator/s5m8767.c", i32 414, i32 2}
!210 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/regulator/s5m8767.c", i32 415, i32 2}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/regulator/s5m8767.c", i32 416, i32 2}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/regulator/s5m8767.c", i32 417, i32 2}
!216 = !{ptr @.str.109, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/regulator/s5m8767.c", i32 418, i32 2}
!218 = !{ptr @.str.110, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/regulator/s5m8767.c", i32 419, i32 2}
!220 = !{ptr @.str.111, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/regulator/s5m8767.c", i32 420, i32 2}
!222 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/s5m8767.c", i32 421, i32 2}
!224 = !{ptr @regulators, !225, !"regulators", i1 false, i1 false}
!225 = !{!"../drivers/regulator/s5m8767.c", i32 384, i32 30}
!226 = !{ptr @s5m8767_ops, !227, !"s5m8767_ops", i1 false, i1 false}
!227 = !{!"../drivers/regulator/s5m8767.c", i32 349, i32 35}
!228 = !{ptr @s5m8767_buck78_ops, !229, !"s5m8767_buck78_ops", i1 false, i1 false}
!229 = !{!"../drivers/regulator/s5m8767.c", i32 359, i32 35}
!230 = !{ptr @s5m8767_opmode_reg, !231, !"s5m8767_opmode_reg", i1 false, i1 false}
!231 = !{!"../drivers/regulator/s5m8767.c", i32 118, i32 27}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/regulator/s5m8767.c", i32 445, i32 3}
!234 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @s5m8767_regulator_config_ext_control._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @s5m8767_regulator_config_ext_control._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/regulator/s5m8767.c", i32 452, i32 3}
!239 = !{ptr @s5m8767_regulator_config_ext_control._entry.115, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @s5m8767_regulator_config_ext_control._entry_ptr.117, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @s5m8767_pmic_id, !242, !"s5m8767_pmic_id", i1 false, i1 false}
!242 = !{!"../drivers/regulator/s5m8767.c", i32 994, i32 40}
!243 = !{i32 1, !"wchar_size", i32 2}
!244 = !{i32 1, !"min_enum_size", i32 4}
!245 = !{i32 8, !"branch-target-enforcement", i32 0}
!246 = !{i32 8, !"sign-return-address", i32 0}
!247 = !{i32 8, !"sign-return-address-all", i32 0}
!248 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!249 = !{i32 7, !"uwtable", i32 1}
!250 = !{i32 7, !"frame-pointer", i32 2}
!251 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{i8 0, i8 2}
