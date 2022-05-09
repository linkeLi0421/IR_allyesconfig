; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps65910-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65910-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tps_info = type { ptr, ptr, i8, ptr, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.tps65910_board = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.tps65910_sleep_keepon_data, [9 x i8], [14 x i32], [14 x ptr] }
%struct.tps65910_sleep_keepon_data = type { i8, [3 x i8] }
%struct.tps65910_reg = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [14 x i32] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_tps65910_regulator__290_1267_tps65910_init4 = internal global ptr @tps65910_init, section ".initcall4.init", align 4
@tps65910_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65910_probe, ptr null, ptr @tps65910_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65910_cleanup = internal global ptr @tps65910_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [62 x i8] c"tps65910_regulator.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [74 x i8] c"tps65910_regulator.description=TPS65910/TPS65911 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [61 x i8] c"tps65910_regulator.file=drivers/regulator/tps65910-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [34 x i8] c"tps65910_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [48 x i8] c"tps65910_regulator.alias=platform:tps65910-pmic\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps65910-pmic\00", [18 x i8] zeroinitializer }, align 32
@tps65910_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1089, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Platform data not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps65910_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps65910-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65910_probe._entry_ptr = internal global ptr @tps65910_probe._entry, section ".printk_index", align 4
@tps65910_ext_sleep_control = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 256, i32 257, i32 258, i32 259, i32 1, i32 2, i32 6, i32 7, i32 3, i32 4, i32 5, i32 0], [44 x i8] zeroinitializer }, align 32
@tps65910_regs = internal global { [14 x %struct.tps_info], [72 x i8] } { [14 x %struct.tps_info] [%struct.tps_info { ptr @.str.23, ptr @.str.46, i8 1, ptr @VRTC_VSEL_table, i32 2200 }, %struct.tps_info { ptr @.str.24, ptr @.str.47, i8 4, ptr @VIO_VSEL_table, i32 350 }, %struct.tps_info { ptr @.str.25, ptr @.str.48, i8 0, ptr null, i32 350 }, %struct.tps_info { ptr @.str.26, ptr @.str.49, i8 0, ptr null, i32 350 }, %struct.tps_info { ptr @.str.27, ptr null, i8 1, ptr @VDD3_VSEL_table, i32 200 }, %struct.tps_info { ptr @.str.28, ptr @.str.50, i8 4, ptr @VDIG1_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.29, ptr @.str.50, i8 4, ptr @VDIG2_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.30, ptr @.str.51, i8 4, ptr @VPLL_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.31, ptr @.str.51, i8 4, ptr @VDAC_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.32, ptr @.str.52, i8 4, ptr @VAUX1_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.33, ptr @.str.52, i8 4, ptr @VAUX2_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.34, ptr @.str.53, i8 4, ptr @VAUX33_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.35, ptr @.str.53, i8 4, ptr @VMMC_VSEL_table, i32 100 }, %struct.tps_info { ptr @.str.36, ptr @.str.46, i8 4, ptr @VBB_VSEL_table, i32 0 }], [72 x i8] zeroinitializer }, align 32
@tps65911_ext_sleep_control = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 256, i32 257, i32 258, i32 259, i32 1, i32 2, i32 7, i32 6, i32 3, i32 0, i32 5, i32 4], [44 x i8] zeroinitializer }, align 32
@tps65911_regs = internal global { [13 x %struct.tps_info], [92 x i8] } { [13 x %struct.tps_info] [%struct.tps_info { ptr @.str.23, ptr @.str.46, i8 0, ptr null, i32 2200 }, %struct.tps_info { ptr @.str.24, ptr @.str.47, i8 4, ptr @VIO_VSEL_table, i32 350 }, %struct.tps_info { ptr @.str.25, ptr @.str.48, i8 76, ptr null, i32 350 }, %struct.tps_info { ptr @.str.26, ptr @.str.49, i8 76, ptr null, i32 350 }, %struct.tps_info { ptr @.str.37, ptr null, i8 68, ptr null, i32 900 }, %struct.tps_info { ptr @.str.38, ptr @.str.50, i8 51, ptr null, i32 420 }, %struct.tps_info { ptr @.str.39, ptr @.str.50, i8 51, ptr null, i32 420 }, %struct.tps_info { ptr @.str.40, ptr @.str.51, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.41, ptr @.str.51, i8 51, ptr null, i32 230 }, %struct.tps_info { ptr @.str.42, ptr @.str.52, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.43, ptr @.str.53, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.44, ptr @.str.53, i8 26, ptr null, i32 230 }, %struct.tps_info { ptr @.str.45, ptr @.str.53, i8 26, ptr null, i32 230 }], [92 x i8] zeroinitializer }, align 32
@tps65910_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid tps chip version\0A\00", [38 x i8] zeroinitializer }, align 32
@tps65910_probe._entry_ptr.8 = internal global ptr @tps65910_probe._entry.6, section ".printk_index", align 4
@tps65910_ops_dcdc = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @tps65910_list_voltage_dcdc, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65910_set_voltage_dcdc_sel, ptr null, ptr @tps65910_get_voltage_dcdc_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65910_ops_vdd3 = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr null, ptr @tps65910_get_voltage_vdd3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65910_ops_vbb = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @tps65910_set_voltage_sel, ptr null, ptr @tps65910_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65910_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65910_set_voltage_sel, ptr null, ptr @tps65910_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65911_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @tps65911_list_voltage, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65911_set_voltage_sel, ptr null, ptr @tps65911_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @tps65910_set_mode, ptr @tps65910_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65910_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1197, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialise ext control config\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tps65910_probe._entry_ptr.12 = internal global ptr @tps65910_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@tps65910_parse_dt_reg_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 1017, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator node not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tps65910_parse_dt_reg_data\00", [37 x i8] zeroinitializer }, align 32
@tps65910_parse_dt_reg_data._entry_ptr = internal global ptr @tps65910_parse_dt_reg_data._entry, section ".printk_index", align 4
@tps65910_matches = internal global { [14 x %struct.of_regulator_match], [72 x i8] } { [14 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.23, ptr @tps65910_regs, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.24, ptr getelementptr (i8, ptr @tps65910_regs, i64 20), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr getelementptr (i8, ptr @tps65910_regs, i64 40), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr getelementptr (i8, ptr @tps65910_regs, i64 60), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr getelementptr (i8, ptr @tps65910_regs, i64 80), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr getelementptr (i8, ptr @tps65910_regs, i64 100), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr getelementptr (i8, ptr @tps65910_regs, i64 120), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr getelementptr (i8, ptr @tps65910_regs, i64 140), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr getelementptr (i8, ptr @tps65910_regs, i64 160), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr getelementptr (i8, ptr @tps65910_regs, i64 180), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr getelementptr (i8, ptr @tps65910_regs, i64 200), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.34, ptr getelementptr (i8, ptr @tps65910_regs, i64 220), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.35, ptr getelementptr (i8, ptr @tps65910_regs, i64 240), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.36, ptr getelementptr (i8, ptr @tps65910_regs, i64 260), ptr null, ptr null, ptr null }], [72 x i8] zeroinitializer }, align 32
@tps65911_matches = internal global { [13 x %struct.of_regulator_match], [92 x i8] } { [13 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.23, ptr @tps65911_regs, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.24, ptr getelementptr (i8, ptr @tps65911_regs, i64 20), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr getelementptr (i8, ptr @tps65911_regs, i64 40), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr getelementptr (i8, ptr @tps65911_regs, i64 60), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.37, ptr getelementptr (i8, ptr @tps65911_regs, i64 80), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.38, ptr getelementptr (i8, ptr @tps65911_regs, i64 100), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.39, ptr getelementptr (i8, ptr @tps65911_regs, i64 120), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.40, ptr getelementptr (i8, ptr @tps65911_regs, i64 140), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.41, ptr getelementptr (i8, ptr @tps65911_regs, i64 160), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.42, ptr getelementptr (i8, ptr @tps65911_regs, i64 180), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.43, ptr getelementptr (i8, ptr @tps65911_regs, i64 200), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.44, ptr getelementptr (i8, ptr @tps65911_regs, i64 220), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.45, ptr getelementptr (i8, ptr @tps65911_regs, i64 240), ptr null, ptr null, ptr null }], [92 x i8] zeroinitializer }, align 32
@tps65910_parse_dt_reg_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.16, ptr @.str.3, i32 1032, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps65910_parse_dt_reg_data._entry_ptr.18 = internal global ptr @tps65910_parse_dt_reg_data._entry.17, section ".printk_index", align 4
@tps65910_parse_dt_reg_data._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 1040, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error parsing regulator init data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tps65910_parse_dt_reg_data._entry_ptr.21 = internal global ptr @tps65910_parse_dt_reg_data._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti,regulator-ext-sleep-control\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vrtc\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd2\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdig1\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdig2\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpll\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdac\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vaux1\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vaux2\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vaux33\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vmmc\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbb\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc7\00", [27 x i8] zeroinitializer }, align 32
@VRTC_VSEL_table = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1800000], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@VIO_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1500000, i32 1800000, i32 2500000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc1\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc2\00", [27 x i8] zeroinitializer }, align 32
@VDD3_VSEL_table = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5000000], [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc6\00", [27 x i8] zeroinitializer }, align 32
@VDIG1_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2700000], [16 x i8] zeroinitializer }, align 32
@VDIG2_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000000, i32 1100000, i32 1200000, i32 1800000], [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc5\00", [27 x i8] zeroinitializer }, align 32
@VPLL_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000000, i32 1100000, i32 1800000, i32 2500000], [16 x i8] zeroinitializer }, align 32
@VDAC_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 2600000, i32 2800000, i32 2850000], [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc4\00", [27 x i8] zeroinitializer }, align 32
@VAUX1_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 2500000, i32 2800000, i32 2850000], [16 x i8] zeroinitializer }, align 32
@VAUX2_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 2800000, i32 2900000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcc3\00", [27 x i8] zeroinitializer }, align 32
@VAUX33_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 2000000, i32 2800000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@VMMC_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1800000, i32 2800000, i32 3000000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@VBB_VSEL_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3000000, i32 2520000, i32 3150000, i32 5000000], [16 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"External sleep control flag is not proper\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tps65910_set_ext_sleep_config\00", [34 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr = internal global ptr @tps65910_set_ext_sleep_config._entry, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 862, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error in configuring external control EN1\0A\00", [53 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.58 = internal global ptr @tps65910_set_ext_sleep_config._entry.56, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.3, i32 875, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error in configuring external control EN2\0A\00", [53 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.61 = internal global ptr @tps65910_set_ext_sleep_config._entry.59, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error in configuring external control EN3\0A\00", [53 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.64 = internal global ptr @tps65910_set_ext_sleep_config._entry.62, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.3, i32 905, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error in configuring SLEEP register\0A\00", [59 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.67 = internal global ptr @tps65910_set_ext_sleep_config._entry.65, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.55, ptr @.str.3, i32 935, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error in configuring op register\0A\00", [62 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.70 = internal global ptr @tps65910_set_ext_sleep_config._entry.68, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.55, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error in setting sr register\0A\00", [34 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.73 = internal global ptr @tps65910_set_ext_sleep_config._entry.71, section ".printk_index", align 4
@tps65910_set_ext_sleep_config._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.3, i32 958, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tps65910_set_ext_sleep_config._entry_ptr.75 = internal global ptr @tps65910_set_ext_sleep_config._entry.74, section ".printk_index", align 4
@tps65910_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 1251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error in clearing external control\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tps65910_shutdown\00", [46 x i8] zeroinitializer }, align 32
@tps65910_shutdown._entry_ptr = internal global ptr @tps65910_shutdown._entry, section ".printk_index", align 4
@switch.table.tps65910_get_ctrl_register = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 30, i32 32, i32 33, i32 36, i32 39, i32 48, i32 49, i32 54, i32 55, i32 50, i32 51, i32 52, i32 53, i32 57], [40 x i8] zeroinitializer }, align 32
@switch.table.tps65911_get_ctrl_register = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 30, i32 32, i32 33, i32 36, i32 39, i32 48, i32 49, i32 55, i32 54, i32 50, i32 53, i32 52, i32 51], [44 x i8] zeroinitializer }, align 32
@switch.table.tps65910_set_voltage_sel = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.tps65910_set_voltage_sel.78 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.tps65911_set_voltage_sel = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@switch.table.tps65911_set_voltage_sel.79 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 12, i32 252, i32 252, i32 252, i32 252, i32 252, i32 124, i32 252, i32 124, i32 124, i32 124, i32 124, i32 6], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 13]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.87 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.88 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.89 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"tps65910_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1255, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1257, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1089, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"tps65910_ext_sleep_control\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 276, i32 21 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"tps65910_regs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 100, i32 24 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"tps65911_ext_sleep_control\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 292, i32 21 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"tps65911_regs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 195, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1128, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"tps65910_ops_dcdc\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 762, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"tps65910_ops_vdd3\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 775, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"tps65910_ops_vbb\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 786, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"tps65910_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 798, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"tps65911_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 810, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1196, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1216, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1015, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1017, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"tps65910_matches\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 965, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"tps65911_matches\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 982, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1032, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1039, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1054, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 966, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 967, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 968, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 969, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 970, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 971, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 972, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 973, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 974, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 975, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 976, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 977, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 978, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 979, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 987, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 988, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 989, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 990, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 991, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 992, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 993, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 994, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 995, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 103, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"VRTC_VSEL_table\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 38, i32 27 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 110, i32 15 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"VIO_VSEL_table\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 31, i32 27 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 117, i32 15 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 122, i32 15 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"VDD3_VSEL_table\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 43, i32 27 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 133, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"VDIG1_VSEL_table\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 48, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"VDIG2_VSEL_table\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 53, i32 27 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 147, i32 15 }
@___asan_gen_.291 = private unnamed_addr constant [16 x i8] c"VPLL_VSEL_table\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 58, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant [16 x i8] c"VDAC_VSEL_table\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 63, i32 27 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 161, i32 15 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"VAUX1_VSEL_table\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 68, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"VAUX2_VSEL_table\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 73, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 175, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant [18 x i8] c"VAUX33_VSEL_table\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 78, i32 27 }
@___asan_gen_.312 = private unnamed_addr constant [16 x i8] c"VMMC_VSEL_table\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 83, i32 27 }
@___asan_gen_.315 = private unnamed_addr constant [15 x i8] c"VBB_VSEL_table\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 88, i32 27 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 845, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 861, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 874, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 889, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 904, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 934, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 941, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 957, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [42 x i8] c"../drivers/regulator/tps65910-regulator.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1250, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant [40 x i8] c"switch.table.tps65910_get_ctrl_register\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [40 x i8] c"switch.table.tps65911_get_ctrl_register\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [38 x i8] c"switch.table.tps65910_set_voltage_sel\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [41 x i8] c"switch.table.tps65910_set_voltage_sel.78\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [38 x i8] c"switch.table.tps65911_set_voltage_sel\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [41 x i8] c"switch.table.tps65911_set_voltage_sel.79\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_tps65910_cleanup, ptr @__initcall__kmod_tps65910_regulator__290_1267_tps65910_init4, ptr @tps65910_cleanup, ptr @tps65910_parse_dt_reg_data._entry, ptr @tps65910_parse_dt_reg_data._entry.17, ptr @tps65910_parse_dt_reg_data._entry.19, ptr @tps65910_parse_dt_reg_data._entry_ptr, ptr @tps65910_parse_dt_reg_data._entry_ptr.18, ptr @tps65910_parse_dt_reg_data._entry_ptr.21, ptr @tps65910_probe._entry, ptr @tps65910_probe._entry.6, ptr @tps65910_probe._entry.9, ptr @tps65910_probe._entry_ptr, ptr @tps65910_probe._entry_ptr.12, ptr @tps65910_probe._entry_ptr.8, ptr @tps65910_set_ext_sleep_config._entry, ptr @tps65910_set_ext_sleep_config._entry.56, ptr @tps65910_set_ext_sleep_config._entry.59, ptr @tps65910_set_ext_sleep_config._entry.62, ptr @tps65910_set_ext_sleep_config._entry.65, ptr @tps65910_set_ext_sleep_config._entry.68, ptr @tps65910_set_ext_sleep_config._entry.71, ptr @tps65910_set_ext_sleep_config._entry.74, ptr @tps65910_set_ext_sleep_config._entry_ptr, ptr @tps65910_set_ext_sleep_config._entry_ptr.58, ptr @tps65910_set_ext_sleep_config._entry_ptr.61, ptr @tps65910_set_ext_sleep_config._entry_ptr.64, ptr @tps65910_set_ext_sleep_config._entry_ptr.67, ptr @tps65910_set_ext_sleep_config._entry_ptr.70, ptr @tps65910_set_ext_sleep_config._entry_ptr.73, ptr @tps65910_set_ext_sleep_config._entry_ptr.75, ptr @tps65910_shutdown._entry, ptr @tps65910_shutdown._entry_ptr, ptr @tps65910_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tps65910_ext_sleep_control, ptr @tps65910_regs, ptr @tps65911_ext_sleep_control, ptr @tps65911_regs, ptr @.str.7, ptr @tps65910_ops_dcdc, ptr @tps65910_ops_vdd3, ptr @tps65910_ops_vbb, ptr @tps65910_ops, ptr @tps65911_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tps65910_matches, ptr @tps65911_matches, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @VRTC_VSEL_table, ptr @.str.47, ptr @VIO_VSEL_table, ptr @.str.48, ptr @.str.49, ptr @VDD3_VSEL_table, ptr @.str.50, ptr @VDIG1_VSEL_table, ptr @VDIG2_VSEL_table, ptr @.str.51, ptr @VPLL_VSEL_table, ptr @VDAC_VSEL_table, ptr @.str.52, ptr @VAUX1_VSEL_table, ptr @VAUX2_VSEL_table, ptr @.str.53, ptr @VAUX33_VSEL_table, ptr @VMMC_VSEL_table, ptr @VBB_VSEL_table, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.76, ptr @.str.77, ptr @switch.table.tps65910_get_ctrl_register, ptr @switch.table.tps65911_get_ctrl_register, ptr @switch.table.tps65910_set_voltage_sel, ptr @switch.table.tps65910_set_voltage_sel.78, ptr @switch.table.tps65911_set_voltage_sel, ptr @switch.table.tps65911_set_voltage_sel.79], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_ext_sleep_control to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_regs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65911_ext_sleep_control to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65911_regs to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_ops_dcdc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_ops_vdd3 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_ops_vbb to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65911_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_parse_dt_reg_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_matches to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65911_matches to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_parse_dt_reg_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_parse_dt_reg_data._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VRTC_VSEL_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VIO_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDD3_VSEL_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDIG1_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDIG2_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VPLL_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDAC_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX1_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX2_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VAUX33_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VMMC_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VBB_VSEL_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_set_ext_sleep_config._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65910_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps65910_get_ctrl_register to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps65911_get_ctrl_register to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps65910_set_voltage_sel to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps65910_set_voltage_sel.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps65911_set_voltage_sel to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tps65911_set_voltage_sel.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65910_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65910_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65910_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #8
  %4 = call ptr @memset(ptr %config, i32 0, i32 24)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #8
  %11 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %prop.i, align 4, !annotation !206
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end.thread335_crit_edge, label %if.end.i

if.then.if.end.thread335_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread335

if.end.i:                                         ; preds = %if.then
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %call5.i = tail call ptr @of_get_child_by_name(ptr noundef %15, ptr noundef nonnull @.str.14) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %if.end.thread335

if.end9.i:                                        ; preds = %if.end.i
  %id.i.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %sw.default.i [
    i32 0, label %if.end9.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb11.i
  ]

if.end9.i.sw.epilog.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %call5.i) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %if.end.thread335

sw.epilog.i:                                      ; preds = %sw.bb11.i, %if.end9.i.sw.epilog.i_crit_edge
  %matches.0.i = phi ptr [ @tps65911_matches, %sw.bb11.i ], [ @tps65910_matches, %if.end9.i.sw.epilog.i_crit_edge ]
  %count.0.i = phi i32 [ 13, %sw.bb11.i ], [ 14, %if.end9.i.sw.epilog.i_crit_edge ]
  %call17.i = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call5.i, ptr noundef nonnull %matches.0.i, i32 noundef %count.0.i) #8
  tail call void @of_node_put(ptr noundef nonnull %call5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i = icmp slt i32 %call17.i, 0
  br i1 %cmp.i, label %do.end21.i, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

do.end21.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call17.i) #11
  br label %if.end.thread335

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %idx.071.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i_crit_edge ]
  %of_node25.i = getelementptr %struct.of_regulator_match, ptr %matches.0.i, i32 %idx.071.i, i32 3
  %19 = ptrtoint ptr %of_node25.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node25.i, align 4
  %tobool26.not.i = icmp eq ptr %20, null
  br i1 %tobool26.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end28.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end28.i:                                       ; preds = %for.body.i
  %init_data.i = getelementptr %struct.of_regulator_match, ptr %matches.0.i, i32 %idx.071.i, i32 2
  %21 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_data.i, align 4
  %arrayidx30.i = getelementptr %struct.tps65910_board, ptr %call.i.i, i32 0, i32 12, i32 %idx.071.i
  %23 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx30.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.22, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool34.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end28.i.for.inc.i_crit_edge

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prop.i, align 4
  %arrayidx36.i = getelementptr %struct.tps65910_board, ptr %call.i.i, i32 0, i32 11, i32 %idx.071.i
  %26 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx36.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then35.i, %if.end28.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.071.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count.0.i
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.thread335:                                 ; preds = %do.end21.i, %sw.default.i, %do.end.i, %if.then.if.end.thread335_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  br label %do.end

if.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #8
  br label %if.end9

do.end:                                           ; preds = %if.end.thread335, %land.lhs.true.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %pmic_plat_data.0334 = phi ptr [ %call.i.i, %if.end ], [ %8, %entry.if.end9_crit_edge ]
  %tps65910_reg_matches.1333 = phi ptr [ %matches.0.i, %if.end ], [ null, %entry.if.end9_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #8
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %mfd = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %mfd to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %mfd, align 4
  %driver_data.i.i311 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i311 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i311, align 4
  %regmap = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i312 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 63, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %cmp = icmp slt i32 %call.i312, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %id.i = getelementptr inbounds %struct.tps65910, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %32, label %do.end35 [
    i32 0, label %do.end22
    i32 1, label %do.end29
  ]

do.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tps65910_get_ctrl_register, ptr %get_ctrl_reg, align 4
  %num_regulators = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %num_regulators to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 14, ptr %num_regulators, align 4
  %ext_sleep_control = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %ext_sleep_control to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @tps65910_ext_sleep_control, ptr %ext_sleep_control, align 4
  %37 = ptrtoint ptr %mfd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mfd, align 4
  %regmap24 = getelementptr inbounds %struct.tps65910, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap24, align 4
  %call.i313 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 62, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %get_ctrl_reg30 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 6
  %41 = ptrtoint ptr %get_ctrl_reg30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @tps65911_get_ctrl_register, ptr %get_ctrl_reg30, align 4
  %num_regulators31 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %num_regulators31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 13, ptr %num_regulators31, align 4
  %ext_sleep_control32 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %ext_sleep_control32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @tps65911_ext_sleep_control, ptr %ext_sleep_control32, align 4
  br label %sw.epilog

do.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %do.end29, %do.end22
  %info.0 = phi ptr [ @tps65911_regs, %do.end29 ], [ @tps65910_regs, %do.end22 ]
  %num_regulators38 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %num_regulators38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_regulators38, align 4
  %46 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 244) #8
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !207

devm_kcalloc.exit.thread:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %call.i, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %sw.epilog
  %49 = extractvalue { i32, i1 } %46, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %49, i32 noundef 3520) #8
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool41.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool41.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end43

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %devm_kcalloc.exit
  %51 = ptrtoint ptr %num_regulators38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_regulators38, align 4
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #8
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %devm_kcalloc.exit317.thread, label %devm_kcalloc.exit317, !prof !207

devm_kcalloc.exit317.thread:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %info47342 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 3
  %55 = ptrtoint ptr %info47342 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %info47342, align 4
  br label %cleanup

devm_kcalloc.exit317:                             ; preds = %if.end43
  %56 = extractvalue { i32, i1 } %53, 0
  %call5.i.i314 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %56, i32 noundef 3520) #8
  %info47 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 3
  %57 = ptrtoint ptr %info47 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call5.i.i314, ptr %info47, align 4
  %tobool49.not = icmp eq ptr %call5.i.i314, null
  br i1 %tobool49.not, label %devm_kcalloc.exit317.cleanup_crit_edge, label %if.end51

devm_kcalloc.exit317.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit317
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %devm_kcalloc.exit317
  %58 = ptrtoint ptr %num_regulators38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_regulators38, align 4
  %60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %59, i32 4) #8
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %devm_kcalloc.exit321.thread, label %devm_kcalloc.exit321, !prof !207

devm_kcalloc.exit321.thread:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %rdev55345 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 2
  %62 = ptrtoint ptr %rdev55345 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rdev55345, align 4
  br label %cleanup

devm_kcalloc.exit321:                             ; preds = %if.end51
  %63 = extractvalue { i32, i1 } %60, 0
  %call5.i.i318 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %63, i32 noundef 3520) #8
  %rdev55 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 2
  %64 = ptrtoint ptr %rdev55 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call5.i.i318, ptr %rdev55, align 4
  %tobool57.not = icmp eq ptr %call5.i.i318, null
  br i1 %tobool57.not, label %devm_kcalloc.exit321.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit321.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit321
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit321
  %65 = ptrtoint ptr %num_regulators38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_regulators38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp61348 = icmp sgt i32 %66, 0
  br i1 %cmp61348, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %get_ctrl_reg156 = getelementptr inbounds %struct.tps65910_reg, ptr %call.i, i32 0, i32 6
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap166 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %tobool167.not = icmp eq ptr %tps65910_reg_matches.1333, null
  %of_node171 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end183.for.body_crit_edge, %for.body.lr.ph
  %i.0352 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end183.for.body_crit_edge ]
  %info.1349 = phi ptr [ %info.0, %for.body.lr.ph ], [ %incdec.ptr, %if.end183.for.body_crit_edge ]
  %67 = ptrtoint ptr %info47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info47, align 4
  %arrayidx = getelementptr ptr, ptr %68, i32 %i.0352
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %info.1349, ptr %arrayidx, align 4
  %70 = ptrtoint ptr %info.1349 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %info.1349, align 4
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %arrayidx64 = getelementptr %struct.regulator_desc, ptr %73, i32 %i.0352
  %74 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %arrayidx64, align 4
  %vin_name = getelementptr inbounds %struct.tps_info, ptr %info.1349, i32 0, i32 1
  %75 = ptrtoint ptr %vin_name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vin_name, align 4
  %77 = load ptr, ptr %call.i, align 4
  %supply_name = getelementptr %struct.regulator_desc, ptr %77, i32 %i.0352, i32 1
  %78 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %76, ptr %supply_name, align 4
  %79 = load ptr, ptr %call.i, align 4
  %id = getelementptr %struct.regulator_desc, ptr %79, i32 %i.0352, i32 6
  %80 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %i.0352, ptr %id, align 4
  %n_voltages = getelementptr inbounds %struct.tps_info, ptr %info.1349, i32 0, i32 2
  %81 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %n_voltages, align 4
  %conv = zext i8 %82 to i32
  %83 = load ptr, ptr %call.i, align 4
  %n_voltages72 = getelementptr %struct.regulator_desc, ptr %83, i32 %i.0352, i32 8
  %84 = ptrtoint ptr %n_voltages72 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv, ptr %n_voltages72, align 4
  %enable_time_us = getelementptr inbounds %struct.tps_info, ptr %info.1349, i32 0, i32 4
  %85 = ptrtoint ptr %enable_time_us to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %enable_time_us, align 4
  %87 = load ptr, ptr %call.i, align 4
  %enable_time = getelementptr %struct.regulator_desc, ptr %87, i32 %i.0352, i32 57
  %88 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %enable_time, align 4
  %89 = zext i32 %i.0352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %i.0352, label %if.else122 [
    i32 2, label %for.body.if.then79_crit_edge
    i32 3, label %for.body.if.then79_crit_edge361
    i32 4, label %if.then89
    i32 13, label %land.lhs.true110
  ]

for.body.if.then79_crit_edge361:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79

for.body.if.then79_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then79

if.then79:                                        ; preds = %for.body.if.then79_crit_edge, %for.body.if.then79_crit_edge361
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 4
  %ops = getelementptr %struct.regulator_desc, ptr %91, i32 %i.0352, i32 10
  %92 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @tps65910_ops_dcdc, ptr %ops, align 4
  %93 = load ptr, ptr %call.i, align 4
  %n_voltages84 = getelementptr %struct.regulator_desc, ptr %93, i32 %i.0352, i32 8
  %94 = ptrtoint ptr %n_voltages84 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 219, ptr %n_voltages84, align 4
  %95 = load ptr, ptr %call.i, align 4
  %ramp_delay = getelementptr %struct.regulator_desc, ptr %95, i32 %i.0352, i32 18
  %96 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 12500, ptr %ramp_delay, align 4
  br label %if.end141

if.then89:                                        ; preds = %for.body
  %97 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp91 = icmp eq i32 %98, 0
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  %ops96 = getelementptr %struct.regulator_desc, ptr %100, i32 4, i32 10
  br i1 %cmp91, label %if.then93, label %if.else99

if.then93:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %ops96 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @tps65910_ops_vdd3, ptr %ops96, align 4
  %voltage_table = getelementptr inbounds %struct.tps_info, ptr %info.1349, i32 0, i32 3
  %102 = ptrtoint ptr %voltage_table to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %voltage_table, align 4
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 4
  %volt_table = getelementptr %struct.regulator_desc, ptr %105, i32 4, i32 23
  %106 = ptrtoint ptr %volt_table to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %volt_table, align 4
  br label %if.end141

if.else99:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %ops96 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @tps65910_ops_dcdc, ptr %ops96, align 4
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  %ramp_delay105 = getelementptr %struct.regulator_desc, ptr %109, i32 4, i32 18
  %110 = ptrtoint ptr %ramp_delay105 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 5000, ptr %ramp_delay105, align 4
  br label %if.end141

land.lhs.true110:                                 ; preds = %for.body
  %111 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp112 = icmp eq i32 %112, 0
  br i1 %cmp112, label %if.then114, label %land.lhs.true110.if.else134_crit_edge

land.lhs.true110.if.else134_crit_edge:            ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else134

if.then114:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call.i, align 4
  %ops117 = getelementptr %struct.regulator_desc, ptr %114, i32 13, i32 10
  %115 = ptrtoint ptr %ops117 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @tps65910_ops_vbb, ptr %ops117, align 4
  %voltage_table118 = getelementptr inbounds %struct.tps_info, ptr %info.1349, i32 0, i32 3
  %116 = ptrtoint ptr %voltage_table118 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %voltage_table118, align 4
  %118 = load ptr, ptr %call.i, align 4
  %volt_table121 = getelementptr %struct.regulator_desc, ptr %118, i32 13, i32 23
  %119 = ptrtoint ptr %volt_table121 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %117, ptr %volt_table121, align 4
  br label %if.end141

if.else122:                                       ; preds = %for.body
  %120 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp124 = icmp eq i32 %.pr, 0
  br i1 %cmp124, label %if.then126, label %if.else122.if.else134_crit_edge

if.else122.if.else134_crit_edge:                  ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else134

if.then126:                                       ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  %ops129 = getelementptr %struct.regulator_desc, ptr %122, i32 %i.0352, i32 10
  %123 = ptrtoint ptr %ops129 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @tps65910_ops, ptr %ops129, align 4
  %voltage_table130 = getelementptr inbounds %struct.tps_info, ptr %info.1349, i32 0, i32 3
  %124 = ptrtoint ptr %voltage_table130 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %voltage_table130, align 4
  %126 = load ptr, ptr %call.i, align 4
  %volt_table133 = getelementptr %struct.regulator_desc, ptr %126, i32 %i.0352, i32 23
  %127 = ptrtoint ptr %volt_table133 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %125, ptr %volt_table133, align 4
  br label %if.end141

if.else134:                                       ; preds = %if.else122.if.else134_crit_edge, %land.lhs.true110.if.else134_crit_edge
  %128 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call.i, align 4
  %ops137 = getelementptr %struct.regulator_desc, ptr %129, i32 %i.0352, i32 10
  %130 = ptrtoint ptr %ops137 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @tps65911_ops, ptr %ops137, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else134, %if.then126, %if.then114, %if.else99, %if.then93, %if.then79
  %arrayidx142 = getelementptr %struct.tps65910_board, ptr %pmic_plat_data.0334, i32 0, i32 11, i32 %i.0352
  %131 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx142, align 4
  %call143 = call fastcc i32 @tps65910_set_ext_sleep_config(ptr noundef nonnull %call.i, i32 noundef %i.0352, i32 noundef %132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %do.end149, label %if.end141.if.end151_crit_edge

if.end141.if.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

do.end149:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %134, ptr noundef nonnull @.str.10) #11
  br label %if.end151

if.end151:                                        ; preds = %do.end149, %if.end141.if.end151_crit_edge
  %135 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %call.i, align 4
  %type = getelementptr %struct.regulator_desc, ptr %136, i32 %i.0352, i32 12
  %137 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %type, align 4
  %138 = load ptr, ptr %call.i, align 4
  %owner = getelementptr %struct.regulator_desc, ptr %138, i32 %i.0352, i32 13
  %139 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %owner, align 4
  %140 = ptrtoint ptr %get_ctrl_reg156 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %get_ctrl_reg156, align 4
  %call157 = call i32 %141(i32 noundef %i.0352) #8
  %142 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call.i, align 4
  %enable_reg = getelementptr %struct.regulator_desc, ptr %143, i32 %i.0352, i32 34
  %144 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call157, ptr %enable_reg, align 4
  %145 = load ptr, ptr %call.i, align 4
  %enable_mask = getelementptr %struct.regulator_desc, ptr %145, i32 %i.0352, i32 35
  %146 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %enable_mask, align 4
  %147 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %3, align 4
  %149 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %config, align 4
  %arrayidx164 = getelementptr %struct.tps65910_board, ptr %pmic_plat_data.0334, i32 0, i32 12, i32 %i.0352
  %150 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx164, align 4
  %152 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %init_data, align 4
  %153 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i, ptr %driver_data, align 4
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %156 = ptrtoint ptr %regmap166 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %regmap166, align 4
  br i1 %tobool167.not, label %if.end151.if.end172_crit_edge, label %if.then168

if.end151.if.end172_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

if.then168:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  %of_node170 = getelementptr %struct.of_regulator_match, ptr %tps65910_reg_matches.1333, i32 %i.0352, i32 3
  %157 = ptrtoint ptr %of_node170 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %of_node170, align 4
  %159 = ptrtoint ptr %of_node171 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %of_node171, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %if.end151.if.end172_crit_edge
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call.i, align 4
  %arrayidx175 = getelementptr %struct.regulator_desc, ptr %161, i32 %i.0352
  %call176 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx175, ptr noundef nonnull %config) #8
  %cmp.i325 = icmp ugt ptr %call176, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %if.then178, label %if.end183

if.then178:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %3, align 4
  %164 = ptrtoint ptr %call176 to i32
  %165 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev, align 8
  %call182 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %163, i32 noundef %164, ptr noundef nonnull @.str.13, ptr noundef %166) #8
  br label %cleanup

if.end183:                                        ; preds = %if.end172
  %167 = ptrtoint ptr %rdev55 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rdev55, align 4
  %arrayidx185 = getelementptr ptr, ptr %168, i32 %i.0352
  %169 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call176, ptr %arrayidx185, align 4
  %inc = add nuw nsw i32 %i.0352, 1
  %incdec.ptr = getelementptr %struct.tps_info, ptr %info.1349, i32 1
  %170 = ptrtoint ptr %num_regulators38 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_regulators38, align 4
  %cmp61 = icmp slt i32 %inc, %171
  br i1 %cmp61, label %if.end183.for.body_crit_edge, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end183.for.body_crit_edge:                     ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end183.cleanup_crit_edge, %if.then178, %for.cond.preheader.cleanup_crit_edge, %devm_kcalloc.exit321.cleanup_crit_edge, %devm_kcalloc.exit321.thread, %devm_kcalloc.exit317.cleanup_crit_edge, %devm_kcalloc.exit317.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end35, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end35 ], [ %call182, %if.then178 ], [ -22, %do.end ], [ -12, %if.end9.cleanup_crit_edge ], [ %call.i312, %if.end14.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit317.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit321.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit317.thread ], [ -12, %devm_kcalloc.exit321.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end183.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tps65910_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_regulators = getelementptr inbounds %struct.tps65910_reg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_regulators, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rdev = getelementptr inbounds %struct.tps65910_reg, ptr %1, i32 0, i32 2
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call1 = tail call fastcc i32 @tps65910_set_ext_sleep_config(ptr noundef %1, i32 noundef %i.012, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %8 = ptrtoint ptr %num_regulators to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_regulators, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tps65910_get_ctrl_register(i32 noundef %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %id)
  %0 = icmp ult i32 %id, 14
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.tps65910_get_ctrl_register, i32 0, i32 %id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tps65911_get_ctrl_register(i32 noundef %id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %id)
  %0 = icmp ult i32 %id, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_get_ctrl_register, i32 0, i32 %id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps65910_set_ext_sleep_config(ptr nocapture noundef %pmic, i32 noundef %id, i32 noundef %ext_sleep_config) unnamed_addr #2 align 64 {
entry:
  %opvsel = alloca i32, align 4
  %srvsel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd1 = getelementptr inbounds %struct.tps65910_reg, ptr %pmic, i32 0, i32 1
  %0 = ptrtoint ptr %mfd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd1, align 4
  %ext_sleep_control = getelementptr inbounds %struct.tps65910_reg, ptr %pmic, i32 0, i32 7
  %2 = ptrtoint ptr %ext_sleep_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_sleep_control, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %5, 8
  %shl = shl nuw i32 1, %5
  %and6 = and i32 %ext_sleep_config, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %.pre = and i32 %ext_sleep_config, 1
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %entry
  %and9 = lshr i32 %ext_sleep_config, 1
  %and9.lobit = and i32 %and9, 1
  %add = add nuw nsw i32 %and9.lobit, %.pre
  %and12 = lshr i32 %ext_sleep_config, 2
  %and12.lobit = and i32 %and12, 1
  %add15 = add nuw nsw i32 %add, %and12.lobit
  %and16 = lshr i32 %ext_sleep_config, 3
  %and16.lobit = and i32 %and16, 1
  %add19 = add nuw nsw i32 %add15, %and16.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add19)
  %cmp20 = icmp ugt i32 %add19, 1
  br i1 %cmp20, label %do.end, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.54) #11
  br label %cleanup220

if.end23:                                         ; preds = %if.then.if.end23_crit_edge, %entry.if.end23_crit_edge
  %arrayidx24 = getelementptr %struct.tps65910_reg, ptr %pmic, i32 0, i32 8, i32 %id
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ext_sleep_config, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool26.not = icmp eq i32 %.pre, 0
  %regmap31 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap31, align 4
  %conv32 = and i32 %shr, 255
  %add33 = add nuw nsw i32 %conv32, 69
  %conv34 = and i32 %shl, 255
  %.conv34 = select i1 %tobool26.not, i32 0, i32 %conv34
  %call.i319 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %add33, i32 noundef %conv34, i32 noundef %.conv34, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %cmp37 = icmp slt i32 %call.i319, 0
  br i1 %cmp37, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.57) #11
  br label %cleanup220

if.end44:                                         ; preds = %if.end23
  %and45 = and i32 %ext_sleep_config, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %regmap54 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regmap54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap54, align 4
  %conv55 = and i32 %shr, 255
  %add56 = add nuw nsw i32 %conv55, 71
  %conv57 = and i32 %shl, 255
  %.conv57 = select i1 %tobool46.not, i32 0, i32 %conv57
  %call.i321 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %add56, i32 noundef %conv57, i32 noundef %.conv57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %cmp60 = icmp slt i32 %call.i321, 0
  br i1 %cmp60, label %do.end65, label %if.end67

do.end65:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.60) #11
  br label %cleanup220

if.end67:                                         ; preds = %if.end44
  %id.i = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp69 = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %id)
  %cmp71 = icmp sgt i32 %id, 4
  %or.cond = and i1 %cmp71, %cmp69
  br i1 %or.cond, label %if.then73, label %if.end67.if.end97_crit_edge

if.end67.if.end97_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then73:                                        ; preds = %if.end67
  %and74 = and i32 %ext_sleep_config, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %regmap83 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap83, align 4
  %conv84 = and i32 %shr, 255
  %add85 = add nuw nsw i32 %conv84, 73
  %conv86 = and i32 %shl, 255
  %.conv86 = select i1 %tobool75.not, i32 0, i32 %conv86
  %call.i323 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add85, i32 noundef %conv86, i32 noundef %.conv86, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %cmp89 = icmp slt i32 %call.i323, 0
  br i1 %cmp89, label %do.end94, label %if.then73.if.end97_crit_edge

if.then73.if.end97_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.end94:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.63) #11
  br label %cleanup220

if.end97:                                         ; preds = %if.then73.if.end97_crit_edge, %if.end67.if.end97_crit_edge
  br i1 %tobool.not, label %if.then100, label %if.end122

if.then100:                                       ; preds = %if.end97
  %regmap101 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regmap101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap101, align 4
  %conv102 = and i32 %shr, 255
  %add103 = add nuw nsw i32 %conv102, 65
  %conv104 = and i32 %shl, 255
  %call.i324 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add103, i32 noundef %conv104, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i324)
  %tobool106.not = icmp eq i32 %call.i324, 0
  br i1 %tobool106.not, label %if.then107, label %if.then100.if.end113_crit_edge

if.then100.if.end113_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then107:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %regmap101 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap101, align 4
  %add110 = add nuw nsw i32 %conv102, 67
  %call.i325 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add110, i32 noundef %conv104, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end113

if.end113:                                        ; preds = %if.then107, %if.then100.if.end113_crit_edge
  %ret.3 = phi i32 [ %call.i324, %if.then100.if.end113_crit_edge ], [ %call.i325, %if.then107 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %cmp114 = icmp slt i32 %ret.3, 0
  br i1 %cmp114, label %do.end119, label %if.end113.cleanup220_crit_edge

if.end113.cleanup220_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup220

do.end119:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.66) #11
  br label %cleanup220

if.end122:                                        ; preds = %if.end97
  %29 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %id, label %if.end122.if.end188_crit_edge [
    i32 2, label %if.end122.if.then134_crit_edge
    i32 3, label %if.end122.if.then134_crit_edge336
    i32 4, label %land.lhs.true130
  ]

if.end122.if.then134_crit_edge336:                ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

if.end122.if.then134_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

if.end122.if.end188_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

land.lhs.true130:                                 ; preds = %if.end122
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp132 = icmp eq i32 %31, 1
  br i1 %cmp132, label %land.lhs.true130.if.then134_crit_edge, label %land.lhs.true130.if.end188_crit_edge

land.lhs.true130.if.end188_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

land.lhs.true130.if.then134_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

if.then134:                                       ; preds = %land.lhs.true130.if.then134_crit_edge, %if.end122.if.then134_crit_edge, %if.end122.if.then134_crit_edge336
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %pmic, i32 0, i32 6
  %32 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_ctrl_reg, align 4
  %call135 = tail call i32 %33(i32 noundef %id) #8
  %add136 = add i32 %call135, 1
  %34 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_ctrl_reg, align 4
  %call138 = tail call i32 %35(i32 noundef %id) #8
  %add139 = add i32 %call138, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opvsel) #8
  %36 = ptrtoint ptr %opvsel to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %opvsel, align 4, !annotation !206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srvsel) #8
  %37 = ptrtoint ptr %srvsel to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %srvsel, align 4, !annotation !206
  %regmap140 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %regmap140 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap140, align 4
  %call141 = call i32 @regmap_read(ptr noundef %39, i32 noundef %add136, ptr noundef nonnull %opvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then134.cleanup182.thread_crit_edge, label %if.end145

if.then134.cleanup182.thread_crit_edge:           ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup182.thread

if.end145:                                        ; preds = %if.then134
  %40 = ptrtoint ptr %regmap140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap140, align 4
  %call147 = call i32 @regmap_read(ptr noundef %41, i32 noundef %add139, ptr noundef nonnull %srvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.end145.cleanup182.thread_crit_edge, label %if.end151

if.end145.cleanup182.thread_crit_edge:            ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup182.thread

if.end151:                                        ; preds = %if.end145
  %42 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %opvsel, align 4
  %and152 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.end171_crit_edge, label %if.then154

if.end151.if.end171_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then154:                                       ; preds = %if.end151
  %44 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %srvsel, align 4
  %conv156 = and i32 %45, 127
  %46 = ptrtoint ptr %regmap140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap140, align 4
  %call159 = call i32 @regmap_write(ptr noundef %47, i32 noundef %add136, i32 noundef %conv156) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then154.cleanup182.thread.sink.split_crit_edge, label %if.then154.if.end171_crit_edge

if.then154.if.end171_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then154.cleanup182.thread.sink.split_crit_edge: ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup182.thread.sink.split

if.end171:                                        ; preds = %if.then154.if.end171_crit_edge, %if.end151.if.end171_crit_edge
  %48 = ptrtoint ptr %regmap140 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap140, align 4
  %call173 = call i32 @regmap_write(ptr noundef %49, i32 noundef %add139, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end171.cleanup182.thread.sink.split_crit_edge, label %cleanup182

if.end171.cleanup182.thread.sink.split_crit_edge: ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup182.thread.sink.split

cleanup182.thread.sink.split:                     ; preds = %if.end171.cleanup182.thread.sink.split_crit_edge, %if.then154.cleanup182.thread.sink.split_crit_edge
  %.str.72.sink = phi ptr [ @.str.69, %if.then154.cleanup182.thread.sink.split_crit_edge ], [ @.str.72, %if.end171.cleanup182.thread.sink.split_crit_edge ]
  %retval.4.ph.ph = phi i32 [ %call159, %if.then154.cleanup182.thread.sink.split_crit_edge ], [ %call173, %if.end171.cleanup182.thread.sink.split_crit_edge ]
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull %.str.72.sink) #11
  br label %cleanup182.thread

cleanup182.thread:                                ; preds = %cleanup182.thread.sink.split, %if.end145.cleanup182.thread_crit_edge, %if.then134.cleanup182.thread_crit_edge
  %retval.4.ph = phi i32 [ %call147, %if.end145.cleanup182.thread_crit_edge ], [ %call141, %if.then134.cleanup182.thread_crit_edge ], [ %retval.4.ph.ph, %cleanup182.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srvsel) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opvsel) #8
  br label %cleanup220

cleanup182:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srvsel) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opvsel) #8
  br label %if.end188

if.end188:                                        ; preds = %cleanup182, %land.lhs.true130.if.end188_crit_edge, %if.end122.if.end188_crit_edge
  %regmap189 = getelementptr inbounds %struct.tps65910, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %regmap189 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap189, align 4
  %conv190 = and i32 %shr, 255
  %add191 = add nuw nsw i32 %conv190, 65
  %conv192 = and i32 %shl, 255
  %call.i327 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %add191, i32 noundef %conv192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool194.not = icmp eq i32 %call.i327, 0
  br i1 %tobool194.not, label %if.then195, label %if.end188.if.end211_crit_edge

if.end188.if.end211_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211

if.then195:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  %and196 = and i32 %ext_sleep_config, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  %54 = ptrtoint ptr %regmap189 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap189, align 4
  %add207 = add nuw nsw i32 %conv190, 67
  %.conv192 = select i1 %tobool197.not, i32 0, i32 %conv192
  %call.i328 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %add207, i32 noundef %conv192, i32 noundef %.conv192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end211

if.end211:                                        ; preds = %if.then195, %if.end188.if.end211_crit_edge
  %ret.4 = phi i32 [ %call.i327, %if.end188.if.end211_crit_edge ], [ %call.i328, %if.then195 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %cmp212 = icmp slt i32 %ret.4, 0
  br i1 %cmp212, label %do.end217, label %if.end211.cleanup220_crit_edge

if.end211.cleanup220_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup220

do.end217:                                        ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.66) #11
  br label %cleanup220

cleanup220:                                       ; preds = %do.end217, %if.end211.cleanup220_crit_edge, %cleanup182.thread, %do.end119, %if.end113.cleanup220_crit_edge, %do.end94, %do.end65, %do.end42, %do.end
  %retval.5 = phi i32 [ %call.i319, %do.end42 ], [ %call.i321, %do.end65 ], [ %call.i323, %do.end94 ], [ -22, %do.end ], [ %ret.3, %do.end119 ], [ %ret.3, %if.end113.cleanup220_crit_edge ], [ %ret.4, %do.end217 ], [ %ret.4, %if.end211.cleanup220_crit_edge ], [ %retval.4.ph, %cleanup182.thread ]
  ret i32 %retval.5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_list_voltage_dcdc(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call, label %do.body [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge14
    i32 4, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14
  %div = udiv i32 %selector, 73
  %add = add nuw nsw i32 %div, 1
  %1 = mul i32 %div, 73
  %rem.decomposed = sub i32 %selector, %1
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/tps65910-regulator.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 715, 0\0A.popsection", ""() #8, !srcloc !208
  unreachable

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %mult.0 = phi i32 [ %add, %sw.bb ], [ 1, %entry.sw.epilog_crit_edge ]
  %volt.0.in.in = phi i32 [ %rem.decomposed, %sw.bb ], [ %selector, %entry.sw.epilog_crit_edge ]
  %2 = mul i32 %volt.0.in.in, 12500
  %mul8 = add i32 %2, 600000
  %mul9 = mul i32 %mul8, %mult.0
  ret i32 %mul9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_set_voltage_dcdc_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb5
    i32 4, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %selector, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %selector)
  %1 = icmp ugt i32 %selector, 72
  %add = zext i1 %1 to i32
  %spec.select = add nuw nsw i32 %div, %add
  %rem = urem i32 %selector, 73
  %add2 = add nuw nsw i32 %rem, 3
  %shl = shl nuw i32 %spec.select, 6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 33, i32 noundef 192, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call4 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 34, i32 noundef %add2) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div6 = udiv i32 %selector, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %selector)
  %2 = icmp ugt i32 %selector, 72
  %add7 = zext i1 %2 to i32
  %spec.select36 = add nuw nsw i32 %div6, %add7
  %3 = mul i32 %div6, 73
  %rem12.decomposed = sub i32 %selector, %3
  %add13 = add nuw nsw i32 %rem12.decomposed, 3
  %shl14 = shl nuw i32 %spec.select36, 6
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 36, i32 noundef 192, i32 noundef %shl14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call16 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 37, i32 noundef %add13) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add18 = add i32 %selector, 3
  %call19 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 40, i32 noundef %add18) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_get_voltage_dcdc_sel(ptr noundef %dev) #2 align 64 {
entry:
  %opvsel = alloca i32, align 4
  %srvsel = alloca i32, align 4
  %mult = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opvsel) #8
  %0 = ptrtoint ptr %opvsel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %opvsel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srvsel) #8
  %1 = ptrtoint ptr %srvsel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %srvsel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mult) #8
  %2 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mult, align 4
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call1, label %entry.if.then44_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
    i32 4, label %sw.bb32
  ]

entry.if.then44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

sw.bb:                                            ; preds = %entry
  %call2 = call i32 @regmap_read(ptr noundef %call, i32 noundef 34, ptr noundef nonnull %opvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call3 = call i32 @regmap_read(ptr noundef %call, i32 noundef 33, ptr noundef nonnull %mult) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mult, align 4
  %and = lshr i32 %5, 6
  %6 = and i32 %and, 3
  store i32 %6, ptr %mult, align 4
  %call7 = call i32 @regmap_read(ptr noundef %call, i32 noundef 35, ptr noundef nonnull %srvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opvsel, align 4
  %and12 = and i32 %8, 127
  store i32 %and12, ptr %opvsel, align 4
  %9 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srvsel, align 4
  %and13 = and i32 %10, 127
  store i32 %and13, ptr %srvsel, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %call15 = call i32 @regmap_read(ptr noundef %call, i32 noundef 37, ptr noundef nonnull %opvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %sw.bb14.cleanup_crit_edge, label %if.end18

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %sw.bb14
  %call19 = call i32 @regmap_read(ptr noundef %call, i32 noundef 36, ptr noundef nonnull %mult) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult, align 4
  %and23 = lshr i32 %12, 6
  %13 = and i32 %and23, 3
  store i32 %13, ptr %mult, align 4
  %call25 = call i32 @regmap_read(ptr noundef %call, i32 noundef 38, ptr noundef nonnull %srvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.cleanup_crit_edge, label %if.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opvsel, align 4
  %and30 = and i32 %15, 127
  store i32 %and30, ptr %opvsel, align 4
  %16 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srvsel, align 4
  %and31 = and i32 %17, 127
  store i32 %and31, ptr %srvsel, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %call33 = call i32 @regmap_read(ptr noundef %call, i32 noundef 40, ptr noundef nonnull %opvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %sw.bb32.cleanup_crit_edge, label %if.end36

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %sw.bb32
  %call37 = call i32 @regmap_read(ptr noundef %call, i32 noundef 41, ptr noundef nonnull %srvsel) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opvsel, align 4
  %and42 = and i32 %19, 127
  store i32 %and42, ptr %opvsel, align 4
  %20 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %srvsel, align 4
  %and43 = and i32 %21, 127
  store i32 %and43, ptr %srvsel, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end40, %if.end28, %if.end10
  %vselmax.0.ph = phi i32 [ 75, %if.end10 ], [ 75, %if.end28 ], [ 64, %if.end40 ]
  %sr.0.ph.in = phi i32 [ %8, %if.end10 ], [ %15, %if.end28 ], [ %19, %if.end40 ]
  %sr.0.ph = and i32 %sr.0.ph.in, 128
  %22 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %mult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %sw.epilog.if.then44_crit_edge, label %sw.epilog.if.end45_crit_edge

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

sw.epilog.if.then44_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44

if.then44:                                        ; preds = %sw.epilog.if.then44_crit_edge, %entry.if.then44_crit_edge
  %sr.0100 = phi i32 [ %sr.0.ph, %sw.epilog.if.then44_crit_edge ], [ 0, %entry.if.then44_crit_edge ]
  %vselmax.098 = phi i32 [ %vselmax.0.ph, %sw.epilog.if.then44_crit_edge ], [ 0, %entry.if.then44_crit_edge ]
  %23 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %mult, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %sw.epilog.if.end45_crit_edge
  %sr.099 = phi i32 [ %sr.0100, %if.then44 ], [ %sr.0.ph, %sw.epilog.if.end45_crit_edge ]
  %vselmax.097 = phi i32 [ %vselmax.098, %if.then44 ], [ %vselmax.0.ph, %sw.epilog.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sr.099)
  %tobool46.not = icmp eq i32 %sr.099, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end45
  %24 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %srvsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp48 = icmp slt i32 %25, 3
  br i1 %cmp48, label %if.then49, label %if.then47.if.end50_crit_edge

if.then47.if.end50_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %srvsel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %srvsel, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then47.if.end50_crit_edge
  %27 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %srvsel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %vselmax.097)
  %cmp51 = icmp sgt i32 %28, %vselmax.097
  br i1 %cmp51, label %if.then52, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %srvsel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %vselmax.097, ptr %srvsel, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50.if.end53_crit_edge
  %30 = ptrtoint ptr %srvsel to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %srvsel, align 4
  %sub = add i32 %31, -3
  br label %cleanup

if.else:                                          ; preds = %if.end45
  %32 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %opvsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp54 = icmp slt i32 %33, 3
  br i1 %cmp54, label %if.then55, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %opvsel to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %opvsel, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.else.if.end56_crit_edge
  %35 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opvsel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %vselmax.097)
  %cmp57 = icmp sgt i32 %36, %vselmax.097
  br i1 %cmp57, label %if.then58, label %if.end56.if.end59_crit_edge

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %opvsel to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %vselmax.097, ptr %opvsel, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  %38 = ptrtoint ptr %opvsel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %opvsel, align 4
  %sub60 = add i32 %39, -3
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end53, %if.end36.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end53 ], [ %sub60, %if.end59 ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call15, %sw.bb14.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ], [ %call33, %sw.bb32.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mult) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srvsel) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opvsel) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_set_mode(ptr noundef %dev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  %call2 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_ctrl_reg, align 4
  %call3 = tail call i32 %1(i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb5
    i32 8, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %call3, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %call3, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %call3, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i21, %sw.bb7 ], [ %call.i20, %sw.bb5 ], [ %call.i, %sw.bb ], [ %call3, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_get_mode(ptr noundef %dev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !206
  %call2 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_ctrl_reg, align 4
  %call3 = tail call i32 %2(i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @regmap_read(ptr noundef %call1, i32 noundef %call3, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.else

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %. = select i1 %tobool10.not, i32 2, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 8, %if.end7.cleanup_crit_edge ], [ %., %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tps65910_get_voltage_vdd3(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volt_table, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  %call2 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_ctrl_reg, align 4
  %call3 = tail call i32 %1(i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %call2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 8177, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.tps65910_set_voltage_sel, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep21 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65910_set_voltage_sel.78, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load22 = load i32, ptr %switch.gep21, align 4
  %shl6 = shl i32 %selector, %switch.load
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %call3, i32 noundef %switch.load22, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i19, %switch.lookup ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65910_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !206
  %call2 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_ctrl_reg, align 4
  %call3 = tail call i32 %2(i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @regmap_read(ptr noundef %call1, i32 noundef %call3, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call2, label %if.end7.cleanup_crit_edge [
    i32 1, label %if.end7.sw.bb_crit_edge
    i32 5, label %if.end7.sw.bb_crit_edge22
    i32 6, label %if.end7.sw.bb_crit_edge23
    i32 7, label %if.end7.sw.bb_crit_edge24
    i32 8, label %if.end7.sw.bb_crit_edge25
    i32 9, label %if.end7.sw.bb_crit_edge26
    i32 10, label %if.end7.sw.bb_crit_edge27
    i32 11, label %if.end7.sw.bb_crit_edge28
    i32 12, label %if.end7.sw.bb_crit_edge29
    i32 13, label %sw.bb8
  ]

if.end7.sw.bb_crit_edge29:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge28:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge27:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge26:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge25:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge24:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge23:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge22:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge22, %if.end7.sw.bb_crit_edge23, %if.end7.sw.bb_crit_edge24, %if.end7.sw.bb_crit_edge25, %if.end7.sw.bb_crit_edge26, %if.end7.sw.bb_crit_edge27, %if.end7.sw.bb_crit_edge28, %if.end7.sw.bb_crit_edge29
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %and = lshr i32 %5, 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %and9 = lshr i32 %7, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  %storemerge.in = phi i32 [ %and9, %sw.bb8 ], [ %and, %sw.bb ]
  %storemerge = and i32 %storemerge.in, 3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %storemerge, %sw.epilog ], [ %call3, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65911_list_voltage(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge21
    i32 8, label %entry.sw.epilog_crit_edge22
    i32 7, label %entry.sw.bb2_crit_edge
    i32 9, label %entry.sw.bb2_crit_edge23
    i32 10, label %entry.sw.bb2_crit_edge24
    i32 11, label %entry.sw.bb2_crit_edge25
    i32 12, label %entry.sw.bb2_crit_edge26
    i32 1, label %sw.bb8
  ]

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge23, %entry.sw.bb2_crit_edge24, %entry.sw.bb2_crit_edge25, %entry.sw.bb2_crit_edge26
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %voltage_table = getelementptr inbounds %struct.tps_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %voltage_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %voltage_table, align 4
  %arrayidx9 = getelementptr i32, ptr %6, i32 %selector
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge21, %entry.sw.epilog_crit_edge22
  %.sink20 = phi i32 [ 3, %sw.bb2 ], [ 5, %entry.sw.epilog_crit_edge ], [ 5, %entry.sw.epilog_crit_edge21 ], [ 5, %entry.sw.epilog_crit_edge22 ]
  %.sink = phi i32 [ -2, %sw.bb2 ], [ -4, %entry.sw.epilog_crit_edge ], [ -4, %entry.sw.epilog_crit_edge21 ], [ -4, %entry.sw.epilog_crit_edge22 ]
  %step_mv.0 = phi i32 [ 100, %sw.bb2 ], [ 50, %entry.sw.epilog_crit_edge ], [ 50, %entry.sw.epilog_crit_edge21 ], [ 50, %entry.sw.epilog_crit_edge22 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink20, i32 %selector)
  %cmp3 = icmp ugt i32 %.sink20, %selector
  %sub6 = add i32 %.sink, %selector
  %sub6.op = mul i32 %sub6, 1000
  %mul = select i1 %cmp3, i32 0, i32 %sub6.op
  %9 = mul i32 %mul, %step_mv.0
  %mul10 = add i32 %9, 1000000
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %sw.bb8 ], [ %mul10, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65911_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  %call2 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_ctrl_reg, align 4
  %call3 = tail call i32 %1(i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %call2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 8177, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_set_voltage_sel, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep35 = getelementptr inbounds [13 x i32], ptr @switch.table.tps65911_set_voltage_sel.79, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep35 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load36 = load i32, ptr %switch.gep35, align 4
  %shl12 = shl i32 %selector, %switch.load
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %call3, i32 noundef %switch.load36, i32 noundef %shl12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i33, %switch.lookup ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65911_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #8
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %dev) #8
  %call2 = tail call i32 @rdev_get_id(ptr noundef %dev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !206
  %get_ctrl_reg = getelementptr inbounds %struct.tps65910_reg, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %get_ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_ctrl_reg, align 4
  %call3 = tail call i32 %2(i32 noundef %call2) #8
  %call4 = call i32 @regmap_read(ptr noundef %call1, i32 noundef %call3, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call2, label %if.end.cleanup_crit_edge [
    i32 5, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge20
    i32 8, label %if.end.sw.bb_crit_edge21
    i32 7, label %if.end.sw.bb5_crit_edge
    i32 9, label %if.end.sw.bb5_crit_edge22
    i32 10, label %if.end.sw.bb5_crit_edge23
    i32 11, label %if.end.sw.bb5_crit_edge24
    i32 12, label %if.end.sw.bb5_crit_edge25
    i32 1, label %sw.bb8
  ]

if.end.sw.bb5_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb_crit_edge21:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge20:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge20, %if.end.sw.bb_crit_edge21
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 4
  %and = lshr i32 %5, 2
  %shr = and i32 %and, 63
  store i32 %shr, ptr %value, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge22, %if.end.sw.bb5_crit_edge23, %if.end.sw.bb5_crit_edge24, %if.end.sw.bb5_crit_edge25
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %and6 = lshr i32 %7, 2
  %shr7 = and i32 %and6, 31
  store i32 %shr7, ptr %value, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %and9 = lshr i32 %9, 2
  %shr10 = and i32 %and9, 3
  store i32 %shr10, ptr %value, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %sw.epilog ], [ %call4, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__initcall__kmod_tps65910_regulator__290_1267_tps65910_init4, !1, !"__initcall__kmod_tps65910_regulator__290_1267_tps65910_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1267, i32 1}
!2 = !{ptr @__exitcall_tps65910_cleanup, !3, !"__exitcall_tps65910_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1273, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1275, i32 1}
!6 = !{ptr @__UNIQUE_ID_description292, !7, !"__UNIQUE_ID_description292", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1276, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1277, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias295, !12, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1278, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1257, i32 11}
!15 = !{ptr @tps65910_driver, !16, !"tps65910_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1255, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1089, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tps65910_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tps65910_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1128, i32 3}
!27 = !{ptr @tps65910_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tps65910_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1196, i32 4}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tps65910_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tps65910_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1216, i32 11}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1015, i32 40}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1017, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tps65910_parse_dt_reg_data._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @tps65910_parse_dt_reg_data._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @tps65910_parse_dt_reg_data._entry.17, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1032, i32 3}
!45 = !{ptr @tps65910_parse_dt_reg_data._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1039, i32 3}
!48 = !{ptr @tps65910_parse_dt_reg_data._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @tps65910_parse_dt_reg_data._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1054, i32 5}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/tps65910-regulator.c", i32 966, i32 12}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/tps65910-regulator.c", i32 967, i32 12}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/tps65910-regulator.c", i32 968, i32 12}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/tps65910-regulator.c", i32 969, i32 12}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/tps65910-regulator.c", i32 970, i32 12}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/tps65910-regulator.c", i32 971, i32 12}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/tps65910-regulator.c", i32 972, i32 12}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/tps65910-regulator.c", i32 973, i32 12}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/tps65910-regulator.c", i32 974, i32 12}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/tps65910-regulator.c", i32 975, i32 12}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/tps65910-regulator.c", i32 976, i32 12}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/tps65910-regulator.c", i32 977, i32 12}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/tps65910-regulator.c", i32 978, i32 12}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/tps65910-regulator.c", i32 979, i32 12}
!80 = !{ptr @tps65910_matches, !81, !"tps65910_matches", i1 false, i1 false}
!81 = !{!"../drivers/regulator/tps65910-regulator.c", i32 965, i32 34}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/tps65910-regulator.c", i32 987, i32 12}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/tps65910-regulator.c", i32 988, i32 12}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/tps65910-regulator.c", i32 989, i32 12}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/tps65910-regulator.c", i32 990, i32 12}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/tps65910-regulator.c", i32 991, i32 12}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/tps65910-regulator.c", i32 992, i32 12}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/tps65910-regulator.c", i32 993, i32 12}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/regulator/tps65910-regulator.c", i32 994, i32 12}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/tps65910-regulator.c", i32 995, i32 12}
!100 = !{ptr @tps65911_matches, !101, !"tps65911_matches", i1 false, i1 false}
!101 = !{!"../drivers/regulator/tps65910-regulator.c", i32 982, i32 34}
!102 = !{ptr @tps65910_ext_sleep_control, !103, !"tps65910_ext_sleep_control", i1 false, i1 false}
!103 = !{!"../drivers/regulator/tps65910-regulator.c", i32 276, i32 21}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/tps65910-regulator.c", i32 103, i32 15}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/tps65910-regulator.c", i32 110, i32 15}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/tps65910-regulator.c", i32 117, i32 15}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/tps65910-regulator.c", i32 122, i32 15}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/regulator/tps65910-regulator.c", i32 133, i32 15}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/regulator/tps65910-regulator.c", i32 147, i32 15}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/regulator/tps65910-regulator.c", i32 161, i32 15}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/regulator/tps65910-regulator.c", i32 175, i32 15}
!120 = !{ptr @tps65910_regs, !121, !"tps65910_regs", i1 false, i1 false}
!121 = !{!"../drivers/regulator/tps65910-regulator.c", i32 100, i32 24}
!122 = !{ptr @VRTC_VSEL_table, !123, !"VRTC_VSEL_table", i1 false, i1 false}
!123 = !{!"../drivers/regulator/tps65910-regulator.c", i32 38, i32 27}
!124 = !{ptr @VIO_VSEL_table, !125, !"VIO_VSEL_table", i1 false, i1 false}
!125 = !{!"../drivers/regulator/tps65910-regulator.c", i32 31, i32 27}
!126 = !{ptr @VDD3_VSEL_table, !127, !"VDD3_VSEL_table", i1 false, i1 false}
!127 = !{!"../drivers/regulator/tps65910-regulator.c", i32 43, i32 27}
!128 = !{ptr @VDIG1_VSEL_table, !129, !"VDIG1_VSEL_table", i1 false, i1 false}
!129 = !{!"../drivers/regulator/tps65910-regulator.c", i32 48, i32 27}
!130 = !{ptr @VDIG2_VSEL_table, !131, !"VDIG2_VSEL_table", i1 false, i1 false}
!131 = !{!"../drivers/regulator/tps65910-regulator.c", i32 53, i32 27}
!132 = !{ptr @VPLL_VSEL_table, !133, !"VPLL_VSEL_table", i1 false, i1 false}
!133 = !{!"../drivers/regulator/tps65910-regulator.c", i32 58, i32 27}
!134 = !{ptr @VDAC_VSEL_table, !135, !"VDAC_VSEL_table", i1 false, i1 false}
!135 = !{!"../drivers/regulator/tps65910-regulator.c", i32 63, i32 27}
!136 = !{ptr @VAUX1_VSEL_table, !137, !"VAUX1_VSEL_table", i1 false, i1 false}
!137 = !{!"../drivers/regulator/tps65910-regulator.c", i32 68, i32 27}
!138 = !{ptr @VAUX2_VSEL_table, !139, !"VAUX2_VSEL_table", i1 false, i1 false}
!139 = !{!"../drivers/regulator/tps65910-regulator.c", i32 73, i32 27}
!140 = !{ptr @VAUX33_VSEL_table, !141, !"VAUX33_VSEL_table", i1 false, i1 false}
!141 = !{!"../drivers/regulator/tps65910-regulator.c", i32 78, i32 27}
!142 = !{ptr @VMMC_VSEL_table, !143, !"VMMC_VSEL_table", i1 false, i1 false}
!143 = !{!"../drivers/regulator/tps65910-regulator.c", i32 83, i32 27}
!144 = !{ptr @VBB_VSEL_table, !145, !"VBB_VSEL_table", i1 false, i1 false}
!145 = !{!"../drivers/regulator/tps65910-regulator.c", i32 88, i32 27}
!146 = !{ptr @tps65911_ext_sleep_control, !147, !"tps65911_ext_sleep_control", i1 false, i1 false}
!147 = !{!"../drivers/regulator/tps65910-regulator.c", i32 292, i32 21}
!148 = !{ptr @tps65911_regs, !149, !"tps65911_regs", i1 false, i1 false}
!149 = !{!"../drivers/regulator/tps65910-regulator.c", i32 195, i32 24}
!150 = !{ptr @tps65910_ops_dcdc, !151, !"tps65910_ops_dcdc", i1 false, i1 false}
!151 = !{!"../drivers/regulator/tps65910-regulator.c", i32 762, i32 35}
!152 = !{ptr @tps65910_ops_vdd3, !153, !"tps65910_ops_vdd3", i1 false, i1 false}
!153 = !{!"../drivers/regulator/tps65910-regulator.c", i32 775, i32 35}
!154 = !{ptr @tps65910_ops_vbb, !155, !"tps65910_ops_vbb", i1 false, i1 false}
!155 = !{!"../drivers/regulator/tps65910-regulator.c", i32 786, i32 35}
!156 = !{ptr @tps65910_ops, !157, !"tps65910_ops", i1 false, i1 false}
!157 = !{!"../drivers/regulator/tps65910-regulator.c", i32 798, i32 35}
!158 = !{ptr @tps65911_ops, !159, !"tps65911_ops", i1 false, i1 false}
!159 = !{!"../drivers/regulator/tps65910-regulator.c", i32 810, i32 35}
!160 = !{ptr @.str.54, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/regulator/tps65910-regulator.c", i32 845, i32 4}
!162 = !{ptr @.str.55, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @tps65910_set_ext_sleep_config._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/regulator/tps65910-regulator.c", i32 861, i32 3}
!167 = !{ptr @tps65910_set_ext_sleep_config._entry.56, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.58, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/tps65910-regulator.c", i32 874, i32 3}
!171 = !{ptr @tps65910_set_ext_sleep_config._entry.59, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.61, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/regulator/tps65910-regulator.c", i32 889, i32 4}
!175 = !{ptr @tps65910_set_ext_sleep_config._entry.62, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.64, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/regulator/tps65910-regulator.c", i32 904, i32 4}
!179 = !{ptr @tps65910_set_ext_sleep_config._entry.65, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.67, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/regulator/tps65910-regulator.c", i32 934, i32 5}
!183 = !{ptr @tps65910_set_ext_sleep_config._entry.68, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.70, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/regulator/tps65910-regulator.c", i32 941, i32 4}
!187 = !{ptr @tps65910_set_ext_sleep_config._entry.71, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.73, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @tps65910_set_ext_sleep_config._entry.74, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/regulator/tps65910-regulator.c", i32 957, i32 3}
!191 = !{ptr @tps65910_set_ext_sleep_config._entry_ptr.75, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.76, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/regulator/tps65910-regulator.c", i32 1250, i32 4}
!194 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @tps65910_shutdown._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @tps65910_shutdown._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{!"auto-init"}
!207 = !{!"branch_weights", i32 1, i32 2000}
!208 = !{i64 2155284549, i64 2155285052, i64 2155284586, i64 2155284642, i64 2155284676, i64 2155284700, i64 2155284741, i64 2155284762, i64 2155284790, i64 2155284824}
