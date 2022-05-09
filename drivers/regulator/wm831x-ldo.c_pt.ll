; ModuleID = '/llk/IR_all_yes/drivers/regulator/wm831x-ldo.c_pt.bc'
source_filename = "../drivers/regulator/wm831x-ldo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_ldo = type { [9 x i8], [9 x i8], %struct.regulator_desc, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_wm831x_ldo__291_661_wm831x_ldo_init4 = internal global ptr @wm831x_ldo_init, section ".initcall4.init", align 4
@drivers = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @wm831x_gp_ldo_driver, ptr @wm831x_aldo_driver, ptr @wm831x_alive_ldo_driver], [20 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_ldo_exit = internal global ptr @wm831x_ldo_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [67 x i8] c"wm831x_ldo.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [41 x i8] c"wm831x_ldo.description=WM831x LDO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"wm831x_ldo.file=drivers/regulator/wm831x-ldo\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [23 x i8] c"wm831x_ldo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [37 x i8] c"wm831x_ldo.alias=platform:wm831x-ldo\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [38 x i8] c"wm831x_ldo.alias=platform:wm831x-aldo\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [42 x i8] c"wm831x_ldo.alias=platform:wm831x-aliveldo\00", section ".modinfo", align 1
@wm831x_gp_ldo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_gp_ldo_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@wm831x_aldo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_aldo_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@wm831x_alive_ldo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_alive_ldo_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.23, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm831x-ldo\00", [21 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm831x_ldo\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm831x_gp_ldo_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/regulator/wm831x-ldo.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Probing LDO%d\0A\00", [17 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No REG resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe._entry_ptr = internal global ptr @wm831x_gp_ldo_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDO%d\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LDO%dVDD\00", [23 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @wm831x_gp_ldo_set_mode, ptr @wm831x_gp_ldo_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_gp_ldo_get_status, ptr @wm831x_gp_ldo_get_optimum_mode, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr @wm831x_gp_ldo_set_suspend_voltage, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 14, i32 50000 }, %struct.linear_range { i32 1700000, i32 15, i32 31, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register LDO%d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe._entry_ptr.12 = internal global ptr @wm831x_gp_ldo_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UV\00", [29 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request UV IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_gp_ldo_probe._entry_ptr.16 = internal global ptr @wm831x_gp_ldo_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm831x-aldo\00", [20 x i8] zeroinitializer }, align 32
@wm831x_aldo_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.4, i8 0, i8 110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm831x_aldo_probe\00", [46 x i8] zeroinitializer }, align 32
@wm831x_aldo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.18, ptr @.str.3, i32 450, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_aldo_probe._entry_ptr = internal global ptr @wm831x_aldo_probe._entry, section ".printk_index", align 4
@wm831x_aldo_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 12, i32 50000 }, %struct.linear_range { i32 1700000, i32 13, i32 31, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@wm831x_aldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @wm831x_aldo_set_mode, ptr @wm831x_aldo_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_aldo_get_status, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr @wm831x_aldo_set_suspend_voltage, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_aldo_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.18, ptr @.str.3, i32 488, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_aldo_probe._entry_ptr.20 = internal global ptr @wm831x_aldo_probe._entry.19, section ".printk_index", align 4
@wm831x_aldo_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.3, i32 499, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_aldo_probe._entry_ptr.22 = internal global ptr @wm831x_aldo_probe._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x-alive-ldo\00", [47 x i8] zeroinitializer }, align 32
@wm831x_alive_ldo_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.4, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_alive_ldo_probe\00", [41 x i8] zeroinitializer }, align 32
@wm831x_alive_ldo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.24, ptr @.str.3, i32 595, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_alive_ldo_probe._entry_ptr = internal global ptr @wm831x_alive_ldo_probe._entry, section ".printk_index", align 4
@wm831x_alive_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_alive_ldo_get_status, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_alive_ldo_set_suspend_voltage, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_alive_ldo_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.24, ptr @.str.3, i32 632, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_alive_ldo_probe._entry_ptr.26 = internal global ptr @wm831x_alive_ldo_probe._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 651, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"wm831x_gp_ldo_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 302, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"wm831x_aldo_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 511, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"wm831x_alive_ldo_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 644, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 305, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 230, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 240, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 246, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 250, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"wm831x_gp_ldo_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 196, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"wm831x_gp_ldo_ranges\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 60, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 277, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 282, i32 57 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 289, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 514, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 440, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 450, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"wm831x_aldo_ranges\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 313, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"wm831x_aldo_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 407, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 487, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 498, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 647, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 585, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 595, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"wm831x_alive_ldo_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 555, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private constant [34 x i8] c"../drivers/regulator/wm831x-ldo.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 631, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_wm831x_ldo_exit, ptr @__initcall__kmod_wm831x_ldo__291_661_wm831x_ldo_init4, ptr @wm831x_aldo_probe._entry, ptr @wm831x_aldo_probe._entry.19, ptr @wm831x_aldo_probe._entry.21, ptr @wm831x_aldo_probe._entry_ptr, ptr @wm831x_aldo_probe._entry_ptr.20, ptr @wm831x_aldo_probe._entry_ptr.22, ptr @wm831x_alive_ldo_probe._entry, ptr @wm831x_alive_ldo_probe._entry.25, ptr @wm831x_alive_ldo_probe._entry_ptr, ptr @wm831x_alive_ldo_probe._entry_ptr.26, ptr @wm831x_gp_ldo_probe._entry, ptr @wm831x_gp_ldo_probe._entry.10, ptr @wm831x_gp_ldo_probe._entry.14, ptr @wm831x_gp_ldo_probe._entry_ptr, ptr @wm831x_gp_ldo_probe._entry_ptr.12, ptr @wm831x_gp_ldo_probe._entry_ptr.16, ptr @wm831x_ldo_exit, ptr @drivers, ptr @wm831x_gp_ldo_driver, ptr @wm831x_aldo_driver, ptr @wm831x_alive_ldo_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @wm831x_gp_ldo_ops, ptr @wm831x_gp_ldo_ranges, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @wm831x_aldo_ranges, ptr @wm831x_aldo_ops, ptr @.str.23, ptr @.str.24, ptr @wm831x_alive_ldo_ops], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_gp_ldo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_aldo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_alive_ldo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_gp_ldo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_gp_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_gp_ldo_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_gp_ldo_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_gp_ldo_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_aldo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_aldo_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_aldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_aldo_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_aldo_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_alive_ldo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_alive_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_alive_ldo_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ldo_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 3, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_ldo_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_gp_ldo_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %11, 10
  %add.neg = xor i32 %mul, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id.0.neg = phi i32 [ %add.neg, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %id5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %12 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id5, align 4
  %sub = add i32 %13, %id.0.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_gp_ldo_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_gp_ldo_probe, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !97

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add13 = add i32 %sub, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_gp_ldo_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add13) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 276, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %wm831x20 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %wm831x20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %wm831x20, align 4
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #7
  %cmp = icmp eq ptr %call21, null
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call21, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %base, align 4
  %add28 = add i32 %sub, 1
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %add28)
  %desc = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %desc, align 4
  %supply_name = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %supply_name, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %add28)
  %supply_name39 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %supply_name39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %supply_name, ptr %supply_name39, align 4
  %id41 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %id41, align 4
  %type = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type, align 4
  %n_voltages = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %n_voltages, align 4
  %ops = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 10
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm831x_gp_ldo_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 13
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %owner, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %add47 = add i32 %26, 1
  %vsel_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 27
  %27 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add47, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 28
  %28 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 31, ptr %vsel_mask, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 34
  %29 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16465, ptr %enable_reg, align 4
  %shl = shl nuw i32 1, %sub
  %enable_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 35
  %30 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %enable_mask, align 4
  %bypass_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 39
  %31 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %bypass_reg, align 4
  %bypass_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 40
  %32 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 64, ptr %bypass_mask, align 4
  %linear_ranges = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 20
  %33 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @wm831x_gp_ldo_ranges, ptr %linear_ranges, align 4
  %n_linear_ranges = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 22
  %34 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %n_linear_ranges, align 4
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %37 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %config, align 4
  br i1 %tobool.not, label %if.end27.if.end63_crit_edge, label %if.then61

if.end27.if.end63_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then61:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 17, i32 %sub
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %40 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %init_data, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end27.if.end63_crit_edge
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %regmap64 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %44 = ptrtoint ptr %regmap64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %regmap64, align 4
  %call67 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #7
  %regulator = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call67, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then70, label %if.end78

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call67 to i32
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.11, i32 noundef %add28, i32 noundef %46) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end63
  %call79 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.13) #7
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %50, i32 noundef %call79, ptr noundef null) #7
  %call84 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_ldo_uv_irq, i32 noundef 8193, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85.not = icmp eq i32 %call84, 0
  br i1 %cmp85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i.i, i32 noundef %call84) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end89, %if.then70, %do.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %do.end25 ], [ %46, %if.then70 ], [ %call84, %do.end89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_ldo_uv_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regulator = getelementptr inbounds %struct.wm831x_ldo, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regulator, align 4
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %1, i32 noundef 1, ptr noundef null) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @wm831x_gp_ldo_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add3 = add i32 %3, 1
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb6
    i32 8, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %conv = trunc i32 %add3 to i16
  %call4 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 256, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %conv7 = trunc i32 %3 to i16
  %call8 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv7, i16 noundef zeroext 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.bb6.cleanup_crit_edge, label %if.end12

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %sw.bb6
  %conv13 = trunc i32 %add3 to i16
  %call14 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv13, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end12.sw.epilog_crit_edge

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %conv20 = trunc i32 %3 to i16
  %call21 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv20, i16 noundef zeroext 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.bb19.cleanup_crit_edge, label %if.end25

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb19
  %conv26 = trunc i32 %add3 to i16
  %call27 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv26, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.cleanup_crit_edge, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end25.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end25.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call8, %sw.bb6.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call21, %sw.bb19.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_gp_ldo_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 1
  %call4 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i32 %call9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %. = select i1 %tobool15.not, i32 4, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %., %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_gp_ldo_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %shl = shl nuw i32 1, %call2
  %call3 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16467) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16469) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %call6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1.i = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %wm831x1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1.i, align 4
  %base.i = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %6 = trunc i32 %5 to i16
  %conv.i = add i16 %6, 1
  %call4.i = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %if.end.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %and.i = and i32 %call4.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.else_crit_edge, label %if.end7.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end7.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end7.i.cleanup_crit_edge, label %if.end13.i

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %and14.i = and i32 %call9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %..i = select i1 %tobool15.not.i, i32 4, i32 8
  br label %if.else

if.else:                                          ; preds = %if.end13.i, %if.end.i.if.else_crit_edge
  %retval.0.i = phi i32 [ 2, %if.end.i.if.else_crit_edge ], [ %..i, %if.end13.i ]
  %call17 = tail call i32 @regulator_mode_to_status(i32 noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end7.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.else ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 2, %if.end9.cleanup_crit_edge ], [ %call9.i, %if.end7.i.cleanup_crit_edge ], [ %call4.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm831x_gp_ldo_get_optimum_mode(ptr nocapture noundef readnone %rdev, i32 noundef %input_uV, i32 noundef %output_uV, i32 noundef %load_uA) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %load_uA)
  %cmp = icmp slt i32 %load_uA, 20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %load_uA)
  %cmp1 = icmp slt i32 %load_uA, 50000
  %. = select i1 %cmp1, i32 4, i32 2
  %retval.0 = select i1 %cmp, i32 8, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_gp_ldo_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call2 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 2
  %conv3 = trunc i32 %call2 to i16
  %call4 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 31, i16 noundef zeroext %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_mode_to_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_aldo_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %11, 10
  %add.neg = xor i32 %mul, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id.0.neg = phi i32 [ %add.neg, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %id5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %12 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id5, align 4
  %sub = add i32 %13, %id.0.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_aldo_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_aldo_probe, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !97

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add13 = add i32 %sub, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_aldo_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add13) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 276, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %wm831x20 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %wm831x20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %wm831x20, align 4
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #7
  %cmp = icmp eq ptr %call21, null
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call21, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %base, align 4
  %add28 = add i32 %sub, 1
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %add28)
  %desc = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %desc, align 4
  %supply_name = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %supply_name, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %add28)
  %supply_name39 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %supply_name39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %supply_name, ptr %supply_name39, align 4
  %id41 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %id41, align 4
  %type = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type, align 4
  %n_voltages = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %n_voltages, align 4
  %linear_ranges = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 20
  %23 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm831x_aldo_ranges, ptr %linear_ranges, align 4
  %n_linear_ranges = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 22
  %24 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %n_linear_ranges, align 4
  %ops = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 10
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @wm831x_aldo_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 13
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %owner, align 4
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base, align 4
  %add49 = add i32 %28, 1
  %vsel_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 27
  %29 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add49, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 28
  %30 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 31, ptr %vsel_mask, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 34
  %31 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16465, ptr %enable_reg, align 4
  %shl = shl nuw i32 1, %sub
  %enable_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 35
  %32 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shl, ptr %enable_mask, align 4
  %bypass_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 39
  %33 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %bypass_reg, align 4
  %bypass_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 40
  %34 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %bypass_mask, align 4
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent, align 8
  %37 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %config, align 4
  br i1 %tobool.not, label %if.end27.if.end63_crit_edge, label %if.then61

if.end27.if.end63_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then61:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 17, i32 %sub
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %40 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %init_data, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end27.if.end63_crit_edge
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %regmap64 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %44 = ptrtoint ptr %regmap64 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %regmap64, align 4
  %call67 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #7
  %regulator = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call67, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then70, label %if.end78

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call67 to i32
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.11, i32 noundef %add28, i32 noundef %46) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end63
  %call79 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.13) #7
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %49 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %50, i32 noundef %call79, ptr noundef null) #7
  %call84 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_ldo_uv_irq, i32 noundef 8193, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85.not = icmp eq i32 %call84, 0
  br i1 %cmp85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call.i.i, i32 noundef %call84) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end89, %if.then70, %do.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %do.end25 ], [ %46, %if.then70 ], [ %call84, %do.end89 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_aldo_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, 1
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %conv = trunc i32 %add to i16
  %call2 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 256, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %conv5 = trunc i32 %add to i16
  %call6 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv5, i16 noundef zeroext 256, i16 noundef zeroext 256) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_aldo_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 1
  %call2 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %and = and i32 %call2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 4
  %retval.0 = select i1 %cmp, i32 0, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_aldo_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %shl = shl nuw i32 1, %call2
  %call3 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16467) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16469) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %call6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1.i = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %wm831x1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wm831x1.i, align 4
  %base.i = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %6 = trunc i32 %5 to i16
  %conv.i = add i16 %6, 1
  %call2.i = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  %and.i = and i32 %call2.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 2, i32 4
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %..i
  %call17 = tail call i32 @regulator_mode_to_status(i32 noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end13 ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 2, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_aldo_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call2 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 2
  %conv3 = trunc i32 %call2 to i16
  %call4 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 31, i16 noundef zeroext %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_alive_ldo_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %11, 10
  %add.neg = xor i32 %mul, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id.0.neg = phi i32 [ %add.neg, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %id5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %12 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id5, align 4
  %sub = add i32 %13, %id.0.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_alive_ldo_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_alive_ldo_probe, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !97

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add13 = add i32 %sub, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_alive_ldo_probe.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add13) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 276, i32 noundef 3520) #7
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %wm831x20 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %wm831x20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %wm831x20, align 4
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #7
  %cmp = icmp eq ptr %call21, null
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call21, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %base, align 4
  %add28 = add i32 %sub, 1
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %add28)
  %desc = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %desc, align 4
  %supply_name = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %supply_name, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %add28)
  %supply_name39 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %supply_name39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %supply_name, ptr %supply_name39, align 4
  %id41 = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %id41, align 4
  %type = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type, align 4
  %n_voltages = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %n_voltages, align 4
  %ops = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 10
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm831x_alive_ldo_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 13
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %owner, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %vsel_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 27
  %27 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 28
  %28 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 15, ptr %vsel_mask, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 34
  %29 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16465, ptr %enable_reg, align 4
  %shl = shl nuw i32 1, %sub
  %enable_mask = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 35
  %30 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %enable_mask, align 4
  %min_uV = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 14
  %31 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 800000, ptr %min_uV, align 4
  %uV_step = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 15
  %32 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 50000, ptr %uV_step, align 4
  %enable_time = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 2, i32 57
  %33 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1000, ptr %enable_time, align 4
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 8
  %36 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %config, align 4
  br i1 %tobool.not, label %if.end27.if.end61_crit_edge, label %if.then59

if.end27.if.end61_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then59:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 17, i32 %sub
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %39 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %init_data, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end27.if.end61_crit_edge
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %40 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %regmap62 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %43 = ptrtoint ptr %regmap62 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %regmap62, align 4
  %call65 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #7
  %regulator = getelementptr inbounds %struct.wm831x_ldo, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call65, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then68, label %if.end76

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call65 to i32
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.11, i32 noundef %add28, i32 noundef %45) #10
  br label %cleanup

if.end76:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then68, %do.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end76 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %do.end25 ], [ %45, %if.then68 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_alive_ldo_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #7
  %call3 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16467) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %2 = lshr i32 %call3, %call2
  %3 = and i32 %2, 1
  %retval.0 = select i1 %cmp, i32 %call3, i32 %3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_alive_ldo_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %wm831x1 = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_ldo, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call2 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 1
  %conv3 = trunc i32 %call2 to i16
  %call4 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 15, i16 noundef zeroext %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_wm831x_ldo__291_661_wm831x_ldo_init4, !1, !"__initcall__kmod_wm831x_ldo__291_661_wm831x_ldo_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/wm831x-ldo.c", i32 661, i32 1}
!2 = !{ptr @__exitcall_wm831x_ldo_exit, !3, !"__exitcall_wm831x_ldo_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/wm831x-ldo.c", i32 667, i32 1}
!4 = !{ptr @__UNIQUE_ID_author292, !5, !"__UNIQUE_ID_author292", i1 false, i1 false}
!5 = !{!"../drivers/regulator/wm831x-ldo.c", i32 670, i32 1}
!6 = !{ptr @__UNIQUE_ID_description293, !7, !"__UNIQUE_ID_description293", i1 false, i1 false}
!7 = !{!"../drivers/regulator/wm831x-ldo.c", i32 671, i32 1}
!8 = !{ptr @__UNIQUE_ID_file294, !9, !"__UNIQUE_ID_file294", i1 false, i1 false}
!9 = !{!"../drivers/regulator/wm831x-ldo.c", i32 672, i32 1}
!10 = !{ptr @__UNIQUE_ID_license295, !9, !"__UNIQUE_ID_license295", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias296, !12, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!12 = !{!"../drivers/regulator/wm831x-ldo.c", i32 673, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias297, !14, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!14 = !{!"../drivers/regulator/wm831x-ldo.c", i32 674, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias298, !16, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!16 = !{!"../drivers/regulator/wm831x-ldo.c", i32 675, i32 1}
!17 = !{ptr @drivers, !18, !"drivers", i1 false, i1 false}
!18 = !{!"../drivers/regulator/wm831x-ldo.c", i32 651, i32 39}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/wm831x-ldo.c", i32 305, i32 11}
!21 = !{ptr @wm831x_gp_ldo_driver, !22, !"wm831x_gp_ldo_driver", i1 false, i1 false}
!22 = !{!"../drivers/regulator/wm831x-ldo.c", i32 302, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/wm831x-ldo.c", i32 230, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wm831x_gp_ldo_probe.__UNIQUE_ID_ddebug288, !24, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/wm831x-ldo.c", i32 240, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wm831x_gp_ldo_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm831x_gp_ldo_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/wm831x-ldo.c", i32 246, i32 41}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/wm831x-ldo.c", i32 250, i32 4}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/wm831x-ldo.c", i32 277, i32 3}
!41 = !{ptr @wm831x_gp_ldo_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wm831x_gp_ldo_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/wm831x-ldo.c", i32 282, i32 57}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/wm831x-ldo.c", i32 289, i32 3}
!47 = !{ptr @wm831x_gp_ldo_probe._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @wm831x_gp_ldo_probe._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @wm831x_gp_ldo_ops, !50, !"wm831x_gp_ldo_ops", i1 false, i1 false}
!50 = !{!"../drivers/regulator/wm831x-ldo.c", i32 196, i32 35}
!51 = !{ptr @wm831x_gp_ldo_ranges, !52, !"wm831x_gp_ldo_ranges", i1 false, i1 false}
!52 = !{!"../drivers/regulator/wm831x-ldo.c", i32 60, i32 34}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/wm831x-ldo.c", i32 514, i32 11}
!55 = !{ptr @wm831x_aldo_driver, !56, !"wm831x_aldo_driver", i1 false, i1 false}
!56 = !{!"../drivers/regulator/wm831x-ldo.c", i32 511, i32 31}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/wm831x-ldo.c", i32 440, i32 2}
!59 = !{ptr @wm831x_aldo_probe.__UNIQUE_ID_ddebug289, !58, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!60 = !{ptr @wm831x_aldo_probe._entry, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/regulator/wm831x-ldo.c", i32 450, i32 3}
!62 = !{ptr @wm831x_aldo_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @wm831x_aldo_probe._entry.19, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/regulator/wm831x-ldo.c", i32 487, i32 3}
!65 = !{ptr @wm831x_aldo_probe._entry_ptr.20, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @wm831x_aldo_probe._entry.21, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/regulator/wm831x-ldo.c", i32 498, i32 3}
!68 = !{ptr @wm831x_aldo_probe._entry_ptr.22, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @wm831x_aldo_ranges, !70, !"wm831x_aldo_ranges", i1 false, i1 false}
!70 = !{!"../drivers/regulator/wm831x-ldo.c", i32 313, i32 34}
!71 = !{ptr @wm831x_aldo_ops, !72, !"wm831x_aldo_ops", i1 false, i1 false}
!72 = !{!"../drivers/regulator/wm831x-ldo.c", i32 407, i32 35}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/wm831x-ldo.c", i32 647, i32 11}
!75 = !{ptr @wm831x_alive_ldo_driver, !76, !"wm831x_alive_ldo_driver", i1 false, i1 false}
!76 = !{!"../drivers/regulator/wm831x-ldo.c", i32 644, i32 31}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/wm831x-ldo.c", i32 585, i32 2}
!79 = !{ptr @wm831x_alive_ldo_probe.__UNIQUE_ID_ddebug290, !78, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!80 = !{ptr @wm831x_alive_ldo_probe._entry, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/regulator/wm831x-ldo.c", i32 595, i32 3}
!82 = !{ptr @wm831x_alive_ldo_probe._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @wm831x_alive_ldo_probe._entry.25, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/regulator/wm831x-ldo.c", i32 631, i32 3}
!85 = !{ptr @wm831x_alive_ldo_probe._entry_ptr.26, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @wm831x_alive_ldo_ops, !87, !"wm831x_alive_ldo_ops", i1 false, i1 false}
!87 = !{!"../drivers/regulator/wm831x-ldo.c", i32 555, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148968266, i64 2148968271, i64 2148968284, i64 2148968328, i64 2148968362, i64 2148968383}
