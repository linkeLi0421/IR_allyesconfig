; ModuleID = '/llk/IR_all_yes/drivers/regulator/as3722-regulator.c_pt.bc'
source_filename = "../drivers/regulator/as3722-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.as3722_register_mapping = type { i8, ptr, ptr, i8, i8, i32, i32, i8, i32, i8, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.as3722_regulators = type { ptr, ptr, [18 x %struct.regulator_desc], [18 x %struct.as3722_regulator_config_data] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.as3722_regulator_config_data = type { ptr, i8, i32 }
%struct.as3722 = type { ptr, ptr, i32, i32, i8, i8, i8, ptr }

@__initcall__kmod_as3722_regulator__288_839_as3722_regulator_driver_init6 = internal global ptr @as3722_regulator_driver_init, section ".initcall6.init", align 4
@as3722_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @as3722_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_as3722_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_as3722_regulator_driver_exit = internal global ptr @as3722_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias289 = internal constant [49 x i8] c"as3722_regulator.alias=platform:as3722-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"as3722_regulator.description=AS3722 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [68 x i8] c"as3722_regulator.author=Florian Lobmaier <florian.lobmaier@ams.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [63 x i8] c"as3722_regulator.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [57 x i8] c"as3722_regulator.file=drivers/regulator/as3722-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"as3722_regulator.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as3722-regulator\00", [47 x i8] zeroinitializer }, align 32
@of_as3722_regulator_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as3722-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@as3722_reg_lookup = internal constant { [18 x %struct.as3722_register_mapping], [200 x i8] } { [18 x %struct.as3722_register_mapping] [%struct.as3722_register_mapping { i8 0, ptr @.str.27, ptr null, i8 0, i8 127, i32 0, i32 77, i8 1, i32 41, i8 16, i32 60, i8 3 }, %struct.as3722_register_mapping { i8 1, ptr @.str.28, ptr null, i8 1, i8 127, i32 0, i32 77, i8 2, i32 42, i8 16, i32 60, i8 12 }, %struct.as3722_register_mapping { i8 2, ptr @.str.29, ptr @.str.30, i8 2, i8 127, i32 128, i32 77, i8 4, i32 44, i8 4, i32 60, i8 48 }, %struct.as3722_register_mapping { i8 3, ptr @.str.31, ptr @.str.32, i8 3, i8 127, i32 128, i32 77, i8 8, i32 44, i8 64, i32 60, i8 -64 }, %struct.as3722_register_mapping { i8 4, ptr @.str.33, ptr @.str.34, i8 4, i8 127, i32 128, i32 77, i8 16, i32 45, i8 4, i32 61, i8 3 }, %struct.as3722_register_mapping { i8 5, ptr @.str.35, ptr @.str.36, i8 5, i8 127, i32 128, i32 77, i8 32, i32 46, i8 4, i32 61, i8 12 }, %struct.as3722_register_mapping { i8 6, ptr @.str.37, ptr null, i8 6, i8 127, i32 0, i32 77, i8 64, i32 47, i8 16, i32 61, i8 48 }, %struct.as3722_register_mapping { i8 7, ptr @.str.38, ptr @.str.39, i8 16, i8 31, i32 18, i32 78, i8 1, i32 0, i8 0, i32 62, i8 3 }, %struct.as3722_register_mapping { i8 8, ptr @.str.40, ptr @.str.41, i8 17, i8 127, i32 128, i32 78, i8 2, i32 0, i8 0, i32 62, i8 12 }, %struct.as3722_register_mapping { i8 9, ptr @.str.42, ptr @.str.43, i8 18, i8 127, i32 128, i32 78, i8 4, i32 0, i8 0, i32 62, i8 48 }, %struct.as3722_register_mapping { i8 10, ptr @.str.44, ptr @.str.45, i8 19, i8 63, i32 45, i32 78, i8 8, i32 0, i8 0, i32 62, i8 -64 }, %struct.as3722_register_mapping { i8 11, ptr @.str.46, ptr @.str.45, i8 20, i8 127, i32 128, i32 78, i8 16, i32 0, i8 0, i32 63, i8 3 }, %struct.as3722_register_mapping { i8 12, ptr @.str.47, ptr @.str.43, i8 21, i8 127, i32 128, i32 78, i8 32, i32 0, i8 0, i32 63, i8 12 }, %struct.as3722_register_mapping { i8 13, ptr @.str.48, ptr @.str.41, i8 22, i8 127, i32 128, i32 78, i8 64, i32 0, i8 0, i32 63, i8 48 }, %struct.as3722_register_mapping { i8 14, ptr @.str.49, ptr @.str.43, i8 23, i8 127, i32 128, i32 78, i8 -128, i32 0, i8 0, i32 63, i8 -64 }, %struct.as3722_register_mapping { i8 15, ptr @.str.50, ptr @.str.51, i8 25, i8 127, i32 128, i32 79, i8 2, i32 0, i8 0, i32 64, i8 12 }, %struct.as3722_register_mapping { i8 16, ptr @.str.52, ptr @.str.51, i8 26, i8 127, i32 128, i32 79, i8 4, i32 0, i8 0, i32 64, i8 48 }, %struct.as3722_register_mapping { i8 17, ptr @.str.53, ptr @.str.54, i8 27, i8 127, i32 128, i32 79, i8 8, i32 0, i8 0, i32 64, i8 -64 }], [200 x i8] zeroinitializer }, align 32
@as3722_ldo0_extcntrl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_ldo0_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_ldo_current = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 150000, i32 300000], [24 x i8] zeroinitializer }, align 32
@as3722_ldo3_extcntrl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr @as3722_ldo3_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_ldo3_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr @as3722_ldo3_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LDO3 tracking failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3722_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/as3722-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as3722_regulator_probe._entry_ptr = internal global ptr @as3722_regulator_probe._entry, section ".printk_index", align 4
@as3722_ldo6_extcntrl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_ldo6_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_ldo_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 825000, i32 1, i32 36, i32 25000 }, %struct.linear_range { i32 1725000, i32 64, i32 127, i32 25000 }], [48 x i8] zeroinitializer }, align 32
@as3722_sd016_extcntrl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_sd016_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_sd016_current = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2500000, i32 3000000, i32 3500000], [20 x i8] zeroinitializer }, align 32
@as3722_sd2345_extcntrl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_sd2345_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @as3722_sd_set_mode, ptr @as3722_sd_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_sd2345_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 612500, i32 1, i32 64, i32 12500 }, %struct.linear_range { i32 1425000, i32 65, i32 112, i32 25000 }, %struct.linear_range { i32 2650000, i32 113, i32 127, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@as3722_ldo_extcntrl_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3722_regulator_matches = internal global { [18 x %struct.of_regulator_match], [88 x i8] } { [18 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.60, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.64, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.65, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.66, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.67, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.68, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.69, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.70, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.71, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.72, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.73, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.74, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.75, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.76, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.77, ptr null, ptr null, ptr null, ptr null }], [88 x i8] zeroinitializer }, align 32
@as3722_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 801, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"regulator %d register failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@as3722_regulator_probe._entry_ptr.8 = internal global ptr @as3722_regulator_probe._entry.6, section ".printk_index", align 4
@as3722_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 810, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Regulator %d enable failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@as3722_regulator_probe._entry_ptr.11 = internal global ptr @as3722_regulator_probe._entry.9, section ".printk_index", align 4
@as3722_regulator_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 817, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AS3722 ext control failed: %d\00", [34 x i8] zeroinitializer }, align 32
@as3722_regulator_probe._entry_ptr.14 = internal global ptr @as3722_regulator_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@as3722_get_regulator_dt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Device is not having regulators node\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"as3722_get_regulator_dt_data\00", [35 x i8] zeroinitializer }, align 32
@as3722_get_regulator_dt_data._entry_ptr = internal global ptr @as3722_get_regulator_dt_data._entry, section ".printk_index", align 4
@as3722_get_regulator_dt_data._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Parsing of regulator node failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@as3722_get_regulator_dt_data._entry_ptr.20 = internal global ptr @as3722_get_regulator_dt_data._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ams,ext-control\00", [16 x i8] zeroinitializer }, align 32
@as3722_get_regulator_dt_data._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 627, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ext-control have invalid option: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@as3722_get_regulator_dt_data._entry_ptr.25 = internal global ptr @as3722_get_regulator_dt_data._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ams,enable-tracking\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd0\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd1\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd2\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vsup-sd2\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd3\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vsup-sd3\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd4\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vsup-sd4\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd5\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vsup-sd5\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3722-sd6\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo0\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vin-ldo0\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo1\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vin-ldo1-6\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo2\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vin-ldo2-5-7\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo3\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vin-ldo3-4\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo4\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo5\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo6\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo7\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"as3722-ldo9\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vin-ldo9-10\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"as3722-ldo10\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"as3722-ldo11\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vin-ldo11\00", [22 x i8] zeroinitializer }, align 32
@as3722_sd_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as3722_sd_set_mode\00", [45 x i8] zeroinitializer }, align 32
@as3722_sd_set_mode._entry_ptr = internal global ptr @as3722_sd_set_mode._entry, section ".printk_index", align 4
@as3722_sd_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as3722_sd_get_mode\00", [45 x i8] zeroinitializer }, align 32
@as3722_sd_get_mode._entry_ptr = internal global ptr @as3722_sd_get_mode._entry, section ".printk_index", align 4
@as3722_sd0_is_low_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.59, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"as3722_sd0_is_low_voltage\00", [38 x i8] zeroinitializer }, align 32
@as3722_sd0_is_low_voltage._entry_ptr = internal global ptr @as3722_sd0_is_low_voltage._entry, section ".printk_index", align 4
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd0\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd1\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd2\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd3\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd4\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd5\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd6\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo0\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo10\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldo11\00", [26 x i8] zeroinitializer }, align 32
@as3722_extreg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.78, ptr @.str.3, i32 560, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as3722_extreg_init\00", [45 x i8] zeroinitializer }, align 32
@as3722_extreg_init._entry_ptr = internal global ptr @as3722_extreg_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 13]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"as3722_regulator_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 831, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 833, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"of_as3722_regulator_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 825, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"as3722_reg_lookup\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 75, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"as3722_ldo0_extcntrl_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 318, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"as3722_ldo0_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 307, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"as3722_ldo_current\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 302, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"as3722_ldo3_extcntrl_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 360, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"as3722_ldo3_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 350, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 707, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"as3722_ldo6_extcntrl_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 381, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"as3722_ldo6_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 367, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"as3722_ldo_ranges\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 392, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"as3722_sd016_extcntrl_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 512, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"as3722_sd016_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 498, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"as3722_sd016_current\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 303, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"as3722_sd2345_extcntrl_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 535, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"as3722_sd2345_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 523, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"as3722_sd2345_ranges\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 491, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant [24 x i8] c"as3722_ldo_extcntrl_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 410, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"as3722_ldo_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 398, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"as3722_regulator_matches\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 564, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 800, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 808, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 816, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 594, i32 55 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 596, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 605, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 620, i32 40 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 625, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 630, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 78, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 90, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 102, i32 11 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 103, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 116, i32 11 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 117, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 130, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 131, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 144, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 145, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 158, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 170, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 171, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 182, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 183, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 194, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 195, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 206, i32 11 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 207, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 218, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 230, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 242, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 254, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 266, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 267, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 278, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 290, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 291, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 468, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 432, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 482, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 565, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 566, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 567, i32 12 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 568, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 569, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 570, i32 12 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 571, i32 12 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 572, i32 12 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 573, i32 12 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 574, i32 12 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 575, i32 12 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 576, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 577, i32 12 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 578, i32 12 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 579, i32 12 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 580, i32 12 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 581, i32 12 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 582, i32 12 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.379 = private constant [40 x i8] c"../drivers/regulator/as3722-regulator.c\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.379, i32 559, i32 3 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_as3722_regulator_driver_exit, ptr @__initcall__kmod_as3722_regulator__288_839_as3722_regulator_driver_init6, ptr @as3722_extreg_init._entry, ptr @as3722_extreg_init._entry_ptr, ptr @as3722_get_regulator_dt_data._entry, ptr @as3722_get_regulator_dt_data._entry.18, ptr @as3722_get_regulator_dt_data._entry.22, ptr @as3722_get_regulator_dt_data._entry_ptr, ptr @as3722_get_regulator_dt_data._entry_ptr.20, ptr @as3722_get_regulator_dt_data._entry_ptr.25, ptr @as3722_regulator_driver_exit, ptr @as3722_regulator_probe._entry, ptr @as3722_regulator_probe._entry.12, ptr @as3722_regulator_probe._entry.6, ptr @as3722_regulator_probe._entry.9, ptr @as3722_regulator_probe._entry_ptr, ptr @as3722_regulator_probe._entry_ptr.11, ptr @as3722_regulator_probe._entry_ptr.14, ptr @as3722_regulator_probe._entry_ptr.8, ptr @as3722_sd0_is_low_voltage._entry, ptr @as3722_sd0_is_low_voltage._entry_ptr, ptr @as3722_sd_get_mode._entry, ptr @as3722_sd_get_mode._entry_ptr, ptr @as3722_sd_set_mode._entry, ptr @as3722_sd_set_mode._entry_ptr, ptr @as3722_regulator_driver, ptr @.str, ptr @of_as3722_regulator_match, ptr @as3722_reg_lookup, ptr @as3722_ldo0_extcntrl_ops, ptr @as3722_ldo0_ops, ptr @as3722_ldo_current, ptr @as3722_ldo3_extcntrl_ops, ptr @as3722_ldo3_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @as3722_ldo6_extcntrl_ops, ptr @as3722_ldo6_ops, ptr @as3722_ldo_ranges, ptr @as3722_sd016_extcntrl_ops, ptr @as3722_sd016_ops, ptr @as3722_sd016_current, ptr @as3722_sd2345_extcntrl_ops, ptr @as3722_sd2345_ops, ptr @as3722_sd2345_ranges, ptr @as3722_ldo_extcntrl_ops, ptr @as3722_ldo_ops, ptr @as3722_regulator_matches, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_as3722_regulator_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_reg_lookup to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo0_extcntrl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo0_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo_current to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo3_extcntrl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo3_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo6_extcntrl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo6_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd016_extcntrl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd016_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd016_current to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd2345_extcntrl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd2345_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd2345_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo_extcntrl_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_regulator_matches to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_regulator_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_get_regulator_dt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_get_regulator_dt_data._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_get_regulator_dt_data._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_sd0_is_low_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3722_extreg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3722_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as3722_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3722_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %prop.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %4 = getelementptr inbounds i8, ptr %config, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4616, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup181_crit_edge, label %if.end

entry.cleanup181_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup181

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %as37225 = getelementptr inbounds %struct.as3722_regulators, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %as37225 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %as37225, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #7
  %9 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %prop.i, align 4, !annotation !215
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %call.i319 = tail call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.15) #7
  %tobool.not.i = icmp eq ptr %call.i319, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %as3722_get_regulator_dt_data.exit.thread

if.end.i:                                         ; preds = %if.end
  %of_node3.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i319, ptr %of_node3.i, align 8
  %call5.i = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call.i319, ptr noundef nonnull @as3722_regulator_matches, i32 noundef 18) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i319) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call5.i) #10
  br label %as3722_get_regulator_dt_data.exit.thread

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %id.059.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.059.i
  %init_data.i = getelementptr [18 x %struct.of_regulator_match], ptr @as3722_regulator_matches, i32 0, i32 %id.059.i, i32 2
  %15 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_data.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx.i, align 4
  %of_node15.i = getelementptr [18 x %struct.of_regulator_match], ptr @as3722_regulator_matches, i32 0, i32 %id.059.i, i32 3
  %18 = ptrtoint ptr %of_node15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node15.i, align 4
  %tobool17.not.i = icmp eq ptr %16, null
  %tobool18.not.i = icmp eq ptr %19, null
  %or.cond.i = select i1 %tobool17.not.i, i1 true, i1 %tobool18.not.i
  br i1 %or.cond.i, label %for.body.i.cleanup.i_crit_edge, label %if.end20.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end20.i:                                       ; preds = %for.body.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.21, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool22.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.if.end31.i_crit_edge

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end20.i
  %20 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp24.i = icmp ult i32 %21, 3
  br i1 %cmp24.i, label %if.then25.i, label %do.end28.i

if.then25.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %ext_control.i = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.059.i, i32 2
  %22 = ptrtoint ptr %ext_control.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ext_control.i, align 4
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %21) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.then25.i, %if.end20.i.if.end31.i_crit_edge
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %19, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %enable_tracking.i = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.059.i, i32 1
  %frombool.i = zext i1 %tobool.i.i to i8
  %23 = ptrtoint ptr %enable_tracking.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i, ptr %enable_tracking.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end31.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %id.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %if.end8, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

as3722_get_regulator_dt_data.exit.thread:         ; preds = %do.end9.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end.i ], [ %call5.i, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #7
  br label %cleanup181

if.end8:                                          ; preds = %cleanup.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #7
  %24 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.as3722, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %regmap11 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %28 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %regmap11, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %of_node147 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %min_uV88 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 0, i32 14
  %uV_step97.c = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 0, i32 15
  %linear_min_sel98.c = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 0, i32 16
  %enable_time99.c = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 0, i32 57
  %curr_table100.c = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 0, i32 24
  %n_current_limits101.c = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 0, i32 9
  %csel_reg117 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 6, i32 30
  %csel_mask118 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 6, i32 31
  %csel_reg111 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 1, i32 30
  %csel_mask112 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 1, i32 31
  %ext_control59 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 13, i32 2
  %enable_time64 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 57
  %bypass_reg = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 39
  %bypass_mask = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 40
  %bypass_val_on = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 41
  %bypass_val_off = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 42
  %linear_ranges = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 20
  %n_linear_ranges = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 22
  %curr_table65 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 24
  %n_current_limits66 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 9
  %csel_reg70 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 30
  %csel_mask71 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 13, i32 31
  %ext_control40 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 10, i32 2
  %min_uV45 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 10, i32 14
  %uV_step46 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 10, i32 15
  %linear_min_sel47 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 10, i32 16
  %enable_time48 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 10, i32 57
  %enable_tracking = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 10, i32 1
  %ext_control = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 7, i32 2
  %min_uV = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 14
  %uV_step = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 15
  %linear_min_sel = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 16
  %enable_time = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 57
  %curr_table = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 24
  %n_current_limits = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 9
  %csel_reg = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 30
  %csel_mask = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 7, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8
  %id.0355 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355
  %arrayidx14 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.0355
  %arrayidx15 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355
  %name = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %arrayidx, align 4
  %sname = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 2
  %32 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sname, align 4
  %supply_name = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 1
  %34 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %supply_name, align 4
  %35 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx15, align 4
  %conv = zext i8 %36 to i32
  %id19 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 6
  %37 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %id19, align 4
  %n_voltages = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 5
  %38 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_voltages, align 4
  %n_voltages21 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 8
  %40 = ptrtoint ptr %n_voltages21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %n_voltages21, align 4
  %type = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 12
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %type, align 4
  %owner = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 13
  %42 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %owner, align 4
  %enable_reg = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 6
  %43 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %enable_reg, align 4
  %enable_reg23 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 34
  %45 = ptrtoint ptr %enable_reg23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %enable_reg23, align 4
  %enable_mask = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 7
  %46 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enable_mask, align 4
  %conv25 = zext i8 %47 to i32
  %enable_mask26 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 35
  %48 = ptrtoint ptr %enable_mask26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv25, ptr %enable_mask26, align 4
  %vsel_reg = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 3
  %49 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %vsel_reg, align 4
  %conv28 = zext i8 %50 to i32
  %vsel_reg29 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 27
  %51 = ptrtoint ptr %vsel_reg29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv28, ptr %vsel_reg29, align 4
  %vsel_mask = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 4
  %52 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %vsel_mask, align 1
  %conv31 = zext i8 %53 to i32
  %vsel_mask32 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 28
  %54 = ptrtoint ptr %vsel_mask32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv31, ptr %vsel_mask32, align 4
  %55 = zext i32 %id.0355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id.0355, label %sw.default [
    i32 7, label %sw.bb
    i32 10, label %sw.bb39
    i32 13, label %sw.bb58
    i32 0, label %for.body.sw.bb72_crit_edge
    i32 1, label %for.body.sw.bb72_crit_edge412
    i32 6, label %for.body.sw.bb72_crit_edge413
    i32 2, label %for.body.sw.bb122_crit_edge
    i32 3, label %for.body.sw.bb122_crit_edge414
    i32 4, label %for.body.sw.bb122_crit_edge415
    i32 5, label %for.body.sw.bb122_crit_edge416
  ]

for.body.sw.bb122_crit_edge416:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122

for.body.sw.bb122_crit_edge415:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122

for.body.sw.bb122_crit_edge414:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122

for.body.sw.bb122_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb122

for.body.sw.bb72_crit_edge413:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb72

for.body.sw.bb72_crit_edge412:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb72

for.body.sw.bb72_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb72

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %ext_control to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ext_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool33.not = icmp eq i32 %57, 0
  %as3722_ldo0_ops.as3722_ldo0_extcntrl_ops = select i1 %tobool33.not, ptr @as3722_ldo0_ops, ptr @as3722_ldo0_extcntrl_ops
  %58 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 825000, ptr %min_uV, align 4
  %59 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 25000, ptr %uV_step, align 4
  %60 = ptrtoint ptr %linear_min_sel to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %linear_min_sel, align 4
  %61 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 500, ptr %enable_time, align 4
  %62 = ptrtoint ptr %curr_table to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @as3722_ldo_current, ptr %curr_table, align 4
  %63 = ptrtoint ptr %n_current_limits to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %n_current_limits, align 4
  %64 = ptrtoint ptr %csel_reg to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv28, ptr %csel_reg, align 4
  %65 = ptrtoint ptr %csel_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 128, ptr %csel_mask, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %for.body
  %66 = ptrtoint ptr %ext_control40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ext_control40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool41.not = icmp eq i32 %67, 0
  %as3722_ldo3_ops.as3722_ldo3_extcntrl_ops = select i1 %tobool41.not, ptr @as3722_ldo3_ops, ptr @as3722_ldo3_extcntrl_ops
  %68 = ptrtoint ptr %min_uV45 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 620000, ptr %min_uV45, align 4
  %69 = ptrtoint ptr %uV_step46 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 20000, ptr %uV_step46, align 4
  %70 = ptrtoint ptr %linear_min_sel47 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %linear_min_sel47, align 4
  %71 = ptrtoint ptr %enable_time48 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 500, ptr %enable_time48, align 4
  %72 = ptrtoint ptr %enable_tracking to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %enable_tracking, align 4, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool49.not = icmp eq i8 %73, 0
  br i1 %tobool49.not, label %sw.bb39.sw.epilog_crit_edge, label %if.then50

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then50:                                        ; preds = %sw.bb39
  %74 = ptrtoint ptr %as37225 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %as37225, align 4
  %regmap.i.i = getelementptr inbounds %struct.as3722, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i320 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef %conv28, i32 noundef 192, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i320)
  %cmp52 = icmp slt i32 %call.i.i.i320, 0
  br i1 %cmp52, label %do.end, label %if.then50.sw.epilog_crit_edge

if.then50.sw.epilog_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i.i.i320) #10
  br label %cleanup181

sw.bb58:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %ext_control59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ext_control59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool60.not = icmp eq i32 %79, 0
  %as3722_ldo6_ops.as3722_ldo6_extcntrl_ops = select i1 %tobool60.not, ptr @as3722_ldo6_ops, ptr @as3722_ldo6_extcntrl_ops
  %80 = ptrtoint ptr %enable_time64 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 500, ptr %enable_time64, align 4
  %81 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 22, ptr %bypass_reg, align 4
  %82 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 127, ptr %bypass_mask, align 4
  %83 = ptrtoint ptr %bypass_val_on to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 63, ptr %bypass_val_on, align 4
  %84 = ptrtoint ptr %bypass_val_off to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 63, ptr %bypass_val_off, align 4
  %85 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @as3722_ldo_ranges, ptr %linear_ranges, align 4
  %86 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %n_linear_ranges, align 4
  %87 = ptrtoint ptr %curr_table65 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @as3722_ldo_current, ptr %curr_table65, align 4
  %88 = ptrtoint ptr %n_current_limits66 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %n_current_limits66, align 4
  %89 = ptrtoint ptr %csel_reg70 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv28, ptr %csel_reg70, align 4
  %90 = ptrtoint ptr %csel_mask71 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 128, ptr %csel_mask71, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %for.body.sw.bb72_crit_edge, %for.body.sw.bb72_crit_edge412, %for.body.sw.bb72_crit_edge413
  %ext_control73 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.0355, i32 2
  %91 = ptrtoint ptr %ext_control73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ext_control73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool74.not = icmp eq i32 %92, 0
  %as3722_sd016_ops.as3722_sd016_extcntrl_ops = select i1 %tobool74.not, ptr @as3722_sd016_ops, ptr @as3722_sd016_extcntrl_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.0355)
  %cmp78 = icmp eq i32 %id.0355, 0
  br i1 %cmp78, label %land.lhs.true, label %sw.bb72.if.else89_crit_edge

sw.bb72.if.else89_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else89

land.lhs.true:                                    ; preds = %sw.bb72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %93 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %val.i, align 4, !annotation !215
  %94 = ptrtoint ptr %as37225 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %as37225, align 4
  %regmap.i.i321 = getelementptr inbounds %struct.as3722, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %regmap.i.i321 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i.i321, align 4
  %call.i.i322 = call i32 @regmap_read(ptr noundef %97, i32 noundef 167, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i322)
  %cmp.i323 = icmp slt i32 %call.i.i322, 0
  br i1 %cmp.i323, label %as3722_sd0_is_low_voltage.exit.thread, label %as3722_sd0_is_low_voltage.exit

as3722_sd0_is_low_voltage.exit.thread:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.57, i32 noundef 167, i32 noundef %call.i.i322) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.else89

as3722_sd0_is_low_voltage.exit:                   ; preds = %land.lhs.true
  %100 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i, align 4
  %and.i = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i325.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br i1 %tobool.not.i325.not, label %as3722_sd0_is_low_voltage.exit.if.else89_crit_edge, label %if.then82

as3722_sd0_is_low_voltage.exit.if.else89_crit_edge: ; preds = %as3722_sd0_is_low_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else89

if.then82:                                        ; preds = %as3722_sd0_is_low_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %n_voltages21 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 111, ptr %n_voltages21, align 4
  %103 = ptrtoint ptr %min_uV88 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 410000, ptr %min_uV88, align 4
  %104 = ptrtoint ptr %uV_step97.c to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 10000, ptr %uV_step97.c, align 4
  %105 = ptrtoint ptr %linear_min_sel98.c to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %linear_min_sel98.c, align 4
  %106 = ptrtoint ptr %enable_time99.c to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 600, ptr %enable_time99.c, align 4
  %107 = ptrtoint ptr %curr_table100.c to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @as3722_sd016_current, ptr %curr_table100.c, align 4
  %108 = ptrtoint ptr %n_current_limits101.c to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %n_current_limits101.c, align 4
  br label %if.then104

if.else89:                                        ; preds = %as3722_sd0_is_low_voltage.exit.if.else89_crit_edge, %as3722_sd0_is_low_voltage.exit.thread, %sw.bb72.if.else89_crit_edge
  %109 = ptrtoint ptr %n_voltages21 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 91, ptr %n_voltages21, align 4
  %min_uV95 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 14
  %110 = ptrtoint ptr %min_uV95 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 610000, ptr %min_uV95, align 4
  %uV_step97 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 15
  %111 = ptrtoint ptr %uV_step97 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 10000, ptr %uV_step97, align 4
  %linear_min_sel98 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 16
  %112 = ptrtoint ptr %linear_min_sel98 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %linear_min_sel98, align 4
  %enable_time99 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 57
  %113 = ptrtoint ptr %enable_time99 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 600, ptr %enable_time99, align 4
  %curr_table100 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 24
  %114 = ptrtoint ptr %curr_table100 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @as3722_sd016_current, ptr %curr_table100, align 4
  %n_current_limits101 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 9
  %115 = ptrtoint ptr %n_current_limits101 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 3, ptr %n_current_limits101, align 4
  br i1 %cmp78, label %if.else89.if.then104_crit_edge, label %if.else107

if.else89.if.then104_crit_edge:                   ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then104

if.then104:                                       ; preds = %if.else89.if.then104_crit_edge, %if.then82
  %csel_reg105 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 30
  %116 = ptrtoint ptr %csel_reg105 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 90, ptr %csel_reg105, align 4
  %csel_mask106 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 31
  %117 = ptrtoint ptr %csel_mask106 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 24, ptr %csel_mask106, align 4
  br label %sw.epilog

if.else107:                                       ; preds = %if.else89
  %118 = zext i32 %id.0355 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %id.0355, label %if.else107.sw.epilog_crit_edge [
    i32 1, label %if.then110
    i32 6, label %if.then116
  ]

if.else107.sw.epilog_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then110:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %csel_reg111 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 90, ptr %csel_reg111, align 4
  %120 = ptrtoint ptr %csel_mask112 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 96, ptr %csel_mask112, align 4
  br label %sw.epilog

if.then116:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %csel_reg117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 91, ptr %csel_reg117, align 4
  %122 = ptrtoint ptr %csel_mask118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 24, ptr %csel_mask118, align 4
  br label %sw.epilog

sw.bb122:                                         ; preds = %for.body.sw.bb122_crit_edge, %for.body.sw.bb122_crit_edge414, %for.body.sw.bb122_crit_edge415, %for.body.sw.bb122_crit_edge416
  %ext_control123 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.0355, i32 2
  %123 = ptrtoint ptr %ext_control123 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ext_control123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool124.not = icmp eq i32 %124, 0
  %as3722_sd2345_ops.as3722_sd2345_extcntrl_ops = select i1 %tobool124.not, ptr @as3722_sd2345_ops, ptr @as3722_sd2345_extcntrl_ops
  %linear_ranges128 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 20
  %125 = ptrtoint ptr %linear_ranges128 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @as3722_sd2345_ranges, ptr %linear_ranges128, align 4
  %n_linear_ranges129 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 22
  %126 = ptrtoint ptr %n_linear_ranges129 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4, ptr %n_linear_ranges129, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ext_control130 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.0355, i32 2
  %127 = ptrtoint ptr %ext_control130 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ext_control130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool131.not = icmp eq i32 %128, 0
  %as3722_ldo_ops.as3722_ldo_extcntrl_ops = select i1 %tobool131.not, ptr @as3722_ldo_ops, ptr @as3722_ldo_extcntrl_ops
  %enable_time135 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 57
  %129 = ptrtoint ptr %enable_time135 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 500, ptr %enable_time135, align 4
  %linear_ranges136 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 20
  %130 = ptrtoint ptr %linear_ranges136 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @as3722_ldo_ranges, ptr %linear_ranges136, align 4
  %n_linear_ranges137 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 22
  %131 = ptrtoint ptr %n_linear_ranges137 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 3, ptr %n_linear_ranges137, align 4
  %curr_table138 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 24
  %132 = ptrtoint ptr %curr_table138 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @as3722_ldo_current, ptr %curr_table138, align 4
  %n_current_limits139 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 9
  %133 = ptrtoint ptr %n_current_limits139 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 2, ptr %n_current_limits139, align 4
  %csel_reg143 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 30
  %134 = ptrtoint ptr %csel_reg143 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv28, ptr %csel_reg143, align 4
  %csel_mask144 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 31
  %135 = ptrtoint ptr %csel_mask144 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 128, ptr %csel_mask144, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb122, %if.then116, %if.then110, %if.else107.sw.epilog_crit_edge, %if.then104, %sw.bb58, %if.then50.sw.epilog_crit_edge, %sw.bb39.sw.epilog_crit_edge, %sw.bb
  %ops.6 = phi ptr [ %as3722_ldo_ops.as3722_ldo_extcntrl_ops, %sw.default ], [ %as3722_sd2345_ops.as3722_sd2345_extcntrl_ops, %sw.bb122 ], [ %as3722_sd016_ops.as3722_sd016_extcntrl_ops, %if.then104 ], [ %as3722_sd016_ops.as3722_sd016_extcntrl_ops, %if.then110 ], [ %as3722_sd016_ops.as3722_sd016_extcntrl_ops, %if.then116 ], [ %as3722_ldo6_ops.as3722_ldo6_extcntrl_ops, %sw.bb58 ], [ %as3722_ldo3_ops.as3722_ldo3_extcntrl_ops, %if.then50.sw.epilog_crit_edge ], [ %as3722_ldo3_ops.as3722_ldo3_extcntrl_ops, %sw.bb39.sw.epilog_crit_edge ], [ %as3722_ldo0_ops.as3722_ldo0_extcntrl_ops, %sw.bb ], [ %as3722_sd016_ops.as3722_sd016_extcntrl_ops, %if.else107.sw.epilog_crit_edge ]
  %ops145 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 2, i32 %id.0355, i32 10
  %136 = ptrtoint ptr %ops145 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %ops.6, ptr %ops145, align 4
  %137 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx14, align 4
  %139 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %138, ptr %init_data, align 4
  %of_node = getelementptr [18 x %struct.of_regulator_match], ptr @as3722_regulator_matches, i32 0, i32 %id.0355, i32 3
  %140 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %of_node, align 4
  %142 = ptrtoint ptr %of_node147 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %of_node147, align 4
  %call149 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #7
  %cmp.i329 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then151, label %if.end157

if.then151:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %call149 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %id.0355, i32 noundef %143) #10
  br label %cleanup181

if.end157:                                        ; preds = %sw.epilog
  %ext_control158 = getelementptr %struct.as3722_regulators, ptr %call.i, i32 0, i32 3, i32 %id.0355, i32 2
  %144 = ptrtoint ptr %ext_control158 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ext_control158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool159.not = icmp eq i32 %145, 0
  br i1 %tobool159.not, label %if.end157.for.inc_crit_edge, label %if.then160

if.end157.for.inc_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then160:                                       ; preds = %if.end157
  %call161 = call i32 @regulator_enable_regmap(ptr noundef %call149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %do.end167, label %if.end169

do.end167:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %id.0355, i32 noundef %call161) #10
  br label %cleanup181

if.end169:                                        ; preds = %if.then160
  %146 = ptrtoint ptr %ext_control158 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ext_control158, align 4
  %148 = add i32 %147, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %148)
  %149 = icmp ult i32 %148, -3
  br i1 %149, label %if.end169.do.end177_crit_edge, label %if.end.i333

if.end169.do.end177_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end177

if.end.i333:                                      ; preds = %if.end169
  %sleep_ctrl_mask.i = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 11
  %150 = ptrtoint ptr %sleep_ctrl_mask.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %sleep_ctrl_mask.i, align 4
  %conv.i = zext i8 %151 to i32
  %152 = call i32 @llvm.cttz.i32(i32 %conv.i, i1 true) #7, !range !217
  %shl.i = shl i32 %147, %152
  %153 = ptrtoint ptr %as37225 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %as37225, align 4
  %sleep_ctrl_reg.i = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %id.0355, i32 10
  %155 = ptrtoint ptr %sleep_ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sleep_ctrl_reg.i, align 4
  %regmap.i.i331 = getelementptr inbounds %struct.as3722, ptr %154, i32 0, i32 1
  %157 = ptrtoint ptr %regmap.i.i331 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap.i.i331, align 4
  %conv.i.i = and i32 %shl.i, 255
  %call.i.i.i332 = call i32 @regmap_update_bits_base(ptr noundef %158, i32 noundef %156, i32 noundef %conv.i, i32 noundef %conv.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i332)
  %cmp7.i = icmp slt i32 %call.i.i.i332, 0
  br i1 %cmp7.i, label %do.end.i334, label %if.end.i333.for.inc_crit_edge

if.end.i333.for.inc_crit_edge:                    ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end.i334:                                      ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.55, i32 noundef %156, i32 noundef %call.i.i.i332) #10
  br label %do.end177

do.end177:                                        ; preds = %do.end.i334, %if.end169.do.end177_crit_edge
  %retval.0.i335.ph = phi i32 [ %call.i.i.i332, %do.end.i334 ], [ -22, %if.end169.do.end177_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i335.ph) #10
  br label %cleanup181

for.inc:                                          ; preds = %if.end.i333.for.inc_crit_edge, %if.end157.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.0355, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.inc.cleanup181_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup181_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup181

cleanup181:                                       ; preds = %for.inc.cleanup181_crit_edge, %do.end177, %do.end167, %if.then151, %do.end, %as3722_get_regulator_dt_data.exit.thread, %entry.cleanup181_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup181_crit_edge ], [ %retval.0.i.ph, %as3722_get_regulator_dt_data.exit.thread ], [ %call.i.i.i320, %do.end ], [ %retval.0.i335.ph, %do.end177 ], [ %call161, %do.end167 ], [ %143, %if.then151 ], [ 0, %for.inc.cleanup181_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as3722_ldo3_get_current_limit(ptr nocapture noundef readnone %rdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 150000
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_sd_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %as37221 = getelementptr inbounds %struct.as3722_regulators, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %as37221 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %as37221, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %idxprom = and i32 %call2, 255
  %control_reg = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %idxprom, i32 8
  %2 = add nsw i32 %idxprom, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %2)
  %tobool.not = icmp ult i32 %2, 11
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mode_mask = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %idxprom, i32 9
  %4 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_mask, align 4
  %phi.cast = zext i8 %5 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %phi.cast, %sw.bb ]
  %6 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control_reg, align 4
  %mode_mask10 = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %idxprom, i32 9
  %8 = ptrtoint ptr %mode_mask10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode_mask10, align 4
  %conv11 = zext i8 %9 to i32
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %7, i32 noundef %conv11, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.55, i32 noundef %7, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -34, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3722_sd_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %as37221 = getelementptr inbounds %struct.as3722_regulators, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %as37221 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %as37221, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !215
  %3 = and i32 %call2, 1073741823
  %4 = add nsw i32 %3, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %4)
  %tobool.not = icmp ult i32 %4, 11
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %control_reg = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %call2, i32 8
  %5 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control_reg, align 4
  %regmap.i = getelementptr inbounds %struct.as3722, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %6, i32 noundef %call.i) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %mode_mask = getelementptr [18 x %struct.as3722_register_mapping], ptr @as3722_reg_lookup, i32 0, i32 %call2, i32 9
  %13 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode_mask, align 4
  %conv = zext i8 %14 to i32
  %and = and i32 %12, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %. = select i1 %tobool11.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -524, %entry.cleanup_crit_edge ], [ %., %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !148, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204}
!llvm.module.flags = !{!206, !207, !208, !209, !210, !211, !212, !213}
!llvm.ident = !{!214}

!0 = !{ptr @__initcall__kmod_as3722_regulator__288_839_as3722_regulator_driver_init6, !1, !"__initcall__kmod_as3722_regulator__288_839_as3722_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/as3722-regulator.c", i32 839, i32 1}
!2 = !{ptr @__exitcall_as3722_regulator_driver_exit, !1, !"__exitcall_as3722_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias289, !4, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/as3722-regulator.c", i32 841, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/as3722-regulator.c", i32 842, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/as3722-regulator.c", i32 843, i32 1}
!9 = !{ptr @__UNIQUE_ID_author292, !10, !"__UNIQUE_ID_author292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/as3722-regulator.c", i32 844, i32 1}
!11 = !{ptr @__UNIQUE_ID_file293, !12, !"__UNIQUE_ID_file293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/as3722-regulator.c", i32 845, i32 1}
!13 = !{ptr @__UNIQUE_ID_license294, !12, !"__UNIQUE_ID_license294", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/as3722-regulator.c", i32 833, i32 11}
!16 = !{ptr @as3722_regulator_driver, !17, !"as3722_regulator_driver", i1 false, i1 false}
!17 = !{!"../drivers/regulator/as3722-regulator.c", i32 831, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/as3722-regulator.c", i32 707, i32 6}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @as3722_regulator_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @as3722_regulator_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/as3722-regulator.c", i32 800, i32 4}
!28 = !{ptr @as3722_regulator_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @as3722_regulator_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/as3722-regulator.c", i32 808, i32 5}
!32 = !{ptr @as3722_regulator_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @as3722_regulator_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/as3722-regulator.c", i32 816, i32 5}
!36 = !{ptr @as3722_regulator_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @as3722_regulator_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/as3722-regulator.c", i32 594, i32 55}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/as3722-regulator.c", i32 596, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @as3722_get_regulator_dt_data._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @as3722_get_regulator_dt_data._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/as3722-regulator.c", i32 605, i32 3}
!47 = !{ptr @as3722_get_regulator_dt_data._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @as3722_get_regulator_dt_data._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/as3722-regulator.c", i32 620, i32 40}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/as3722-regulator.c", i32 625, i32 5}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @as3722_get_regulator_dt_data._entry.22, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @as3722_get_regulator_dt_data._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/as3722-regulator.c", i32 630, i32 36}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/as3722-regulator.c", i32 78, i32 11}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/as3722-regulator.c", i32 90, i32 11}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/as3722-regulator.c", i32 102, i32 11}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/as3722-regulator.c", i32 103, i32 12}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/as3722-regulator.c", i32 116, i32 11}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/as3722-regulator.c", i32 117, i32 12}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/as3722-regulator.c", i32 130, i32 11}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/as3722-regulator.c", i32 131, i32 12}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/as3722-regulator.c", i32 144, i32 11}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/as3722-regulator.c", i32 145, i32 12}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/as3722-regulator.c", i32 158, i32 11}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/as3722-regulator.c", i32 170, i32 11}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/as3722-regulator.c", i32 171, i32 12}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/as3722-regulator.c", i32 182, i32 11}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/as3722-regulator.c", i32 183, i32 12}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/as3722-regulator.c", i32 194, i32 11}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/as3722-regulator.c", i32 195, i32 12}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/as3722-regulator.c", i32 206, i32 11}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/as3722-regulator.c", i32 207, i32 12}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/as3722-regulator.c", i32 218, i32 11}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/as3722-regulator.c", i32 230, i32 11}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/regulator/as3722-regulator.c", i32 242, i32 11}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/as3722-regulator.c", i32 254, i32 11}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/as3722-regulator.c", i32 266, i32 11}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/as3722-regulator.c", i32 267, i32 12}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/as3722-regulator.c", i32 278, i32 11}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/as3722-regulator.c", i32 290, i32 11}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/as3722-regulator.c", i32 291, i32 12}
!114 = !{ptr @as3722_reg_lookup, !115, !"as3722_reg_lookup", i1 false, i1 false}
!115 = !{!"../drivers/regulator/as3722-regulator.c", i32 75, i32 45}
!116 = !{ptr @as3722_ldo0_extcntrl_ops, !117, !"as3722_ldo0_extcntrl_ops", i1 false, i1 false}
!117 = !{!"../drivers/regulator/as3722-regulator.c", i32 318, i32 35}
!118 = !{ptr @as3722_ldo0_ops, !119, !"as3722_ldo0_ops", i1 false, i1 false}
!119 = !{!"../drivers/regulator/as3722-regulator.c", i32 307, i32 35}
!120 = !{ptr @as3722_ldo_current, !121, !"as3722_ldo_current", i1 false, i1 false}
!121 = !{!"../drivers/regulator/as3722-regulator.c", i32 302, i32 27}
!122 = !{ptr @as3722_ldo3_extcntrl_ops, !123, !"as3722_ldo3_extcntrl_ops", i1 false, i1 false}
!123 = !{!"../drivers/regulator/as3722-regulator.c", i32 360, i32 35}
!124 = !{ptr @as3722_ldo3_ops, !125, !"as3722_ldo3_ops", i1 false, i1 false}
!125 = !{!"../drivers/regulator/as3722-regulator.c", i32 350, i32 35}
!126 = !{ptr @as3722_ldo6_extcntrl_ops, !127, !"as3722_ldo6_extcntrl_ops", i1 false, i1 false}
!127 = !{!"../drivers/regulator/as3722-regulator.c", i32 381, i32 35}
!128 = !{ptr @as3722_ldo6_ops, !129, !"as3722_ldo6_ops", i1 false, i1 false}
!129 = !{!"../drivers/regulator/as3722-regulator.c", i32 367, i32 35}
!130 = !{ptr @as3722_ldo_ranges, !131, !"as3722_ldo_ranges", i1 false, i1 false}
!131 = !{!"../drivers/regulator/as3722-regulator.c", i32 392, i32 34}
!132 = !{ptr @as3722_sd016_extcntrl_ops, !133, !"as3722_sd016_extcntrl_ops", i1 false, i1 false}
!133 = !{!"../drivers/regulator/as3722-regulator.c", i32 512, i32 35}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/regulator/as3722-regulator.c", i32 468, i32 3}
!136 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @as3722_sd_set_mode._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @as3722_sd_set_mode._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/as3722-regulator.c", i32 432, i32 3}
!141 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @as3722_sd_get_mode._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @as3722_sd_get_mode._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @as3722_sd016_ops, !145, !"as3722_sd016_ops", i1 false, i1 false}
!145 = !{!"../drivers/regulator/as3722-regulator.c", i32 498, i32 35}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/regulator/as3722-regulator.c", i32 482, i32 3}
!148 = !{ptr @as3722_sd0_is_low_voltage._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @as3722_sd0_is_low_voltage._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @as3722_sd016_current, !151, !"as3722_sd016_current", i1 false, i1 false}
!151 = !{!"../drivers/regulator/as3722-regulator.c", i32 303, i32 27}
!152 = !{ptr @as3722_sd2345_extcntrl_ops, !153, !"as3722_sd2345_extcntrl_ops", i1 false, i1 false}
!153 = !{!"../drivers/regulator/as3722-regulator.c", i32 535, i32 35}
!154 = !{ptr @as3722_sd2345_ops, !155, !"as3722_sd2345_ops", i1 false, i1 false}
!155 = !{!"../drivers/regulator/as3722-regulator.c", i32 523, i32 35}
!156 = !{ptr @as3722_sd2345_ranges, !157, !"as3722_sd2345_ranges", i1 false, i1 false}
!157 = !{!"../drivers/regulator/as3722-regulator.c", i32 491, i32 34}
!158 = !{ptr @as3722_ldo_extcntrl_ops, !159, !"as3722_ldo_extcntrl_ops", i1 false, i1 false}
!159 = !{!"../drivers/regulator/as3722-regulator.c", i32 410, i32 35}
!160 = !{ptr @as3722_ldo_ops, !161, !"as3722_ldo_ops", i1 false, i1 false}
!161 = !{!"../drivers/regulator/as3722-regulator.c", i32 398, i32 35}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/regulator/as3722-regulator.c", i32 565, i32 12}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/regulator/as3722-regulator.c", i32 566, i32 12}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/regulator/as3722-regulator.c", i32 567, i32 12}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/regulator/as3722-regulator.c", i32 568, i32 12}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/regulator/as3722-regulator.c", i32 569, i32 12}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/regulator/as3722-regulator.c", i32 570, i32 12}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/regulator/as3722-regulator.c", i32 571, i32 12}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/regulator/as3722-regulator.c", i32 572, i32 12}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/regulator/as3722-regulator.c", i32 573, i32 12}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/regulator/as3722-regulator.c", i32 574, i32 12}
!182 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/regulator/as3722-regulator.c", i32 575, i32 12}
!184 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/regulator/as3722-regulator.c", i32 576, i32 12}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/regulator/as3722-regulator.c", i32 577, i32 12}
!188 = !{ptr @.str.73, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/regulator/as3722-regulator.c", i32 578, i32 12}
!190 = !{ptr @.str.74, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/regulator/as3722-regulator.c", i32 579, i32 12}
!192 = !{ptr @.str.75, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/as3722-regulator.c", i32 580, i32 12}
!194 = !{ptr @.str.76, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/regulator/as3722-regulator.c", i32 581, i32 12}
!196 = !{ptr @.str.77, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/regulator/as3722-regulator.c", i32 582, i32 12}
!198 = !{ptr @as3722_regulator_matches, !199, !"as3722_regulator_matches", i1 false, i1 false}
!199 = !{!"../drivers/regulator/as3722-regulator.c", i32 564, i32 34}
!200 = !{ptr @.str.78, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/regulator/as3722-regulator.c", i32 559, i32 3}
!202 = !{ptr @as3722_extreg_init._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @as3722_extreg_init._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @of_as3722_regulator_match, !205, !"of_as3722_regulator_match", i1 false, i1 false}
!205 = !{!"../drivers/regulator/as3722-regulator.c", i32 825, i32 34}
!206 = !{i32 1, !"wchar_size", i32 2}
!207 = !{i32 1, !"min_enum_size", i32 4}
!208 = !{i32 8, !"branch-target-enforcement", i32 0}
!209 = !{i32 8, !"sign-return-address", i32 0}
!210 = !{i32 8, !"sign-return-address-all", i32 0}
!211 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!212 = !{i32 7, !"uwtable", i32 1}
!213 = !{i32 7, !"frame-pointer", i32 2}
!214 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!215 = !{!"auto-init"}
!216 = !{i8 0, i8 2}
!217 = !{i32 0, i32 33}
