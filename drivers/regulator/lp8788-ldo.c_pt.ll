; ModuleID = '/llk/IR_all_yes/drivers/regulator/lp8788-ldo.c_pt.bc'
source_filename = "../drivers/regulator/lp8788-ldo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lp8788_ldo = type { ptr, ptr, ptr, ptr }
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_lp8788_ldo__288_626_lp8788_ldo_init4 = internal global ptr @lp8788_ldo_init, section ".initcall4.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lp8788_dldo_driver, ptr @lp8788_aldo_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_ldo_exit = internal global ptr @lp8788_ldo_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [44 x i8] c"lp8788_ldo.description=TI LP8788 LDO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [27 x i8] c"lp8788_ldo.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"lp8788_ldo.file=drivers/regulator/lp8788-ldo\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"lp8788_ldo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [38 x i8] c"lp8788_ldo.alias=platform:lp8788-dldo\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [38 x i8] c"lp8788_ldo.alias=platform:lp8788-aldo\00", section ".modinfo", align 1
@lp8788_dldo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_dldo_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lp8788_aldo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_aldo_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp8788-dldo\00", [20 x i8] zeroinitializer }, align 32
@lp8788_dldo_desc = internal constant { [12 x %struct.regulator_desc], [720 x i8] } { [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo1239_vtbl, ptr null, i32 0, i32 0, i32 46, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo1239_vtbl, ptr null, i32 0, i32 0, i32 47, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo1239_vtbl, ptr null, i32 0, i32 0, i32 48, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 2, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo4_vtbl, ptr null, i32 0, i32 0, i32 49, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo578_aldo6_vtbl, ptr null, i32 0, i32 0, i32 50, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 8, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo6_vtbl, ptr null, i32 0, i32 0, i32 51, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 16, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo578_aldo6_vtbl, ptr null, i32 0, i32 0, i32 52, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 16, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo578_aldo6_vtbl, ptr null, i32 0, i32 0, i32 53, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo1239_vtbl, ptr null, i32 0, i32 0, i32 54, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 16, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo1011_vtbl, ptr null, i32 0, i32 0, i32 55, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 16, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo1011_vtbl, ptr null, i32 0, i32 0, i32 56, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [720 x i8] zeroinitializer }, align 32
@lp8788_dldo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DLDO%d regulator register err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp8788_dldo_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/regulator/lp8788-ldo.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_dldo_probe._entry_ptr = internal global ptr @lp8788_dldo_probe._entry, section ".printk_index", align 4
@lp8788_config_ldo_enable_mode.en_mask = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" \10\08\04\02\01", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo1\00", [26 x i8] zeroinitializer }, align 32
@lp8788_ldo_voltage_table_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr @lp8788_ldo_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@lp8788_dldo1239_vtbl = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000, i32 2850000], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo4\00", [26 x i8] zeroinitializer }, align 32
@lp8788_dldo4_vtbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 3000000], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo5\00", [26 x i8] zeroinitializer }, align 32
@lp8788_dldo578_aldo6_vtbl = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3000000, i32 3000000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo6\00", [26 x i8] zeroinitializer }, align 32
@lp8788_dldo6_vtbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3000000, i32 3100000, i32 3200000, i32 3300000, i32 3400000, i32 3500000, i32 3600000, i32 3600000], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo7\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo8\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dldo9\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dldo10\00", [25 x i8] zeroinitializer }, align 32
@lp8788_dldo1011_vtbl = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1500000, i32 1500000, i32 1500000, i32 1500000, i32 1500000, i32 1500000, i32 1500000], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dldo11\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dldo12\00", [25 x i8] zeroinitializer }, align 32
@lp8788_ldo_voltage_fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr @lp8788_ldo_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp8788-aldo\00", [20 x i8] zeroinitializer }, align 32
@lp8788_aldo_desc = internal constant { [10 x %struct.regulator_desc], [632 x i8] } { [10 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.22, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 2, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_aldo1_vtbl, ptr null, i32 0, i32 0, i32 58, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2850000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2850000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2850000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2850000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 16, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_dldo578_aldo6_vtbl, ptr null, i32 0, i32 0, i32 63, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 8, i32 0, ptr @lp8788_ldo_voltage_table_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8788_aldo7_vtbl, ptr null, i32 0, i32 0, i32 64, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 2500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 1, i32 0, ptr @lp8788_ldo_voltage_fixed_ops, i32 0, i32 0, ptr null, i32 1100000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [632 x i8] zeroinitializer }, align 32
@lp8788_aldo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ALDO%d regulator register err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp8788_aldo_probe\00", [46 x i8] zeroinitializer }, align 32
@lp8788_aldo_probe._entry_ptr = internal global ptr @lp8788_aldo_probe._entry, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo1\00", [26 x i8] zeroinitializer }, align 32
@lp8788_aldo1_vtbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 2850000], [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo2\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo3\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo4\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo5\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo6\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo7\00", [26 x i8] zeroinitializer }, align 32
@lp8788_aldo7_vtbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1300000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1800000], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo8\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aldo9\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aldo10\00", [25 x i8] zeroinitializer }, align 32
@switch.table.lp8788_dldo_probe = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4, i32 4, i32 5, i32 4, i32 5, i32 4, i32 0, i32 1, i32 1, i32 1, i32 2, i32 4, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.lp8788_aldo_probe = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4, i32 4, i32 5, i32 4, i32 5, i32 4, i32 0, i32 1, i32 1, i32 1, i32 2, i32 4, i32 3], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 617, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"lp8788_dldo_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 563, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"lp8788_aldo_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 610, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 566, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"lp8788_dldo_desc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 185, i32 36 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 552, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"en_mask\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 467, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 506, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 187, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [29 x i8] c"lp8788_ldo_voltage_table_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 167, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"lp8788_dldo1239_vtbl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 118, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 200, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 213, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 226, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"lp8788_dldo4_vtbl\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 126, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 239, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"lp8788_dldo578_aldo6_vtbl\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 129, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 252, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"lp8788_dldo6_vtbl\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 135, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 265, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 278, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 291, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 304, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"lp8788_dldo1011_vtbl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 140, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 317, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 330, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"lp8788_ldo_voltage_fixed_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 177, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 613, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"lp8788_aldo_desc\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 342, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 599, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 344, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"lp8788_aldo1_vtbl\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 146, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 357, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 368, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 379, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 390, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 401, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 414, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"lp8788_aldo7_vtbl\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 149, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 427, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 438, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [34 x i8] c"../drivers/regulator/lp8788-ldo.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 449, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [31 x i8] c"switch.table.lp8788_dldo_probe\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [31 x i8] c"switch.table.lp8788_aldo_probe\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp8788_ldo_exit, ptr @__initcall__kmod_lp8788_ldo__288_626_lp8788_ldo_init4, ptr @lp8788_aldo_probe._entry, ptr @lp8788_aldo_probe._entry_ptr, ptr @lp8788_dldo_probe._entry, ptr @lp8788_dldo_probe._entry_ptr, ptr @lp8788_ldo_exit, ptr @drivers, ptr @lp8788_dldo_driver, ptr @lp8788_aldo_driver, ptr @.str, ptr @lp8788_dldo_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lp8788_config_ldo_enable_mode.en_mask, ptr @.str.6, ptr @.str.7, ptr @lp8788_ldo_voltage_table_ops, ptr @lp8788_dldo1239_vtbl, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @lp8788_dldo4_vtbl, ptr @.str.11, ptr @lp8788_dldo578_aldo6_vtbl, ptr @.str.12, ptr @lp8788_dldo6_vtbl, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @lp8788_dldo1011_vtbl, ptr @.str.17, ptr @.str.18, ptr @lp8788_ldo_voltage_fixed_ops, ptr @.str.19, ptr @lp8788_aldo_desc, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @lp8788_aldo1_vtbl, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @lp8788_aldo7_vtbl, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.lp8788_dldo_probe, ptr @switch.table.lp8788_aldo_probe], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_aldo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo_desc to i32), i32 2928, i32 3648, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_config_ldo_enable_mode.en_mask to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_ldo_voltage_table_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo1239_vtbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo4_vtbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo578_aldo6_vtbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo6_vtbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_dldo1011_vtbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_ldo_voltage_fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_aldo_desc to i32), i32 2440, i32 3072, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_aldo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_aldo1_vtbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_aldo7_vtbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp8788_dldo_probe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp8788_aldo_probe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_ldo_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_ldo_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_dldo_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg = alloca %struct.regulator_config, align 4
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
  %id1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #5
  %6 = getelementptr inbounds i8, ptr %cfg, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i, align 4
  %switch.tableidx = add i32 %5, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 13
  br i1 %9, label %switch.hole_check, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 6101, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end8_crit_edge, label %switch.lookup

switch.hole_check.if.end8_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.lp8788_dldo_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i59 = tail call ptr @gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %switch.load, i32 noundef 23) #5
  %ena_gpiod.i = getelementptr inbounds %struct.lp8788_ldo, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %ena_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i59, ptr %ena_gpiod.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call.i59 to i32
  br label %lp8788_config_ldo_enable_mode.exit

if.end.i:                                         ; preds = %switch.lookup
  %tobool.not.i = icmp eq ptr %call.i59, null
  br i1 %tobool.not.i, label %set_default_ldo_enable_mode.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

set_default_ldo_enable_mode.i:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [6 x i8], ptr @lp8788_config_ldo_enable_mode.en_mask, i32 0, i32 %switch.load
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %call14.i = tail call i32 @lp8788_update_bits(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %15, i8 noundef zeroext 0) #5
  br label %lp8788_config_ldo_enable_mode.exit

lp8788_config_ldo_enable_mode.exit:               ; preds = %set_default_ldo_enable_mode.i, %if.then.i
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ %call14.i, %set_default_ldo_enable_mode.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %lp8788_config_ldo_enable_mode.exit.if.end8_crit_edge, label %lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge

lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge: ; preds = %lp8788_config_ldo_enable_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp8788_config_ldo_enable_mode.exit.if.end8_crit_edge: ; preds = %lp8788_config_ldo_enable_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %lp8788_config_ldo_enable_mode.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %switch.hole_check.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ena_gpiod = getelementptr inbounds %struct.lp8788_ldo, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ena_gpiod, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %ena_gpiod12 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 5
  %18 = ptrtoint ptr %ena_gpiod12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ena_gpiod12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cfg, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 4
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %if.end13.cond.end_crit_edge, label %cond.true

if.end13.cond.end_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.lp8788_platform_data, ptr %23, i32 0, i32 2, i32 %5
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end13.cond.end_crit_edge
  %cond = phi ptr [ %25, %cond.true ], [ null, %if.end13.cond.end_crit_edge ]
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %26 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cond, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %regmap19 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %30 = ptrtoint ptr %regmap19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %regmap19, align 4
  %arrayidx21 = getelementptr [12 x %struct.regulator_desc], ptr @lp8788_dldo_desc, i32 0, i32 %5
  %call22 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx21, ptr noundef nonnull %cfg) #5
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call22 to i32
  %add = add i32 %5, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %31) #8
  br label %cleanup

if.end27:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %regulator = getelementptr inbounds %struct.lp8788_ldo, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call22, ptr %regulator, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then24, %lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %if.then24 ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

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
define internal i32 @lp8788_ldo_enable_time(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !117
  %1 = trunc i32 %call1 to i8
  %conv = add i8 %1, 68
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call2 = call i32 @lp8788_read_byte(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %6 = lshr i8 %5, 3
  %conv5 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv5, 5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_read_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_aldo_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg = alloca %struct.regulator_config, align 4
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
  %id1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #5
  %6 = getelementptr inbounds i8, ptr %cfg, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 12)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i, align 4
  %switch.tableidx = add i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 13
  br i1 %9, label %switch.hole_check, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 6101, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end8_crit_edge, label %switch.lookup

switch.hole_check.if.end8_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.lp8788_aldo_probe, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i60 = tail call ptr @gpiod_get_index_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %switch.load, i32 noundef 23) #5
  %ena_gpiod.i = getelementptr inbounds %struct.lp8788_ldo, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %ena_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i60, ptr %ena_gpiod.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call.i60 to i32
  br label %lp8788_config_ldo_enable_mode.exit

if.end.i:                                         ; preds = %switch.lookup
  %tobool.not.i = icmp eq ptr %call.i60, null
  br i1 %tobool.not.i, label %set_default_ldo_enable_mode.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

set_default_ldo_enable_mode.i:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [6 x i8], ptr @lp8788_config_ldo_enable_mode.en_mask, i32 0, i32 %switch.load
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %call14.i = tail call i32 @lp8788_update_bits(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %15, i8 noundef zeroext 0) #5
  br label %lp8788_config_ldo_enable_mode.exit

lp8788_config_ldo_enable_mode.exit:               ; preds = %set_default_ldo_enable_mode.i, %if.then.i
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ %call14.i, %set_default_ldo_enable_mode.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %lp8788_config_ldo_enable_mode.exit.if.end8_crit_edge, label %lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge

lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge: ; preds = %lp8788_config_ldo_enable_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp8788_config_ldo_enable_mode.exit.if.end8_crit_edge: ; preds = %lp8788_config_ldo_enable_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %lp8788_config_ldo_enable_mode.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %switch.hole_check.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ena_gpiod = getelementptr inbounds %struct.lp8788_ldo, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ena_gpiod, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %ena_gpiod12 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 5
  %18 = ptrtoint ptr %ena_gpiod12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ena_gpiod12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %cfg, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 4
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %if.end13.cond.end_crit_edge, label %cond.true

if.end13.cond.end_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.lp8788_platform_data, ptr %23, i32 0, i32 3, i32 %5
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end13.cond.end_crit_edge
  %cond = phi ptr [ %25, %cond.true ], [ null, %if.end13.cond.end_crit_edge ]
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %26 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cond, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %27 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %regmap19 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %30 = ptrtoint ptr %regmap19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %regmap19, align 4
  %arrayidx21 = getelementptr [10 x %struct.regulator_desc], ptr @lp8788_aldo_desc, i32 0, i32 %5
  %call22 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx21, ptr noundef nonnull %cfg) #5
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end28

if.then24:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call22 to i32
  %add27 = add i32 %5, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %add27, i32 noundef %31) #8
  br label %cleanup

if.end28:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %regulator = getelementptr inbounds %struct.lp8788_ldo, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call22, ptr %regulator, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then24, %lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %if.then24 ], [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %lp8788_config_ldo_enable_mode.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_lp8788_ldo__288_626_lp8788_ldo_init4, !1, !"__initcall__kmod_lp8788_ldo__288_626_lp8788_ldo_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/lp8788-ldo.c", i32 626, i32 1}
!2 = !{ptr @__exitcall_lp8788_ldo_exit, !3, !"__exitcall_lp8788_ldo_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/lp8788-ldo.c", i32 632, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/lp8788-ldo.c", i32 634, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/lp8788-ldo.c", i32 635, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/lp8788-ldo.c", i32 636, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/lp8788-ldo.c", i32 637, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias294, !14, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!14 = !{!"../drivers/regulator/lp8788-ldo.c", i32 638, i32 1}
!15 = !{ptr @drivers, !16, !"drivers", i1 false, i1 false}
!16 = !{!"../drivers/regulator/lp8788-ldo.c", i32 617, i32 39}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/lp8788-ldo.c", i32 566, i32 11}
!19 = !{ptr @lp8788_dldo_driver, !20, !"lp8788_dldo_driver", i1 false, i1 false}
!20 = !{!"../drivers/regulator/lp8788-ldo.c", i32 563, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/lp8788-ldo.c", i32 552, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lp8788_dldo_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @lp8788_dldo_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @lp8788_config_ldo_enable_mode.en_mask, !30, !"en_mask", i1 false, i1 false}
!30 = !{!"../drivers/regulator/lp8788-ldo.c", i32 467, i32 18}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/lp8788-ldo.c", i32 506, i32 13}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/lp8788-ldo.c", i32 187, i32 11}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/lp8788-ldo.c", i32 200, i32 11}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/lp8788-ldo.c", i32 213, i32 11}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/lp8788-ldo.c", i32 226, i32 11}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/lp8788-ldo.c", i32 239, i32 11}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/lp8788-ldo.c", i32 252, i32 11}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/lp8788-ldo.c", i32 265, i32 11}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/lp8788-ldo.c", i32 278, i32 11}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/lp8788-ldo.c", i32 291, i32 11}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/lp8788-ldo.c", i32 304, i32 11}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/lp8788-ldo.c", i32 317, i32 11}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/lp8788-ldo.c", i32 330, i32 11}
!57 = !{ptr @lp8788_dldo_desc, !58, !"lp8788_dldo_desc", i1 false, i1 false}
!58 = !{!"../drivers/regulator/lp8788-ldo.c", i32 185, i32 36}
!59 = !{ptr @lp8788_ldo_voltage_table_ops, !60, !"lp8788_ldo_voltage_table_ops", i1 false, i1 false}
!60 = !{!"../drivers/regulator/lp8788-ldo.c", i32 167, i32 35}
!61 = !{ptr @lp8788_dldo1239_vtbl, !62, !"lp8788_dldo1239_vtbl", i1 false, i1 false}
!62 = !{!"../drivers/regulator/lp8788-ldo.c", i32 118, i32 18}
!63 = !{ptr @lp8788_dldo4_vtbl, !64, !"lp8788_dldo4_vtbl", i1 false, i1 false}
!64 = !{!"../drivers/regulator/lp8788-ldo.c", i32 126, i32 18}
!65 = !{ptr @lp8788_dldo578_aldo6_vtbl, !66, !"lp8788_dldo578_aldo6_vtbl", i1 false, i1 false}
!66 = !{!"../drivers/regulator/lp8788-ldo.c", i32 129, i32 18}
!67 = !{ptr @lp8788_dldo6_vtbl, !68, !"lp8788_dldo6_vtbl", i1 false, i1 false}
!68 = !{!"../drivers/regulator/lp8788-ldo.c", i32 135, i32 18}
!69 = !{ptr @lp8788_dldo1011_vtbl, !70, !"lp8788_dldo1011_vtbl", i1 false, i1 false}
!70 = !{!"../drivers/regulator/lp8788-ldo.c", i32 140, i32 18}
!71 = !{ptr @lp8788_ldo_voltage_fixed_ops, !72, !"lp8788_ldo_voltage_fixed_ops", i1 false, i1 false}
!72 = !{!"../drivers/regulator/lp8788-ldo.c", i32 177, i32 35}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/lp8788-ldo.c", i32 613, i32 11}
!75 = !{ptr @lp8788_aldo_driver, !76, !"lp8788_aldo_driver", i1 false, i1 false}
!76 = !{!"../drivers/regulator/lp8788-ldo.c", i32 610, i32 31}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/lp8788-ldo.c", i32 599, i32 3}
!79 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @lp8788_aldo_probe._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @lp8788_aldo_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/lp8788-ldo.c", i32 344, i32 11}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/lp8788-ldo.c", i32 357, i32 11}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/lp8788-ldo.c", i32 368, i32 11}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/lp8788-ldo.c", i32 379, i32 11}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/lp8788-ldo.c", i32 390, i32 11}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/lp8788-ldo.c", i32 401, i32 11}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/lp8788-ldo.c", i32 414, i32 11}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/lp8788-ldo.c", i32 427, i32 11}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/lp8788-ldo.c", i32 438, i32 11}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/lp8788-ldo.c", i32 449, i32 11}
!102 = !{ptr @lp8788_aldo_desc, !103, !"lp8788_aldo_desc", i1 false, i1 false}
!103 = !{!"../drivers/regulator/lp8788-ldo.c", i32 342, i32 36}
!104 = !{ptr @lp8788_aldo1_vtbl, !105, !"lp8788_aldo1_vtbl", i1 false, i1 false}
!105 = !{!"../drivers/regulator/lp8788-ldo.c", i32 146, i32 18}
!106 = !{ptr @lp8788_aldo7_vtbl, !107, !"lp8788_aldo7_vtbl", i1 false, i1 false}
!107 = !{!"../drivers/regulator/lp8788-ldo.c", i32 149, i32 18}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
