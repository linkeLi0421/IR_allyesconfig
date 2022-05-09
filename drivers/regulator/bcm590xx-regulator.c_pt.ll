; ModuleID = '/llk/IR_all_yes/drivers/regulator/bcm590xx-regulator.c_pt.bc'
source_filename = "../drivers/regulator/bcm590xx-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm590xx_info = type { ptr, ptr, i8, ptr, i8, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.bcm590xx_reg = type { ptr, ptr }
%struct.bcm590xx = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_bcm590xx_regulator__288_360_bcm590xx_regulator_driver_init6 = internal global ptr @bcm590xx_regulator_driver_init, section ".initcall6.init", align 4
@bcm590xx_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm590xx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm590xx_regulator_driver_exit = internal global ptr @bcm590xx_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"bcm590xx_regulator.author=Matt Porter <mporter@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"bcm590xx_regulator.description=BCM590xx voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"bcm590xx_regulator.file=drivers/regulator/bcm590xx-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"bcm590xx_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [49 x i8] c"bcm590xx_regulator.alias=platform:bcm590xx-vregs\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm590xx-vregs\00", [17 x i8] zeroinitializer }, align 32
@bcm590xx_regs = internal constant { [27 x %struct.bcm590xx_info], [184 x i8] } { [27 x %struct.bcm590xx_info] [%struct.bcm590xx_info { ptr @.str.7, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.8, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.9, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.10, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.11, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.12, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.13, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.14, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.15, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.16, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.17, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.18, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.19, ptr null, i8 8, ptr @ldo_c_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.20, ptr null, i8 64, ptr null, i8 3, ptr @dcdc_csr_ranges }, %struct.bcm590xx_info { ptr @.str.21, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.22, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.23, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.24, ptr null, i8 64, ptr null, i8 3, ptr @dcdc_sdsr1_ranges }, %struct.bcm590xx_info { ptr @.str.25, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.26, ptr null, i8 64, ptr null, i8 4, ptr @dcdc_iosr1_ranges }, %struct.bcm590xx_info { ptr @.str.27, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.28, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.29, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.30, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.31, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.32, ptr null, i8 8, ptr @ldo_a_table, i8 0, ptr null }, %struct.bcm590xx_info { ptr @.str.33, ptr null, i8 1, ptr @ldo_vbus, i8 0, ptr null }], [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@bcm590xx_ops_ldo = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bcm590xx_ops_vbus = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bcm590xx_ops_dcdc = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bcm590xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm590xx_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/bcm590xx-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm590xx_probe._entry_ptr = internal global ptr @bcm590xx_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rfldo\00", [26 x i8] zeroinitializer }, align 32
@ldo_a_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1800000, i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"camldo1\00", [24 x i8] zeroinitializer }, align 32
@ldo_c_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3100000, i32 1800000, i32 2500000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"camldo2\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"simldo1\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"simldo2\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdldo\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdxldo\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmcldo1\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmcldo2\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audldo\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"micldo\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbldo\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vibldo\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csr\00", [28 x i8] zeroinitializer }, align 32
@dcdc_csr_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 860000, i32 2, i32 50, i32 10000 }, %struct.linear_range { i32 1360000, i32 51, i32 55, i32 20000 }, %struct.linear_range { i32 900000, i32 56, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iosr1\00", [26 x i8] zeroinitializer }, align 32
@dcdc_iosr1_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range { i32 860000, i32 2, i32 51, i32 10000 }, %struct.linear_range { i32 1500000, i32 52, i32 52, i32 0 }, %struct.linear_range { i32 1800000, i32 53, i32 53, i32 0 }, %struct.linear_range { i32 900000, i32 54, i32 63, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iosr2\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msr\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdsr1\00", [26 x i8] zeroinitializer }, align 32
@dcdc_sdsr1_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 860000, i32 2, i32 50, i32 10000 }, %struct.linear_range { i32 1340000, i32 51, i32 51, i32 0 }, %struct.linear_range { i32 900000, i32 52, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdsr2\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vsr\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpldo1\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpldo2\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpldo3\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpldo4\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpldo5\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpldo6\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@ldo_vbus = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 5000000], [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19]
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"bcm590xx_regulator_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 354, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 356, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"bcm590xx_regs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 164, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 305, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"bcm590xx_ops_ldo\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 249, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"bcm590xx_ops_vbus\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 269, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"bcm590xx_ops_dcdc\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 259, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 344, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 165, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"ldo_a_table\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 103, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 166, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"ldo_c_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 109, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 167, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 168, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 169, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 170, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 171, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 172, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 173, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 174, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 175, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 176, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 177, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 178, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"dcdc_csr_ranges\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 119, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 179, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"dcdc_iosr1_ranges\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 126, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 180, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 181, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 182, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"dcdc_sdsr1_ranges\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 134, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 183, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 184, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 185, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 186, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 187, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 188, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 189, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 190, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 191, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"ldo_vbus\00", align 1
@___asan_gen_.170 = private constant [42 x i8] c"../drivers/regulator/bcm590xx-regulator.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 114, i32 27 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bcm590xx_regulator_driver_exit, ptr @__initcall__kmod_bcm590xx_regulator__288_360_bcm590xx_regulator_driver_init6, ptr @bcm590xx_probe._entry, ptr @bcm590xx_probe._entry_ptr, ptr @bcm590xx_regulator_driver_exit, ptr @bcm590xx_regulator_driver, ptr @.str, ptr @bcm590xx_regs, ptr @.str.1, ptr @bcm590xx_ops_ldo, ptr @bcm590xx_ops_vbus, ptr @bcm590xx_ops_dcdc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ldo_a_table, ptr @.str.8, ptr @ldo_c_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dcdc_csr_ranges, ptr @.str.21, ptr @dcdc_iosr1_ranges, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @dcdc_sdsr1_ranges, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @ldo_vbus], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm590xx_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm590xx_regs to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm590xx_ops_ldo to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm590xx_ops_vbus to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm590xx_ops_dcdc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm590xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_a_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_c_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc_csr_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc_iosr1_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcdc_sdsr1_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo_vbus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm590xx_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm590xx_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm590xx_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm590xx_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm590xx_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mfd = getelementptr inbounds %struct.bcm590xx_reg, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %mfd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %mfd, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6588, i32 noundef 3520) #5
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %regmap_pri = getelementptr inbounds %struct.bcm590xx, ptr %3, i32 0, i32 3
  %regmap93 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %regmap_sec = getelementptr inbounds %struct.bcm590xx, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0218 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %info.0217 = phi ptr [ @bcm590xx_regs, %for.cond.preheader ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %info.0217 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.0217, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %arrayidx = getelementptr %struct.regulator_desc, ptr %11, i32 %i.0218
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %arrayidx, align 4
  %13 = load ptr, ptr %info.0217, align 4
  %14 = load ptr, ptr %call.i, align 4
  %of_match = getelementptr %struct.regulator_desc, ptr %14, i32 %i.0218, i32 2
  %15 = ptrtoint ptr %of_match to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %of_match, align 4
  %16 = load ptr, ptr %call.i, align 4
  %regulators_node = getelementptr %struct.regulator_desc, ptr %16, i32 %i.0218, i32 4
  %17 = ptrtoint ptr %regulators_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.1, ptr %regulators_node, align 4
  %vin_name = getelementptr inbounds %struct.bcm590xx_info, ptr %info.0217, i32 0, i32 1
  %18 = ptrtoint ptr %vin_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vin_name, align 4
  %20 = load ptr, ptr %call.i, align 4
  %supply_name = getelementptr %struct.regulator_desc, ptr %20, i32 %i.0218, i32 1
  %21 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %supply_name, align 4
  %22 = load ptr, ptr %call.i, align 4
  %id = getelementptr %struct.regulator_desc, ptr %22, i32 %i.0218, i32 6
  %23 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %i.0218, ptr %id, align 4
  %volt_table = getelementptr inbounds %struct.bcm590xx_info, ptr %info.0217, i32 0, i32 3
  %24 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %volt_table, align 4
  %26 = load ptr, ptr %call.i, align 4
  %volt_table22 = getelementptr %struct.regulator_desc, ptr %26, i32 %i.0218, i32 23
  %27 = ptrtoint ptr %volt_table22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %volt_table22, align 4
  %n_voltages = getelementptr inbounds %struct.bcm590xx_info, ptr %info.0217, i32 0, i32 2
  %28 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %n_voltages, align 4
  %conv = zext i8 %29 to i32
  %30 = load ptr, ptr %call.i, align 4
  %n_voltages25 = getelementptr %struct.regulator_desc, ptr %30, i32 %i.0218, i32 8
  %31 = ptrtoint ptr %n_voltages25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %n_voltages25, align 4
  %linear_ranges = getelementptr inbounds %struct.bcm590xx_info, ptr %info.0217, i32 0, i32 5
  %32 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %linear_ranges, align 4
  %34 = load ptr, ptr %call.i, align 4
  %linear_ranges28 = getelementptr %struct.regulator_desc, ptr %34, i32 %i.0218, i32 20
  %35 = ptrtoint ptr %linear_ranges28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %linear_ranges28, align 4
  %n_linear_ranges = getelementptr inbounds %struct.bcm590xx_info, ptr %info.0217, i32 0, i32 4
  %36 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %n_linear_ranges, align 4
  %conv29 = zext i8 %37 to i32
  %38 = load ptr, ptr %call.i, align 4
  %n_linear_ranges32 = getelementptr %struct.regulator_desc, ptr %38, i32 %i.0218, i32 22
  %39 = ptrtoint ptr %n_linear_ranges32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv29, ptr %n_linear_ranges32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.0218)
  %cmp33 = icmp ult i32 %i.0218, 13
  br i1 %cmp33, label %if.then.i.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %40 = add nsw i32 %i.0218, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %41 = icmp ult i32 %40, 6
  br i1 %41, label %if.else.i.thread, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %i.0218)
  %cmp44 = icmp eq i32 %i.0218, 26
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  br i1 %cmp44, label %if.else6.i.thread, label %if.else.i

if.else6.i.thread:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ops49 = getelementptr %struct.regulator_desc, ptr %43, i32 26, i32 10
  %44 = ptrtoint ptr %ops49 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bcm590xx_ops_vbus, ptr %ops49, align 4
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %enable_mask = getelementptr %struct.regulator_desc, ptr %46, i32 26, i32 35
  %47 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %enable_mask, align 4
  br label %bcm590xx_get_enable_register.exit

if.then.i.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %ops.c = getelementptr %struct.regulator_desc, ptr %49, i32 %i.0218, i32 10
  %50 = ptrtoint ptr %ops.c to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @bcm590xx_ops_ldo, ptr %ops.c, align 4
  %51 = load ptr, ptr %call.i, align 4
  %vsel_mask.c = getelementptr %struct.regulator_desc, ptr %51, i32 %i.0218, i32 28
  %52 = ptrtoint ptr %vsel_mask.c to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 56, ptr %vsel_mask.c, align 4
  %add.i = add nuw nsw i32 %i.0218, 150
  %53 = load ptr, ptr %call.i, align 4
  %vsel_reg.c214 = getelementptr %struct.regulator_desc, ptr %53, i32 %i.0218, i32 27
  %54 = ptrtoint ptr %vsel_reg.c214 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %vsel_reg.c214, align 4
  %55 = load ptr, ptr %call.i, align 4
  %enable_is_inverted.c215 = getelementptr %struct.regulator_desc, ptr %55, i32 %i.0218, i32 38
  %56 = ptrtoint ptr %enable_is_inverted.c215 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %enable_is_inverted.c215, align 4
  %57 = load ptr, ptr %call.i, align 4
  %enable_mask72.c216 = getelementptr %struct.regulator_desc, ptr %57, i32 %i.0218, i32 35
  %58 = ptrtoint ptr %enable_mask72.c216 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 128, ptr %enable_mask72.c216, align 4
  %mul.i = shl nuw nsw i32 %i.0218, 1
  %add.i190 = add nuw nsw i32 %mul.i, 96
  %.pre = add nuw nsw i32 %i.0218, -20
  br label %bcm590xx_get_enable_register.exit

if.else.i.thread:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %ops.c208 = getelementptr %struct.regulator_desc, ptr %60, i32 %i.0218, i32 10
  %61 = ptrtoint ptr %ops.c208 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @bcm590xx_ops_ldo, ptr %ops.c208, align 4
  %62 = load ptr, ptr %call.i, align 4
  %vsel_mask.c209 = getelementptr %struct.regulator_desc, ptr %62, i32 %i.0218, i32 28
  %63 = ptrtoint ptr %vsel_mask.c209 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 56, ptr %vsel_mask.c209, align 4
  %add4.i.c224 = add nuw nsw i32 %i.0218, 26
  %64 = load ptr, ptr %call.i, align 4
  %vsel_reg.c211.c225 = getelementptr %struct.regulator_desc, ptr %64, i32 %i.0218, i32 27
  %65 = ptrtoint ptr %vsel_reg.c211.c225 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add4.i.c224, ptr %vsel_reg.c211.c225, align 4
  %66 = load ptr, ptr %call.i, align 4
  %enable_is_inverted.c212.c226 = getelementptr %struct.regulator_desc, ptr %66, i32 %i.0218, i32 38
  %67 = ptrtoint ptr %enable_is_inverted.c212.c226 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %enable_is_inverted.c212.c226, align 4
  %68 = load ptr, ptr %call.i, align 4
  %enable_mask72.c213.c227 = getelementptr %struct.regulator_desc, ptr %68, i32 %i.0218, i32 35
  %69 = ptrtoint ptr %enable_mask72.c213.c227 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 128, ptr %enable_mask72.c213.c227, align 4
  %mul4.i = shl nuw nsw i32 %i.0218, 1
  %add5.i = add nuw nsw i32 %mul4.i, 87
  br label %bcm590xx_get_enable_register.exit

if.else.i:                                        ; preds = %if.else
  %ops53 = getelementptr %struct.regulator_desc, ptr %43, i32 %i.0218, i32 10
  %70 = ptrtoint ptr %ops53 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @bcm590xx_ops_dcdc, ptr %ops53, align 4
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %vsel_mask56 = getelementptr %struct.regulator_desc, ptr %72, i32 %i.0218, i32 28
  %73 = ptrtoint ptr %vsel_mask56 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 63, ptr %vsel_mask56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %i.0218)
  %cmp1.i = icmp ugt i32 %i.0218, 19
  %add4.i.c = add nuw nsw i32 %i.0218, 26
  %74 = mul nuw nsw i32 %i.0218, 3
  %add6.i = add nuw nsw i32 %74, 153
  %add4.i.c.sink = select i1 %cmp1.i, i32 %add4.i.c, i32 %add6.i
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %vsel_reg.c211.c = getelementptr %struct.regulator_desc, ptr %76, i32 %i.0218, i32 27
  %77 = ptrtoint ptr %vsel_reg.c211.c to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add4.i.c.sink, ptr %vsel_reg.c211.c, align 4
  %78 = load ptr, ptr %call.i, align 4
  %enable_is_inverted.c212.c = getelementptr %struct.regulator_desc, ptr %78, i32 %i.0218, i32 38
  %79 = ptrtoint ptr %enable_is_inverted.c212.c to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %enable_is_inverted.c212.c, align 4
  %80 = load ptr, ptr %call.i, align 4
  %enable_mask72.c213.c = getelementptr %struct.regulator_desc, ptr %80, i32 %i.0218, i32 35
  %81 = ptrtoint ptr %enable_mask72.c213.c to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 128, ptr %enable_mask72.c213.c, align 4
  %82 = zext i32 %i.0218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0218, label %if.else.i.bcm590xx_get_enable_register.exit_crit_edge [
    i32 13, label %sw.bb.i
    i32 14, label %sw.bb7.i
    i32 15, label %sw.bb8.i
    i32 16, label %sw.bb9.i
    i32 17, label %sw.bb10.i
    i32 18, label %sw.bb11.i
    i32 19, label %sw.bb12.i
  ]

if.else.i.bcm590xx_get_enable_register.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb7.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb8.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb9.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb10.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb11.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

sw.bb12.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcm590xx_get_enable_register.exit

bcm590xx_get_enable_register.exit:                ; preds = %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb.i, %if.else.i.bcm590xx_get_enable_register.exit_crit_edge, %if.else.i.thread, %if.then.i.critedge, %if.else6.i.thread
  %.pre-phi = phi i32 [ %.pre, %if.then.i.critedge ], [ %40, %if.else.i.thread ], [ %40, %if.else.i.bcm590xx_get_enable_register.exit_crit_edge ], [ -7, %sw.bb.i ], [ -6, %sw.bb7.i ], [ -5, %sw.bb8.i ], [ -4, %sw.bb9.i ], [ -3, %sw.bb10.i ], [ -2, %sw.bb11.i ], [ -1, %sw.bb12.i ], [ 6, %if.else6.i.thread ]
  %cmp59196202 = phi i1 [ false, %if.then.i.critedge ], [ false, %if.else.i.thread ], [ false, %if.else.i.bcm590xx_get_enable_register.exit_crit_edge ], [ false, %sw.bb.i ], [ false, %sw.bb7.i ], [ false, %sw.bb8.i ], [ false, %sw.bb9.i ], [ false, %sw.bb10.i ], [ false, %sw.bb11.i ], [ false, %sw.bb12.i ], [ true, %if.else6.i.thread ]
  %reg.0.i = phi i32 [ %add.i190, %if.then.i.critedge ], [ %add5.i, %if.else.i.thread ], [ 0, %if.else.i.bcm590xx_get_enable_register.exit_crit_edge ], [ 126, %sw.bb.i ], [ 122, %sw.bb7.i ], [ 124, %sw.bb8.i ], [ 138, %sw.bb9.i ], [ 130, %sw.bb10.i ], [ 134, %sw.bb11.i ], [ 142, %sw.bb12.i ], [ 64, %if.else6.i.thread ]
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %enable_reg = getelementptr %struct.regulator_desc, ptr %84, i32 %i.0218, i32 34
  %85 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %reg.0.i, ptr %enable_reg, align 4
  %86 = load ptr, ptr %call.i, align 4
  %type = getelementptr %struct.regulator_desc, ptr %86, i32 %i.0218, i32 12
  %87 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %type, align 4
  %88 = load ptr, ptr %call.i, align 4
  %owner = getelementptr %struct.regulator_desc, ptr %88, i32 %i.0218, i32 13
  %89 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %owner, align 4
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 4
  %92 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %config, align 4
  %93 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pre-phi)
  %94 = icmp ult i32 %.pre-phi, 6
  %brmerge = or i1 %94, %cmp59196202
  %spec.select = select i1 %brmerge, ptr %regmap_sec, ptr %regmap_pri
  %95 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %95)
  %storemerge = load ptr, ptr %spec.select, align 4
  %96 = ptrtoint ptr %regmap93 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %storemerge, ptr %regmap93, align 4
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  %arrayidx97 = getelementptr %struct.regulator_desc, ptr %98, i32 %i.0218
  %call98 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx97, ptr noundef nonnull %config) #5
  %cmp.i194 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %do.end, label %for.inc

do.end:                                           ; preds = %bcm590xx_get_enable_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %3, align 4
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.2, ptr noundef %102) #8
  %103 = ptrtoint ptr %call98 to i32
  br label %cleanup

for.inc:                                          ; preds = %bcm590xx_get_enable_register.exit
  %inc = add nuw nsw i32 %i.0218, 1
  %incdec.ptr = getelementptr %struct.bcm590xx_info, ptr %info.0217, i32 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %103, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
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
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

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
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_bcm590xx_regulator__288_360_bcm590xx_regulator_driver_init6, !1, !"__initcall__kmod_bcm590xx_regulator__288_360_bcm590xx_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 360, i32 1}
!2 = !{ptr @__exitcall_bcm590xx_regulator_driver_exit, !1, !"__exitcall_bcm590xx_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 362, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 363, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 364, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 365, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 356, i32 11}
!14 = !{ptr @bcm590xx_regulator_driver, !15, !"bcm590xx_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 354, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 305, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 344, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcm590xx_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm590xx_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 165, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 166, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 167, i32 2}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 168, i32 2}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 169, i32 2}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 170, i32 2}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 171, i32 2}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 172, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 173, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 174, i32 2}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 175, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 176, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 177, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 178, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 179, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 180, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 181, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 182, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 183, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 184, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 185, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 186, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 187, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 188, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 189, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 190, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 191, i32 2}
!80 = !{ptr @bcm590xx_regs, !81, !"bcm590xx_regs", i1 false, i1 false}
!81 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 164, i32 29}
!82 = !{ptr @ldo_a_table, !83, !"ldo_a_table", i1 false, i1 false}
!83 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 103, i32 27}
!84 = !{ptr @ldo_c_table, !85, !"ldo_c_table", i1 false, i1 false}
!85 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 109, i32 27}
!86 = !{ptr @dcdc_csr_ranges, !87, !"dcdc_csr_ranges", i1 false, i1 false}
!87 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 119, i32 34}
!88 = !{ptr @dcdc_iosr1_ranges, !89, !"dcdc_iosr1_ranges", i1 false, i1 false}
!89 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 126, i32 34}
!90 = !{ptr @dcdc_sdsr1_ranges, !91, !"dcdc_sdsr1_ranges", i1 false, i1 false}
!91 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 134, i32 34}
!92 = !{ptr @ldo_vbus, !93, !"ldo_vbus", i1 false, i1 false}
!93 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 114, i32 27}
!94 = !{ptr @bcm590xx_ops_ldo, !95, !"bcm590xx_ops_ldo", i1 false, i1 false}
!95 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 249, i32 35}
!96 = !{ptr @bcm590xx_ops_vbus, !97, !"bcm590xx_ops_vbus", i1 false, i1 false}
!97 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 269, i32 35}
!98 = !{ptr @bcm590xx_ops_dcdc, !99, !"bcm590xx_ops_dcdc", i1 false, i1 false}
!99 = !{!"../drivers/regulator/bcm590xx-regulator.c", i32 259, i32 35}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
