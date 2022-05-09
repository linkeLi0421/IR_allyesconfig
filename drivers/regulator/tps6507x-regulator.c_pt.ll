; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps6507x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps6507x-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tps_info = type { ptr, i8, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tps6507x_pmic = type { [5 x %struct.regulator_desc], ptr, [5 x ptr], %struct.mutex }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.tps6507x_dev = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tps6507x_regulator__288_457_tps6507x_pmic_init4 = internal global ptr @tps6507x_pmic_init, section ".initcall4.init", align 4
@tps6507x_pmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps6507x_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps6507x_pmic_cleanup = internal global ptr @tps6507x_pmic_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [44 x i8] c"tps6507x_regulator.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps6507x_regulator.description=TPS6507x voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"tps6507x_regulator.file=drivers/regulator/tps6507x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"tps6507x_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [48 x i8] c"tps6507x_regulator.alias=platform:tps6507x-pmic\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tps6507x-pmic\00", [18 x i8] zeroinitializer }, align 32
@tps6507x_pmic_regs = internal global { [5 x %struct.tps_info], [48 x i8] } { [5 x %struct.tps_info] [%struct.tps_info { ptr @.str.8, i8 64, ptr @VDCDCx_VSEL_table, i8 0 }, %struct.tps_info { ptr @.str.9, i8 64, ptr @VDCDCx_VSEL_table, i8 0 }, %struct.tps_info { ptr @.str.10, i8 64, ptr @VDCDCx_VSEL_table, i8 0 }, %struct.tps_info { ptr @.str.11, i8 16, ptr @LDO1_VSEL_table, i8 0 }, %struct.tps_info { ptr @.str.12, i8 64, ptr @VDCDCx_VSEL_table, i8 0 }], [48 x i8] zeroinitializer }, align 32
@tps6507x_pmic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&tps->io_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@tps6507x_pmic_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps6507x_pmic_set_voltage_sel, ptr null, ptr @tps6507x_pmic_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps6507x_pmic_enable, ptr @tps6507x_pmic_disable, ptr @tps6507x_pmic_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps6507x_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 435, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps6507x_pmic_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps6507x-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps6507x_pmic_probe._entry_ptr = internal global ptr @tps6507x_pmic_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDCDC1\00", [25 x i8] zeroinitializer }, align 32
@VDCDCx_VSEL_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 725000, i32 750000, i32 775000, i32 800000, i32 825000, i32 850000, i32 875000, i32 900000, i32 925000, i32 950000, i32 975000, i32 1000000, i32 1025000, i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000, i32 1375000, i32 1400000, i32 1425000, i32 1450000, i32 1475000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000, i32 2050000, i32 2100000, i32 2150000, i32 2200000, i32 2250000, i32 2300000, i32 2350000, i32 2400000, i32 2450000, i32 2500000, i32 2550000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [64 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDCDC2\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VDCDC3\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@LDO1_VSEL_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1000000, i32 1100000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1600000, i32 1800000, i32 2500000, i32 2750000, i32 2800000, i32 3000000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,defdcdc_default\00", [45 x i8] zeroinitializer }, align 32
@tps6507x_pmic_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 193, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read from reg 0x%x failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps6507x_pmic_reg_read\00", [41 x i8] zeroinitializer }, align 32
@tps6507x_pmic_reg_read._entry_ptr = internal global ptr @tps6507x_pmic_reg_read._entry, section ".printk_index", align 4
@tps6507x_pmic_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 207, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write for reg 0x%x failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tps6507x_pmic_reg_write\00", [40 x i8] zeroinitializer }, align 32
@tps6507x_pmic_reg_write._entry_ptr = internal global ptr @tps6507x_pmic_reg_write._entry, section ".printk_index", align 4
@tps6507x_pmic_set_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.18, ptr @.str.5, i32 147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tps6507x_pmic_set_bits\00", [41 x i8] zeroinitializer }, align 32
@tps6507x_pmic_set_bits._entry_ptr = internal global ptr @tps6507x_pmic_set_bits._entry, section ".printk_index", align 4
@tps6507x_pmic_set_bits._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.18, ptr @.str.5, i32 155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@tps6507x_pmic_set_bits._entry_ptr.20 = internal global ptr @tps6507x_pmic_set_bits._entry.19, section ".printk_index", align 4
@tps6507x_pmic_clear_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.21, ptr @.str.5, i32 170, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps6507x_pmic_clear_bits\00", [39 x i8] zeroinitializer }, align 32
@tps6507x_pmic_clear_bits._entry_ptr = internal global ptr @tps6507x_pmic_clear_bits._entry, section ".printk_index", align 4
@tps6507x_pmic_clear_bits._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.21, ptr @.str.5, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@tps6507x_pmic_clear_bits._entry_ptr.23 = internal global ptr @tps6507x_pmic_clear_bits._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"tps6507x_pmic_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 446, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 448, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"tps6507x_pmic_regs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 87, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 401, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 417, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"tps6507x_pmic_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 351, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 433, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 89, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"VDCDCx_VSEL_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 49, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 94, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 99, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 104, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"LDO1_VSEL_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 68, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 109, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 370, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 193, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 207, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 147, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 155, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 170, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private constant [42 x i8] c"../drivers/regulator/tps6507x-regulator.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 178, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps6507x_pmic_cleanup, ptr @__initcall__kmod_tps6507x_regulator__288_457_tps6507x_pmic_init4, ptr @tps6507x_pmic_cleanup, ptr @tps6507x_pmic_clear_bits._entry, ptr @tps6507x_pmic_clear_bits._entry.22, ptr @tps6507x_pmic_clear_bits._entry_ptr, ptr @tps6507x_pmic_clear_bits._entry_ptr.23, ptr @tps6507x_pmic_probe._entry, ptr @tps6507x_pmic_probe._entry_ptr, ptr @tps6507x_pmic_reg_read._entry, ptr @tps6507x_pmic_reg_read._entry_ptr, ptr @tps6507x_pmic_reg_write._entry, ptr @tps6507x_pmic_reg_write._entry_ptr, ptr @tps6507x_pmic_set_bits._entry, ptr @tps6507x_pmic_set_bits._entry.19, ptr @tps6507x_pmic_set_bits._entry_ptr, ptr @tps6507x_pmic_set_bits._entry_ptr.20, ptr @tps6507x_pmic_driver, ptr @.str, ptr @tps6507x_pmic_regs, ptr @tps6507x_pmic_probe.__key, ptr @.str.1, ptr @.str.2, ptr @tps6507x_pmic_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @VDCDCx_VSEL_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @LDO1_VSEL_table, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VDCDCx_VSEL_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LDO1_VSEL_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_set_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_set_bits._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_clear_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6507x_pmic_clear_bits._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6507x_pmic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps6507x_pmic_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps6507x_pmic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = call ptr @memset(ptr %config, i32 0, i32 24)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init_data.0 = phi ptr [ %10, %if.then ], [ null, %entry.if.end_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1336, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %io_lock = getelementptr inbounds %struct.tps6507x_pmic, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tps6507x_pmic_probe.__key) #5
  %mfd = getelementptr inbounds %struct.tps6507x_pmic, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %mfd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %mfd, align 4
  %tobool9.not = icmp eq ptr %init_data.0, null
  %init_data41 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data42 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %i.0116 = phi i32 [ 0, %do.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %info.0115 = phi ptr [ @tps6507x_pmic_regs, %do.body ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tps6507x_pmic, ptr %call.i, i32 0, i32 2, i32 %i.0116
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %info.0115, ptr %arrayidx, align 4
  br i1 %tobool9.not, label %for.body.if.end17_crit_edge, label %land.lhs.true

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true:                                    ; preds = %for.body
  %driver_data = getelementptr %struct.regulator_init_data, ptr %init_data.0, i32 %i.0116, i32 5
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true.if.end17_crit_edge, label %if.then12

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1, !range !83
  %defdcdc_default16 = getelementptr inbounds %struct.tps_info, ptr %info.0115, i32 0, i32 3
  %17 = ptrtoint ptr %defdcdc_default16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %defdcdc_default16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %land.lhs.true.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %18 = ptrtoint ptr %info.0115 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.0115, align 4
  %arrayidx18 = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx18, align 4
  %of_match = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 2
  %21 = ptrtoint ptr %of_match to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %of_match, align 4
  %regulators_node = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 4
  %22 = ptrtoint ptr %regulators_node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.2, ptr %regulators_node, align 4
  %of_parse_cb = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 5
  %23 = ptrtoint ptr %of_parse_cb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tps6507x_pmic_of_parse_cb, ptr %of_parse_cb, align 4
  %id = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 6
  %24 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.0116, ptr %id, align 4
  %table_len = getelementptr inbounds %struct.tps_info, ptr %info.0115, i32 0, i32 1
  %25 = ptrtoint ptr %table_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %table_len, align 4
  %conv = zext i8 %26 to i32
  %n_voltages = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 8
  %27 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %n_voltages, align 4
  %table = getelementptr inbounds %struct.tps_info, ptr %info.0115, i32 0, i32 2
  %28 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %table, align 4
  %volt_table = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 23
  %30 = ptrtoint ptr %volt_table to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %volt_table, align 4
  %ops = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 10
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tps6507x_pmic_ops, ptr %ops, align 4
  %type = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 12
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type, align 4
  %owner = getelementptr [5 x %struct.regulator_desc], ptr %call.i, i32 0, i32 %i.0116, i32 13
  %33 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %owner, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %config, align 4
  %37 = ptrtoint ptr %init_data41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %init_data.0, ptr %init_data41, align 4
  %38 = ptrtoint ptr %driver_data42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data42, align 4
  %call46 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx18, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %for.inc

do.end51:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef %42) #8
  %43 = ptrtoint ptr %call46 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end17
  %inc = add nuw nsw i32 %i.0116, 1
  %incdec.ptr = getelementptr %struct.tps_info, ptr %info.0115, i32 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %pmic = getelementptr inbounds %struct.tps6507x_dev, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %pmic to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %pmic, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %3, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end51, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %43, %do.end51 ], [ 0, %for.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_of_parse_cb(ptr noundef %np, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.tps6507x_pmic, ptr %1, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #5
  %6 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %prop, align 4, !annotation !84
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2 = icmp ne i32 %8, 0
  %defdcdc_default = getelementptr inbounds %struct.tps_info, ptr %5, i32 0, i32 3
  %frombool = zext i1 %tobool2 to i8
  %9 = ptrtoint ptr %defdcdc_default to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %defdcdc_default, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_set_voltage_sel(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb11
    i32 4, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.tps6507x_pmic, ptr %call, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %defdcdc_default = getelementptr inbounds %struct.tps_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %defdcdc_default to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %defdcdc_default, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i8 17, i8 18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5 = getelementptr %struct.tps6507x_pmic, ptr %call, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %defdcdc_default6 = getelementptr inbounds %struct.tps_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %defdcdc_default6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %defdcdc_default6, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %.33 = select i1 %tobool7.not, i8 19, i8 20
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %reg.2 = phi i8 [ 23, %sw.bb12 ], [ 22, %sw.bb11 ], [ %.33, %sw.bb3 ], [ %., %sw.bb2 ], [ 16, %entry.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ -64, %sw.bb12 ], [ -16, %sw.bb11 ], [ -64, %sw.bb3 ], [ -64, %sw.bb2 ], [ -64, %entry.sw.epilog_crit_edge ]
  %io_lock.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i.i, align 1, !annotation !84
  %mfd.i.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfd.i.i, align 4
  %read_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_dev.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef %11, i8 noundef zeroext %reg.2, i32 noundef 1, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tps6507x_pmic_read.exit.thread.i, label %tps6507x_pmic_read.exit.i

tps6507x_pmic_read.exit.thread.i:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  br label %if.end15

tps6507x_pmic_read.exit.i:                        ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %tps6507x_pmic_read.exit.i.cleanup.sink.split.sink.split_crit_edge, label %tps6507x_pmic_read.exit.i.if.end15_crit_edge

tps6507x_pmic_read.exit.i.if.end15_crit_edge:     ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

tps6507x_pmic_read.exit.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

if.end15:                                         ; preds = %tps6507x_pmic_read.exit.i.if.end15_crit_edge, %tps6507x_pmic_read.exit.thread.i
  %retval.0.i9.i.ph = phi i32 [ %call.i.i, %tps6507x_pmic_read.exit.i.if.end15_crit_edge ], [ %conv.i.i, %tps6507x_pmic_read.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  %and = and i32 %retval.0.i9.i.ph, %mask.0
  %or = or i32 %and, %selector
  %conv16 = trunc i32 %or to i8
  call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv16, ptr %val.addr.i.i, align 1
  %17 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mfd.i.i, align 4
  %write_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_dev.i.i, align 4
  %call.i.i36 = call i32 %20(ptr noundef %18, i8 noundef zeroext %reg.2, i32 noundef 1, ptr noundef nonnull %val.addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i37 = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i37, label %if.end15.cleanup.sink.split.sink.split_crit_edge, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end15.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end15.cleanup.sink.split.sink.split_crit_edge, %tps6507x_pmic_read.exit.i.cleanup.sink.split.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.14, %tps6507x_pmic_read.exit.i.cleanup.sink.split.sink.split_crit_edge ], [ @.str.16, %if.end15.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call.i.i, %tps6507x_pmic_read.exit.i.cleanup.sink.split.sink.split_crit_edge ], [ %call.i.i36, %if.end15.cleanup.sink.split.sink.split_crit_edge ]
  %21 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mfd.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %conv.i38 = zext i8 %reg.2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull %.str.16.sink, i32 noundef %conv.i38) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end15.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i.i36, %if.end15.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_get_voltage_sel(ptr noundef %dev) #2 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb11
    i32 4, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.tps6507x_pmic, ptr %call, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %defdcdc_default = getelementptr inbounds %struct.tps_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %defdcdc_default to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %defdcdc_default, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i8 17, i8 18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5 = getelementptr %struct.tps6507x_pmic, ptr %call, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %defdcdc_default6 = getelementptr inbounds %struct.tps_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %defdcdc_default6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %defdcdc_default6, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %.28 = select i1 %tobool7.not, i8 19, i8 20
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb11, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %reg.2 = phi i8 [ 23, %sw.bb12 ], [ 22, %sw.bb11 ], [ %.28, %sw.bb3 ], [ %., %sw.bb2 ], [ 16, %entry.sw.epilog_crit_edge ]
  %mask.0 = phi i32 [ 63, %sw.bb12 ], [ 15, %sw.bb11 ], [ 63, %sw.bb3 ], [ 63, %sw.bb2 ], [ 63, %entry.sw.epilog_crit_edge ]
  %io_lock.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i.i, align 1, !annotation !84
  %mfd.i.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfd.i.i, align 4
  %read_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_dev.i.i, align 4
  %call.i.i = call i32 %13(ptr noundef %11, i8 noundef zeroext %reg.2, i32 noundef 1, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tps6507x_pmic_read.exit.thread.i, label %tps6507x_pmic_read.exit.i

tps6507x_pmic_read.exit.thread.i:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  br label %if.end15

tps6507x_pmic_read.exit.i:                        ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %tps6507x_pmic_reg_read.exit, label %tps6507x_pmic_read.exit.i.if.end15_crit_edge

tps6507x_pmic_read.exit.i.if.end15_crit_edge:     ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

tps6507x_pmic_reg_read.exit:                      ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfd.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %conv.i = zext i8 %reg.2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef %conv.i) #8
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  br label %cleanup

if.end15:                                         ; preds = %tps6507x_pmic_read.exit.i.if.end15_crit_edge, %tps6507x_pmic_read.exit.thread.i
  %retval.0.i9.i.ph = phi i32 [ %call.i.i, %tps6507x_pmic_read.exit.i.if.end15_crit_edge ], [ %conv.i.i, %tps6507x_pmic_read.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  %and = and i32 %retval.0.i9.i.ph, %mask.0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %tps6507x_pmic_reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %tps6507x_pmic_reg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_enable(ptr noundef %dev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %0 = icmp ugt i32 %call1, 4
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sub nuw nsw i32 4, %call1
  %shl = shl nuw nsw i32 1, %conv
  %io_lock.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i.i, align 1, !annotation !84
  %mfd.i.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd.i.i, align 4
  %read_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_dev.i.i, align 4
  %call.i.i = call i32 %5(ptr noundef %3, i8 noundef zeroext 13, i32 noundef 1, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tps6507x_pmic_read.exit.thread.i, label %tps6507x_pmic_read.exit.i

tps6507x_pmic_read.exit.thread.i:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  br label %if.end.i

tps6507x_pmic_read.exit.i:                        ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge, label %tps6507x_pmic_read.exit.i.if.end.i_crit_edge

tps6507x_pmic_read.exit.i.if.end.i_crit_edge:     ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge: ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end.i:                                         ; preds = %tps6507x_pmic_read.exit.i.if.end.i_crit_edge, %tps6507x_pmic_read.exit.thread.i
  %retval.0.i5.i = phi i32 [ %conv.i.i, %tps6507x_pmic_read.exit.thread.i ], [ %call.i.i, %tps6507x_pmic_read.exit.i.if.end.i_crit_edge ]
  %conv2.i11 = or i32 %retval.0.i5.i, %shl
  %conv2.i = trunc i32 %conv2.i11 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %8 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.i, ptr %val.addr.i.i, align 1
  %9 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mfd.i.i, align 4
  %write_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %write_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_dev.i.i, align 4
  %call.i2.i = call i32 %12(ptr noundef %10, i8 noundef zeroext 13, i32 noundef 1, ptr noundef nonnull %val.addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i, label %if.end.i.tps6507x_pmic_set_bits.exit_crit_edge, label %if.end.i.out.sink.split.i_crit_edge

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end.i.tps6507x_pmic_set_bits.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6507x_pmic_set_bits.exit

out.sink.split.i:                                 ; preds = %if.end.i.out.sink.split.i_crit_edge, %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.14, %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge ], [ @.str.16, %if.end.i.out.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ %call.i.i, %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge ], [ %call.i2.i, %if.end.i.out.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mfd.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.16.sink.i, i32 noundef 13) #8
  br label %tps6507x_pmic_set_bits.exit

tps6507x_pmic_set_bits.exit:                      ; preds = %out.sink.split.i, %if.end.i.tps6507x_pmic_set_bits.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.end.i.tps6507x_pmic_set_bits.exit_crit_edge ], [ %err.0.ph.i, %out.sink.split.i ]
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %tps6507x_pmic_set_bits.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %tps6507x_pmic_set_bits.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_disable(ptr noundef %dev) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %0 = icmp ugt i32 %call1, 4
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sub nuw nsw i32 4, %call1
  %shl = shl nuw nsw i32 1, %conv
  %io_lock.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i.i, align 1, !annotation !84
  %mfd.i.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd.i.i, align 4
  %read_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_dev.i.i, align 4
  %call.i.i = call i32 %5(ptr noundef %3, i8 noundef zeroext 13, i32 noundef 1, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tps6507x_pmic_read.exit.thread.i, label %tps6507x_pmic_read.exit.i

tps6507x_pmic_read.exit.thread.i:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  br label %if.end.i

tps6507x_pmic_read.exit.i:                        ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge, label %tps6507x_pmic_read.exit.i.if.end.i_crit_edge

tps6507x_pmic_read.exit.i.if.end.i_crit_edge:     ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge: ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end.i:                                         ; preds = %tps6507x_pmic_read.exit.i.if.end.i_crit_edge, %tps6507x_pmic_read.exit.thread.i
  %retval.0.i5.i = phi i32 [ %conv.i.i, %tps6507x_pmic_read.exit.thread.i ], [ %call.i.i, %tps6507x_pmic_read.exit.i.if.end.i_crit_edge ]
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %retval.0.i5.i, %neg.i
  %conv2.i = trunc i32 %and.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %8 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.i, ptr %val.addr.i.i, align 1
  %9 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mfd.i.i, align 4
  %write_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %write_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_dev.i.i, align 4
  %call.i2.i = call i32 %12(ptr noundef %10, i8 noundef zeroext 13, i32 noundef 1, ptr noundef nonnull %val.addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i, label %if.end.i.tps6507x_pmic_clear_bits.exit_crit_edge, label %if.end.i.out.sink.split.i_crit_edge

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split.i

if.end.i.tps6507x_pmic_clear_bits.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6507x_pmic_clear_bits.exit

out.sink.split.i:                                 ; preds = %if.end.i.out.sink.split.i_crit_edge, %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge
  %.str.16.sink.i = phi ptr [ @.str.14, %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge ], [ @.str.16, %if.end.i.out.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ %call.i.i, %tps6507x_pmic_read.exit.i.out.sink.split.i_crit_edge ], [ %call.i2.i, %if.end.i.out.sink.split.i_crit_edge ]
  %13 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mfd.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.16.sink.i, i32 noundef 13) #8
  br label %tps6507x_pmic_clear_bits.exit

tps6507x_pmic_clear_bits.exit:                    ; preds = %out.sink.split.i, %if.end.i.tps6507x_pmic_clear_bits.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.end.i.tps6507x_pmic_clear_bits.exit_crit_edge ], [ %err.0.ph.i, %out.sink.split.i ]
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %tps6507x_pmic_clear_bits.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %tps6507x_pmic_clear_bits.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6507x_pmic_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %0 = icmp ugt i32 %call1, 4
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_lock.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %io_lock.i, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #5
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i.i, align 1, !annotation !84
  %mfd.i.i = getelementptr inbounds %struct.tps6507x_pmic, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd.i.i, align 4
  %read_dev.i.i = getelementptr inbounds %struct.tps6507x_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_dev.i.i, align 4
  %call.i.i = call i32 %5(ptr noundef %3, i8 noundef zeroext 13, i32 noundef 1, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tps6507x_pmic_read.exit.thread.i, label %tps6507x_pmic_read.exit.i

tps6507x_pmic_read.exit.thread.i:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  br label %if.else

tps6507x_pmic_read.exit.i:                        ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %tps6507x_pmic_reg_read.exit, label %tps6507x_pmic_read.exit.i.if.else_crit_edge

tps6507x_pmic_read.exit.i.if.else_crit_edge:      ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

tps6507x_pmic_reg_read.exit:                      ; preds = %tps6507x_pmic_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %mfd.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mfd.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef 13) #8
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  br label %cleanup

if.else:                                          ; preds = %tps6507x_pmic_read.exit.i.if.else_crit_edge, %tps6507x_pmic_read.exit.thread.i
  %retval.0.i9.i.ph = phi i32 [ %call.i.i, %tps6507x_pmic_read.exit.i.if.else_crit_edge ], [ %conv.i.i, %tps6507x_pmic_read.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %io_lock.i) #5
  %conv = sub nuw nsw i32 4, %call1
  %12 = lshr i32 %retval.0.i9.i.ph, %conv
  %13 = and i32 %12, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %tps6507x_pmic_reg_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %tps6507x_pmic_reg_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_tps6507x_regulator__288_457_tps6507x_pmic_init4, !1, !"__initcall__kmod_tps6507x_regulator__288_457_tps6507x_pmic_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_tps6507x_pmic_cleanup, !3, !"__exitcall_tps6507x_pmic_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 463, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 465, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 466, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 467, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 468, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 448, i32 11}
!15 = !{ptr @tps6507x_pmic_driver, !16, !"tps6507x_pmic_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 446, i32 31}
!17 = !{ptr @tps6507x_pmic_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 401, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 417, i32 34}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 433, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tps6507x_pmic_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @tps6507x_pmic_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 89, i32 11}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 94, i32 11}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 99, i32 11}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 104, i32 11}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 109, i32 11}
!40 = !{ptr @tps6507x_pmic_regs, !41, !"tps6507x_pmic_regs", i1 false, i1 false}
!41 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 87, i32 24}
!42 = !{ptr @VDCDCx_VSEL_table, !43, !"VDCDCx_VSEL_table", i1 false, i1 false}
!43 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 49, i32 27}
!44 = !{ptr @LDO1_VSEL_table, !45, !"LDO1_VSEL_table", i1 false, i1 false}
!45 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 68, i32 27}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 370, i32 33}
!48 = !{ptr @tps6507x_pmic_ops, !49, !"tps6507x_pmic_ops", i1 false, i1 false}
!49 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 351, i32 35}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 193, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tps6507x_pmic_reg_read._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @tps6507x_pmic_reg_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 207, i32 3}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tps6507x_pmic_reg_write._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tps6507x_pmic_reg_write._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 147, i32 3}
!62 = !{ptr @tps6507x_pmic_set_bits._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tps6507x_pmic_set_bits._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @tps6507x_pmic_set_bits._entry.19, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 155, i32 3}
!66 = !{ptr @tps6507x_pmic_set_bits._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 170, i32 3}
!69 = !{ptr @tps6507x_pmic_clear_bits._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @tps6507x_pmic_clear_bits._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @tps6507x_pmic_clear_bits._entry.22, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/regulator/tps6507x-regulator.c", i32 178, i32 3}
!73 = !{ptr @tps6507x_pmic_clear_bits._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{!"auto-init"}
