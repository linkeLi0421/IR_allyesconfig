; ModuleID = '/llk/IR_all_yes/drivers/regulator/stpmic1_regulator.c_pt.bc'
source_filename = "../drivers/regulator/stpmic1_regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stpmic1_regulator_cfg = type { %struct.regulator_desc, i8, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
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
%struct.stpmic1 = type { ptr, ptr, i32, ptr }

@__initcall__kmod_stpmic1_regulator__289_646_stpmic1_regulator_driver_init6 = internal global ptr @stpmic1_regulator_driver_init, section ".initcall6.init", align 4
@stpmic1_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stpmic1_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pmic_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stpmic1_regulator_driver_exit = internal global ptr @stpmic1_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [68 x i8] c"stpmic1_regulator.description=STPMIC1 PMIC voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [59 x i8] c"stpmic1_regulator.author=Pascal Paillet <p.paillet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [59 x i8] c"stpmic1_regulator.file=drivers/regulator/stpmic1_regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"stpmic1_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stpmic1-regulator\00", [46 x i8] zeroinitializer }, align 32
@of_pmic_regulator_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stpmic1-regulators\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stpmic1_matches = internal global { [14 x %struct.of_regulator_match], [72 x i8] } { [14 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.8, ptr null, ptr null, ptr null, ptr @stpmic1_regulator_cfgs }, %struct.of_regulator_match { ptr @.str.9, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 248) }, %struct.of_regulator_match { ptr @.str.10, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 496) }, %struct.of_regulator_match { ptr @.str.11, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 744) }, %struct.of_regulator_match { ptr @.str.12, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 992) }, %struct.of_regulator_match { ptr @.str.13, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1240) }, %struct.of_regulator_match { ptr @.str.14, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1488) }, %struct.of_regulator_match { ptr @.str.15, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1736) }, %struct.of_regulator_match { ptr @.str.16, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 1984) }, %struct.of_regulator_match { ptr @.str.17, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2232) }, %struct.of_regulator_match { ptr @.str.18, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2480) }, %struct.of_regulator_match { ptr @.str.19, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2728) }, %struct.of_regulator_match { ptr @.str.20, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 2976) }, %struct.of_regulator_match { ptr @.str.21, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @stpmic1_regulator_cfgs, i64 3224) }], [72 x i8] zeroinitializer }, align 32
@stpmic1_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error in PMIC regulator device tree node\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stpmic1_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/stpmic1_regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stpmic1_regulator_probe._entry_ptr = internal global ptr @stpmic1_regulator_probe._entry, section ".printk_index", align 4
@stpmic1_regulator_cfgs = internal constant { [14 x %struct.stpmic1_regulator_cfg], [880 x i8] } { [14 x %struct.stpmic1_regulator_cfg] [%struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.31, ptr @.str.8, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck1_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 32, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 1, i8 29, i8 1 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.32, ptr @.str.9, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck2_ranges, ptr null, i32 11, ptr null, ptr null, i32 0, i32 0, i32 33, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 2, i8 29, i8 2 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.33, ptr @.str.10, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck3_ranges, ptr null, i32 7, ptr null, ptr null, i32 0, i32 0, i32 34, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 4, i8 29, i8 4 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.34, ptr @.str.11, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @stpmic1_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @buck4_ranges, ptr null, i32 7, ptr null, ptr null, i32 0, i32 0, i32 35, i32 252, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr @stpmic1_map_mode }, i8 24, i8 8, i8 29, i8 8 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.35, ptr @.str.12, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo1_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 37, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 1, i8 30, i8 1 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.36, ptr @.str.13, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo2_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 38, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 2, i8 30, i8 2 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.37, ptr @.str.14, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @stpmic1_ldo3_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo3_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 39, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 1, i32 0, i8 0, i32 39, i32 128, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 4, i8 30, i8 4 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.38, ptr @.str.15, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @stpmic1_ldo4_fixed_regul_ops, i32 0, i32 0, ptr null, i32 3300000, i32 0, i32 0, i32 3300000, i32 2200, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 8, i8 30, i8 8 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.39, ptr @.str.16, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo5_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 41, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 16, i8 30, i8 16 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.40, ptr @.str.17, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @stpmic1_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 2200, i32 0, ptr @ldo6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 42, i32 124, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 32, i8 30, i8 32 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.41, ptr @.str.18, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @stpmic1_vref_ddr_ops, i32 0, i32 0, ptr null, i32 500000, i32 0, i32 0, i32 500000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 26, i8 64, i8 0, i8 0 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.42, ptr @.str.19, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @stpmic1_boost_regul_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 29, i8 64 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.43, ptr @.str.20, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 1, i32 0, ptr @stpmic1_switch_regul_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 2, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 16, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 29, i8 16 }, %struct.stpmic1_regulator_cfg { %struct.regulator_desc { ptr @.str.44, ptr @.str.21, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 1, i32 0, ptr @stpmic1_switch_regul_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 4, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 0, i32 32, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 2200, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 29, i8 32 }], [880 x i8] zeroinitializer }, align 32
@stpmic1_regulator_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stpmic1_regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stpmic1_regulator driver probed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vref_ddr\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"boost\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwr_sw1\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwr_sw2\00", [24 x i8] zeroinitializer }, align 32
@stpmic1_regulator_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stpmic1_regulator_register\00", [37 x i8] zeroinitializer }, align 32
@stpmic1_regulator_register._entry_ptr = internal global ptr @stpmic1_regulator_register._entry, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,mask-reset\00", [18 x i8] zeroinitializer }, align 32
@stpmic1_regulator_register._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set mask reset failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stpmic1_regulator_register._entry_ptr.27 = internal global ptr @stpmic1_regulator_register._entry.25, section ".printk_index", align 4
@stpmic1_regulator_register._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.3, i32 600, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Request IRQ failed\0A\00", [44 x i8] zeroinitializer }, align 32
@stpmic1_regulator_register._entry_ptr.30 = internal global ptr @stpmic1_regulator_register._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@stpmic1_buck_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @stpmic1_set_mode, ptr @stpmic1_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_pull_down_regmap }, [48 x i8] zeroinitializer }, align 32
@buck1_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 725000, i32 0, i32 4, i32 0 }, %struct.linear_range { i32 725000, i32 5, i32 36, i32 25000 }, %struct.linear_range { i32 1500000, i32 37, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@buck2_ranges = internal constant { [11 x %struct.linear_range], [48 x i8] } { [11 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 17, i32 0 }, %struct.linear_range { i32 1050000, i32 18, i32 19, i32 0 }, %struct.linear_range { i32 1100000, i32 20, i32 21, i32 0 }, %struct.linear_range { i32 1150000, i32 22, i32 23, i32 0 }, %struct.linear_range { i32 1200000, i32 24, i32 25, i32 0 }, %struct.linear_range { i32 1250000, i32 26, i32 27, i32 0 }, %struct.linear_range { i32 1300000, i32 28, i32 29, i32 0 }, %struct.linear_range { i32 1350000, i32 30, i32 31, i32 0 }, %struct.linear_range { i32 1400000, i32 32, i32 33, i32 0 }, %struct.linear_range { i32 1450000, i32 34, i32 35, i32 0 }, %struct.linear_range { i32 1500000, i32 36, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@buck3_ranges = internal constant { [7 x %struct.linear_range], [48 x i8] } { [7 x %struct.linear_range] [%struct.linear_range { i32 1000000, i32 0, i32 19, i32 0 }, %struct.linear_range { i32 1100000, i32 20, i32 23, i32 0 }, %struct.linear_range { i32 1200000, i32 24, i32 27, i32 0 }, %struct.linear_range { i32 1300000, i32 28, i32 31, i32 0 }, %struct.linear_range { i32 1400000, i32 32, i32 35, i32 0 }, %struct.linear_range { i32 1500000, i32 36, i32 55, i32 100000 }, %struct.linear_range { i32 3400000, i32 56, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@buck4_ranges = internal constant { [7 x %struct.linear_range], [48 x i8] } { [7 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 27, i32 25000 }, %struct.linear_range { i32 1300000, i32 28, i32 29, i32 0 }, %struct.linear_range { i32 1350000, i32 30, i32 31, i32 0 }, %struct.linear_range { i32 1400000, i32 32, i32 33, i32 0 }, %struct.linear_range { i32 1450000, i32 34, i32 35, i32 0 }, %struct.linear_range { i32 1500000, i32 36, i32 60, i32 100000 }, %struct.linear_range { i32 3900000, i32 61, i32 63, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@stpmic1_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo1_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 31, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@ldo2_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 30, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@stpmic1_ldo3_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ldo3_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 30, i32 0 }, %struct.linear_range { i32 500000, i32 31, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@stpmic1_ldo4_fixed_regul_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@ldo5_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 7, i32 0 }, %struct.linear_range { i32 1700000, i32 8, i32 30, i32 100000 }, %struct.linear_range { i32 3900000, i32 31, i32 31, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@ldo6_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 24, i32 100000 }, %struct.linear_range { i32 3300000, i32 25, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VREF_DDR\00", [23 x i8] zeroinitializer }, align 32
@stpmic1_vref_ddr_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOOST\00", [26 x i8] zeroinitializer }, align 32
@stpmic1_boost_regul_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VBUS_OTG\00", [23 x i8] zeroinitializer }, align 32
@stpmic1_switch_regul_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stpmic1_set_icc, ptr null, ptr null, ptr null, ptr @regulator_set_active_discharge_regmap, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SW_OUT\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"stpmic1_regulator_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 638, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 640, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"of_pmic_regulator_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 631, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"stpmic1_matches\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 538, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 614, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"stpmic1_regulator_cfgs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 357, i32 43 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 626, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 539, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 540, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 541, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 542, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 543, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 544, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 545, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 546, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 547, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 548, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 549, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 550, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 551, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 552, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 573, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 579, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 586, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 600, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 359, i32 11 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"stpmic1_buck_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 163, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"buck1_ranges\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 61, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 366, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [13 x i8] c"buck2_ranges\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 67, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 373, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"buck3_ranges\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 81, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 380, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"buck4_ranges\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 91, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 387, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"stpmic1_ldo_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 132, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"ldo1_ranges\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 101, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 394, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"ldo2_ranges\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 107, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 401, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"stpmic1_ldo3_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 143, i32 35 }
@___asan_gen_.198 = private unnamed_addr constant [12 x i8] c"ldo3_ranges\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 113, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 408, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant [29 x i8] c"stpmic1_ldo4_fixed_regul_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 156, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 415, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant [12 x i8] c"ldo5_ranges\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 121, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 422, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant [12 x i8] c"ldo6_ranges\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 127, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 429, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant [21 x i8] c"stpmic1_vref_ddr_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 177, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 434, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [24 x i8] c"stpmic1_boost_regul_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 183, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 439, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant [25 x i8] c"stpmic1_switch_regul_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 190, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [41 x i8] c"../drivers/regulator/stpmic1_regulator.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 444, i32 11 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_stpmic1_regulator_driver_exit, ptr @__initcall__kmod_stpmic1_regulator__289_646_stpmic1_regulator_driver_init6, ptr @stpmic1_regulator_driver_exit, ptr @stpmic1_regulator_probe._entry, ptr @stpmic1_regulator_probe._entry_ptr, ptr @stpmic1_regulator_register._entry, ptr @stpmic1_regulator_register._entry.25, ptr @stpmic1_regulator_register._entry.28, ptr @stpmic1_regulator_register._entry_ptr, ptr @stpmic1_regulator_register._entry_ptr.27, ptr @stpmic1_regulator_register._entry_ptr.30, ptr @stpmic1_regulator_driver, ptr @.str, ptr @of_pmic_regulator_match, ptr @stpmic1_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stpmic1_regulator_cfgs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @stpmic1_buck_ops, ptr @buck1_ranges, ptr @.str.32, ptr @buck2_ranges, ptr @.str.33, ptr @buck3_ranges, ptr @.str.34, ptr @buck4_ranges, ptr @.str.35, ptr @stpmic1_ldo_ops, ptr @ldo1_ranges, ptr @.str.36, ptr @ldo2_ranges, ptr @.str.37, ptr @stpmic1_ldo3_ops, ptr @ldo3_ranges, ptr @.str.38, ptr @stpmic1_ldo4_fixed_regul_ops, ptr @.str.39, ptr @ldo5_ranges, ptr @.str.40, ptr @ldo6_ranges, ptr @.str.41, ptr @stpmic1_vref_ddr_ops, ptr @.str.42, ptr @stpmic1_boost_regul_ops, ptr @.str.43, ptr @stpmic1_switch_regul_ops, ptr @.str.44], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pmic_regulator_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_matches to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_regulator_cfgs to i32), i32 3472, i32 4352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_regulator_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_regulator_register._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_regulator_register._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_buck_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck1_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck2_ranges to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck3_ranges to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buck4_ranges to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo1_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo2_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_ldo3_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo3_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_ldo4_fixed_regul_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo5_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldo6_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_vref_ddr_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_boost_regul_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stpmic1_switch_regul_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stpmic1_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stpmic1_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stpmic1_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stpmic1_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpmic1_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config.i = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @stpmic1_matches, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = getelementptr inbounds i8, ptr %config.i, i32 20
  %init_data3.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 1
  %of_node4.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 3
  %regmap5.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.regulator_config, ptr %config.i, i32 0, i32 2
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.035 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr [14 x %struct.stpmic1_regulator_cfg], ptr @stpmic1_regulator_cfgs, i32 0, i32 %i.035
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config.i) #6
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %config.i, align 4
  %init_data.i = getelementptr [14 x %struct.of_regulator_match], ptr @stpmic1_matches, i32 0, i32 %i.035, i32 2
  %9 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_data.i, align 4
  %11 = ptrtoint ptr %init_data3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %init_data3.i, align 4
  %of_node.i = getelementptr [14 x %struct.of_regulator_match], ptr @stpmic1_matches, i32 0, i32 %i.035, i32 3
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 4
  %14 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %of_node4.i, align 4
  %regmap.i = getelementptr inbounds %struct.stpmic1, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %regmap5.i, align 4
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx4, ptr %driver_data.i, align 4
  %call7.i = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx4, ptr noundef nonnull %config.i) #6
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %20) #9
  %21 = ptrtoint ptr %call7.i to i32
  br label %stpmic1_regulator_register.exit

if.end.i:                                         ; preds = %for.body
  %22 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node4.i, align 4
  %call13.i = call ptr @of_get_property(ptr noundef %23, ptr noundef nonnull @.str.24, ptr noundef null) #6
  %tobool.not.i = icmp eq ptr %call13.i, null
  %24 = add nsw i32 %i.035, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.not.i = icmp ult i32 %24, 3
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %if.end.i.if.end30.i_crit_edge, label %if.then15.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then15.i:                                      ; preds = %if.end.i
  %mask_reset_reg.i = getelementptr [14 x %struct.stpmic1_regulator_cfg], ptr @stpmic1_regulator_cfgs, i32 0, i32 %i.035, i32 1
  %25 = ptrtoint ptr %mask_reset_reg.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mask_reset_reg.i, align 4
  %conv.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %mask_reset_mask.i = getelementptr [14 x %struct.stpmic1_regulator_cfg], ptr @stpmic1_regulator_cfgs, i32 0, i32 %i.035, i32 2
  %29 = ptrtoint ptr %mask_reset_mask.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mask_reset_mask.i, align 1
  %conv19.i = zext i8 %30 to i32
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %conv.i, i32 noundef %conv19.i, i32 noundef %conv19.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool23.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool23.not.i, label %if.then15.i.if.end30.i_crit_edge, label %do.end27.i

if.then15.i.if.end30.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

do.end27.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %stpmic1_regulator_register.exit

if.end30.i:                                       ; preds = %if.then15.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge
  %31 = ptrtoint ptr %of_node4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node4.i, align 4
  %call32.i = call i32 @of_irq_get(ptr noundef %32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp sgt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.end30.i.stpmic1_regulator_register.exit.thread_crit_edge

if.end30.i.stpmic1_regulator_register.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stpmic1_regulator_register.exit.thread

if.then35.i:                                      ; preds = %if.end30.i
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %call38.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call32.i, ptr noundef null, ptr noundef nonnull @stpmic1_curlim_irq_handler, i32 noundef 8320, ptr noundef %34, ptr noundef %call7.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then35.i.stpmic1_regulator_register.exit.thread_crit_edge, label %do.end43.i

if.then35.i.stpmic1_regulator_register.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stpmic1_regulator_register.exit.thread

do.end43.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %stpmic1_regulator_register.exit

stpmic1_regulator_register.exit.thread:           ; preds = %if.then35.i.stpmic1_regulator_register.exit.thread_crit_edge, %if.end30.i.stpmic1_regulator_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  br label %for.inc

stpmic1_regulator_register.exit:                  ; preds = %do.end43.i, %do.end27.i, %do.end.i
  %retval.0.i31 = phi i32 [ %21, %do.end.i ], [ %call.i.i, %do.end27.i ], [ %call38.i, %do.end43.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i31)
  %cmp6 = icmp slt i32 %retval.0.i31, 0
  br i1 %cmp6, label %stpmic1_regulator_register.exit.cleanup_crit_edge, label %stpmic1_regulator_register.exit.for.inc_crit_edge

stpmic1_regulator_register.exit.for.inc_crit_edge: ; preds = %stpmic1_regulator_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

stpmic1_regulator_register.exit.cleanup_crit_edge: ; preds = %stpmic1_regulator_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %stpmic1_regulator_register.exit.for.inc_crit_edge, %stpmic1_regulator_register.exit.thread
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %do.body9, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body9:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stpmic1_regulator_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stpmic1_regulator_probe, %cleanup)) #6
          to label %if.then14 [label %cleanup], !srcloc !144

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stpmic1_regulator_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body9, %stpmic1_regulator_register.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then14 ], [ 0, %do.body9 ], [ %retval.0.i31, %stpmic1_regulator_register.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpmic1_curlim_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_notifier_call_chain(ptr noundef %data, i32 noundef 2, ptr noundef null) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stpmic1_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 2
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %switch.selectcmp2 = icmp eq i32 %mode, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 2, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpmic1_set_icc(ptr noundef %rdev, i32 noundef %lim, i32 noundef %severity, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #6
  %0 = or i32 %severity, %lim
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  %2 = and i1 %1, %enable
  br i1 %2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %icc_reg = getelementptr inbounds %struct.stpmic1_regulator_cfg, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %icc_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %icc_reg, align 2
  %conv = zext i8 %4 to i32
  %icc_mask = getelementptr inbounds %struct.stpmic1_regulator_cfg, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %icc_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %icc_mask, align 1
  %conv4 = zext i8 %6 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpmic1_set_mode(ptr noundef %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #6
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ 2, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %4, i32 noundef 2, i32 noundef %value.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stpmic1_get_mode(ptr noundef %rdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !145
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #6
  %1 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %call, i32 noundef %4, ptr noundef nonnull %value) #6
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_pull_down_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_active_discharge_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_stpmic1_regulator__289_646_stpmic1_regulator_driver_init6, !1, !"__initcall__kmod_stpmic1_regulator__289_646_stpmic1_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 646, i32 1}
!2 = !{ptr @__exitcall_stpmic1_regulator_driver_exit, !1, !"__exitcall_stpmic1_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 648, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 649, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 650, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 640, i32 11}
!12 = !{ptr @stpmic1_regulator_driver, !13, !"stpmic1_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 638, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 614, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stpmic1_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stpmic1_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 626, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @stpmic1_regulator_probe.__UNIQUE_ID_ddebug288, !23, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 539, i32 2}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 540, i32 2}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 541, i32 2}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 542, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 543, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 544, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 545, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 546, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 547, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 548, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 549, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 550, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 551, i32 2}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 552, i32 2}
!54 = !{ptr @stpmic1_matches, !55, !"stpmic1_matches", i1 false, i1 false}
!55 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 538, i32 34}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 573, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @stpmic1_regulator_register._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @stpmic1_regulator_register._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 579, i32 38}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 586, i32 4}
!65 = !{ptr @stpmic1_regulator_register._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @stpmic1_regulator_register._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 600, i32 4}
!69 = !{ptr @stpmic1_regulator_register._entry.28, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @stpmic1_regulator_register._entry_ptr.30, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 359, i32 11}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 366, i32 11}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 373, i32 11}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 380, i32 11}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 387, i32 11}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 394, i32 11}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 401, i32 11}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 408, i32 11}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 415, i32 11}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 422, i32 11}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 429, i32 11}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 434, i32 11}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 439, i32 11}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 444, i32 11}
!99 = !{ptr @stpmic1_regulator_cfgs, !100, !"stpmic1_regulator_cfgs", i1 false, i1 false}
!100 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 357, i32 43}
!101 = !{ptr @stpmic1_buck_ops, !102, !"stpmic1_buck_ops", i1 false, i1 false}
!102 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 163, i32 35}
!103 = !{ptr @buck1_ranges, !104, !"buck1_ranges", i1 false, i1 false}
!104 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 61, i32 34}
!105 = !{ptr @buck2_ranges, !106, !"buck2_ranges", i1 false, i1 false}
!106 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 67, i32 34}
!107 = !{ptr @buck3_ranges, !108, !"buck3_ranges", i1 false, i1 false}
!108 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 81, i32 34}
!109 = !{ptr @buck4_ranges, !110, !"buck4_ranges", i1 false, i1 false}
!110 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 91, i32 34}
!111 = !{ptr @stpmic1_ldo_ops, !112, !"stpmic1_ldo_ops", i1 false, i1 false}
!112 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 132, i32 35}
!113 = !{ptr @ldo1_ranges, !114, !"ldo1_ranges", i1 false, i1 false}
!114 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 101, i32 34}
!115 = !{ptr @ldo2_ranges, !116, !"ldo2_ranges", i1 false, i1 false}
!116 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 107, i32 34}
!117 = !{ptr @stpmic1_ldo3_ops, !118, !"stpmic1_ldo3_ops", i1 false, i1 false}
!118 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 143, i32 35}
!119 = !{ptr @ldo3_ranges, !120, !"ldo3_ranges", i1 false, i1 false}
!120 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 113, i32 34}
!121 = !{ptr @stpmic1_ldo4_fixed_regul_ops, !122, !"stpmic1_ldo4_fixed_regul_ops", i1 false, i1 false}
!122 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 156, i32 35}
!123 = !{ptr @ldo5_ranges, !124, !"ldo5_ranges", i1 false, i1 false}
!124 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 121, i32 34}
!125 = !{ptr @ldo6_ranges, !126, !"ldo6_ranges", i1 false, i1 false}
!126 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 127, i32 34}
!127 = !{ptr @stpmic1_vref_ddr_ops, !128, !"stpmic1_vref_ddr_ops", i1 false, i1 false}
!128 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 177, i32 35}
!129 = !{ptr @stpmic1_boost_regul_ops, !130, !"stpmic1_boost_regul_ops", i1 false, i1 false}
!130 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 183, i32 35}
!131 = !{ptr @stpmic1_switch_regul_ops, !132, !"stpmic1_switch_regul_ops", i1 false, i1 false}
!132 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 190, i32 35}
!133 = !{ptr @of_pmic_regulator_match, !134, !"of_pmic_regulator_match", i1 false, i1 false}
!134 = !{!"../drivers/regulator/stpmic1_regulator.c", i32 631, i32 34}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2148733678, i64 2148733683, i64 2148733696, i64 2148733740, i64 2148733774, i64 2148733795}
!145 = !{!"auto-init"}
