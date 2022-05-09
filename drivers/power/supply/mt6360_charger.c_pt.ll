; ModuleID = '/llk/IR_all_yes/drivers/power/supply/mt6360_charger.c_pt.bc'
source_filename = "../drivers/power/supply/mt6360_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mt6360_chg_info = type { ptr, ptr, %struct.power_supply_desc, ptr, ptr, %struct.mutex, i32, i8, i8, i32, %struct.work_struct }

@__initcall__kmod_mt6360_charger__295_863_mt6360_charger_driver_init6 = internal global ptr @mt6360_charger_driver_init, section ".initcall6.init", align 4
@mt6360_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6360_charger_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6360_charger_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt6360_charger_id, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6360_charger_driver_exit = internal global ptr @mt6360_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [56 x i8] c"mt6360_charger.author=Gene Chen <gene_chen@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [49 x i8] c"mt6360_charger.description=MT6360 Charger Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [56 x i8] c"mt6360_charger.file=drivers/power/supply/mt6360_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [27 x i8] c"mt6360_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6360-chg\00", [21 x i8] zeroinitializer }, align 32
@mt6360_charger_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6360-chg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6360_charger_id = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mt6360-chg\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt6360_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mci->chgdet_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"richtek,vinovp-microvolt\00", [39 x i8] zeroinitializer }, align 32
@mt6360_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 806, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to parse vinovp in DT, keep default 6.5v\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt6360_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/mt6360_charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6360_charger_probe._entry_ptr = internal global ptr @mt6360_charger_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get parent regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to initial setting\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6360_charger_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr null, i32 4, ptr @mt6360_charger_usb_types, i32 4, ptr @mt6360_charger_properties, i32 12, ptr @mt6360_charger_get_property, ptr @mt6360_charger_set_property, ptr @mt6360_charger_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register power supply dev\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to register irqs\0A\00", [39 x i8] zeroinitializer }, align 32
@mt6360_otg_rdesc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr null, ptr null, i32 0, i8 0, i32 57, i32 0, ptr @mt6360_chg_otg_ops, i32 0, i32 0, ptr null, i32 4425000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 789, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 785, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@devm_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(work_completion)(w)\00", [43 x i8] zeroinitializer }, align 32
@mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt6360_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt6360_handle_chrdet_ext_evt\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Received vbus interrupt, pwr_rdy is same(%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.5, ptr @.str.16, i8 0, i8 -87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Received vbus interrupt, pwr_rdy = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to apply vinovp\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mt6360_chg_init_setting = private unnamed_addr constant [24 x i8] c"mt6360_chg_init_setting\00", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to disable bc12\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Failed to switch iinlmtsel to aicr\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to disable ilim\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to config otg oc to 3A\0A\00", [61 x i8] zeroinitializer }, align 32
@mt6360_charger_usb_types = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@mt6360_charger_properties = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 4, i32 0, i32 1, i32 29, i32 30, i32 31, i32 32, i32 38, i32 39, i32 67, i32 68, i32 65], [48 x i8] zeroinitializer }, align 32
@mt6360_chg_range = internal constant { [6 x %struct.linear_range], [32 x i8] } { [6 x %struct.linear_range] [%struct.linear_range { i32 3900000, i32 0, i32 95, i32 100000 }, %struct.linear_range { i32 100000, i32 0, i32 49, i32 100000 }, %struct.linear_range { i32 3900000, i32 0, i32 81, i32 10000 }, %struct.linear_range { i32 100000, i32 0, i32 63, i32 50000 }, %struct.linear_range { i32 100000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 100000, i32 0, i32 15, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"attach_i\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chrdet_ext_evt\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request %s irq\0A\00", [38 x i8] zeroinitializer }, align 32
@mt6360_pmu_attach_i_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 617, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Received attach interrupt, bc12 disabled, ignore irq\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt6360_pmu_attach_i_handler\00", [36 x i8] zeroinitializer }, align 32
@mt6360_pmu_attach_i_handler._entry_ptr = internal global ptr @mt6360_pmu_attach_i_handler._entry, section ".printk_index", align 4
@mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 0, i8 -99, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Received attach interrupt, no vbus\0A\00", [60 x i8] zeroinitializer }, align 32
@mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.5, ptr @.str.28, i8 0, i8 -98, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Received attach interrupt, under going...\0A\00", [53 x i8] zeroinitializer }, align 32
@mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.5, ptr @.str.29, i8 0, i8 -95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Received attach interrupt, bc12 detect not enable\0A\00", [45 x i8] zeroinitializer }, align 32
@mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.5, ptr @.str.30, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Received attach interrupt, reserved address\0A\00", [51 x i8] zeroinitializer }, align 32
@mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.26, ptr @.str.5, ptr @.str.31, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Received attach interrupt, chg_type = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb-otg-vbus\00", [19 x i8] zeroinitializer }, align 32
@mt6360_chg_otg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.mt6360_charger_get_property = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 1, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 4, i64 29, i64 30, i64 31, i64 32, i64 38, i64 39, i64 65, i64 67, i64 68]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 29, i64 31, i64 38, i64 39, i64 67, i64 68]
@__sancov_gen_cov_switch_values.34 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 29, i64 31, i64 38, i64 39, i64 67, i64 68]
@__sancov_gen_cov_switch_values.35 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"mt6360_charger_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 855, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 857, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"mt6360_charger_of_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 843, i32 49 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"mt6360_charger_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 849, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 800, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 804, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 806, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 810, i32 45 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 814, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"mt6360_charger_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 573, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 824, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 829, i32 41 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"mt6360_otg_rdesc\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 593, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 75, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 673, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 677, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 761, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 765, i32 39 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 772, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 778, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 783, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"mt6360_charger_usb_types\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 160, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant [26 x i8] c"mt6360_charger_properties\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 558, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"mt6360_chg_range\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 119, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 716, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 717, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 732, i32 42 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 617, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 629, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 632, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 647, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 651, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 655, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 595, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"mt6360_chg_otg_ops\00", align 1
@___asan_gen_.172 = private constant [41 x i8] c"../drivers/power/supply/mt6360_charger.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 584, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [41 x i8] c"switch.table.mt6360_charger_get_property\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_mt6360_charger_driver_exit, ptr @__initcall__kmod_mt6360_charger__295_863_mt6360_charger_driver_init6, ptr @mt6360_charger_driver_exit, ptr @mt6360_charger_probe._entry, ptr @mt6360_charger_probe._entry_ptr, ptr @mt6360_pmu_attach_i_handler._entry, ptr @mt6360_pmu_attach_i_handler._entry_ptr, ptr @mt6360_charger_driver, ptr @.str, ptr @mt6360_charger_of_id, ptr @mt6360_charger_id, ptr @mt6360_charger_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mt6360_charger_desc, ptr @.str.10, ptr @.str.11, ptr @mt6360_otg_rdesc, ptr @devm_work_autocancel.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mt6360_charger_usb_types, ptr @mt6360_charger_properties, ptr @mt6360_chg_range, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mt6360_chg_otg_ops, ptr @switch.table.mt6360_charger_get_property], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_otg_rdesc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_usb_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_charger_properties to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_chg_range to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_pmu_attach_i_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6360_chg_otg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt6360_charger_get_property to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6360_charger_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6360_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6360_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %charger_cfg = alloca %struct.power_supply_config, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %charger_cfg) #7
  %0 = call ptr @memset(ptr %charger_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %1 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %vinovp = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %vinovp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6500000, ptr %vinovp, align 4
  %chgdet_lock = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %chgdet_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mt6360_charger_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %chrdet_work = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %chrdet_work, i32 noundef 0) #7
  %5 = ptrtoint ptr %chrdet_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %chrdet_work, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @devm_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry1.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry1.i, ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mt6360_chrdet_work, ptr %func.i, align 4
  %call.i109 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_work_drop, ptr noundef %chrdet_work) #7
  %call.i110 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %vinovp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool8.not = icmp eq i32 %call.i110, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %do.end12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end.if.end14_crit_edge
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call16 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #7
  %regmap = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %regmap, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -19, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %vinovp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vinovp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6500000, i32 %13)
  %cmp1.i.i = icmp ult i32 %13, 6500000
  br i1 %cmp1.i.i, label %if.end22.mt6360_vinovp_trans_to_sel.exit.i_crit_edge, label %for.cond.1.i.i

if.end22.mt6360_vinovp_trans_to_sel.exit.i_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_vinovp_trans_to_sel.exit.i

for.cond.1.i.i:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000000, i32 %13)
  %cmp1.1.i.i = icmp ult i32 %13, 11000000
  br i1 %cmp1.1.i.i, label %for.cond.1.i.i.mt6360_vinovp_trans_to_sel.exit.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.mt6360_vinovp_trans_to_sel.exit.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_vinovp_trans_to_sel.exit.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 14500000, i32 %13)
  %cmp1.2.i.i = icmp ult i32 %13, 14500000
  %spec.select.i.i = select i1 %cmp1.2.i.i, i32 64, i32 96
  br label %mt6360_vinovp_trans_to_sel.exit.i

mt6360_vinovp_trans_to_sel.exit.i:                ; preds = %for.cond.2.i.i, %for.cond.1.i.i.mt6360_vinovp_trans_to_sel.exit.i_crit_edge, %if.end22.mt6360_vinovp_trans_to_sel.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end22.mt6360_vinovp_trans_to_sel.exit.i_crit_edge ], [ 32, %for.cond.1.i.i.mt6360_vinovp_trans_to_sel.exit.i_crit_edge ], [ %spec.select.i.i, %for.cond.2.i.i ]
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %call16, i32 noundef 865, i32 noundef 96, i32 noundef %i.0.lcssa.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %mt6360_vinovp_trans_to_sel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %15, i32 noundef %call.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.mt6360_chg_init_setting) #7
  br label %mt6360_chg_init_setting.exit

if.end.i:                                         ; preds = %mt6360_vinovp_trans_to_sel.exit.i
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 802, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool5.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool5.not.i, label %if.end9.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %19, i32 noundef %call.i51.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.mt6360_chg_init_setting) #7
  br label %mt6360_chg_init_setting.exit

if.end9.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 786, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %tobool12.not.i = icmp eq i32 %call.i52.i, 0
  br i1 %tobool12.not.i, label %if.end16.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %23, i32 noundef %call.i52.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.mt6360_chg_init_setting) #7
  br label %mt6360_chg_init_setting.exit

if.end16.i:                                       ; preds = %if.end9.i
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #7
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i53.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 787, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool19.not.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool19.not.i, label %if.end23.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %27, i32 noundef %call.i53.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.mt6360_chg_init_setting) #7
  br label %mt6360_chg_init_setting.exit

if.end23.i:                                       ; preds = %if.end16.i
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i54.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 794, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool26.not.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end28_crit_edge, label %if.then27.i

if.end23.i.if.end28_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call29.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %31, i32 noundef %call.i54.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.mt6360_chg_init_setting) #7
  br label %mt6360_chg_init_setting.exit

mt6360_chg_init_setting.exit:                     ; preds = %if.then27.i, %if.then20.i, %if.then13.i, %if.then6.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call8.i, %if.then6.i ], [ %call15.i, %if.then13.i ], [ %call22.i, %if.then20.i ], [ %call29.i, %if.then27.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool24.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool24.not, label %mt6360_chg_init_setting.exit.if.end28_crit_edge, label %if.then25

mt6360_chg_init_setting.exit.if.end28_crit_edge:  ; preds = %mt6360_chg_init_setting.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %mt6360_chg_init_setting.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end28:                                         ; preds = %mt6360_chg_init_setting.exit.if.end28_crit_edge, %if.end23.i.if.end28_crit_edge
  %psy_desc = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %psy_desc, ptr @mt6360_charger_desc, i32 52)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i111 = icmp eq ptr %34, null
  br i1 %tobool.not.i111, label %if.end.i112, label %if.end28.dev_name.exit_crit_edge

if.end28.dev_name.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i112:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i112, %if.end28.dev_name.exit_crit_edge
  %retval.0.i113 = phi ptr [ %36, %if.end.i112 ], [ %34, %if.end28.dev_name.exit_crit_edge ]
  %37 = ptrtoint ptr %psy_desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i113, ptr %psy_desc, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %charger_cfg, i32 0, i32 2
  %38 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %41 = ptrtoint ptr %charger_cfg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %charger_cfg, align 4
  %call36 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %psy_desc, ptr noundef nonnull %charger_cfg) #7
  %psy = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call36, ptr %psy, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end44

if.then39:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call36 to i32
  %call43 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %43, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end44:                                         ; preds = %dev_name.exit
  %call.i114 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp1.i = icmp slt i32 %call.i114, 0
  br i1 %cmp1.i, label %if.end44.if.then47_crit_edge, label %if.end.i115

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

for.cond.i:                                       ; preds = %if.end.i115
  %call.1.i = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.if.then47_crit_edge, label %if.end.1.i

for.cond.i.if.then47_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

if.end.1.i:                                       ; preds = %for.cond.i
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %call6.1.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.1.i, ptr noundef null, ptr noundef nonnull @mt6360_pmu_chrdet_ext_evt_handler, i32 noundef 8194, ptr noundef nonnull @.str.23, ptr noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp7.1.i, label %if.end.1.i.mt6360_chg_irq_register.exit_crit_edge, label %if.end.1.i.if.end50_crit_edge

if.end.1.i.if.end50_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end.1.i.mt6360_chg_irq_register.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_chg_irq_register.exit

if.end.i115:                                      ; preds = %if.end44
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i, align 4
  %call6.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i114, ptr noundef null, ptr noundef nonnull @mt6360_pmu_attach_i_handler, i32 noundef 8194, ptr noundef nonnull @.str.22, ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i115.mt6360_chg_irq_register.exit_crit_edge, label %for.cond.i

if.end.i115.mt6360_chg_irq_register.exit_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_chg_irq_register.exit

mt6360_chg_irq_register.exit:                     ; preds = %if.end.i115.mt6360_chg_irq_register.exit_crit_edge, %if.end.1.i.mt6360_chg_irq_register.exit_crit_edge
  %.lcssa29.i = phi ptr [ @.str.22, %if.end.i115.mt6360_chg_irq_register.exit_crit_edge ], [ @.str.23, %if.end.1.i.mt6360_chg_irq_register.exit_crit_edge ]
  %call6.lcssa.i = phi i32 [ %call6.i, %if.end.i115.mt6360_chg_irq_register.exit_crit_edge ], [ %call6.1.i, %if.end.1.i.mt6360_chg_irq_register.exit_crit_edge ]
  %call12.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call6.lcssa.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %.lcssa29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool46.not = icmp eq i32 %call12.i, 0
  br i1 %tobool46.not, label %mt6360_chg_irq_register.exit.if.end50_crit_edge, label %mt6360_chg_irq_register.exit.if.then47_crit_edge

mt6360_chg_irq_register.exit.if.then47_crit_edge: ; preds = %mt6360_chg_irq_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

mt6360_chg_irq_register.exit.if.end50_crit_edge:  ; preds = %mt6360_chg_irq_register.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then47:                                        ; preds = %mt6360_chg_irq_register.exit.if.then47_crit_edge, %for.cond.i.if.then47_crit_edge, %if.end44.if.then47_crit_edge
  %retval.0.i116123 = phi i32 [ %call12.i, %mt6360_chg_irq_register.exit.if.then47_crit_edge ], [ %call.1.i, %for.cond.i.if.then47_crit_edge ], [ %call.i114, %if.end44.if.then47_crit_edge ]
  %call49 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %retval.0.i116123, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end50:                                         ; preds = %mt6360_chg_irq_register.exit.if.end50_crit_edge, %if.end.1.i.if.end50_crit_edge
  %48 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev, ptr %config, align 4
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %regmap54 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %51 = ptrtoint ptr %regmap54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %regmap54, align 4
  %call56 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @mt6360_otg_rdesc, ptr noundef nonnull %config) #7
  %otg_rdev = getelementptr inbounds %struct.mt6360_chg_info, ptr %call.i, i32 0, i32 4
  %52 = ptrtoint ptr %otg_rdev to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call56, ptr %otg_rdev, align 4
  %cmp.i117 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i118 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %chrdet_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then59, %if.then47, %if.then39, %if.then25, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then25 ], [ %call43, %if.then39 ], [ %call49, %if.then47 ], [ %53, %if.then59 ], [ 0, %if.end62 ], [ %call21, %if.then19 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %charger_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt6360_chrdet_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -172
  tail call fastcc void @mt6360_handle_chrdet_ext_evt(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_work_drop(ptr noundef %res) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %res) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt6360_handle_chrdet_ext_evt(ptr noundef %mci) unnamed_addr #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chgdet_lock = getelementptr inbounds %struct.mt6360_chg_info, ptr %mci, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %chgdet_lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %0 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i, align 4, !annotation !111
  %regmap.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %mci, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 999, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mt6360_get_chrdet_ext_stat.exit.thread, label %if.end

mt6360_get_chrdet_ext_stat.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval.i, align 4
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 4
  %7 = and i8 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  %pwr_rdy1 = getelementptr inbounds %struct.mt6360_chg_info, ptr %mci, i32 0, i32 7
  %8 = ptrtoint ptr %pwr_rdy1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pwr_rdy1, align 4, !range !112
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp4 = icmp eq i8 %9, %7
  br i1 %cmp4, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_handle_chrdet_ext_evt, %out)) #7
          to label %if.then12 [label %out], !srcloc !113

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mci, align 4
  %12 = zext i8 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug293, ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %12) #7
  br label %out

if.end16:                                         ; preds = %if.end
  %13 = ptrtoint ptr %pwr_rdy1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %pwr_rdy1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_handle_chrdet_ext_evt, %do.end40)) #7
          to label %if.then34 [label %do.end40], !srcloc !113

if.then34:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mci, align 4
  %16 = zext i8 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug294, ptr noundef %15, ptr noundef nonnull @.str.16, i32 noundef %16) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool41.not = icmp eq i8 %7, 0
  br i1 %tobool41.not, label %if.then42, label %do.end40.if.end43_crit_edge

do.end40.if.end43_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %psy_usb_type = getelementptr inbounds %struct.mt6360_chg_info, ptr %mci, i32 0, i32 9
  %17 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %psy_usb_type, align 4
  %psy = getelementptr inbounds %struct.mt6360_chg_info, ptr %mci, i32 0, i32 3
  %18 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %psy, align 4
  call void @power_supply_changed(ptr noundef %19) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %do.end40.if.end43_crit_edge
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %22 = shl i8 %6, 7
  %23 = zext i8 %22 to i32
  %call.i69 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 802, i32 noundef 128, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp47 = icmp slt i32 %call.i69, 0
  br i1 %cmp47, label %if.end43.out_crit_edge, label %if.end50

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %bc12_en = getelementptr inbounds %struct.mt6360_chg_info, ptr %mci, i32 0, i32 8
  %24 = ptrtoint ptr %bc12_en to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %7, ptr %bc12_en, align 1
  br label %out

out:                                              ; preds = %if.end50, %if.end43.out_crit_edge, %if.then12, %do.body, %mt6360_get_chrdet_ext_stat.exit.thread
  call void @mutex_unlock(ptr noundef %chgdet_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %sel.i111 = alloca i32, align 4
  %value.i112 = alloca i32, align 4
  %sel.i100 = alloca i32, align 4
  %value.i101 = alloca i32, align 4
  %sel.i88 = alloca i32, align 4
  %value.i89 = alloca i32, align 4
  %sel.i76 = alloca i32, align 4
  %value.i77 = alloca i32, align 4
  %sel.i64 = alloca i32, align 4
  %value.i65 = alloca i32, align 4
  %sel.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  %regval.i52 = alloca i32, align 4
  %regval.i.i45 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb2
    i32 1, label %sw.bb4
    i32 29, label %sw.bb6
    i32 30, label %sw.bb8
    i32 31, label %sw.bb10
    i32 32, label %sw.bb12
    i32 38, label %sw.bb14
    i32 39, label %sw.bb16
    i32 67, label %sw.bb18
    i32 68, label %sw.bb20
    i32 65, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #7
  %1 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !111
  %regmap.i.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 999, ptr noundef nonnull %regval.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %mt6360_get_chrdet_ext_stat.exit.thread.i, label %if.end.i

mt6360_get_chrdet_ext_stat.exit.thread.i:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regval.i.i, align 4
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %9 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %regval.i, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i45) #7
  %10 = ptrtoint ptr %regval.i.i45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %regval.i.i45, align 4, !annotation !111
  %regmap.i.i46 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i.i46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i46, align 4
  %call.i.i47 = call i32 @regmap_read(ptr noundef %12, i32 noundef 999, ptr noundef nonnull %regval.i.i45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %cmp.i.i48 = icmp slt i32 %call.i.i47, 0
  br i1 %cmp.i.i48, label %mt6360_get_chrdet_ext_stat.exit.thread.i49, label %if.end.i50

mt6360_get_chrdet_ext_stat.exit.thread.i49:       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i45) #7
  br label %mt6360_charger_get_status.exit

if.end.i50:                                       ; preds = %sw.bb2
  %13 = ptrtoint ptr %regval.i.i45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i.i45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i45) #7
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i50.if.then10.i_crit_edge, label %if.end2.i

if.end.i50.if.then10.i_crit_edge:                 ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.end2.i:                                        ; preds = %if.end.i50
  %16 = ptrtoint ptr %regmap.i.i46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i46, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 842, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end2.i.mt6360_charger_get_status.exit_crit_edge, label %if.end6.i

if.end2.i.mt6360_charger_get_status.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_status.exit

if.end6.i:                                        ; preds = %if.end2.i
  %18 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regval.i, align 4
  %and.i = lshr i32 %19, 6
  %shr.i = and i32 %and.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %.not = icmp eq i32 %shr.i, 3
  br i1 %.not, label %if.end6.i.mt6360_charger_get_status.exit_crit_edge, label %switch.lookup

if.end6.i.mt6360_charger_get_status.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_status.exit

switch.lookup:                                    ; preds = %if.end6.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mt6360_charger_get_property, i32 0, i32 %shr.i
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool9.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool9.not.i, label %switch.lookup.if.then10.i_crit_edge, label %switch.lookup.mt6360_charger_get_status.exit_crit_edge

switch.lookup.mt6360_charger_get_status.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_status.exit

switch.lookup.if.then10.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10.i

if.then10.i:                                      ; preds = %switch.lookup.if.then10.i_crit_edge, %if.end.i50.if.then10.i_crit_edge
  %status.027.i = phi i32 [ %switch.load, %switch.lookup.if.then10.i_crit_edge ], [ 2, %if.end.i50.if.then10.i_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %status.027.i, ptr %val, align 4
  br label %mt6360_charger_get_status.exit

mt6360_charger_get_status.exit:                   ; preds = %if.then10.i, %switch.lookup.mt6360_charger_get_status.exit_crit_edge, %if.end6.i.mt6360_charger_get_status.exit_crit_edge, %if.end2.i.mt6360_charger_get_status.exit_crit_edge, %mt6360_get_chrdet_ext_stat.exit.thread.i49
  %retval.0.i51 = phi i32 [ %call3.i, %if.end2.i.mt6360_charger_get_status.exit_crit_edge ], [ 0, %if.then10.i ], [ %call3.i, %switch.lookup.mt6360_charger_get_status.exit_crit_edge ], [ %call.i.i47, %mt6360_get_chrdet_ext_stat.exit.thread.i49 ], [ -5, %if.end6.i.mt6360_charger_get_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i52) #7
  %22 = ptrtoint ptr %regval.i52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %regval.i52, align 4, !annotation !111
  %regmap.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 842, ptr noundef nonnull %regval.i52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb4.mt6360_charger_get_charge_type.exit_crit_edge, label %if.end.i54

sw.bb4.mt6360_charger_get_charge_type.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_charge_type.exit

if.end.i54:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regval.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regval.i52, align 4
  %27 = and i32 %26, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %27)
  %cond.i = icmp eq i32 %27, 64
  %and2.i = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i53 = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool.not.i53, i32 2, i32 3
  %type.0.i = select i1 %cond.i, i32 %..i, i32 1
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %type.0.i, ptr %val, align 4
  br label %mt6360_charger_get_charge_type.exit

mt6360_charger_get_charge_type.exit:              ; preds = %if.end.i54, %sw.bb4.mt6360_charger_get_charge_type.exit_crit_edge
  %retval.0.i55 = phi i32 [ 0, %if.end.i54 ], [ %call.i, %sw.bb4.mt6360_charger_get_charge_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i52) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i) #7
  %29 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %sel.i, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %value.i, align 4, !annotation !111
  %regmap.i56 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i56, align 4
  %call.i57 = call i32 @regmap_read(ptr noundef %32, i32 noundef 791, ptr noundef nonnull %sel.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp slt i32 %call.i57, 0
  br i1 %cmp.i58, label %sw.bb6.mt6360_charger_get_ichg.exit_crit_edge, label %if.end.i62

sw.bb6.mt6360_charger_get_ichg.exit_crit_edge:    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_ichg.exit

if.end.i62:                                       ; preds = %sw.bb6
  %33 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sel.i, align 4
  %and.i59 = lshr i32 %34, 2
  %shr.i60 = and i32 %and.i59, 63
  store i32 %shr.i60, ptr %sel.i, align 4
  %call1.i = call i32 @linear_range_get_value(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 1), i32 noundef %shr.i60, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i61 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i61, label %if.then2.i, label %if.end.i62.mt6360_charger_get_ichg.exit_crit_edge

if.end.i62.mt6360_charger_get_ichg.exit_crit_edge: ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_ichg.exit

if.then2.i:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value.i, align 4
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  br label %mt6360_charger_get_ichg.exit

mt6360_charger_get_ichg.exit:                     ; preds = %if.then2.i, %if.end.i62.mt6360_charger_get_ichg.exit_crit_edge, %sw.bb6.mt6360_charger_get_ichg.exit_crit_edge
  %retval.0.i63 = phi i32 [ %call.i57, %sw.bb6.mt6360_charger_get_ichg.exit_crit_edge ], [ 0, %if.then2.i ], [ %call1.i, %if.end.i62.mt6360_charger_get_ichg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5000000, ptr %val, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i64) #7
  %39 = ptrtoint ptr %sel.i64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %sel.i64, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i65) #7
  %40 = ptrtoint ptr %value.i65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %value.i65, align 4, !annotation !111
  %regmap.i66 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %41 = ptrtoint ptr %regmap.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i66, align 4
  %call.i67 = call i32 @regmap_read(ptr noundef %42, i32 noundef 788, ptr noundef nonnull %sel.i64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %sw.bb10.mt6360_charger_get_cv.exit_crit_edge, label %if.end.i73

sw.bb10.mt6360_charger_get_cv.exit_crit_edge:     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_cv.exit

if.end.i73:                                       ; preds = %sw.bb10
  %43 = ptrtoint ptr %sel.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sel.i64, align 4
  %and.i69 = lshr i32 %44, 1
  %shr.i70 = and i32 %and.i69, 127
  store i32 %shr.i70, ptr %sel.i64, align 4
  %call1.i71 = call i32 @linear_range_get_value(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 2), i32 noundef %shr.i70, ptr noundef nonnull %value.i65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %if.then2.i74, label %if.end.i73.mt6360_charger_get_cv.exit_crit_edge

if.end.i73.mt6360_charger_get_cv.exit_crit_edge:  ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_cv.exit

if.then2.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %value.i65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i65, align 4
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val, align 4
  br label %mt6360_charger_get_cv.exit

mt6360_charger_get_cv.exit:                       ; preds = %if.then2.i74, %if.end.i73.mt6360_charger_get_cv.exit_crit_edge, %sw.bb10.mt6360_charger_get_cv.exit_crit_edge
  %retval.0.i75 = phi i32 [ %call.i67, %sw.bb10.mt6360_charger_get_cv.exit_crit_edge ], [ 0, %if.then2.i74 ], [ %call1.i71, %if.end.i73.mt6360_charger_get_cv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i65) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i64) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4710000, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i76) #7
  %49 = ptrtoint ptr %sel.i76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %sel.i76, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i77) #7
  %50 = ptrtoint ptr %value.i77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %value.i77, align 4, !annotation !111
  %regmap.i78 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %51 = ptrtoint ptr %regmap.i78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i78, align 4
  %call.i79 = call i32 @regmap_read(ptr noundef %52, i32 noundef 787, ptr noundef nonnull %sel.i76) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp.i80 = icmp slt i32 %call.i79, 0
  br i1 %cmp.i80, label %sw.bb14.mt6360_charger_get_aicr.exit_crit_edge, label %if.end.i85

sw.bb14.mt6360_charger_get_aicr.exit_crit_edge:   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_aicr.exit

if.end.i85:                                       ; preds = %sw.bb14
  %53 = ptrtoint ptr %sel.i76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sel.i76, align 4
  %and.i81 = lshr i32 %54, 2
  %shr.i82 = and i32 %and.i81, 63
  store i32 %shr.i82, ptr %sel.i76, align 4
  %call1.i83 = call i32 @linear_range_get_value(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 3), i32 noundef %shr.i82, ptr noundef nonnull %value.i77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %if.then2.i86, label %if.end.i85.mt6360_charger_get_aicr.exit_crit_edge

if.end.i85.mt6360_charger_get_aicr.exit_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_aicr.exit

if.then2.i86:                                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %value.i77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %value.i77, align 4
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val, align 4
  br label %mt6360_charger_get_aicr.exit

mt6360_charger_get_aicr.exit:                     ; preds = %if.then2.i86, %if.end.i85.mt6360_charger_get_aicr.exit_crit_edge, %sw.bb14.mt6360_charger_get_aicr.exit_crit_edge
  %retval.0.i87 = phi i32 [ %call.i79, %sw.bb14.mt6360_charger_get_aicr.exit_crit_edge ], [ 0, %if.then2.i86 ], [ %call1.i83, %if.end.i85.mt6360_charger_get_aicr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i77) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i76) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i88) #7
  %58 = ptrtoint ptr %sel.i88 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %sel.i88, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i89) #7
  %59 = ptrtoint ptr %value.i89 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %value.i89, align 4, !annotation !111
  %regmap.i90 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %60 = ptrtoint ptr %regmap.i90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i90, align 4
  %call.i91 = call i32 @regmap_read(ptr noundef %61, i32 noundef 790, ptr noundef nonnull %sel.i88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp.i92, label %sw.bb16.mt6360_charger_get_mivr.exit_crit_edge, label %if.end.i97

sw.bb16.mt6360_charger_get_mivr.exit_crit_edge:   ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_mivr.exit

if.end.i97:                                       ; preds = %sw.bb16
  %62 = ptrtoint ptr %sel.i88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sel.i88, align 4
  %and.i93 = lshr i32 %63, 1
  %shr.i94 = and i32 %and.i93, 127
  store i32 %shr.i94, ptr %sel.i88, align 4
  %call1.i95 = call i32 @linear_range_get_value(ptr noundef nonnull @mt6360_chg_range, i32 noundef %shr.i94, ptr noundef nonnull %value.i89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %if.then2.i98, label %if.end.i97.mt6360_charger_get_mivr.exit_crit_edge

if.end.i97.mt6360_charger_get_mivr.exit_crit_edge: ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_mivr.exit

if.then2.i98:                                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %value.i89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %value.i89, align 4
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %val, align 4
  br label %mt6360_charger_get_mivr.exit

mt6360_charger_get_mivr.exit:                     ; preds = %if.then2.i98, %if.end.i97.mt6360_charger_get_mivr.exit_crit_edge, %sw.bb16.mt6360_charger_get_mivr.exit_crit_edge
  %retval.0.i99 = phi i32 [ %call.i91, %sw.bb16.mt6360_charger_get_mivr.exit_crit_edge ], [ 0, %if.then2.i98 ], [ %call1.i95, %if.end.i97.mt6360_charger_get_mivr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i89) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i88) #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i100) #7
  %67 = ptrtoint ptr %sel.i100 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %sel.i100, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i101) #7
  %68 = ptrtoint ptr %value.i101 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %value.i101, align 4, !annotation !111
  %regmap.i102 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %69 = ptrtoint ptr %regmap.i102 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i102, align 4
  %call.i103 = call i32 @regmap_read(ptr noundef %70, i32 noundef 792, ptr noundef nonnull %sel.i100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp.i104 = icmp slt i32 %call.i103, 0
  br i1 %cmp.i104, label %sw.bb18.mt6360_charger_get_iprechg.exit_crit_edge, label %if.end.i108

sw.bb18.mt6360_charger_get_iprechg.exit_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_iprechg.exit

if.end.i108:                                      ; preds = %sw.bb18
  %71 = ptrtoint ptr %sel.i100 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sel.i100, align 4
  %and.i105 = and i32 %72, 15
  store i32 %and.i105, ptr %sel.i100, align 4
  %call1.i106 = call i32 @linear_range_get_value(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 4), i32 noundef %and.i105, ptr noundef nonnull %value.i101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i106)
  %tobool.not.i107 = icmp eq i32 %call1.i106, 0
  br i1 %tobool.not.i107, label %if.then2.i109, label %if.end.i108.mt6360_charger_get_iprechg.exit_crit_edge

if.end.i108.mt6360_charger_get_iprechg.exit_crit_edge: ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_iprechg.exit

if.then2.i109:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %value.i101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %value.i101, align 4
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %val, align 4
  br label %mt6360_charger_get_iprechg.exit

mt6360_charger_get_iprechg.exit:                  ; preds = %if.then2.i109, %if.end.i108.mt6360_charger_get_iprechg.exit_crit_edge, %sw.bb18.mt6360_charger_get_iprechg.exit_crit_edge
  %retval.0.i110 = phi i32 [ %call.i103, %sw.bb18.mt6360_charger_get_iprechg.exit_crit_edge ], [ 0, %if.then2.i109 ], [ %call1.i106, %if.end.i108.mt6360_charger_get_iprechg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i101) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i100) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i111) #7
  %76 = ptrtoint ptr %sel.i111 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %sel.i111, align 4, !annotation !111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i112) #7
  %77 = ptrtoint ptr %value.i112 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %value.i112, align 4, !annotation !111
  %regmap.i113 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %78 = ptrtoint ptr %regmap.i113 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i113, align 4
  %call.i114 = call i32 @regmap_read(ptr noundef %79, i32 noundef 793, ptr noundef nonnull %sel.i111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %sw.bb20.mt6360_charger_get_ieoc.exit_crit_edge, label %if.end.i120

sw.bb20.mt6360_charger_get_ieoc.exit_crit_edge:   ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_ieoc.exit

if.end.i120:                                      ; preds = %sw.bb20
  %80 = ptrtoint ptr %sel.i111 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sel.i111, align 4
  %and.i116 = lshr i32 %81, 4
  %shr.i117 = and i32 %and.i116, 15
  store i32 %shr.i117, ptr %sel.i111, align 4
  %call1.i118 = call i32 @linear_range_get_value(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 5), i32 noundef %shr.i117, ptr noundef nonnull %value.i112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %if.then2.i121, label %if.end.i120.mt6360_charger_get_ieoc.exit_crit_edge

if.end.i120.mt6360_charger_get_ieoc.exit_crit_edge: ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6360_charger_get_ieoc.exit

if.then2.i121:                                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %value.i112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value.i112, align 4
  %84 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %val, align 4
  br label %mt6360_charger_get_ieoc.exit

mt6360_charger_get_ieoc.exit:                     ; preds = %if.then2.i121, %if.end.i120.mt6360_charger_get_ieoc.exit_crit_edge, %sw.bb20.mt6360_charger_get_ieoc.exit_crit_edge
  %retval.0.i122 = phi i32 [ %call.i114, %sw.bb20.mt6360_charger_get_ieoc.exit_crit_edge ], [ 0, %if.then2.i121 ], [ %call1.i118, %if.end.i120.mt6360_charger_get_ieoc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i112) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i111) #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %psy_usb_type = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 9
  %85 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %psy_usb_type, align 4
  %87 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %mt6360_charger_get_ieoc.exit, %mt6360_charger_get_iprechg.exit, %mt6360_charger_get_mivr.exit, %mt6360_charger_get_aicr.exit, %sw.bb12, %mt6360_charger_get_cv.exit, %sw.bb8, %mt6360_charger_get_ichg.exit, %mt6360_charger_get_charge_type.exit, %mt6360_charger_get_status.exit, %if.end.i, %mt6360_get_chrdet_ext_stat.exit.thread.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb22 ], [ %retval.0.i122, %mt6360_charger_get_ieoc.exit ], [ %retval.0.i110, %mt6360_charger_get_iprechg.exit ], [ %retval.0.i99, %mt6360_charger_get_mivr.exit ], [ %retval.0.i87, %mt6360_charger_get_aicr.exit ], [ 0, %sw.bb12 ], [ %retval.0.i75, %mt6360_charger_get_cv.exit ], [ 0, %sw.bb8 ], [ %retval.0.i63, %mt6360_charger_get_ichg.exit ], [ %retval.0.i55, %mt6360_charger_get_charge_type.exit ], [ %retval.0.i51, %mt6360_charger_get_status.exit ], [ -61, %entry.sw.epilog_crit_edge ], [ 0, %if.end.i ], [ %call.i.i, %mt6360_get_chrdet_ext_stat.exit.thread.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_charger_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %sel.i44 = alloca i32, align 4
  %sel.i41 = alloca i32, align 4
  %sel.i37 = alloca i32, align 4
  %sel.i33 = alloca i32, align 4
  %sel.i29 = alloca i32, align 4
  %sel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 29, label %sw.bb2
    i32 31, label %sw.bb4
    i32 38, label %sw.bb6
    i32 39, label %sw.bb8
    i32 67, label %sw.bb10
    i32 68, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  %regmap.i = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %shl.i = select i1 %tobool.not.i, i32 8, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 785, i32 noundef 8, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i) #7
  %5 = ptrtoint ptr %sel.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sel.i, align 4, !annotation !111
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @linear_range_get_selector_within(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 1), i32 noundef %7, ptr noundef nonnull %sel.i) #7
  %regmap.i26 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i26, align 4
  %10 = ptrtoint ptr %sel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel.i, align 4
  %shl.i27 = shl i32 %11, 2
  %call.i.i28 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 791, i32 noundef 252, i32 noundef %shl.i27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i29) #7
  %12 = ptrtoint ptr %sel.i29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %sel.i29, align 4, !annotation !111
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @linear_range_get_selector_within(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 2), i32 noundef %14, ptr noundef nonnull %sel.i29) #7
  %regmap.i30 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i30, align 4
  %17 = ptrtoint ptr %sel.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sel.i29, align 4
  %shl.i31 = shl i32 %18, 1
  %call.i.i32 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 788, i32 noundef 254, i32 noundef %shl.i31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i29) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i33) #7
  %19 = ptrtoint ptr %sel.i33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %sel.i33, align 4, !annotation !111
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @linear_range_get_selector_within(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 3), i32 noundef %21, ptr noundef nonnull %sel.i33) #7
  %regmap.i34 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i34, align 4
  %24 = ptrtoint ptr %sel.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sel.i33, align 4
  %shl.i35 = shl i32 %25, 2
  %call.i.i36 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 787, i32 noundef 252, i32 noundef %shl.i35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i33) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i37) #7
  %26 = ptrtoint ptr %sel.i37 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %sel.i37, align 4, !annotation !111
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void @linear_range_get_selector_within(ptr noundef nonnull @mt6360_chg_range, i32 noundef %28, ptr noundef nonnull %sel.i37) #7
  %regmap.i38 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %regmap.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i38, align 4
  %31 = ptrtoint ptr %sel.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sel.i37, align 4
  %shl.i39 = shl i32 %32, 1
  %call.i.i40 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 787, i32 noundef 254, i32 noundef %shl.i39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i37) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i41) #7
  %33 = ptrtoint ptr %sel.i41 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %sel.i41, align 4, !annotation !111
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  call void @linear_range_get_selector_within(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 4), i32 noundef %35, ptr noundef nonnull %sel.i41) #7
  %regmap.i42 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i42, align 4
  %38 = ptrtoint ptr %sel.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sel.i41, align 4
  %call.i.i43 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 792, i32 noundef 15, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i41) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i44) #7
  %40 = ptrtoint ptr %sel.i44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %sel.i44, align 4, !annotation !111
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  call void @linear_range_get_selector_within(ptr noundef getelementptr inbounds ([6 x %struct.linear_range], ptr @mt6360_chg_range, i32 0, i32 5), i32 noundef %42, ptr noundef nonnull %sel.i44) #7
  %regmap.i45 = getelementptr inbounds %struct.mt6360_chg_info, ptr %call, i32 0, i32 1
  %43 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i45, align 4
  %45 = ptrtoint ptr %sel.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sel.i44, align 4
  %shl.i46 = shl i32 %46, 4
  %call.i.i47 = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 793, i32 noundef 240, i32 noundef %shl.i46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i44) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i.i47, %sw.bb12 ], [ %call.i.i43, %sw.bb10 ], [ %call.i.i40, %sw.bb8 ], [ %call.i.i36, %sw.bb6 ], [ %call.i.i32, %sw.bb4 ], [ %call.i.i28, %sw.bb2 ], [ %call.i.i, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6360_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %psp, label %sw.default [
    i32 4, label %entry.return_crit_edge
    i32 29, label %entry.return_crit_edge1
    i32 31, label %entry.return_crit_edge2
    i32 38, label %entry.return_crit_edge3
    i32 39, label %entry.return_crit_edge4
    i32 67, label %entry.return_crit_edge5
    i32 68, label %entry.return_crit_edge6
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ], [ 1, %entry.return_crit_edge5 ], [ 1, %entry.return_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linear_range_get_selector_within(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_pmu_attach_i_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %usb_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usb_status) #7
  %0 = ptrtoint ptr %usb_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usb_status, align 4, !annotation !111
  %chgdet_lock = getelementptr inbounds %struct.mt6360_chg_info, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %chgdet_lock, i32 noundef 0) #7
  %bc12_en = getelementptr inbounds %struct.mt6360_chg_info, ptr %data, i32 0, i32 8
  %1 = ptrtoint ptr %bc12_en to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bc12_en, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.25) #10
  br label %out

if.end:                                           ; preds = %entry
  %psy_usb_type = getelementptr inbounds %struct.mt6360_chg_info, ptr %data, i32 0, i32 9
  %5 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %psy_usb_type, align 4
  %regmap = getelementptr inbounds %struct.mt6360_chg_info, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef 807, ptr noundef nonnull %usb_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end2:                                          ; preds = %if.end
  %9 = ptrtoint ptr %usb_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_status, align 4
  %and = lshr i32 %10, 4
  %shr = and i32 %and, 7
  store i32 %shr, ptr %usb_status, align 4
  %11 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %shr, label %sw.default [
    i32 0, label %do.body3
    i32 1, label %do.body15
    i32 2, label %if.end2.do.body82_crit_edge
    i32 3, label %if.end2.do.body82_crit_edge142
    i32 5, label %sw.bb38
    i32 4, label %sw.bb40
    i32 6, label %do.body43
  ]

if.end2.do.body82_crit_edge142:                   ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

if.end2.do.body82_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

do.body3:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_pmu_attach_i_handler, %out)) #7
          to label %if.then9 [label %out], !srcloc !113

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug288, ptr noundef %13, ptr noundef nonnull @.str.27) #7
  br label %out

do.body15:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_pmu_attach_i_handler, %out)) #7
          to label %if.then29 [label %out], !srcloc !113

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug289, ptr noundef %15, ptr noundef nonnull @.str.28) #7
  br label %out

sw.bb38:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

sw.bb40:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

do.body43:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_pmu_attach_i_handler, %out)) #7
          to label %if.then57 [label %out], !srcloc !113

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug290, ptr noundef %17, ptr noundef nonnull @.str.29) #7
  br label %out

sw.default:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %psy_usb_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_pmu_attach_i_handler, %out)) #7
          to label %if.then77 [label %out], !srcloc !113

if.then77:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug291, ptr noundef %20, ptr noundef nonnull @.str.30) #7
  br label %out

do.body82:                                        ; preds = %sw.bb40, %sw.bb38, %if.end2.do.body82_crit_edge, %if.end2.do.body82_crit_edge142
  %.sink = phi i32 [ 3, %sw.bb38 ], [ 2, %sw.bb40 ], [ 1, %if.end2.do.body82_crit_edge ], [ 1, %if.end2.do.body82_crit_edge142 ]
  %21 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %psy_usb_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mt6360_pmu_attach_i_handler, %do.end101)) #7
          to label %if.then96 [label %do.end101], !srcloc !113

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %psy_usb_type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug292, ptr noundef %23, ptr noundef nonnull @.str.31, i32 noundef %25) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %do.body82
  %26 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %psy_usb_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %27)
  %cmp103.not = icmp eq i32 %6, %27
  br i1 %cmp103.not, label %do.end101.out_crit_edge, label %if.then104

do.end101.out_crit_edge:                          ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then104:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  %psy = getelementptr inbounds %struct.mt6360_chg_info, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %psy, align 4
  call void @power_supply_changed(ptr noundef %29) #7
  br label %out

out:                                              ; preds = %if.then104, %do.end101.out_crit_edge, %if.then77, %sw.default, %if.then57, %do.body43, %if.then29, %do.body15, %if.then9, %do.body3, %if.end.out_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %chgdet_lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usb_status) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6360_pmu_chrdet_ext_evt_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mt6360_handle_chrdet_ext_evt(ptr noundef %data)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_mt6360_charger__295_863_mt6360_charger_driver_init6, !1, !"__initcall__kmod_mt6360_charger__295_863_mt6360_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/mt6360_charger.c", i32 863, i32 1}
!2 = !{ptr @__exitcall_mt6360_charger_driver_exit, !1, !"__exitcall_mt6360_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/mt6360_charger.c", i32 865, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/mt6360_charger.c", i32 866, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/mt6360_charger.c", i32 867, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/mt6360_charger.c", i32 857, i32 11}
!12 = !{ptr @mt6360_charger_driver, !13, !"mt6360_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/mt6360_charger.c", i32 855, i32 31}
!14 = !{ptr @mt6360_charger_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/mt6360_charger.c", i32 800, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/mt6360_charger.c", i32 804, i32 45}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/mt6360_charger.c", i32 806, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mt6360_charger_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mt6360_charger_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/mt6360_charger.c", i32 810, i32 45}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/mt6360_charger.c", i32 814, i32 41}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/mt6360_charger.c", i32 824, i32 10}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/mt6360_charger.c", i32 829, i32 41}
!35 = !{ptr @devm_work_autocancel.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/devm-helpers.h", i32 75, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/mt6360_charger.c", i32 673, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug293, !39, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/mt6360_charger.c", i32 677, i32 2}
!45 = !{ptr @mt6360_handle_chrdet_ext_evt.__UNIQUE_ID_ddebug294, !44, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/mt6360_charger.c", i32 761, i32 39}
!48 = !{ptr @__func__.mt6360_chg_init_setting, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/mt6360_charger.c", i32 761, i32 71}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/mt6360_charger.c", i32 765, i32 39}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/mt6360_charger.c", i32 772, i32 10}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/mt6360_charger.c", i32 778, i32 10}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/mt6360_charger.c", i32 783, i32 10}
!58 = !{ptr @mt6360_charger_desc, !59, !"mt6360_charger_desc", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/mt6360_charger.c", i32 573, i32 39}
!60 = !{ptr @mt6360_charger_usb_types, !61, !"mt6360_charger_usb_types", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/mt6360_charger.c", i32 160, i32 35}
!62 = !{ptr @mt6360_charger_properties, !63, !"mt6360_charger_properties", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/mt6360_charger.c", i32 558, i32 35}
!64 = !{ptr @mt6360_chg_range, !65, !"mt6360_chg_range", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/mt6360_charger.c", i32 119, i32 34}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/mt6360_charger.c", i32 716, i32 5}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/mt6360_charger.c", i32 717, i32 5}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/mt6360_charger.c", i32 732, i32 42}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/mt6360_charger.c", i32 617, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mt6360_pmu_attach_i_handler._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mt6360_pmu_attach_i_handler._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/mt6360_charger.c", i32 629, i32 3}
!79 = !{ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug288, !78, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/mt6360_charger.c", i32 632, i32 3}
!82 = !{ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug289, !81, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/mt6360_charger.c", i32 647, i32 3}
!85 = !{ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug290, !84, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/mt6360_charger.c", i32 651, i32 3}
!88 = !{ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug291, !87, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/mt6360_charger.c", i32 655, i32 2}
!91 = !{ptr @mt6360_pmu_attach_i_handler.__UNIQUE_ID_ddebug292, !90, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/mt6360_charger.c", i32 595, i32 10}
!94 = !{ptr @mt6360_otg_rdesc, !95, !"mt6360_otg_rdesc", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/mt6360_charger.c", i32 593, i32 36}
!96 = !{ptr @mt6360_chg_otg_ops, !97, !"mt6360_chg_otg_ops", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/mt6360_charger.c", i32 584, i32 35}
!98 = !{ptr @mt6360_charger_of_id, !99, !"mt6360_charger_of_id", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/mt6360_charger.c", i32 843, i32 49}
!100 = !{ptr @mt6360_charger_id, !101, !"mt6360_charger_id", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/mt6360_charger.c", i32 849, i32 40}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
!112 = !{i8 0, i8 2}
!113 = !{i64 2148302247, i64 2148302252, i64 2148302265, i64 2148302309, i64 2148302343, i64 2148302364}
