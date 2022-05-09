; ModuleID = '/llk/IR_all_yes/drivers/regulator/max77650-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77650-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.max77650_regulator_desc = type { %struct.regulator_desc, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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

@__initcall__kmod_max77650_regulator__288_402_max77650_regulator_driver_init6 = internal global ptr @max77650_regulator_driver_init, section ".initcall6.init", align 4
@max77650_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77650_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77650_regulator_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77650_regulator_driver_exit = internal global ptr @max77650_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [66 x i8] c"max77650_regulator.description=MAXIM 77650/77651 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [74 x i8] c"max77650_regulator.author=Bartosz Golaszewski <bgolaszewski@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"max77650_regulator.file=drivers/regulator/max77650-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"max77650_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [53 x i8] c"max77650_regulator.alias=platform:max77650-regulator\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max77650-regulator\00", [45 x i8] zeroinitializer }, align 32
@max77650_regulator_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77650-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max77650_LDO_desc = internal global { %struct.max77650_regulator_desc, [36 x i8] } { %struct.max77650_regulator_desc { %struct.regulator_desc { ptr @.str.1, ptr @.str.2, ptr @.str.1, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @max77650_regulator_LDO_ops, i32 0, i32 0, ptr null, i32 1350000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 56, i32 127, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 57, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr null }, i32 56, i32 57 }, [36 x i8] zeroinitializer }, align 32
@max77650_SBB0_desc = internal global { %struct.max77650_regulator_desc, [36 x i8] } { %struct.max77650_regulator_desc { %struct.regulator_desc { ptr @.str.4, ptr @.str.5, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 64, i32 4, ptr @max77650_regulator_SBB_ops, i32 0, i32 0, ptr null, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @max77650_current_limit_table, i32 0, i32 0, i32 41, i32 63, i32 1, i32 41, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 42, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr null }, i32 41, i32 42 }, [36 x i8] zeroinitializer }, align 32
@max77650_SBB1_desc = internal global { %struct.max77650_regulator_desc, [36 x i8] } { %struct.max77650_regulator_desc { %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.6, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 64, i32 4, ptr @max77650_regulator_SBB_ops, i32 0, i32 0, ptr null, i32 800000, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @max77650_current_limit_table, i32 0, i32 0, i32 43, i32 63, i32 1, i32 43, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr null }, i32 43, i32 44 }, [36 x i8] zeroinitializer }, align 32
@max77650_SBB2_desc = internal global { %struct.max77650_regulator_desc, [36 x i8] } { %struct.max77650_regulator_desc { %struct.regulator_desc { ptr @.str.8, ptr @.str.5, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 64, i32 4, ptr @max77650_regulator_SBB_ops, i32 0, i32 0, ptr null, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @max77650_current_limit_table, i32 0, i32 0, i32 45, i32 63, i32 1, i32 45, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr null }, i32 45, i32 46 }, [36 x i8] zeroinitializer }, align 32
@max77651_SBB1_desc = internal global { %struct.max77650_regulator_desc, [36 x i8] } { %struct.max77650_regulator_desc { %struct.regulator_desc { ptr @.str.6, ptr @.str.7, ptr @.str.6, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 58, i32 4, ptr @max77651_SBB1_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @max77651_sbb1_volt_ranges, ptr @max77651_sbb1_volt_range_sel, i32 4, ptr null, ptr @max77650_current_limit_table, i32 43, i32 3, i32 43, i32 60, i32 1, i32 43, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 44, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr null }, i32 43, i32 44 }, [36 x i8] zeroinitializer }, align 32
@max77651_SBB2_desc = internal global { %struct.max77650_regulator_desc, [36 x i8] } { %struct.max77650_regulator_desc { %struct.regulator_desc { ptr @.str.8, ptr @.str.5, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 64, i32 4, ptr @max77650_regulator_SBB_ops, i32 0, i32 0, ptr null, i32 2400000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @max77650_current_limit_table, i32 0, i32 0, i32 45, i32 63, i32 1, i32 45, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 8, i32 46, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 100, i32 0, i32 0, ptr null }, i32 45, i32 46 }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ldo\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in-ldo\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@max77650_regulator_LDO_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @max77650_regulator_enable, ptr @max77650_regulator_disable, ptr @max77650_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbb0\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in-sbb0\00", [24 x i8] zeroinitializer }, align 32
@max77650_regulator_SBB_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @max77650_regulator_enable, ptr @max77650_regulator_disable, ptr @max77650_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max77650_current_limit_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000000, i32 866000, i32 707000, i32 500000], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbb1\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in-sbb1\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbb2\00", [27 x i8] zeroinitializer }, align 32
@max77651_SBB1_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_pickable_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_pickable_regmap, ptr null, ptr @regulator_get_voltage_sel_pickable_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @max77650_regulator_enable, ptr @max77650_regulator_disable, ptr @max77650_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@max77651_sbb1_volt_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range { i32 2400000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 3200000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 4000000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 4800000, i32 0, i32 9, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@max77651_sbb1_volt_range_sel = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.max77650_regulator_probe = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @max77650_SBB1_desc, ptr @max77650_SBB1_desc, ptr @max77650_SBB1_desc, ptr @max77651_SBB1_desc, ptr @max77650_SBB1_desc, ptr @max77651_SBB1_desc, ptr @max77650_SBB1_desc, ptr @max77650_SBB1_desc], [32 x i8] zeroinitializer }, align 32
@switch.table.max77650_regulator_probe.9 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @max77650_SBB2_desc, ptr @max77650_SBB2_desc, ptr @max77650_SBB2_desc, ptr @max77651_SBB2_desc, ptr @max77650_SBB2_desc, ptr @max77651_SBB2_desc, ptr @max77650_SBB2_desc, ptr @max77650_SBB2_desc], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"max77650_regulator_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 395, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 397, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"max77650_regulator_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 389, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"max77650_LDO_desc\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 148, i32 39 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"max77650_SBB0_desc\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 174, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"max77650_SBB1_desc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 204, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"max77650_SBB2_desc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 267, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"max77651_SBB1_desc\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 234, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"max77651_SBB2_desc\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 297, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 150, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 153, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 152, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant [27 x i8] c"max77650_regulator_LDO_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 111, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 176, i32 13 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 179, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"max77650_regulator_SBB_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 122, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [29 x i8] c"max77650_current_limit_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 63, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 206, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 209, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 269, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"max77651_SBB1_regulator_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 136, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"max77651_sbb1_volt_ranges\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 52, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"max77651_sbb1_volt_range_sel\00", align 1
@___asan_gen_.77 = private constant [42 x i8] c"../drivers/regulator/max77650-regulator.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 48, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [38 x i8] c"switch.table.max77650_regulator_probe\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [40 x i8] c"switch.table.max77650_regulator_probe.9\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max77650_regulator_driver_exit, ptr @__initcall__kmod_max77650_regulator__288_402_max77650_regulator_driver_init6, ptr @max77650_regulator_driver_exit, ptr @max77650_regulator_driver, ptr @.str, ptr @max77650_regulator_of_match, ptr @max77650_LDO_desc, ptr @max77650_SBB0_desc, ptr @max77650_SBB1_desc, ptr @max77650_SBB2_desc, ptr @max77651_SBB1_desc, ptr @max77651_SBB2_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @max77650_regulator_LDO_ops, ptr @.str.4, ptr @.str.5, ptr @max77650_regulator_SBB_ops, ptr @max77650_current_limit_table, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @max77651_SBB1_regulator_ops, ptr @max77651_sbb1_volt_ranges, ptr @max77651_sbb1_volt_range_sel, ptr @switch.table.max77650_regulator_probe, ptr @switch.table.max77650_regulator_probe.9], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_regulator_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_LDO_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_SBB0_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_SBB1_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_SBB2_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77651_SBB1_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77651_SBB2_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_regulator_LDO_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_regulator_SBB_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77650_current_limit_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77651_SBB1_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77651_sbb1_volt_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77651_sbb1_volt_range_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77650_regulator_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77650_regulator_probe.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77650_regulator_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77650_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77650_regulator_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #4
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !67
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %of_node3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node3, align 8
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @regmap_read(ptr noundef nonnull %call8, i32 noundef 17, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @max77650_LDO_desc, ptr %call5.i.i, align 4
  %arrayidx16 = getelementptr ptr, ptr %call5.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @max77650_SBB0_desc, ptr %arrayidx16, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 15
  %switch.tableidx = add nsw i32 %and, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 8
  br i1 %13, label %switch.hole_check, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %if.end15
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -87, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.max77650_regulator_probe, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep59 = getelementptr inbounds [8 x ptr], ptr @switch.table.max77650_regulator_probe.9, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load60 = load ptr, ptr %switch.gep59, align 4
  %arrayidx20 = getelementptr ptr, ptr %call5.i.i, i32 2
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %switch.load, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr ptr, ptr %call5.i.i, i32 3
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %switch.load60, ptr %arrayidx21, align 4
  %19 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %20 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call5.i.i, align 4
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %driver_data, align 4
  %call24 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %21, ptr noundef nonnull %config) #4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %switch.lookup.if.then26_crit_edge, label %for.cond

switch.lookup.if.then26_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

for.cond:                                         ; preds = %switch.lookup
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx16, align 4
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %driver_data, align 4
  %call24.1 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %24, ptr noundef nonnull %config) #4
  %cmp.i.1 = icmp ugt ptr %call24.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.if.then26_crit_edge, label %for.cond.1

for.cond.if.then26_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

for.cond.1:                                       ; preds = %for.cond
  %arrayidx23.2 = getelementptr ptr, ptr %call5.i.i, i32 2
  %26 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx23.2, align 4
  %28 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %driver_data, align 4
  %call24.2 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %27, ptr noundef nonnull %config) #4
  %cmp.i.2 = icmp ugt ptr %call24.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.if.then26_crit_edge, label %for.cond.2

for.cond.1.if.then26_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx23.3 = getelementptr ptr, ptr %call5.i.i, i32 3
  %29 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx23.3, align 4
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %driver_data, align 4
  %call24.3 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %30, ptr noundef nonnull %config) #4
  %cmp.i.3 = icmp ugt ptr %call24.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.if.then26_crit_edge, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.2.if.then26_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26

if.then26:                                        ; preds = %for.cond.2.if.then26_crit_edge, %for.cond.1.if.then26_crit_edge, %for.cond.if.then26_crit_edge, %switch.lookup.if.then26_crit_edge
  %call24.lcssa = phi ptr [ %call24, %switch.lookup.if.then26_crit_edge ], [ %call24.1, %for.cond.if.then26_crit_edge ], [ %call24.2, %for.cond.1.if.then26_crit_edge ], [ %call24.3, %for.cond.2.if.then26_crit_edge ]
  %32 = ptrtoint ptr %call24.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %for.cond.2.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %if.then26 ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ -19, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_active_discharge_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #4
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #4
  %regB = getelementptr inbounds %struct.max77650_regulator_desc, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regB to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regB, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %1, i32 noundef 15, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #4
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #4
  %regB = getelementptr inbounds %struct.max77650_regulator_desc, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %regB to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regB, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %1, i32 noundef 15, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77650_regulator_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !67
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #4
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #4
  %regB = getelementptr inbounds %struct.max77650_regulator_desc, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %regB to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regB, align 4
  %call2 = call i32 @regmap_read(ptr noundef %call1, i32 noundef %2, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp ne i32 %and, 4
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_pickable_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_pickable_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_pickable_regmap(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_max77650_regulator__288_402_max77650_regulator_driver_init6, !1, !"__initcall__kmod_max77650_regulator__288_402_max77650_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max77650-regulator.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_max77650_regulator_driver_exit, !1, !"__exitcall_max77650_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/max77650-regulator.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/max77650-regulator.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/max77650-regulator.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/max77650-regulator.c", i32 407, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/max77650-regulator.c", i32 397, i32 11}
!14 = !{ptr @max77650_regulator_driver, !15, !"max77650_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/max77650-regulator.c", i32 395, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/max77650-regulator.c", i32 150, i32 13}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/max77650-regulator.c", i32 153, i32 19}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/regulator/max77650-regulator.c", i32 152, i32 22}
!22 = !{ptr @max77650_LDO_desc, !23, !"max77650_LDO_desc", i1 false, i1 false}
!23 = !{!"../drivers/regulator/max77650-regulator.c", i32 148, i32 39}
!24 = !{ptr @max77650_regulator_LDO_ops, !25, !"max77650_regulator_LDO_ops", i1 false, i1 false}
!25 = !{!"../drivers/regulator/max77650-regulator.c", i32 111, i32 35}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/max77650-regulator.c", i32 176, i32 13}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/max77650-regulator.c", i32 179, i32 19}
!30 = !{ptr @max77650_SBB0_desc, !31, !"max77650_SBB0_desc", i1 false, i1 false}
!31 = !{!"../drivers/regulator/max77650-regulator.c", i32 174, i32 39}
!32 = !{ptr @max77650_regulator_SBB_ops, !33, !"max77650_regulator_SBB_ops", i1 false, i1 false}
!33 = !{!"../drivers/regulator/max77650-regulator.c", i32 122, i32 35}
!34 = !{ptr @max77650_current_limit_table, !35, !"max77650_current_limit_table", i1 false, i1 false}
!35 = !{!"../drivers/regulator/max77650-regulator.c", i32 63, i32 27}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/max77650-regulator.c", i32 206, i32 13}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/max77650-regulator.c", i32 209, i32 19}
!40 = !{ptr @max77650_SBB1_desc, !41, !"max77650_SBB1_desc", i1 false, i1 false}
!41 = !{!"../drivers/regulator/max77650-regulator.c", i32 204, i32 39}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/max77650-regulator.c", i32 269, i32 13}
!44 = !{ptr @max77650_SBB2_desc, !45, !"max77650_SBB2_desc", i1 false, i1 false}
!45 = !{!"../drivers/regulator/max77650-regulator.c", i32 267, i32 39}
!46 = !{ptr @max77651_SBB1_desc, !47, !"max77651_SBB1_desc", i1 false, i1 false}
!47 = !{!"../drivers/regulator/max77650-regulator.c", i32 234, i32 39}
!48 = !{ptr @max77651_SBB1_regulator_ops, !49, !"max77651_SBB1_regulator_ops", i1 false, i1 false}
!49 = !{!"../drivers/regulator/max77650-regulator.c", i32 136, i32 35}
!50 = !{ptr @max77651_sbb1_volt_ranges, !51, !"max77651_sbb1_volt_ranges", i1 false, i1 false}
!51 = !{!"../drivers/regulator/max77650-regulator.c", i32 52, i32 34}
!52 = !{ptr @max77651_sbb1_volt_range_sel, !53, !"max77651_sbb1_volt_range_sel", i1 false, i1 false}
!53 = !{!"../drivers/regulator/max77650-regulator.c", i32 48, i32 27}
!54 = !{ptr @max77651_SBB2_desc, !55, !"max77651_SBB2_desc", i1 false, i1 false}
!55 = !{!"../drivers/regulator/max77650-regulator.c", i32 297, i32 39}
!56 = !{ptr @max77650_regulator_of_match, !57, !"max77650_regulator_of_match", i1 false, i1 false}
!57 = !{!"../drivers/regulator/max77650-regulator.c", i32 389, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
