; ModuleID = '/llk/IR_all_yes/drivers/regulator/wm831x-dcdc.c_pt.bc'
source_filename = "../drivers/regulator/wm831x-dcdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wm831x_dcdc = type { [9 x i8], [9 x i8], %struct.regulator_desc, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm831x_buckv_pdata = type { i32, i32, i32 }

@__initcall__kmod_wm831x_dcdc__296_839_wm831x_dcdc_init4 = internal global ptr @wm831x_dcdc_init, section ".initcall4.init", align 4
@drivers = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @wm831x_buckv_driver, ptr @wm831x_buckp_driver, ptr @wm831x_boostp_driver, ptr @wm831x_epe_driver], [16 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_dcdc_exit = internal global ptr @wm831x_dcdc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [30 x i8] c"wm831x_dcdc.author=Mark Brown\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [54 x i8] c"wm831x_dcdc.description=WM831x DC-DC convertor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [47 x i8] c"wm831x_dcdc.file=drivers/regulator/wm831x-dcdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"wm831x_dcdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [40 x i8] c"wm831x_dcdc.alias=platform:wm831x-buckv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [40 x i8] c"wm831x_dcdc.alias=platform:wm831x-buckp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias303 = internal constant [41 x i8] c"wm831x_dcdc.alias=platform:wm831x-boostp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [38 x i8] c"wm831x_dcdc.alias=platform:wm831x-epe\00", section ".modinfo", align 1
@wm831x_buckv_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_buckv_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@wm831x_buckp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_buckp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.46, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@wm831x_boostp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_boostp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.52, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@wm831x_epe_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_epe_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.59, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm831x-buckv\00", [19 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm831x_dcdc\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_buckv_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/regulator/wm831x-dcdc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Probing DCDC%d\0A\00", [16 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 414, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No REG resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry_ptr = internal global ptr @wm831x_buckv_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DCDC%d\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DC%dVDD\00", [24 x i8] zeroinitializer }, align 32
@wm831x_buckv_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 600000, i32 8, i32 104, i32 12500 }], [32 x i8] zeroinitializer }, align 32
@wm831x_buckv_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @wm831x_buckv_set_voltage_sel, ptr null, ptr @wm831x_buckv_get_voltage_sel, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @wm831x_dcdc_set_mode, ptr @wm831x_dcdc_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_dcdc_get_status, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_buckv_set_suspend_voltage, ptr null, ptr null, ptr @wm831x_dcdc_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_dcdc_ilim = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 125000, i32 250000, i32 375000, i32 500000, i32 625000, i32 750000, i32 875000, i32 1000000], [32 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 443, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read ON VSEL: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry_ptr.12 = internal global ptr @wm831x_buckv_probe._entry.10, section ".printk_index", align 4
@wm831x_buckv_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 450, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read DVS VSEL: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry_ptr.15 = internal global ptr @wm831x_buckv_probe._entry.13, section ".printk_index", align 4
@wm831x_buckv_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 470, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register DCDC%d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry_ptr.18 = internal global ptr @wm831x_buckv_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UV\00", [29 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request UV IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry_ptr.22 = internal global ptr @wm831x_buckv_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HC\00", [29 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 492, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request HC IRQ %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_buckv_probe._entry_ptr.26 = internal global ptr @wm831x_buckv_probe._entry.24, section ".printk_index", align 4
@wm831x_buckv_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 270, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set DCDC DVS VSEL: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wm831x_buckv_set_voltage_sel\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm831x_buckv_set_voltage_sel._entry_ptr = internal global ptr @wm831x_buckv_set_voltage_sel._entry, section ".printk_index", align 4
@wm831x_dcdc_get_status.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_dcdc_get_status\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DCDC%d under voltage\0A\00", [42 x i8] zeroinitializer }, align 32
@wm831x_dcdc_get_status.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DCDC%d over voltage\0A\00", [43 x i8] zeroinitializer }, align 32
@wm831x_dcdc_get_status.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.33, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DCDC%d over current\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvs\00", [28 x i8] zeroinitializer }, align 32
@wm831x_buckv_dvs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 348, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get %s DVS GPIO: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm831x_buckv_dvs_init\00", [42 x i8] zeroinitializer }, align 32
@wm831x_buckv_dvs_init._entry_ptr = internal global ptr @wm831x_buckv_dvs_init._entry, section ".printk_index", align 4
@wm831x_buckv_dvs_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid DVS control source %d for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@wm831x_buckv_dvs_init._entry_ptr.39 = internal global ptr @wm831x_buckv_dvs_init._entry.37, section ".printk_index", align 4
@wm831x_buckv_dvs_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 376, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set DVS_VSEL: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm831x_buckv_dvs_init._entry_ptr.42 = internal global ptr @wm831x_buckv_dvs_init._entry.40, section ".printk_index", align 4
@wm831x_buckv_dvs_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 383, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set %s DVS source: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm831x_buckv_dvs_init._entry_ptr.45 = internal global ptr @wm831x_buckv_dvs_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm831x-buckp\00", [19 x i8] zeroinitializer }, align 32
@wm831x_buckp_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.4, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm831x_buckp_probe\00", [45 x i8] zeroinitializer }, align 32
@wm831x_buckp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.47, ptr @.str.3, i32 572, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_buckp_probe._entry_ptr = internal global ptr @wm831x_buckp_probe._entry, section ".printk_index", align 4
@wm831x_buckp_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @wm831x_dcdc_set_mode, ptr @wm831x_dcdc_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_dcdc_get_status, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_buckp_set_suspend_voltage, ptr null, ptr null, ptr @wm831x_dcdc_set_suspend_mode, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_buckp_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.47, ptr @.str.3, i32 608, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_buckp_probe._entry_ptr.49 = internal global ptr @wm831x_buckp_probe._entry.48, section ".printk_index", align 4
@wm831x_buckp_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.47, ptr @.str.3, i32 619, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_buckp_probe._entry_ptr.51 = internal global ptr @wm831x_buckp_probe._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm831x-boostp\00", [18 x i8] zeroinitializer }, align 32
@wm831x_boostp_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.4, i8 0, i8 -85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm831x_boostp_probe\00", [44 x i8] zeroinitializer }, align 32
@wm831x_boostp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.53, ptr @.str.3, i32 700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_boostp_probe._entry_ptr = internal global ptr @wm831x_boostp_probe._entry, section ".printk_index", align 4
@wm831x_boostp_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_boostp_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_boostp_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.53, ptr @.str.3, i32 725, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_boostp_probe._entry_ptr.55 = internal global ptr @wm831x_boostp_probe._entry.54, section ".printk_index", align 4
@wm831x_boostp_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.53, ptr @.str.3, i32 737, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wm831x_boostp_probe._entry_ptr.57 = internal global ptr @wm831x_boostp_probe._entry.56, section ".printk_index", align 4
@wm831x_boostp_get_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.3, ptr @.str.31, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm831x_boostp_get_status\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm831x-epe\00", [21 x i8] zeroinitializer }, align 32
@wm831x_epe_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x_epe_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Probing EPE%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPE%d\00", [26 x i8] zeroinitializer }, align 32
@wm831x_epe_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_dcdc_get_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm831x_epe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.60, ptr @.str.3, i32 809, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register EPE%d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm831x_epe_probe._entry_ptr = internal global ptr @wm831x_epe_probe._entry, section ".printk_index", align 4
@switch.table.wm831x_dcdc_set_mode = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 256, i16 0, i16 512, i16 0, i16 0, i16 0, i16 768], [16 x i8] zeroinitializer }, align 32
@switch.table.wm831x_dcdc_get_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.wm831x_dcdc_set_suspend_mode = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 0, i16 256, i16 0, i16 512, i16 0, i16 0, i16 0, i16 768], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 828, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"wm831x_buckv_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 504, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"wm831x_buckp_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 631, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"wm831x_boostp_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 746, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"wm831x_epe_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 821, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 507, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 403, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 414, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 420, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 424, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"wm831x_buckv_ranges\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 203, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"wm831x_buckv_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 306, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"wm831x_dcdc_ilim\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 302, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 443, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 450, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 469, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 474, i32 57 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 480, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 485, i32 57 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 491, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 269, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 145, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 153, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 159, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 344, i32 47 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 347, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 360, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 375, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 382, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 634, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 561, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 572, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"wm831x_buckp_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 529, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 607, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 618, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 749, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 687, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 700, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"wm831x_boostp_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 669, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 724, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 736, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 654, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 824, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 778, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 789, i32 43 }
@___asan_gen_.262 = private unnamed_addr constant [15 x i8] c"wm831x_epe_ops\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 762, i32 35 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [35 x i8] c"../drivers/regulator/wm831x-dcdc.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 808, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [34 x i8] c"switch.table.wm831x_dcdc_set_mode\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [34 x i8] c"switch.table.wm831x_dcdc_get_mode\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [42 x i8] c"switch.table.wm831x_dcdc_set_suspend_mode\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_wm831x_dcdc_exit, ptr @__initcall__kmod_wm831x_dcdc__296_839_wm831x_dcdc_init4, ptr @wm831x_boostp_probe._entry, ptr @wm831x_boostp_probe._entry.54, ptr @wm831x_boostp_probe._entry.56, ptr @wm831x_boostp_probe._entry_ptr, ptr @wm831x_boostp_probe._entry_ptr.55, ptr @wm831x_boostp_probe._entry_ptr.57, ptr @wm831x_buckp_probe._entry, ptr @wm831x_buckp_probe._entry.48, ptr @wm831x_buckp_probe._entry.50, ptr @wm831x_buckp_probe._entry_ptr, ptr @wm831x_buckp_probe._entry_ptr.49, ptr @wm831x_buckp_probe._entry_ptr.51, ptr @wm831x_buckv_dvs_init._entry, ptr @wm831x_buckv_dvs_init._entry.37, ptr @wm831x_buckv_dvs_init._entry.40, ptr @wm831x_buckv_dvs_init._entry.43, ptr @wm831x_buckv_dvs_init._entry_ptr, ptr @wm831x_buckv_dvs_init._entry_ptr.39, ptr @wm831x_buckv_dvs_init._entry_ptr.42, ptr @wm831x_buckv_dvs_init._entry_ptr.45, ptr @wm831x_buckv_probe._entry, ptr @wm831x_buckv_probe._entry.10, ptr @wm831x_buckv_probe._entry.13, ptr @wm831x_buckv_probe._entry.16, ptr @wm831x_buckv_probe._entry.20, ptr @wm831x_buckv_probe._entry.24, ptr @wm831x_buckv_probe._entry_ptr, ptr @wm831x_buckv_probe._entry_ptr.12, ptr @wm831x_buckv_probe._entry_ptr.15, ptr @wm831x_buckv_probe._entry_ptr.18, ptr @wm831x_buckv_probe._entry_ptr.22, ptr @wm831x_buckv_probe._entry_ptr.26, ptr @wm831x_buckv_set_voltage_sel._entry, ptr @wm831x_buckv_set_voltage_sel._entry_ptr, ptr @wm831x_dcdc_exit, ptr @wm831x_epe_probe._entry, ptr @wm831x_epe_probe._entry_ptr, ptr @drivers, ptr @wm831x_buckv_driver, ptr @wm831x_buckp_driver, ptr @wm831x_boostp_driver, ptr @wm831x_epe_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @wm831x_buckv_ranges, ptr @wm831x_buckv_ops, ptr @wm831x_dcdc_ilim, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @wm831x_buckp_ops, ptr @.str.52, ptr @.str.53, ptr @wm831x_boostp_ops, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @wm831x_epe_ops, ptr @.str.63, ptr @switch.table.wm831x_dcdc_set_mode, ptr @switch.table.wm831x_dcdc_get_mode, ptr @switch.table.wm831x_dcdc_set_suspend_mode], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_boostp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_epe_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_dcdc_ilim to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_dvs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_dvs_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_dvs_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckv_dvs_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckp_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckp_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_buckp_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_boostp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_boostp_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_boostp_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_boostp_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_epe_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_epe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm831x_dcdc_set_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm831x_dcdc_get_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm831x_dcdc_set_suspend_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 4, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_dcdc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_buckv_probe(ptr noundef %pdev) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %8 = call ptr @memset(ptr %config, i32 0, i32 24)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %10, 10
  %add.neg = xor i32 %mul, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id.0.neg = phi i32 [ %add.neg, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %id5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %11 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id5, align 4
  %sub = add i32 %12, %id.0.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_buckv_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_buckv_probe, %do.end)) #6
          to label %if.then11 [label %do.end], !srcloc !170

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add13 = add i32 %sub, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_buckv_probe.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add13) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %wm831x20 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %wm831x20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %wm831x20, align 4
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #6
  %cmp = icmp eq ptr %call21, null
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call21, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %base, align 4
  %add28 = add i32 %sub, 1
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %add28)
  %desc = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %desc, align 4
  %supply_name = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %supply_name, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %add28)
  %supply_name39 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %supply_name39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %supply_name, ptr %supply_name39, align 4
  %id41 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %id41, align 4
  %type = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %n_voltages = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 8
  %21 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 105, ptr %n_voltages, align 4
  %linear_ranges = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 20
  %22 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @wm831x_buckv_ranges, ptr %linear_ranges, align 4
  %n_linear_ranges = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 22
  %23 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %n_linear_ranges, align 4
  %ops = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 10
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wm831x_buckv_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 13
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %owner, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 34
  %26 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16464, ptr %enable_reg, align 4
  %shl = shl nuw i32 1, %sub
  %enable_mask = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 35
  %27 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl, ptr %enable_mask, align 4
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base, align 4
  %add51 = add i32 %29, 1
  %csel_reg = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 30
  %30 = ptrtoint ptr %csel_reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add51, ptr %csel_reg, align 4
  %csel_mask = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 31
  %31 = ptrtoint ptr %csel_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 112, ptr %csel_mask, align 4
  %n_current_limits = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 9
  %32 = ptrtoint ptr %n_current_limits to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %n_current_limits, align 4
  %curr_table = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 24
  %33 = ptrtoint ptr %curr_table to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @wm831x_dcdc_ilim, ptr %curr_table, align 4
  %34 = trunc i32 %29 to i16
  %conv = add i16 %34, 2
  %call58 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.11, i32 noundef %call58) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end27
  %and = and i32 %call58, 127
  %on_vsel = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %on_vsel to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and, ptr %on_vsel, align 4
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base, align 4
  %40 = trunc i32 %39 to i16
  %conv69 = add i16 %40, 4
  %call70 = tail call i32 @wm831x_reg_read(ptr noundef %3, i16 noundef zeroext %conv69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end76, label %if.end78

do.end76:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.14, i32 noundef %call70) #9
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %and79 = and i32 %call70, 127
  %dvs_vsel = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %dvs_vsel to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and79, ptr %dvs_vsel, align 4
  br i1 %tobool.not, label %if.end95.critedge, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.end78
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 15, i32 %sub
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %tobool83.not = icmp eq ptr %45, null
  br i1 %tobool83.not, label %land.lhs.true81.if.then92_crit_edge, label %if.then84

land.lhs.true81.if.then92_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.then84:                                        ; preds = %land.lhs.true81
  %driver_data = getelementptr inbounds %struct.regulator_init_data, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data, align 4
  %48 = ptrtoint ptr %wm831x20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wm831x20, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.then84.if.then92_crit_edge, label %if.end.i

if.then84.if.then92_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end.i:                                         ; preds = %if.then84
  %dvs_init_state.i = getelementptr inbounds %struct.wm831x_buckv_pdata, ptr %47, i32 0, i32 1
  %50 = ptrtoint ptr %dvs_init_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dvs_init_state.i, align 4
  %dvs_gpio_state.i = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 7
  %52 = ptrtoint ptr %dvs_gpio_state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dvs_gpio_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool3.not.i = icmp eq i32 %51, 0
  %cond.i = select i1 %tobool3.not.i, i32 3, i32 7
  %call.i241 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %cond.i) #6
  %dvs_gpiod.i = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %dvs_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i241, ptr %dvs_gpiod.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i241, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev7.i = getelementptr inbounds %struct.wm831x, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev7.i, align 4
  %56 = ptrtoint ptr %call.i241 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.35, ptr noundef nonnull %call.i, i32 noundef %56) #9
  br label %if.then92

if.end10.i:                                       ; preds = %if.end.i
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %47, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %58, label %do.end14.i [
    i32 1, label %if.end10.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb11.i
  ]

if.end10.i.sw.epilog.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev15.i = getelementptr inbounds %struct.wm831x, ptr %49, i32 0, i32 1
  %60 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.38, i32 noundef %58, ptr noundef nonnull %call.i) #9
  br label %if.then92

sw.epilog.i:                                      ; preds = %sw.bb11.i, %if.end10.i.sw.epilog.i_crit_edge
  %ctrl.0.i = phi i16 [ 6144, %sw.bb11.i ], [ 4096, %if.end10.i.sw.epilog.i_crit_edge ]
  %62 = ptrtoint ptr %dvs_vsel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dvs_vsel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool19.not.i = icmp eq i32 %63, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %sw.epilog.i.if.end32.i_crit_edge

sw.epilog.i.if.end32.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then20.i:                                      ; preds = %sw.epilog.i
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base, align 4
  %66 = trunc i32 %65 to i16
  %conv.i = add i16 %66, 4
  %67 = ptrtoint ptr %on_vsel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %on_vsel, align 4
  %conv21.i = trunc i32 %68 to i16
  %call22.i = tail call i32 @wm831x_set_bits(ptr noundef %49, i16 noundef zeroext %conv.i, i16 noundef zeroext 127, i16 noundef zeroext %conv21.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i = icmp eq i32 %call22.i, 0
  br i1 %cmp.i, label %if.then24.i, label %do.end29.i

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %on_vsel to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %on_vsel, align 4
  %71 = ptrtoint ptr %dvs_vsel to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %dvs_vsel, align 4
  br label %if.end32.i

do.end29.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev30.i = getelementptr inbounds %struct.wm831x, ptr %49, i32 0, i32 1
  %72 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev30.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.41, i32 noundef %call22.i) #9
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end29.i, %if.then24.i, %sw.epilog.i.if.end32.i_crit_edge
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base, align 4
  %76 = trunc i32 %75 to i16
  %conv35.i = add i16 %76, 4
  %call36.i = tail call i32 @wm831x_set_bits(ptr noundef %49, i16 noundef zeroext %conv35.i, i16 noundef zeroext 6144, i16 noundef zeroext %ctrl.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %do.end42.i, label %if.end32.i.if.then92_crit_edge

if.end32.i.if.then92_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

do.end42.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev43.i = getelementptr inbounds %struct.wm831x, ptr %49, i32 0, i32 1
  %77 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev43.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.44, ptr noundef nonnull %call.i, i32 noundef %call36.i) #9
  br label %if.then92

if.then92:                                        ; preds = %do.end42.i, %if.end32.i.if.then92_crit_edge, %do.end14.i, %do.end.i, %if.then84.if.then92_crit_edge, %land.lhs.true81.if.then92_crit_edge
  %79 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %79)
  %storemerge = load ptr, ptr %parent, align 8
  %80 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %storemerge, ptr %config, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %83 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %init_data, align 4
  br label %if.end95

if.end95.critedge:                                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent, align 8
  %86 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %config, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.end95.critedge, %if.then92
  %driver_data96 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %87 = ptrtoint ptr %driver_data96 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %driver_data96, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %regmap97 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %90 = ptrtoint ptr %regmap97 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %regmap97, align 4
  %call100 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #6
  %regulator = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 5
  %91 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call100, ptr %regulator, align 4
  %cmp.i242 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then103, label %if.end111

if.then103:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %call100 to i32
  %93 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.17, i32 noundef %add28, i32 noundef %92) #9
  br label %cleanup

if.end111:                                        ; preds = %if.end95
  %call112 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #6
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %95 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %96, i32 noundef %call112, ptr noundef null) #6
  %call117 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_dcdc_uv_irq, i32 noundef 8193, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118.not = icmp eq i32 %call117, 0
  br i1 %cmp118.not, label %if.end125, label %do.end123

do.end123:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i.i, i32 noundef %call117) #9
  br label %cleanup

if.end125:                                        ; preds = %if.end111
  %call126 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.23) #6
  %97 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i244 = call i32 @irq_create_mapping_affinity(ptr noundef %98, i32 noundef %call126, ptr noundef null) #6
  %call131 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i244, ptr noundef null, ptr noundef nonnull @wm831x_dcdc_oc_irq, i32 noundef 8193, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %cmp132.not = icmp eq i32 %call131, 0
  br i1 %cmp132.not, label %if.end139, label %do.end137

do.end137:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call.i.i244, i32 noundef %call131) #9
  br label %cleanup

if.end139:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %do.end137, %do.end123, %if.then103, %do.end76, %do.end64, %do.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end139 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %do.end25 ], [ %call58, %do.end64 ], [ %call70, %do.end76 ], [ %92, %if.then103 ], [ %call117, %do.end123 ], [ %call131, %do.end137 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
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
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_uv_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regulator = getelementptr inbounds %struct.wm831x_dcdc, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regulator, align 4
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %1, i32 noundef 1, ptr noundef null) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_oc_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regulator = getelementptr inbounds %struct.wm831x_dcdc, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regulator, align 4
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %1, i32 noundef 2, ptr noundef null) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_buckv_set_voltage_sel(ptr noundef %rdev, i32 noundef %vsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %dvs_gpiod = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %dvs_gpiod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvs_gpiod, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %on_vsel = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %on_vsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %on_vsel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %vsel)
  %cmp = icmp eq i32 %7, %vsel
  br i1 %cmp, label %if.then, label %land.lhs.true7

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dvs_gpio_state.i = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %dvs_gpio_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dvs_gpio_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dvs_gpio_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dvs_gpio_state.i, align 4
  %dvs_gpiod.i = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %dvs_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dvs_gpiod.i, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 0) #6
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %dvs_vsel = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %dvs_vsel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dvs_vsel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %vsel)
  %cmp8 = icmp eq i32 %14, %vsel
  br i1 %cmp8, label %if.then9, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  %call.i72 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dvs_gpio_state.i73 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i72, i32 0, i32 7
  %15 = ptrtoint ptr %dvs_gpio_state.i73 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dvs_gpio_state.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i74 = icmp eq i32 %16, 1
  br i1 %cmp.i74, label %if.then9.cleanup_crit_edge, label %if.end.i76

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i76:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dvs_gpio_state.i73 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %dvs_gpio_state.i73, align 4
  %dvs_gpiod.i75 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i72, i32 0, i32 6
  %18 = ptrtoint ptr %dvs_gpiod.i75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dvs_gpiod.i75, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #6
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %entry.if.end11_crit_edge
  %20 = trunc i32 %3 to i16
  %conv = add i16 %20, 2
  %conv12 = trunc i32 %vsel to i16
  %call13 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 127, i16 noundef zeroext %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %on_vsel18 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 8
  %21 = ptrtoint ptr %on_vsel18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %vsel, ptr %on_vsel18, align 4
  %22 = ptrtoint ptr %dvs_gpiod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dvs_gpiod, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call.i78 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dvs_gpio_state.i79 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i78, i32 0, i32 7
  %24 = ptrtoint ptr %dvs_gpio_state.i79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dvs_gpio_state.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i80 = icmp eq i32 %25, 0
  br i1 %cmp.i80, label %if.end22.wm831x_buckv_set_dvs.exit83_crit_edge, label %if.end.i82

if.end22.wm831x_buckv_set_dvs.exit83_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_buckv_set_dvs.exit83

if.end.i82:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dvs_gpio_state.i79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dvs_gpio_state.i79, align 4
  %dvs_gpiod.i81 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i78, i32 0, i32 6
  %27 = ptrtoint ptr %dvs_gpiod.i81 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dvs_gpiod.i81, align 4
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef 0) #6
  br label %wm831x_buckv_set_dvs.exit83

wm831x_buckv_set_dvs.exit83:                      ; preds = %if.end.i82, %if.end22.wm831x_buckv_set_dvs.exit83_crit_edge
  %dvs_vsel28 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 9
  %29 = ptrtoint ptr %dvs_vsel28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dvs_vsel28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %vsel)
  %cmp29 = icmp ult i32 %30, %vsel
  br i1 %cmp29, label %if.then31, label %wm831x_buckv_set_dvs.exit83.cleanup_crit_edge

wm831x_buckv_set_dvs.exit83.cleanup_crit_edge:    ; preds = %wm831x_buckv_set_dvs.exit83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %wm831x_buckv_set_dvs.exit83
  %conv32 = add i16 %20, 4
  %call34 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv32, i16 noundef zeroext 127, i16 noundef zeroext %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %do.end

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dvs_vsel28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %vsel, ptr %dvs_vsel28, align 4
  br label %cleanup

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.27, i32 noundef %call34) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then37, %wm831x_buckv_set_dvs.exit83.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.i76, %if.then9.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11.cleanup_crit_edge ], [ %call13, %if.end17.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %do.end ], [ 0, %wm831x_buckv_set_dvs.exit83.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end.i76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_buckv_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %dvs_gpiod = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %dvs_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvs_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %dvs_gpio_state = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %dvs_gpio_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dvs_gpio_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dvs_vsel = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %on_vsel = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0.in = phi ptr [ %dvs_vsel, %if.then ], [ %on_vsel, %if.else ]
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %entry.wm831x_dcdc_set_mode_int.exit_crit_edge

entry.wm831x_dcdc_set_mode_int.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_dcdc_set_mode_int.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge, label %switch.lookup

switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_dcdc_set_mode_int.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.wm831x_dcdc_set_mode, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  %7 = trunc i32 %3 to i16
  %conv.i = add i16 %7, 2
  %call.i = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv.i, i16 noundef zeroext 768, i16 noundef zeroext %switch.load) #6
  br label %wm831x_dcdc_set_mode_int.exit

wm831x_dcdc_set_mode_int.exit:                    ; preds = %switch.lookup, %switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge, %entry.wm831x_dcdc_set_mode_int.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %switch.lookup ], [ -22, %entry.wm831x_dcdc_set_mode_int.exit_crit_edge ], [ -22, %switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 2
  %call2 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = lshr i32 %call2, 8
  %5 = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wm831x_dcdc_get_mode, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %switch.load, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16468) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %shl = shl nuw i32 1, %call3
  %and = and i32 %shl, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_dcdc_get_status, %cleanup)) #6
          to label %if.then10 [label %cleanup], !srcloc !170

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %add = add i32 %call11, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug288, ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %add) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 2
  br i1 %cmp15, label %if.then16, label %if.end13.if.end71_crit_edge

if.end13.if.end71_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %shl18 = shl i32 4096, %call17
  %and19 = and i32 %shl18, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end43, label %do.body22

do.body22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_dcdc_get_status, %cleanup)) #6
          to label %if.then36 [label %cleanup], !srcloc !170

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev37, align 4
  %call38 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %add39 = add i32 %call38, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug289, ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %add39) #6
  br label %cleanup

if.end43:                                         ; preds = %if.then16
  %call44 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %shl45 = shl i32 256, %call44
  %and46 = and i32 %shl45, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.if.end71_crit_edge, label %do.body49

if.end43.if.end71_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

do.body49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_dcdc_get_status, %cleanup)) #6
          to label %if.then63 [label %cleanup], !srcloc !170

if.then63:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %dev64 = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev64, align 4
  %call65 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %add66 = add i32 %call65, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %add66) #6
  br label %cleanup

if.end71:                                         ; preds = %if.end43.if.end71_crit_edge, %if.end13.if.end71_crit_edge
  %call72 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16466) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end71.cleanup_crit_edge, label %if.end75

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %8 = lshr i32 %call72, %call76
  %9 = and i32 %8, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end71.cleanup_crit_edge, %if.then63, %do.body49, %if.then36, %do.body22, %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 2, %if.then10 ], [ 2, %if.then36 ], [ 2, %if.then63 ], [ %call72, %if.end71.cleanup_crit_edge ], [ %9, %if.end75 ], [ 2, %do.body ], [ 2, %do.body22 ], [ 2, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_buckv_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call2 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 3
  %conv4 = trunc i32 %call2 to i16
  %call5 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 127, i16 noundef zeroext %conv4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_dcdc_set_suspend_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %switch.tableidx = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %entry.wm831x_dcdc_set_mode_int.exit_crit_edge

entry.wm831x_dcdc_set_mode_int.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_dcdc_set_mode_int.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge, label %switch.lookup

switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_dcdc_set_mode_int.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.wm831x_dcdc_set_suspend_mode, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  %7 = trunc i32 %3 to i16
  %conv.i = add i16 %7, 3
  %call.i = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv.i, i16 noundef zeroext 768, i16 noundef zeroext %switch.load) #6
  br label %wm831x_dcdc_set_mode_int.exit

wm831x_dcdc_set_mode_int.exit:                    ; preds = %switch.lookup, %switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge, %entry.wm831x_dcdc_set_mode_int.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %switch.lookup ], [ -22, %entry.wm831x_dcdc_set_mode_int.exit_crit_edge ], [ -22, %switch.hole_check.wm831x_dcdc_set_mode_int.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_buckp_probe(ptr noundef %pdev) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_buckp_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_buckp_probe, %do.end)) #6
          to label %if.then11 [label %do.end], !srcloc !170

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add13 = add i32 %sub, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_buckp_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add13) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %do.end.cleanup_crit_edge, label %if.end19

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %wm831x20 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %wm831x20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %wm831x20, align 4
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #6
  %cmp = icmp eq ptr %call21, null
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call21, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %base, align 4
  %add28 = add i32 %sub, 1
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %add28)
  %desc = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %desc, align 4
  %supply_name = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %supply_name, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %add28)
  %supply_name39 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %supply_name39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %supply_name, ptr %supply_name39, align 4
  %id41 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %id41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %id41, align 4
  %type = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %type, align 4
  %n_voltages = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 8
  %22 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 103, ptr %n_voltages, align 4
  %ops = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 10
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm831x_buckp_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 13
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %owner, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %add47 = add i32 %26, 2
  %vsel_reg = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 27
  %27 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add47, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 28
  %28 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 127, ptr %vsel_mask, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 34
  %29 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16464, ptr %enable_reg, align 4
  %shl = shl nuw i32 1, %sub
  %enable_mask = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 35
  %30 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %enable_mask, align 4
  %min_uV = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 14
  %31 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 850000, ptr %min_uV, align 4
  %uV_step = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 15
  %32 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 25000, ptr %uV_step, align 4
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent, align 8
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %config, align 4
  br i1 %tobool.not, label %if.end27.if.end60_crit_edge, label %if.then58

if.end27.if.end60_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then58:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 15, i32 %sub
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %38 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %init_data, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end27.if.end60_crit_edge
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %39 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %regmap61 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %42 = ptrtoint ptr %regmap61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %regmap61, align 4
  %call64 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #6
  %regulator = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call64, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then67, label %if.end75

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %call64 to i32
  %45 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.17, i32 noundef %add28, i32 noundef %44) #9
  br label %cleanup

if.end75:                                         ; preds = %if.end60
  %call76 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #6
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %47 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %48, i32 noundef %call76, ptr noundef null) #6
  %call81 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_dcdc_uv_irq, i32 noundef 8193, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82.not = icmp eq i32 %call81, 0
  br i1 %cmp82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i.i, i32 noundef %call81) #9
  br label %cleanup

if.end88:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end86, %if.then67, %do.end25, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ -12, %do.end.cleanup_crit_edge ], [ -22, %do.end25 ], [ %44, %if.then67 ], [ %call81, %do.end86 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_buckp_set_suspend_voltage(ptr noundef %rdev, i32 noundef %uV) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %call2 = tail call i32 @regulator_map_voltage_linear(ptr noundef %rdev, i32 noundef %uV, i32 noundef %uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, 3
  %conv4 = trunc i32 %call2 to i16
  %call5 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 127, i16 noundef zeroext %conv4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_boostp_probe(ptr noundef %pdev) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %8 = getelementptr inbounds i8, ptr %config, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %id3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %10 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id3, align 4
  %rem = and i32 %11, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_boostp_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_boostp_probe, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %rem, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_boostp_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 15, i32 %rem
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #6
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %wm831x18 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %wm831x18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %wm831x18, align 4
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 768, i32 noundef 0) #6
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call19, align 4
  %base = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %base, align 4
  %add27 = add nuw nsw i32 %rem, 1
  %call28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %add27)
  %desc = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %desc, align 4
  %id33 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %id33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rem, ptr %id33, align 4
  %type = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 12
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %ops = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 10
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wm831x_boostp_ops, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 13
  %22 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 34
  %23 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16464, ptr %enable_reg, align 4
  %shl = shl nuw nsw i32 1, %rem
  %enable_mask = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 35
  %24 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl, ptr %enable_mask, align 4
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  %27 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %config, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %30 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %regmap47 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %34 = ptrtoint ptr %regmap47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %regmap47, align 4
  %call50 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #6
  %regulator = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call50, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %call50 to i32
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.17, i32 noundef %add27, i32 noundef %36) #9
  br label %cleanup

if.end61:                                         ; preds = %if.end26
  %call62 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #6
  %irq_domain.i = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_domain.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %40, i32 noundef %call62, ptr noundef null) #6
  %call67 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i.i, ptr noundef null, ptr noundef nonnull @wm831x_dcdc_uv_irq, i32 noundef 8193, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i.i, i32 noundef %call67) #9
  br label %cleanup

if.end74:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end72, %if.then53, %do.end24, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %36, %if.then53 ], [ %call67, %do.end72 ], [ 0, %if.end74 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_boostp_get_status(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %wm831x1 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %wm831x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm831x1, align 4
  %call2 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16468) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %shl = shl nuw i32 1, %call3
  %and = and i32 %shl, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_boostp_get_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_boostp_get_status, %cleanup)) #6
          to label %if.then10 [label %cleanup], !srcloc !170

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %add = add i32 %call11, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_boostp_get_status.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %add) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @wm831x_reg_read(ptr noundef %1, i16 noundef zeroext 16466) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %4 = lshr i32 %call14, %call18
  %5 = and i32 %4, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 2, %if.then10 ], [ %call14, %if.end13.cleanup_crit_edge ], [ %5, %if.end17 ], [ 2, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_epe_probe(ptr noundef %pdev) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %id3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %10 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id3, align 4
  %rem = and i32 %11, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_epe_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm831x_epe_probe, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !170

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %rem, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_epe_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %add) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %wm831x14 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %wm831x14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %wm831x14, align 4
  %add15 = add nuw nsw i32 %rem, 1
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 9, ptr noundef nonnull @.str.62, i32 noundef %add15)
  %desc = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %desc, align 4
  %add20 = or i32 %rem, 6
  %id22 = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add20, ptr %id22, align 4
  %ops = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wm831x_epe_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 12
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 13
  %17 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner, align 4
  %enable_reg = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 34
  %18 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16464, ptr %enable_reg, align 4
  %shl = shl nuw i32 1, %add20
  %enable_mask = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 2, i32 35
  %19 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl, ptr %enable_mask, align 4
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %config, align 4
  %tobool33.not = icmp eq ptr %7, null
  br i1 %tobool33.not, label %if.end13.if.end35_crit_edge, label %if.then34

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.wm831x_pdata, ptr %7, i32 0, i32 16, i32 %rem
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %25 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %init_data, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end13.if.end35_crit_edge
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm831x, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %regmap36 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %29 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %regmap36, align 4
  %call39 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #6
  %regulator = getelementptr inbounds %struct.wm831x_dcdc, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call39, ptr %regulator, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call39 to i32
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.63, i32 noundef %add15, i32 noundef %31) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then42, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %if.then42 ], [ 0, %if.end50 ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !144, !145, !147, !149, !151, !152, !153, !155, !157, !158, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_wm831x_dcdc__296_839_wm831x_dcdc_init4, !1, !"__initcall__kmod_wm831x_dcdc__296_839_wm831x_dcdc_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 839, i32 1}
!2 = !{ptr @__exitcall_wm831x_dcdc_exit, !3, !"__exitcall_wm831x_dcdc_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 845, i32 1}
!4 = !{ptr @__UNIQUE_ID_author297, !5, !"__UNIQUE_ID_author297", i1 false, i1 false}
!5 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 848, i32 1}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 849, i32 1}
!8 = !{ptr @__UNIQUE_ID_file299, !9, !"__UNIQUE_ID_file299", i1 false, i1 false}
!9 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 850, i32 1}
!10 = !{ptr @__UNIQUE_ID_license300, !9, !"__UNIQUE_ID_license300", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias301, !12, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!12 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 851, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias302, !14, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!14 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 852, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias303, !16, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!16 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 853, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias304, !18, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!18 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 854, i32 1}
!19 = !{ptr @drivers, !20, !"drivers", i1 false, i1 false}
!20 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 828, i32 39}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 507, i32 11}
!23 = !{ptr @wm831x_buckv_driver, !24, !"wm831x_buckv_driver", i1 false, i1 false}
!24 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 504, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 403, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm831x_buckv_probe.__UNIQUE_ID_ddebug291, !26, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 414, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wm831x_buckv_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm831x_buckv_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 420, i32 43}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 424, i32 4}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 443, i32 3}
!43 = !{ptr @wm831x_buckv_probe._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wm831x_buckv_probe._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 450, i32 3}
!47 = !{ptr @wm831x_buckv_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @wm831x_buckv_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 469, i32 3}
!51 = !{ptr @wm831x_buckv_probe._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @wm831x_buckv_probe._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 474, i32 57}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 480, i32 3}
!57 = !{ptr @wm831x_buckv_probe._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @wm831x_buckv_probe._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 485, i32 57}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 491, i32 3}
!63 = !{ptr @wm831x_buckv_probe._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wm831x_buckv_probe._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @wm831x_buckv_ranges, !66, !"wm831x_buckv_ranges", i1 false, i1 false}
!66 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 203, i32 34}
!67 = !{ptr @wm831x_buckv_ops, !68, !"wm831x_buckv_ops", i1 false, i1 false}
!68 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 306, i32 35}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 269, i32 4}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @wm831x_buckv_set_voltage_sel._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @wm831x_buckv_set_voltage_sel._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 145, i32 3}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug288, !76, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 153, i32 4}
!81 = !{ptr @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug289, !80, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 159, i32 4}
!84 = !{ptr @wm831x_dcdc_get_status.__UNIQUE_ID_ddebug290, !83, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!85 = !{ptr @wm831x_dcdc_ilim, !86, !"wm831x_dcdc_ilim", i1 false, i1 false}
!86 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 302, i32 27}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 344, i32 47}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 347, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @wm831x_buckv_dvs_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @wm831x_buckv_dvs_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 360, i32 3}
!96 = !{ptr @wm831x_buckv_dvs_init._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @wm831x_buckv_dvs_init._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 375, i32 4}
!100 = !{ptr @wm831x_buckv_dvs_init._entry.40, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @wm831x_buckv_dvs_init._entry_ptr.42, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 382, i32 3}
!104 = !{ptr @wm831x_buckv_dvs_init._entry.43, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @wm831x_buckv_dvs_init._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 634, i32 11}
!108 = !{ptr @wm831x_buckp_driver, !109, !"wm831x_buckp_driver", i1 false, i1 false}
!109 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 631, i32 31}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 561, i32 2}
!112 = !{ptr @wm831x_buckp_probe.__UNIQUE_ID_ddebug292, !111, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!113 = !{ptr @wm831x_buckp_probe._entry, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 572, i32 3}
!115 = !{ptr @wm831x_buckp_probe._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @wm831x_buckp_probe._entry.48, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 607, i32 3}
!118 = !{ptr @wm831x_buckp_probe._entry_ptr.49, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @wm831x_buckp_probe._entry.50, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 618, i32 3}
!121 = !{ptr @wm831x_buckp_probe._entry_ptr.51, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @wm831x_buckp_ops, !123, !"wm831x_buckp_ops", i1 false, i1 false}
!123 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 529, i32 35}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 749, i32 11}
!126 = !{ptr @wm831x_boostp_driver, !127, !"wm831x_boostp_driver", i1 false, i1 false}
!127 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 746, i32 31}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 687, i32 2}
!130 = !{ptr @wm831x_boostp_probe.__UNIQUE_ID_ddebug294, !129, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!131 = !{ptr @wm831x_boostp_probe._entry, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 700, i32 3}
!133 = !{ptr @wm831x_boostp_probe._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @wm831x_boostp_probe._entry.54, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 724, i32 3}
!136 = !{ptr @wm831x_boostp_probe._entry_ptr.55, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @wm831x_boostp_probe._entry.56, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 736, i32 3}
!139 = !{ptr @wm831x_boostp_probe._entry_ptr.57, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @wm831x_boostp_ops, !141, !"wm831x_boostp_ops", i1 false, i1 false}
!141 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 669, i32 35}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 654, i32 3}
!144 = !{ptr @wm831x_boostp_get_status.__UNIQUE_ID_ddebug293, !143, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 824, i32 11}
!147 = !{ptr @wm831x_epe_driver, !148, !"wm831x_epe_driver", i1 false, i1 false}
!148 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 821, i32 31}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 778, i32 2}
!151 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @wm831x_epe_probe.__UNIQUE_ID_ddebug295, !150, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 789, i32 43}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 808, i32 3}
!157 = !{ptr @wm831x_epe_probe._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @wm831x_epe_probe._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @wm831x_epe_ops, !160, !"wm831x_epe_ops", i1 false, i1 false}
!160 = !{!"../drivers/regulator/wm831x-dcdc.c", i32 762, i32 35}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2148973548, i64 2148973553, i64 2148973566, i64 2148973610, i64 2148973644, i64 2148973665}
