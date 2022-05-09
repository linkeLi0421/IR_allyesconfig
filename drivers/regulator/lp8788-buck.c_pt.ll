; ModuleID = '/llk/IR_all_yes/drivers/regulator/lp8788-buck.c_pt.bc'
source_filename = "../drivers/regulator/lp8788-buck.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lp8788_buck = type { ptr, ptr, ptr }
%struct.lp8788_buck1_dvs = type { i32, i32 }
%struct.lp8788_buck2_dvs = type { [2 x i32], i32 }

@__initcall__kmod_lp8788_buck__288_541_lp8788_buck_init4 = internal global ptr @lp8788_buck_init, section ".initcall4.init", align 4
@lp8788_buck_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_buck_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_buck_exit = internal global ptr @lp8788_buck_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [46 x i8] c"lp8788_buck.description=TI LP8788 BUCK Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"lp8788_buck.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"lp8788_buck.file=drivers/regulator/lp8788-buck\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"lp8788_buck.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [39 x i8] c"lp8788_buck.alias=platform:lp8788-buck\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp8788-buck\00", [20 x i8] zeroinitializer }, align 32
@lp8788_buck_desc = internal constant { [4 x %struct.regulator_desc], [240 x i8] } { [4 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 26, i32 0, ptr @lp8788_buck12_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 26, i32 0, ptr @lp8788_buck12_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 26, i32 0, ptr @lp8788_buck34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 38, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 26, i32 0, ptr @lp8788_buck34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @buck_volt_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 39, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [240 x i8] zeroinitializer }, align 32
@lp8788_buck_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 520, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BUCK%d regulator register err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lp8788_buck_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/regulator/lp8788-buck.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_buck_probe._entry_ptr = internal global ptr @lp8788_buck_probe._entry, section ".printk_index", align 4
@__const.lp8788_init_dvs.default_dvs_mode = private unnamed_addr constant [2 x i8] c"\04@", align 1
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LP8788_B1_DVS\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LP8788_B2_DVS1\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LP8788_B2_DVS2\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@lp8788_buck12_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @lp8788_buck12_set_voltage_sel, ptr null, ptr @lp8788_buck12_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp8788_buck_set_mode, ptr @lp8788_buck_get_mode, ptr null, ptr @lp8788_buck_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@buck_volt_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 800000, i32 1, i32 25, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@lp8788_buck34_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp8788_buck_set_mode, ptr @lp8788_buck_get_mode, ptr null, ptr @lp8788_buck_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@switch.table.lp8788_buck12_set_voltage_sel = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 0, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.lp8788_buck12_set_voltage_sel.13 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 0, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"lp8788_buck_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 530, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 533, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"lp8788_buck_desc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 367, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 519, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 427, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 428, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 428, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 369, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"lp8788_buck12_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 341, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"buck_volt_ranges\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 95, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 381, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 393, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"lp8788_buck34_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 354, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [35 x i8] c"../drivers/regulator/lp8788-buck.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 407, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [43 x i8] c"switch.table.lp8788_buck12_set_voltage_sel\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [46 x i8] c"switch.table.lp8788_buck12_set_voltage_sel.13\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lp8788_buck_exit, ptr @__initcall__kmod_lp8788_buck__288_541_lp8788_buck_init4, ptr @lp8788_buck_exit, ptr @lp8788_buck_probe._entry, ptr @lp8788_buck_probe._entry_ptr, ptr @lp8788_buck_driver, ptr @.str, ptr @lp8788_buck_desc, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @lp8788_buck12_ops, ptr @buck_volt_ranges, ptr @.str.10, ptr @.str.11, ptr @lp8788_buck34_ops, ptr @.str.12, ptr @switch.table.lp8788_buck12_set_voltage_sel, ptr @switch.table.lp8788_buck12_set_voltage_sel.13], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_buck_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_buck_desc to i32), i32 976, i32 1216, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_buck_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_buck12_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck_volt_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_buck34_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp8788_buck12_set_voltage_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp8788_buck12_set_voltage_sel.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp8788_buck_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_buck_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp8788_buck_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca [2 x i8], align 2
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp sgt i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %call.i, align 4
  %pdata1.i = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %val.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp ugt i32 %5, 1
  br i1 %cmp.i, label %lp8788_init_dvs.exit.thread, label %if.end.i

lp8788_init_dvs.exit.thread:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %if.end10

if.end.i:                                         ; preds = %if.end5
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.lp8788_init_dvs.exit_crit_edge, label %if.end3.i

if.end.i.lp8788_init_dvs.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

if.end3.i:                                        ; preds = %if.end.i
  %12 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end3.i.lp8788_init_dvs.exit_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 1, label %land.lhs.true7.i
  ]

if.end3.i.lp8788_init_dvs.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

land.lhs.true.i:                                  ; preds = %if.end3.i
  %buck1_dvs.i = getelementptr inbounds %struct.lp8788_platform_data, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %buck1_dvs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buck1_dvs.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.lp8788_init_dvs.exit_crit_edge, label %sw.bb.i.i

land.lhs.true.i.lp8788_init_dvs.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

land.lhs.true7.i:                                 ; preds = %if.end3.i
  %buck2_dvs.i = getelementptr inbounds %struct.lp8788_platform_data, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %buck2_dvs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buck2_dvs.i, align 4
  %tobool8.not.i = icmp eq ptr %16, null
  br i1 %tobool8.not.i, label %land.lhs.true7.i.lp8788_init_dvs.exit_crit_edge, label %for.cond.preheader.i.i

land.lhs.true7.i.lp8788_init_dvs.exit_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

for.cond.preheader.i.i:                           ; preds = %land.lhs.true7.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %call8.i.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %18, i32 noundef 0, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %for.cond.i.i, label %for.cond.preheader.i.i.lp8788_init_dvs.exit_crit_edge

for.cond.preheader.i.i.lp8788_init_dvs.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

sw.bb.i.i:                                        ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 4
  %call.i.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.cleanup.sink.split.i.i_crit_edge, label %sw.bb.i.i.lp8788_init_dvs.exit_crit_edge

sw.bb.i.i.lp8788_init_dvs.exit_crit_edge:         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

sw.bb.i.i.cleanup.sink.split.i.i_crit_edge:       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

for.cond.i.i:                                     ; preds = %for.cond.preheader.i.i
  %21 = ptrtoint ptr %buck2_dvs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buck2_dvs.i, align 4
  %arrayidx.1.i.i = getelementptr [2 x i32], ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1.i.i, align 4
  %call8.1.i.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %24, i32 noundef 0, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i.i)
  %tobool9.not.1.i.i = icmp eq i32 %call8.1.i.i, 0
  br i1 %tobool9.not.1.i.i, label %for.cond.i.i.cleanup.sink.split.i.i_crit_edge, label %for.cond.i.i.lp8788_init_dvs.exit_crit_edge

for.cond.i.i.lp8788_init_dvs.exit_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_init_dvs.exit

for.cond.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %for.cond.i.i.cleanup.sink.split.i.i_crit_edge, %sw.bb.i.i.cleanup.sink.split.i.i_crit_edge
  %buck1_dvs.sink.i.i = phi ptr [ %buck1_dvs.i, %sw.bb.i.i.cleanup.sink.split.i.i_crit_edge ], [ %buck2_dvs.i, %for.cond.i.i.cleanup.sink.split.i.i_crit_edge ]
  %25 = ptrtoint ptr %buck1_dvs.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buck1_dvs.sink.i.i, align 4
  %dvs.i.i = getelementptr inbounds %struct.lp8788_buck, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %dvs.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dvs.i.i, align 4
  br label %lp8788_init_dvs.exit

lp8788_init_dvs.exit:                             ; preds = %cleanup.sink.split.i.i, %for.cond.i.i.lp8788_init_dvs.exit_crit_edge, %sw.bb.i.i.lp8788_init_dvs.exit_crit_edge, %for.cond.preheader.i.i.lp8788_init_dvs.exit_crit_edge, %land.lhs.true7.i.lp8788_init_dvs.exit_crit_edge, %land.lhs.true.i.lp8788_init_dvs.exit_crit_edge, %if.end3.i.lp8788_init_dvs.exit_crit_edge, %if.end.i.lp8788_init_dvs.exit_crit_edge
  %__const.lp8788_init_dvs.default_dvs_mode.sink.i = phi ptr [ %val.i, %if.end3.i.lp8788_init_dvs.exit_crit_edge ], [ %val.i, %cleanup.sink.split.i.i ], [ @__const.lp8788_init_dvs.default_dvs_mode, %for.cond.i.i.lp8788_init_dvs.exit_crit_edge ], [ @__const.lp8788_init_dvs.default_dvs_mode, %for.cond.preheader.i.i.lp8788_init_dvs.exit_crit_edge ], [ @__const.lp8788_init_dvs.default_dvs_mode, %sw.bb.i.i.lp8788_init_dvs.exit_crit_edge ], [ @__const.lp8788_init_dvs.default_dvs_mode, %land.lhs.true.i.lp8788_init_dvs.exit_crit_edge ], [ @__const.lp8788_init_dvs.default_dvs_mode, %land.lhs.true7.i.lp8788_init_dvs.exit_crit_edge ], [ @__const.lp8788_init_dvs.default_dvs_mode, %if.end.i.lp8788_init_dvs.exit_crit_edge ]
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %arrayidx18.i = getelementptr [2 x i8], ptr @__const.lp8788_init_dvs.default_dvs_mode, i32 0, i32 %5
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr [2 x i8], ptr %__const.lp8788_init_dvs.default_dvs_mode.sink.i, i32 0, i32 %5
  %32 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx19.i, align 1
  %call20.i = tail call i32 @lp8788_update_bits(ptr noundef %29, i8 noundef zeroext 29, i8 noundef zeroext %31, i8 noundef zeroext %33) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool8.not = icmp eq i32 %call20.i, 0
  br i1 %tobool8.not, label %lp8788_init_dvs.exit.if.end10_crit_edge, label %lp8788_init_dvs.exit.cleanup_crit_edge

lp8788_init_dvs.exit.cleanup_crit_edge:           ; preds = %lp8788_init_dvs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lp8788_init_dvs.exit.if.end10_crit_edge:          ; preds = %lp8788_init_dvs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %lp8788_init_dvs.exit.if.end10_crit_edge, %lp8788_init_dvs.exit.thread
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent, align 8
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %cfg, align 4
  %37 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata1.i, align 4
  %tobool14.not = icmp eq ptr %38, null
  br i1 %tobool14.not, label %if.end10.cond.end_crit_edge, label %cond.true

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.lp8788_platform_data, ptr %38, i32 0, i32 1, i32 %5
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end10.cond.end_crit_edge
  %cond = phi ptr [ %40, %cond.true ], [ null, %if.end10.cond.end_crit_edge ]
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %41 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cond, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %42 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %regmap16 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %45 = ptrtoint ptr %regmap16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %regmap16, align 4
  %arrayidx18 = getelementptr [4 x %struct.regulator_desc], ptr @lp8788_buck_desc, i32 0, i32 %5
  %call19 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx18, ptr noundef nonnull %cfg) #5
  %cmp.i55 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then21, label %if.end24

if.then21:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call19 to i32
  %add = add nsw i32 %5, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef %46) #8
  br label %cleanup

if.end24:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %regulator = getelementptr inbounds %struct.lp8788_buck, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call19, ptr %regulator, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then21, %lp8788_init_dvs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then21 ], [ 0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call20.i, %lp8788_init_dvs.exit.cleanup_crit_edge ]
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
declare dso_local i32 @lp8788_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck12_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %dvs = getelementptr inbounds %struct.lp8788_buck, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %dvs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call1, label %if.then.if.end_crit_edge [
    i32 0, label %if.end.i.i
    i32 1, label %if.end.i6.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %5 = icmp ult i32 %4, 2048
  br i1 %5, label %if.then2.i.i, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %vsel.i.i = getelementptr inbounds %struct.lp8788_buck1_dvs, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vsel.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 2
  br label %sw.epilog.sink.split.i

if.end.i6.i:                                      ; preds = %if.then
  %vsel.i5.i = getelementptr inbounds %struct.lp8788_buck2_dvs, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vsel.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsel.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %switch.lookup, label %if.end.i6.i.if.end_crit_edge

if.end.i6.i.if.end_crit_edge:                     ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

switch.lookup:                                    ; preds = %if.end.i6.i
  %switch.gep15 = getelementptr inbounds [4 x i32], ptr @switch.table.lp8788_buck12_set_voltage_sel.13, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %14 = icmp ult i32 %13, 2048
  br i1 %14, label %if.then5.i.i, label %switch.lookup.if.end8.i.i_crit_edge

switch.lookup.if.end8.i.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.lp8788_buck12_set_voltage_sel, i32 0, i32 %9
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call.i.i7.i = tail call ptr @gpio_to_desc(i32 noundef %13) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i7.i, i32 noundef %switch.load) #5
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %switch.lookup.if.end8.i.i_crit_edge
  %arrayidx10.i.i = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %17)
  %18 = icmp ult i32 %17, 2048
  br i1 %18, label %if.end8.i.i.sw.epilog.sink.split.i_crit_edge, label %if.end8.i.i.if.end_crit_edge

if.end8.i.i.if.end_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end8.i.i.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.end8.i.i.sw.epilog.sink.split.i_crit_edge, %if.then2.i.i
  %.sink.i = phi i32 [ %4, %if.then2.i.i ], [ %17, %if.end8.i.i.sw.epilog.sink.split.i_crit_edge ]
  %pin2.0.i.sink.i = phi i32 [ %cond.i.i, %if.then2.i.i ], [ %switch.load16, %if.end8.i.i.sw.epilog.sink.split.i_crit_edge ]
  %call.i23.i.i = tail call ptr @gpio_to_desc(i32 noundef %.sink.i) #5
  tail call void @gpiod_set_raw_value(ptr noundef %call.i23.i.i, i32 noundef %pin2.0.i.sink.i) #5
  br label %if.end

if.end:                                           ; preds = %sw.epilog.sink.split.i, %if.end8.i.i.if.end_crit_edge, %if.end.i6.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call fastcc zeroext i8 @lp8788_select_buck_vout_addr(ptr noundef %call, i32 noundef %call1), !range !56
  %addr.off.i = add nsw i8 %call2, -30
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %addr.off.i)
  %switch.i = icmp ult i8 %addr.off.i, 8
  br i1 %switch.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %conv = trunc i32 %selector to i8
  %call6 = tail call i32 @lp8788_update_bits(ptr noundef %20, i8 noundef zeroext %call2, i8 noundef zeroext 31, i8 noundef zeroext %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck12_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !57
  %call2 = tail call fastcc zeroext i8 @lp8788_select_buck_vout_addr(ptr noundef %call, i32 noundef %call1), !range !56
  %addr.off.i = add nsw i8 %call2, -30
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %addr.off.i)
  %switch.i = icmp ult i8 %addr.off.i, 8
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call4 = call i32 @lp8788_read_byte(ptr noundef %2, i8 noundef zeroext %call2, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = and i8 %4, 31
  %and = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %shl = shl nuw i32 1, %call1
  %conv = trunc i32 %shl to i8
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %entry.sw.epilog_crit_edge
  %val.0 = phi i8 [ 0, %sw.bb4 ], [ %conv, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call7 = tail call i32 @lp8788_update_bits(ptr noundef %2, i8 noundef zeroext 45, i8 noundef zeroext %conv, i8 noundef zeroext %val.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !57
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call2 = call i32 @lp8788_read_byte(ptr noundef %2, i8 noundef zeroext 45, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %call1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool3.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_buck_enable_time(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !57
  %1 = trunc i32 %call1 to i8
  %conv = add i8 %1, 40
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lp8788_select_buck_vout_addr(ptr nocapture noundef readonly %buck, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !57
  %1 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %id, label %entry.lp8788_get_buck_dvs_ctrl_mode.exit_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.lp8788_get_buck_dvs_ctrl_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lp8788_get_buck_dvs_ctrl_mode.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %entry.sw.epilog.i_crit_edge
  %mask.0.i = phi i32 [ 64, %sw.bb1.i ], [ 4, %entry.sw.epilog.i_crit_edge ]
  %2 = ptrtoint ptr %buck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buck, align 4
  %call.i = call i32 @lp8788_read_byte(ptr noundef %3, i8 noundef zeroext 29, ptr noundef nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %mask.0.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = zext i1 %tobool.not.i to i32
  br label %lp8788_get_buck_dvs_ctrl_mode.exit

lp8788_get_buck_dvs_ctrl_mode.exit:               ; preds = %sw.epilog.i, %entry.lp8788_get_buck_dvs_ctrl_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %sw.epilog.i ], [ 0, %entry.lp8788_get_buck_dvs_ctrl_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val, align 1, !annotation !57
  %7 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %id, label %lp8788_get_buck_dvs_ctrl_mode.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

lp8788_get_buck_dvs_ctrl_mode.exit.cleanup_crit_edge: ; preds = %lp8788_get_buck_dvs_ctrl_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %lp8788_get_buck_dvs_ctrl_mode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %dvs = getelementptr inbounds %struct.lp8788_buck, ptr %buck, i32 0, i32 2
  %8 = ptrtoint ptr %dvs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvs, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call.i81 = call ptr @gpio_to_desc(i32 noundef %11) #5
  %call1.i = call i32 @gpiod_get_raw_value(ptr noundef %call.i81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp ne i32 %call1.i, 0
  %conv = zext i1 %tobool3.not to i8
  br label %if.end7

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %buck to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buck, align 4
  %call4 = call i32 @lp8788_read_byte(ptr noundef %13, i8 noundef zeroext 29, ptr noundef nonnull %val) #5
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %16 = and i8 %15, 3
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %idx.0 = phi i8 [ %conv, %if.end ], [ %16, %if.else ]
  %add = add nuw nsw i8 %idx.0, 30
  br label %cleanup

sw.bb10:                                          ; preds = %lp8788_get_buck_dvs_ctrl_mode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp11 = icmp eq i32 %retval.0.i, 1
  br i1 %cmp11, label %if.then13, label %if.else46

if.then13:                                        ; preds = %sw.bb10
  %dvs14 = getelementptr inbounds %struct.lp8788_buck, ptr %buck, i32 0, i32 2
  %17 = ptrtoint ptr %dvs14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dvs14, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %if.end17

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %call.i82 = call ptr @gpio_to_desc(i32 noundef %20) #5
  %call1.i83 = call i32 @gpiod_get_raw_value(ptr noundef %call.i82) #5
  %arrayidx21 = getelementptr [2 x i32], ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx21, align 4
  %call.i84 = call ptr @gpio_to_desc(i32 noundef %22) #5
  %call1.i85 = call i32 @gpiod_get_raw_value(ptr noundef %call.i84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %cmp23 = icmp eq i32 %call1.i83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %cmp25 = icmp eq i32 %call1.i85, 0
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %if.else28

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i85)
  %cmp32 = icmp eq i32 %call1.i85, 1
  %or.cond79 = select i1 %cmp23, i1 %cmp32, i1 false
  br i1 %or.cond79, label %if.else28.cleanup_crit_edge, label %if.else35

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else35:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i83)
  %cmp36 = icmp eq i32 %call1.i83, 1
  %or.cond80 = select i1 %cmp36, i1 %cmp25, i1 false
  %spec.select = select i1 %or.cond80, i8 35, i8 37
  br label %cleanup

if.else46:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %buck to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buck, align 4
  %call48 = call i32 @lp8788_read_byte(ptr noundef %24, i8 noundef zeroext 29, ptr noundef nonnull %val) #5
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %27 = lshr i8 %26, 4
  %28 = and i8 %27, 3
  %narrow = add nuw nsw i8 %28, 34
  br label %cleanup

cleanup:                                          ; preds = %if.else46, %if.else35, %if.else28.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end7, %if.then.cleanup_crit_edge, %lp8788_get_buck_dvs_ctrl_mode.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ %add, %if.end7 ], [ %narrow, %if.else46 ], [ 34, %if.end17.cleanup_crit_edge ], [ 36, %if.else28.cleanup_crit_edge ], [ -1, %lp8788_get_buck_dvs_ctrl_mode.exit.cleanup_crit_edge ], [ -1, %if.then13.cleanup_crit_edge ], [ -1, %if.then.cleanup_crit_edge ], [ %spec.select, %if.else35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_read_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_lp8788_buck__288_541_lp8788_buck_init4, !1, !"__initcall__kmod_lp8788_buck__288_541_lp8788_buck_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/lp8788-buck.c", i32 541, i32 1}
!2 = !{ptr @__exitcall_lp8788_buck_exit, !3, !"__exitcall_lp8788_buck_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/lp8788-buck.c", i32 547, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/lp8788-buck.c", i32 549, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/lp8788-buck.c", i32 550, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/lp8788-buck.c", i32 551, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/lp8788-buck.c", i32 552, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/lp8788-buck.c", i32 533, i32 11}
!15 = !{ptr @lp8788_buck_driver, !16, !"lp8788_buck_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/lp8788-buck.c", i32 530, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/lp8788-buck.c", i32 519, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lp8788_buck_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lp8788_buck_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/lp8788-buck.c", i32 427, i32 18}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/lp8788-buck.c", i32 428, i32 22}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/lp8788-buck.c", i32 428, i32 40}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/lp8788-buck.c", i32 369, i32 11}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/lp8788-buck.c", i32 381, i32 11}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/lp8788-buck.c", i32 393, i32 11}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/lp8788-buck.c", i32 407, i32 11}
!39 = !{ptr @lp8788_buck_desc, !40, !"lp8788_buck_desc", i1 false, i1 false}
!40 = !{!"../drivers/regulator/lp8788-buck.c", i32 367, i32 36}
!41 = !{ptr @lp8788_buck12_ops, !42, !"lp8788_buck12_ops", i1 false, i1 false}
!42 = !{!"../drivers/regulator/lp8788-buck.c", i32 341, i32 35}
!43 = !{ptr @buck_volt_ranges, !44, !"buck_volt_ranges", i1 false, i1 false}
!44 = !{!"../drivers/regulator/lp8788-buck.c", i32 95, i32 34}
!45 = !{ptr @lp8788_buck34_ops, !46, !"lp8788_buck34_ops", i1 false, i1 false}
!46 = !{!"../drivers/regulator/lp8788-buck.c", i32 354, i32 35}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 -1, i8 38}
!57 = !{!"auto-init"}
