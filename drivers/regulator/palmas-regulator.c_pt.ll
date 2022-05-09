; ModuleID = '/llk/IR_all_yes/drivers/regulator/palmas-regulator.c_pt.bc'
source_filename = "../drivers/regulator/palmas-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.palmas_regs_info = type { ptr, ptr, i8, i8, i8, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.palmas_sleep_requestor_info = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.palmas_pmic = type { ptr, ptr, [27 x %struct.regulator_desc], %struct.mutex, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.palmas_pmic_platform_data = type { [27 x ptr], [27 x ptr], i32, i8 }
%struct.palmas_reg_init = type { i32, i32, i32, i8 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_palmas_regulator__293_1678_palmas_init4 = internal global ptr @palmas_init, section ".initcall4.init", align 4
@palmas_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @palmas_regulators_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_palmas_exit = internal global ptr @palmas_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [60 x i8] c"palmas_regulator.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [61 x i8] c"palmas_regulator.description=Palmas voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [57 x i8] c"palmas_regulator.file=drivers/regulator/palmas-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [29 x i8] c"palmas_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [44 x i8] c"palmas_regulator.alias=platform:palmas-pmic\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"palmas-pmic\00", [20 x i8] zeroinitializer }, align 32
@of_palmas_match_tbl = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6035-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6036-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6037-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65913-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65914-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps80036-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps659038-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65917-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65917_ddata }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,tps659038-pmic\00", [46 x i8] zeroinitializer }, align 32
@palmas_generic_regs_info = internal global { [27 x %struct.palmas_regs_info], [112 x i8] } { [27 x %struct.palmas_regs_info] [%struct.palmas_regs_info { ptr @.str.2, ptr @.str.3, i8 3, i8 0, i8 1, i32 7 }, %struct.palmas_regs_info { ptr @.str.4, ptr @.str.3, i8 3, i8 0, i8 1, i32 7 }, %struct.palmas_regs_info { ptr @.str.5, ptr @.str.6, i8 7, i8 4, i8 0, i32 8 }, %struct.palmas_regs_info { ptr @.str.7, ptr @.str.8, i8 11, i8 8, i8 9, i32 9 }, %struct.palmas_regs_info { ptr @.str.9, ptr @.str.8, i8 11, i8 8, i8 9, i32 9 }, %struct.palmas_regs_info { ptr @.str.10, ptr @.str.11, i8 15, i8 12, i8 13, i32 10 }, %struct.palmas_regs_info { ptr @.str.12, ptr @.str.13, i8 19, i8 16, i8 0, i32 11 }, %struct.palmas_regs_info { ptr @.str.14, ptr @.str.15, i8 23, i8 20, i8 21, i32 12 }, %struct.palmas_regs_info { ptr @.str.16, ptr @.str.17, i8 27, i8 24, i8 0, i32 13 }, %struct.palmas_regs_info { ptr @.str.18, ptr @.str.19, i8 0, i8 28, i8 0, i32 14 }, %struct.palmas_regs_info { ptr @.str.20, ptr @.str.21, i8 0, i8 28, i8 0, i32 14 }, %struct.palmas_regs_info { ptr @.str.22, ptr @.str.23, i8 1, i8 0, i8 0, i32 15 }, %struct.palmas_regs_info { ptr @.str.24, ptr @.str.25, i8 3, i8 2, i8 0, i32 16 }, %struct.palmas_regs_info { ptr @.str.26, ptr @.str.27, i8 5, i8 4, i8 0, i32 17 }, %struct.palmas_regs_info { ptr @.str.28, ptr @.str.29, i8 7, i8 6, i8 0, i32 18 }, %struct.palmas_regs_info { ptr @.str.30, ptr @.str.31, i8 9, i8 8, i8 0, i32 19 }, %struct.palmas_regs_info { ptr @.str.32, ptr @.str.33, i8 11, i8 10, i8 0, i32 20 }, %struct.palmas_regs_info { ptr @.str.34, ptr @.str.35, i8 13, i8 12, i8 0, i32 21 }, %struct.palmas_regs_info { ptr @.str.36, ptr @.str.37, i8 15, i8 14, i8 0, i32 22 }, %struct.palmas_regs_info { ptr @.str.38, ptr @.str.39, i8 17, i8 16, i8 0, i32 23 }, %struct.palmas_regs_info { ptr @.str.40, ptr @.str.41, i8 19, i8 18, i8 0, i32 24 }, %struct.palmas_regs_info { ptr @.str.42, ptr @.str.43, i8 21, i8 20, i8 0, i32 25 }, %struct.palmas_regs_info { ptr @.str.44, ptr null, i8 0, i8 2, i8 0, i32 0 }, %struct.palmas_regs_info { ptr @.str.45, ptr null, i8 0, i8 3, i8 0, i32 1 }, %struct.palmas_regs_info { ptr @.str.46, ptr null, i8 0, i8 18, i8 0, i32 6 }, %struct.palmas_regs_info { ptr @.str.47, ptr null, i8 0, i8 4, i8 0, i32 2 }, %struct.palmas_regs_info { ptr @.str.48, ptr null, i8 0, i8 5, i8 0, i32 3 }], [112 x i8] zeroinitializer }, align 32
@palmas_ddata = internal global { %struct.palmas_pmic_driver_data, [52 x i8] } { %struct.palmas_pmic_driver_data { i32 0, i32 10, i32 11, i32 21, i32 27, i8 1, ptr @palmas_generic_regs_info, ptr @palmas_matches, ptr @palma_sleep_req_info, ptr @palmas_smps_registration, ptr @palmas_ldo_registration }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SMPS12\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps1-in\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMPS123\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS3\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps3-in\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SMPS45\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps4-in\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMPS457\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS6\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps6-in\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS7\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps7-in\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS8\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps8-in\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS9\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps9-in\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMPS10_OUT2\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"smps10-in\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMPS10_OUT1\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smps10-out2\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo1-in\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo2-in\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo3-in\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo4-in\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO5\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo5-in\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO6\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo6-in\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO7\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo7-in\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO8\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo8-in\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO9\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo9-in\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDOLN\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ldoln-in\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LDOUSB\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ldousb-in\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REGEN1\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REGEN2\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REGEN3\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSEN1\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSEN2\00", [25 x i8] zeroinitializer }, align 32
@palmas_matches = internal global { [27 x %struct.of_regulator_match], [132 x i8] } { [27 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.49, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.50, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.51, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.52, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.53, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.54, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.55, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.56, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.57, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.58, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.59, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.60, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.64, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.65, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.66, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.67, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.68, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.69, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.70, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.71, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.72, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.73, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.74, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.75, ptr null, ptr null, ptr null, ptr null }], [132 x i8] zeroinitializer }, align 32
@palma_sleep_req_info = internal global { [26 x %struct.palmas_sleep_requestor_info], [72 x i8] } { [26 x %struct.palmas_sleep_requestor_info] [%struct.palmas_sleep_requestor_info zeroinitializer, %struct.palmas_sleep_requestor_info { i32 1, i32 0, i32 1 }, %struct.palmas_sleep_requestor_info { i32 2, i32 0, i32 2 }, %struct.palmas_sleep_requestor_info { i32 3, i32 0, i32 3 }, %struct.palmas_sleep_requestor_info { i32 4, i32 0, i32 4 }, %struct.palmas_sleep_requestor_info { i32 5, i32 0, i32 5 }, %struct.palmas_sleep_requestor_info { i32 6, i32 0, i32 6 }, %struct.palmas_sleep_requestor_info { i32 7, i32 1, i32 0 }, %struct.palmas_sleep_requestor_info { i32 8, i32 1, i32 1 }, %struct.palmas_sleep_requestor_info { i32 9, i32 1, i32 2 }, %struct.palmas_sleep_requestor_info { i32 10, i32 1, i32 3 }, %struct.palmas_sleep_requestor_info { i32 11, i32 1, i32 4 }, %struct.palmas_sleep_requestor_info { i32 12, i32 1, i32 5 }, %struct.palmas_sleep_requestor_info { i32 13, i32 1, i32 6 }, %struct.palmas_sleep_requestor_info { i32 14, i32 1, i32 7 }, %struct.palmas_sleep_requestor_info { i32 15, i32 2, i32 0 }, %struct.palmas_sleep_requestor_info { i32 16, i32 2, i32 1 }, %struct.palmas_sleep_requestor_info { i32 17, i32 2, i32 2 }, %struct.palmas_sleep_requestor_info { i32 18, i32 2, i32 3 }, %struct.palmas_sleep_requestor_info { i32 19, i32 2, i32 4 }, %struct.palmas_sleep_requestor_info { i32 20, i32 2, i32 5 }, %struct.palmas_sleep_requestor_info { i32 21, i32 2, i32 6 }, %struct.palmas_sleep_requestor_info { i32 22, i32 2, i32 7 }, %struct.palmas_sleep_requestor_info { i32 23, i32 3, i32 0 }, %struct.palmas_sleep_requestor_info { i32 24, i32 3, i32 1 }, %struct.palmas_sleep_requestor_info { i32 25, i32 3, i32 2 }], [72 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smps12\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smps123\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps3\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smps45\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smps457\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps6\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps7\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps8\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps9\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smps10_out2\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smps10_out1\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldoln\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ldousb\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regen1\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regen2\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"regen3\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysen1\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysen2\00", [25 x i8] zeroinitializer }, align 32
@palmas_smps_registration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.78, i32 1176, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reading TSTEP reg failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"palmas_smps_registration\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/palmas-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_smps_registration._entry_ptr = internal global ptr @palmas_smps_registration._entry, section ".printk_index", align 4
@palmas_smps_ramp_delay = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 10000, i32 5000, i32 2500], [16 x i8] zeroinitializer }, align 32
@palmas_ops_smps10 = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@smps_high_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 1000000, i32 1, i32 6, i32 0 }, %struct.linear_range { i32 1020000, i32 7, i32 121, i32 20000 }, %struct.linear_range { i32 3300000, i32 122, i32 127, i32 0 }], [32 x i8] zeroinitializer }, align 32
@smps_low_ranges = internal constant { [4 x %struct.linear_range], [32 x i8] } { [4 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 500000, i32 1, i32 6, i32 0 }, %struct.linear_range { i32 510000, i32 7, i32 121, i32 10000 }, %struct.linear_range { i32 1650000, i32 122, i32 127, i32 0 }], [32 x i8] zeroinitializer }, align 32
@palmas_ops_ext_control_smps = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr @palmas_smps_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@palmas_ops_smps = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr @palmas_smps_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@palmas_smps_registration._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.78, i32 1277, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@palmas_smps_registration._entry_ptr.83 = internal global ptr @palmas_smps_registration._entry.81, section ".printk_index", align 4
@palmas_regulator_config_external._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.78, i32 685, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Ext control config for regulator %d failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"palmas_regulator_config_external\00", [63 x i8] zeroinitializer }, align 32
@palmas_regulator_config_external._entry_ptr = internal global ptr @palmas_regulator_config_external._entry, section ".printk_index", align 4
@palmas_smps_set_ramp_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.78, i32 529, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TSTEP write failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"palmas_smps_set_ramp_delay\00", [37 x i8] zeroinitializer }, align 32
@palmas_smps_set_ramp_delay._entry_ptr = internal global ptr @palmas_smps_set_ramp_delay._entry, section ".printk_index", align 4
@palmas_ops_ext_control_ldo = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@palmas_ops_ldo = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@palmas_ops_ldo9 = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@palmas_ops_ext_control_extreg = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@palmas_ops_extreg = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@palmas_ldo_registration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.88, ptr @.str.78, i32 985, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"palmas_ldo_registration\00", [40 x i8] zeroinitializer }, align 32
@palmas_ldo_registration._entry_ptr = internal global ptr @palmas_ldo_registration._entry, section ".printk_index", align 4
@palmas_enable_ldo8_track._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.78, i32 860, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in reading ldo8 control reg\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"palmas_enable_ldo8_track\00", [39 x i8] zeroinitializer }, align 32
@palmas_enable_ldo8_track._entry_ptr = internal global ptr @palmas_enable_ldo8_track._entry, section ".printk_index", align 4
@palmas_enable_ldo8_track._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.78, i32 867, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error in enabling tracking mode\0A\00", [63 x i8] zeroinitializer }, align 32
@palmas_enable_ldo8_track._entry_ptr.93 = internal global ptr @palmas_enable_ldo8_track._entry.91, section ".printk_index", align 4
@palmas_enable_ldo8_track._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.78, i32 878, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in reading ldo8 voltage reg\0A\00", [61 x i8] zeroinitializer }, align 32
@palmas_enable_ldo8_track._entry_ptr.96 = internal global ptr @palmas_enable_ldo8_track._entry.94, section ".printk_index", align 4
@palmas_enable_ldo8_track._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.78, i32 885, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in setting ldo8 voltage reg\0A\00", [61 x i8] zeroinitializer }, align 32
@palmas_enable_ldo8_track._entry_ptr.99 = internal global ptr @palmas_enable_ldo8_track._entry.97, section ".printk_index", align 4
@palmas_ldo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.78, i32 801, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"LDO Register 0x%02x update failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"palmas_ldo_init\00", [16 x i8] zeroinitializer }, align 32
@palmas_ldo_init._entry_ptr = internal global ptr @palmas_ldo_init._entry, section ".printk_index", align 4
@palmas_extreg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.78, i32 827, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Resource reg 0x%02x update failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"palmas_extreg_init\00", [45 x i8] zeroinitializer }, align 32
@palmas_extreg_init._entry_ptr = internal global ptr @palmas_extreg_init._entry, section ".printk_index", align 4
@palmas_extreg_init._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.78, i32 839, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Resource Register 0x%02x update failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@palmas_extreg_init._entry_ptr.106 = internal global ptr @palmas_extreg_init._entry.104, section ".printk_index", align 4
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@palmas_dt_to_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.78, i32 1477, ptr @.str.110, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator node not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"palmas_dt_to_pdata\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@palmas_dt_to_pdata._entry_ptr = internal global ptr @palmas_dt_to_pdata._entry, section ".printk_index", align 4
@palmas_dt_to_pdata._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.109, ptr @.str.78, i32 1485, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error parsing regulator init data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@palmas_dt_to_pdata._entry_ptr.113 = internal global ptr @palmas_dt_to_pdata._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,warm-reset\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,roof-floor\00", [18 x i8] zeroinitializer }, align 32
@palmas_dt_to_pdata._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.78, i32 1530, ptr @.str.118, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Invalid roof-floor option: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@palmas_dt_to_pdata._entry_ptr.119 = internal global ptr @palmas_dt_to_pdata._entry.116, section ".printk_index", align 4
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,mode-sleep\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,smps-range\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,enable-ldo8-tracking\00", [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,ldo6-vibrator\00", [47 x i8] zeroinitializer }, align 32
@tps65917_ddata = internal global { %struct.palmas_pmic_driver_data, [52 x i8] } { %struct.palmas_pmic_driver_data { i32 0, i32 5, i32 6, i32 10, i32 14, i8 1, ptr @tps65917_regs_info, ptr @tps65917_matches, ptr @tps65917_sleep_req_info, ptr @tps65917_smps_registration, ptr @tps65917_ldo_registration }, [52 x i8] zeroinitializer }, align 32
@tps65917_regs_info = internal global { [14 x %struct.palmas_regs_info], [32 x i8] } { [14 x %struct.palmas_regs_info] [%struct.palmas_regs_info { ptr @.str.124, ptr @.str.3, i8 3, i8 0, i8 0, i32 3 }, %struct.palmas_regs_info { ptr @.str.125, ptr @.str.126, i8 7, i8 4, i8 0, i32 4 }, %struct.palmas_regs_info { ptr @.str.5, ptr @.str.6, i8 15, i8 12, i8 0, i32 5 }, %struct.palmas_regs_info { ptr @.str.127, ptr @.str.8, i8 19, i8 16, i8 0, i32 6 }, %struct.palmas_regs_info { ptr @.str.128, ptr @.str.129, i8 27, i8 24, i8 0, i32 7 }, %struct.palmas_regs_info { ptr @.str.2, ptr @.str.3, i8 3, i8 0, i8 0, i32 8 }, %struct.palmas_regs_info { ptr @.str.22, ptr @.str.23, i8 1, i8 0, i8 0, i32 9 }, %struct.palmas_regs_info { ptr @.str.24, ptr @.str.25, i8 3, i8 2, i8 0, i32 10 }, %struct.palmas_regs_info { ptr @.str.26, ptr @.str.27, i8 5, i8 4, i8 0, i32 11 }, %struct.palmas_regs_info { ptr @.str.28, ptr @.str.29, i8 15, i8 14, i8 0, i32 12 }, %struct.palmas_regs_info { ptr @.str.30, ptr @.str.31, i8 19, i8 18, i8 0, i32 13 }, %struct.palmas_regs_info { ptr @.str.44, ptr null, i8 0, i8 2, i8 0, i32 0 }, %struct.palmas_regs_info { ptr @.str.45, ptr null, i8 0, i8 18, i8 0, i32 1 }, %struct.palmas_regs_info { ptr @.str.46, ptr null, i8 0, i8 19, i8 0, i32 2 }], [32 x i8] zeroinitializer }, align 32
@tps65917_matches = internal global { [16 x %struct.of_regulator_match], [64 x i8] } { [16 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.130, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.131, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.51, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.132, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.133, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.49, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.60, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.64, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.71, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.72, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.73, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.74, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.75, ptr null, ptr null, ptr null, ptr null }], [64 x i8] zeroinitializer }, align 32
@tps65917_sleep_req_info = internal global { [14 x %struct.palmas_sleep_requestor_info], [56 x i8] } { [14 x %struct.palmas_sleep_requestor_info] [%struct.palmas_sleep_requestor_info zeroinitializer, %struct.palmas_sleep_requestor_info { i32 1, i32 0, i32 1 }, %struct.palmas_sleep_requestor_info { i32 2, i32 0, i32 6 }, %struct.palmas_sleep_requestor_info { i32 3, i32 1, i32 0 }, %struct.palmas_sleep_requestor_info { i32 4, i32 1, i32 1 }, %struct.palmas_sleep_requestor_info { i32 5, i32 1, i32 2 }, %struct.palmas_sleep_requestor_info { i32 6, i32 1, i32 3 }, %struct.palmas_sleep_requestor_info { i32 7, i32 1, i32 4 }, %struct.palmas_sleep_requestor_info { i32 8, i32 1, i32 5 }, %struct.palmas_sleep_requestor_info { i32 9, i32 2, i32 0 }, %struct.palmas_sleep_requestor_info { i32 10, i32 2, i32 1 }, %struct.palmas_sleep_requestor_info { i32 11, i32 2, i32 2 }, %struct.palmas_sleep_requestor_info { i32 12, i32 2, i32 3 }, %struct.palmas_sleep_requestor_info { i32 13, i32 2, i32 4 }], [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS1\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS2\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps2-in\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS4\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMPS5\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smps5-in\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps1\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps2\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps4\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smps5\00", [26 x i8] zeroinitializer }, align 32
@tps65917_ops_ext_control_smps = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65917_ops_smps = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65917_smps_registration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.134, ptr @.str.78, i32 1381, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tps65917_smps_registration\00", [37 x i8] zeroinitializer }, align 32
@tps65917_smps_registration._entry_ptr = internal global ptr @tps65917_smps_registration._entry, section ".printk_index", align 4
@tps65917_ops_ldo = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65917_ops_ldo_1_2 = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65917_ldo_registration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.135, ptr @.str.78, i32 1092, ptr @.str.79, ptr @.str.80 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tps65917_ldo_registration\00", [38 x i8] zeroinitializer }, align 32
@tps65917_ldo_registration._entry_ptr = internal global ptr @tps65917_ldo_registration._entry, section ".printk_index", align 4
@switch.table.palmas_regulators_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.palmas_get_mode_smps = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.136 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"palmas_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1666, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1668, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"of_palmas_match_tbl\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1555, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1622, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"palmas_generic_regs_info\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 39, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"palmas_ddata\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1438, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 41, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 42, i32 13 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 49, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 57, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 58, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 64, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 65, i32 13 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 72, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 80, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 81, i32 13 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 88, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 89, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 95, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 96, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 103, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 104, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 110, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 111, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 116, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 117, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 122, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 123, i32 13 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 129, i32 12 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 130, i32 13 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 136, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 137, i32 13 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 143, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 144, i32 13 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 150, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 151, i32 13 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 157, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 158, i32 13 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 164, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 165, i32 13 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 171, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 172, i32 13 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 178, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 179, i32 13 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 185, i32 12 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 186, i32 13 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 192, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 193, i32 13 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 199, i32 12 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 204, i32 12 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 209, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 214, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 219, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant [15 x i8] c"palmas_matches\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1389, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant [21 x i8] c"palma_sleep_req_info\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 327, i32 43 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1390, i32 12 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1391, i32 12 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1392, i32 12 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1393, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1394, i32 12 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1395, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1396, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1397, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1398, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1399, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1400, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1401, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1402, i32 12 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1403, i32 12 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1404, i32 12 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1405, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1406, i32 12 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1407, i32 12 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1408, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1409, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1410, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1411, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1412, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1413, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1414, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1415, i32 12 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1416, i32 12 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1175, i32 5 }
@___asan_gen_.404 = private unnamed_addr constant [23 x i8] c"palmas_smps_ramp_delay\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 380, i32 27 }
@___asan_gen_.407 = private unnamed_addr constant [18 x i8] c"palmas_ops_smps10\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 562, i32 35 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"smps_high_ranges\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 32, i32 34 }
@___asan_gen_.413 = private unnamed_addr constant [16 x i8] c"smps_low_ranges\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 25, i32 34 }
@___asan_gen_.416 = private unnamed_addr constant [28 x i8] c"palmas_ops_ext_control_smps\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 551, i32 35 }
@___asan_gen_.419 = private unnamed_addr constant [16 x i8] c"palmas_ops_smps\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 537, i32 35 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1275, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 683, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 529, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [27 x i8] c"palmas_ops_ext_control_ldo\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 633, i32 35 }
@___asan_gen_.449 = private unnamed_addr constant [15 x i8] c"palmas_ops_ldo\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 611, i32 35 }
@___asan_gen_.452 = private unnamed_addr constant [16 x i8] c"palmas_ops_ldo9\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 621, i32 35 }
@___asan_gen_.455 = private unnamed_addr constant [30 x i8] c"palmas_ops_ext_control_extreg\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 646, i32 35 }
@___asan_gen_.458 = private unnamed_addr constant [18 x i8] c"palmas_ops_extreg\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 640, i32 35 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 983, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 860, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 867, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 878, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 885, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 799, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 826, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 837, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1475, i32 42 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1477, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1485, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1507, i32 49 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1508, i32 34 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1528, i32 6 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1537, i32 34 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1541, i32 35 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1547, i32 11 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1550, i32 53 }
@___asan_gen_.566 = private unnamed_addr constant [15 x i8] c"tps65917_ddata\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1452, i32 39 }
@___asan_gen_.569 = private unnamed_addr constant [19 x i8] c"tps65917_regs_info\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 225, i32 32 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"tps65917_matches\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1419, i32 34 }
@___asan_gen_.575 = private unnamed_addr constant [24 x i8] c"tps65917_sleep_req_info\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 363, i32 43 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 227, i32 12 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 234, i32 12 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 235, i32 13 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 248, i32 12 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 255, i32 12 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 256, i32 13 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1420, i32 12 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1421, i32 12 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1423, i32 12 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1424, i32 12 }
@___asan_gen_.608 = private unnamed_addr constant [30 x i8] c"tps65917_ops_ext_control_smps\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 587, i32 35 }
@___asan_gen_.611 = private unnamed_addr constant [18 x i8] c"tps65917_ops_smps\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 574, i32 35 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1379, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"tps65917_ops_ldo\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 649, i32 35 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c"tps65917_ops_ldo_1_2\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 660, i32 35 }
@___asan_gen_.626 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.630 = private constant [40 x i8] c"../drivers/regulator/palmas-regulator.c\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1090, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant [37 x i8] c"switch.table.palmas_regulators_probe\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [34 x i8] c"switch.table.palmas_get_mode_smps\00", align 1
@llvm.compiler.used = appending global [191 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_palmas_exit, ptr @__initcall__kmod_palmas_regulator__293_1678_palmas_init4, ptr @palmas_dt_to_pdata._entry, ptr @palmas_dt_to_pdata._entry.111, ptr @palmas_dt_to_pdata._entry.116, ptr @palmas_dt_to_pdata._entry_ptr, ptr @palmas_dt_to_pdata._entry_ptr.113, ptr @palmas_dt_to_pdata._entry_ptr.119, ptr @palmas_enable_ldo8_track._entry, ptr @palmas_enable_ldo8_track._entry.91, ptr @palmas_enable_ldo8_track._entry.94, ptr @palmas_enable_ldo8_track._entry.97, ptr @palmas_enable_ldo8_track._entry_ptr, ptr @palmas_enable_ldo8_track._entry_ptr.93, ptr @palmas_enable_ldo8_track._entry_ptr.96, ptr @palmas_enable_ldo8_track._entry_ptr.99, ptr @palmas_exit, ptr @palmas_extreg_init._entry, ptr @palmas_extreg_init._entry.104, ptr @palmas_extreg_init._entry_ptr, ptr @palmas_extreg_init._entry_ptr.106, ptr @palmas_ldo_init._entry, ptr @palmas_ldo_init._entry_ptr, ptr @palmas_ldo_registration._entry, ptr @palmas_ldo_registration._entry_ptr, ptr @palmas_regulator_config_external._entry, ptr @palmas_regulator_config_external._entry_ptr, ptr @palmas_smps_registration._entry, ptr @palmas_smps_registration._entry.81, ptr @palmas_smps_registration._entry_ptr, ptr @palmas_smps_registration._entry_ptr.83, ptr @palmas_smps_set_ramp_delay._entry, ptr @palmas_smps_set_ramp_delay._entry_ptr, ptr @tps65917_ldo_registration._entry, ptr @tps65917_ldo_registration._entry_ptr, ptr @tps65917_smps_registration._entry, ptr @tps65917_smps_registration._entry_ptr, ptr @palmas_driver, ptr @.str, ptr @of_palmas_match_tbl, ptr @.str.1, ptr @palmas_generic_regs_info, ptr @palmas_ddata, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @palmas_matches, ptr @palma_sleep_req_info, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @palmas_smps_ramp_delay, ptr @palmas_ops_smps10, ptr @smps_high_ranges, ptr @smps_low_ranges, ptr @palmas_ops_ext_control_smps, ptr @palmas_ops_smps, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @palmas_ops_ext_control_ldo, ptr @palmas_ops_ldo, ptr @palmas_ops_ldo9, ptr @palmas_ops_ext_control_extreg, ptr @palmas_ops_extreg, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @tps65917_ddata, ptr @tps65917_regs_info, ptr @tps65917_matches, ptr @tps65917_sleep_req_info, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @tps65917_ops_ext_control_smps, ptr @tps65917_ops_smps, ptr @.str.134, ptr @tps65917_ops_ldo, ptr @tps65917_ops_ldo_1_2, ptr @.str.135, ptr @switch.table.palmas_regulators_probe, ptr @switch.table.palmas_get_mode_smps], section "llvm.metadata"
@0 = internal global [166 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_palmas_match_tbl to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_generic_regs_info to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ddata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_matches to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palma_sleep_req_info to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_smps_registration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_smps_ramp_delay to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_smps10 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_high_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_low_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_ext_control_smps to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_smps to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_smps_registration._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_regulator_config_external._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_smps_set_ramp_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_ext_control_ldo to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_ldo to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_ldo9 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_ext_control_extreg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ops_extreg to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ldo_registration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_enable_ldo8_track._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_enable_ldo8_track._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_enable_ldo8_track._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_enable_ldo8_track._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_ldo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_extreg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_extreg_init._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_dt_to_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_dt_to_pdata._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_dt_to_pdata._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_ddata to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_regs_info to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_matches to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_sleep_req_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_ops_ext_control_smps to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_ops_smps to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_smps_registration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_ops_ldo to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_ops_ldo_1_2 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65917_ldo_registration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.palmas_regulators_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.palmas_get_mode_smps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @palmas_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_regulators_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %prop.i = alloca i32, align 4
  %reg = alloca i32, align 4
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
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @of_palmas_match_tbl, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i121 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6820, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i121, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end19_crit_edge, label %if.then18

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  store i8 18, ptr getelementptr inbounds ([27 x %struct.palmas_regs_info], ptr @palmas_generic_regs_info, i32 0, i32 23, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.palmas_pmic_driver_data, ptr @palmas_ddata, i32 0, i32 5), align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %dev21 = getelementptr inbounds %struct.palmas_pmic, ptr %call.i121, i32 0, i32 1
  %9 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev21, align 4
  %10 = ptrtoint ptr %call.i121 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %call.i121, align 4
  %pmic23 = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %pmic23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i121, ptr %pmic23, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i121, ptr %driver_data.i.i, align 4
  %13 = load ptr, ptr %call.i121, align 4
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %pmic_ddata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #6
  %15 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %prop.i, align 4, !annotation !338
  %call.i122 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.107) #6
  %tobool.not.i = icmp eq ptr %call.i122, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.108) #9
  br label %if.end29

if.end.i:                                         ; preds = %if.end19
  %palmas_matches.i = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %8, i32 0, i32 7
  %16 = ptrtoint ptr %palmas_matches.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %palmas_matches.i, align 4
  %max_reg.i = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %8, i32 0, i32 4
  %18 = ptrtoint ptr %max_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_reg.i, align 4
  %call1.i = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call.i122, ptr noundef %17, i32 noundef %19) #6
  tail call void @of_node_put(ptr noundef nonnull %call.i122) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end5.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %20 = ptrtoint ptr %max_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8123.i = icmp sgt i32 %21, 0
  br i1 %cmp8123.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %enable_ldo8_tracking.i = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %call.i, i32 0, i32 3
  br label %for.body.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, i32 noundef %call1.i) #9
  br label %if.end29

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.0124.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %palmas_matches.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %palmas_matches.i, align 4
  %arrayidx.i = getelementptr %struct.of_regulator_match, ptr %23, i32 %idx.0124.i
  %of_node.i = getelementptr %struct.of_regulator_match, ptr %23, i32 %idx.0124.i, i32 3
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node.i, align 4
  %init_data.i = getelementptr %struct.of_regulator_match, ptr %23, i32 %idx.0124.i, i32 2
  %26 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_data.i, align 4
  %tobool10.not.i = icmp eq ptr %27, null
  %tobool11.not.i = icmp eq ptr %25, null
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end13.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool15.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool15.not.i, label %palmas_dt_to_pdata.exit, label %if.end17.i

if.end17.i:                                       ; preds = %if.end13.i
  %28 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_data.i, align 4
  %arrayidx19.i = getelementptr [27 x ptr], ptr %call.i, i32 0, i32 %idx.0124.i
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx19.i, align 4
  %arrayidx20.i = getelementptr %struct.palmas_pmic_platform_data, ptr %call.i, i32 0, i32 1, i32 %idx.0124.i
  %31 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %arrayidx20.i, align 4
  %call.i114.i = call ptr @of_find_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.114, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i114.i, null
  %conv.i = zext i1 %tobool.i.i to i32
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %call.i.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %25, ptr noundef nonnull @.str.115, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  %33 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %if.end17.i.if.end53.i_crit_edge [
    i32 -22, label %if.end17.i.if.end54.i_crit_edge
    i32 0, label %if.then27.i
  ]

if.end17.i.if.end54.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.end17.i.if.end53.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then27.i:                                      ; preds = %if.end17.i
  %35 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prop.i, align 4
  %switch.tableidx = add i32 %36, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %37 = icmp ult i32 %switch.tableidx, 3
  br i1 %37, label %switch.lookup, label %do.end37.i

do.end37.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 1527, i32 noundef 9, ptr noundef null) #6
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prop.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.117, ptr noundef %39, i32 noundef %41) #9
  br label %if.end53.i

switch.lookup:                                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.palmas_regulators_probe, i32 0, i32 %switch.tableidx
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %switch.lookup, %do.end37.i, %if.end17.i.if.end53.i_crit_edge
  %econtrol.0.i = phi i32 [ 4, %do.end37.i ], [ 4, %if.end17.i.if.end53.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %roof_floor.i = getelementptr inbounds %struct.palmas_reg_init, ptr %call.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %roof_floor.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %econtrol.0.i, ptr %roof_floor.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.end53.i, %if.end17.i.if.end54.i_crit_edge
  %call.i.i115.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %25, ptr noundef nonnull @.str.120, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i115.i)
  %tobool56.not.i = icmp sgt i32 %call.i.i115.i, -1
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end54.i.if.end58.i_crit_edge

if.end54.i.if.end58.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %prop.i, align 4
  %mode_sleep.i = getelementptr inbounds %struct.palmas_reg_init, ptr %call.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %mode_sleep.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mode_sleep.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %if.end54.i.if.end58.i_crit_edge
  %call.i116.i = call ptr @of_find_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.121, ptr noundef null) #6
  %tobool.i117.not.i = icmp eq ptr %call.i116.i, null
  br i1 %tobool.i117.not.i, label %if.end58.i.if.end63.i_crit_edge, label %if.then62.i

if.end58.i.if.end63.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %vsel.i = getelementptr inbounds %struct.palmas_reg_init, ptr %call.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %vsel.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -128, ptr %vsel.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.end58.i.if.end63.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %idx.0124.i)
  %cmp64.i = icmp eq i32 %idx.0124.i, 18
  br i1 %cmp64.i, label %if.then66.i, label %if.end63.i.for.inc.i_crit_edge

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i118.i = call ptr @of_find_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.122, ptr noundef null) #6
  %tobool.i119.i = icmp ne ptr %call.i118.i, null
  %frombool.i = zext i1 %tobool.i119.i to i8
  %48 = ptrtoint ptr %enable_ldo8_tracking.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool.i, ptr %enable_ldo8_tracking.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then66.i, %if.end63.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.0124.i, 1
  %49 = ptrtoint ptr %max_reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_reg.i, align 4
  %cmp8.i = icmp slt i32 %inc.i, %50
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call.i120.i = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.123, ptr noundef null) #6
  %tobool.i121.i = icmp ne ptr %call.i120.i, null
  %conv72.i = zext i1 %tobool.i121.i to i32
  %ldo6_vibrator.i = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %ldo6_vibrator.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv72.i, ptr %ldo6_vibrator.i, align 4
  br label %if.end29

palmas_dt_to_pdata.exit:                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  br label %cleanup

if.end29:                                         ; preds = %for.end.i, %do.end5.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #6
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %3, i32 0, i32 2
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i123 = call i32 @regmap_read(ptr noundef %53, i32 noundef 68, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool31.not = icmp eq i32 %call.i123, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg, align 4
  %and = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %smps123 = getelementptr inbounds %struct.palmas_pmic, ptr %call.i121, i32 0, i32 4
  %56 = ptrtoint ptr %smps123 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %smps123, align 4
  %smps12 = getelementptr inbounds %struct.palmas_pmic, ptr %call.i121, i32 0, i32 6
  %57 = ptrtoint ptr %smps12 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %smps12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %and37 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end40_crit_edge, label %if.then39

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %smps457 = getelementptr inbounds %struct.palmas_pmic, ptr %call.i121, i32 0, i32 5
  %58 = ptrtoint ptr %smps457 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %smps457, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36.if.end40_crit_edge
  %59 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i, align 4
  %61 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev, align 8
  %smps_register = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %8, i32 0, i32 9
  %63 = ptrtoint ptr %smps_register to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %smps_register, align 4
  %65 = ptrtoint ptr %dev to i32
  %.fca.0.insert = insertvalue [6 x i32] poison, i32 %65, 0
  %.fca.1.insert = insertvalue [6 x i32] %.fca.0.insert, i32 0, 1
  %66 = ptrtoint ptr %call.i121 to i32
  %.fca.2.insert = insertvalue [6 x i32] %.fca.1.insert, i32 %66, 2
  %.fca.3.insert = insertvalue [6 x i32] %.fca.2.insert, i32 0, 3
  %67 = ptrtoint ptr %60 to i32
  %.fca.4.insert = insertvalue [6 x i32] %.fca.3.insert, i32 %67, 4
  %.fca.5.insert = insertvalue [6 x i32] %.fca.4.insert, i32 0, 5
  %call45 = call i32 %64(ptr noundef nonnull %call.i121, ptr noundef %8, ptr noundef nonnull %call.i, ptr noundef %62, [6 x i32] %.fca.5.insert) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %ldo_register = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %8, i32 0, i32 10
  %68 = ptrtoint ptr %ldo_register to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ldo_register, align 4
  %call49 = call i32 %69(ptr noundef nonnull %call.i121, ptr noundef %8, ptr noundef nonnull %call.i, ptr noundef %62, [6 x i32] %.fca.5.insert) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end40.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %palmas_dt_to_pdata.exit, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end48 ], [ -61, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %palmas_dt_to_pdata.exit ], [ %call.i123, %if.end29.cleanup_crit_edge ], [ %call45, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_smps_registration(ptr noundef %pmic, ptr nocapture noundef readonly %ddata, ptr noundef readonly %pdata, ptr noundef %pdev_name, [6 x i32] %config.coerce) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config.coerce.fca.0.extract = extractvalue [6 x i32] %config.coerce, 0
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %config.coerce.fca.0.extract, ptr %config, align 4
  %config.coerce.fca.1.extract = extractvalue [6 x i32] %config.coerce, 1
  %config.coerce.fca.1.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %config.coerce.fca.1.extract, ptr %config.coerce.fca.1.gep, align 4
  %config.coerce.fca.2.extract = extractvalue [6 x i32] %config.coerce, 2
  %config.coerce.fca.2.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %config.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %config.coerce.fca.2.extract, ptr %config.coerce.fca.2.gep, align 4
  %config.coerce.fca.3.extract = extractvalue [6 x i32] %config.coerce, 3
  %config.coerce.fca.3.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %config.coerce.fca.3.extract, ptr %config.coerce.fca.3.gep, align 4
  %config.coerce.fca.4.extract = extractvalue [6 x i32] %config.coerce, 4
  %config.coerce.fca.4.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %config.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %config.coerce.fca.4.extract, ptr %config.coerce.fca.4.gep, align 4
  %config.coerce.fca.5.extract = extractvalue [6 x i32] %config.coerce, 5
  %config.coerce.fca.5.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %config.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %config.coerce.fca.5.extract, ptr %config.coerce.fca.5.gep, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %7 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ddata, align 4
  %smps_end = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 1
  %9 = ptrtoint ptr %smps_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smps_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not253 = icmp sgt i32 %8, %10
  br i1 %cmp.not253, label %entry.cleanup129_crit_edge, label %for.body.lr.ph

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup129

for.body.lr.ph:                                   ; preds = %entry
  %smps45717 = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 5
  %smps1235 = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 4
  %palmas_regs_info237 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 6
  %tobool44.not = icmp eq ptr %pdata, null
  %palmas_matches = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 7
  %dev119 = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.0254 = phi i32 [ %8, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = zext i32 %id.0254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %id.0254, label %for.body.sw.epilog_crit_edge [
    i32 0, label %for.body.sw.bb_crit_edge
    i32 2, label %for.body.sw.bb_crit_edge268
    i32 1, label %sw.bb4
    i32 3, label %for.body.sw.bb9_crit_edge
    i32 6, label %for.body.sw.bb9_crit_edge269
    i32 4, label %sw.bb16
    i32 10, label %for.body.sw.bb21_crit_edge
    i32 9, label %for.body.sw.bb21_crit_edge270
  ]

for.body.sw.bb21_crit_edge270:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

for.body.sw.bb21_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

for.body.sw.bb9_crit_edge269:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

for.body.sw.bb9_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

for.body.sw.bb_crit_edge268:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge268
  %12 = ptrtoint ptr %smps1235 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smps1235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.0254)
  %cmp1 = icmp eq i32 %id.0254, 0
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  %14 = ptrtoint ptr %smps1235 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smps1235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %sw.bb4.for.inc_crit_edge, label %sw.bb4.if.end30.thread_crit_edge

sw.bb4.if.end30.thread_crit_edge:                 ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.thread

sw.bb4.for.inc_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb9:                                           ; preds = %for.body.sw.bb9_crit_edge, %for.body.sw.bb9_crit_edge269
  %16 = ptrtoint ptr %smps45717 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smps45717, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb9.for.inc_crit_edge

sw.bb9.for.inc_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %id.0254)
  %cmp13 = icmp eq i32 %id.0254, 3
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  %18 = ptrtoint ptr %smps45717 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smps45717, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %sw.bb16.for.inc_crit_edge, label %sw.bb16.if.end30.thread_crit_edge

sw.bb16.if.end30.thread_crit_edge:                ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.thread

sw.bb16.for.inc_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb21:                                          ; preds = %for.body.sw.bb21_crit_edge, %for.body.sw.bb21_crit_edge270
  %20 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmic, align 4
  %features = getelementptr inbounds %struct.palmas, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %features, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %sw.bb21.for.inc_crit_edge, label %sw.bb21.sw.epilog_crit_edge

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb21.for.inc_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30.thread:                                  ; preds = %sw.bb16.if.end30.thread_crit_edge, %sw.bb4.if.end30.thread_crit_edge
  %24 = ptrtoint ptr %palmas_regs_info237 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %palmas_regs_info237, align 4
  %arrayidx238 = getelementptr %struct.palmas_regs_info, ptr %25, i32 %id.0254
  %arrayidx26239 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254
  br label %if.then32

sw.epilog:                                        ; preds = %sw.bb21.sw.epilog_crit_edge, %if.end12, %if.end, %for.body.sw.epilog_crit_edge
  %ramp_delay_support.0.off0 = phi i1 [ false, %for.body.sw.epilog_crit_edge ], [ false, %sw.bb21.sw.epilog_crit_edge ], [ %cmp1, %if.end ], [ %cmp13, %if.end12 ]
  %26 = ptrtoint ptr %palmas_regs_info237 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %palmas_regs_info237, align 4
  %arrayidx = getelementptr %struct.palmas_regs_info, ptr %27, i32 %id.0254
  %arrayidx26 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254
  %28 = zext i32 %id.0254 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %id.0254, label %if.end30 [
    i32 5, label %sw.epilog.if.then32_crit_edge
    i32 7, label %sw.epilog.if.then32_crit_edge271
  ]

sw.epilog.if.then32_crit_edge271:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

sw.epilog.if.then32_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.end30:                                         ; preds = %sw.epilog
  br i1 %ramp_delay_support.0.off0, label %if.end30.if.then32_crit_edge, label %if.end30.if.end43_crit_edge

if.end30.if.end43_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %sw.epilog.if.then32_crit_edge, %sw.epilog.if.then32_crit_edge271, %if.end30.thread
  %arrayidx26245 = phi ptr [ %arrayidx26, %sw.epilog.if.then32_crit_edge ], [ %arrayidx26, %sw.epilog.if.then32_crit_edge271 ], [ %arrayidx26, %if.end30.if.then32_crit_edge ], [ %arrayidx26239, %if.end30.thread ]
  %arrayidx242 = phi ptr [ %arrayidx, %sw.epilog.if.then32_crit_edge ], [ %arrayidx, %sw.epilog.if.then32_crit_edge271 ], [ %arrayidx, %if.end30.if.then32_crit_edge ], [ %arrayidx238, %if.end30.thread ]
  %29 = phi ptr [ %27, %sw.epilog.if.then32_crit_edge ], [ %27, %sw.epilog.if.then32_crit_edge271 ], [ %27, %if.end30.if.then32_crit_edge ], [ %25, %if.end30.thread ]
  %tstep_addr = getelementptr %struct.palmas_regs_info, ptr %29, i32 %id.0254, i32 4
  %30 = ptrtoint ptr %tstep_addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tstep_addr, align 2
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pmic, align 4
  %add.i = add nuw nsw i32 %conv, 32
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %35, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp slt i32 %call.i, 0
  br i1 %cmp34, label %do.end, label %if.end37

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.76, i32 noundef %call.i) #9
  br label %cleanup129

if.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg, align 4
  %and38 = and i32 %39, 3
  %arrayidx39 = getelementptr [4 x i32], ptr @palmas_smps_ramp_delay, i32 0, i32 %and38
  %40 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx39, align 4
  %ramp_delay = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 18
  %42 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ramp_delay, align 4
  %arrayidx42 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 8, i32 %id.0254
  %43 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end37, %if.end30.if.end43_crit_edge
  %arrayidx26244 = phi ptr [ %arrayidx26245, %if.end37 ], [ %arrayidx26, %if.end30.if.end43_crit_edge ]
  %arrayidx241 = phi ptr [ %arrayidx242, %if.end37 ], [ %arrayidx, %if.end30.if.end43_crit_edge ]
  %44 = phi ptr [ %29, %if.end37 ], [ %27, %if.end30.if.end43_crit_edge ]
  br i1 %tobool44.not, label %if.end43.if.end56_crit_edge, label %land.lhs.true

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end43
  %arrayidx46 = getelementptr %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 1, i32 %id.0254
  %45 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %46, null
  br i1 %tobool47.not, label %land.lhs.true.if.end56_crit_edge, label %if.then48

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then48:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pmic, align 4
  %call52 = call fastcc i32 @palmas_smps_init(ptr noundef %48, i32 noundef %id.0254, ptr noundef nonnull %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then48.if.end56_crit_edge, label %if.then48.cleanup129_crit_edge

if.then48.cleanup129_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup129

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %if.then48.if.end56_crit_edge, %land.lhs.true.if.end56_crit_edge, %if.end43.if.end56_crit_edge
  %reg_init.0 = phi ptr [ %46, %if.then48.if.end56_crit_edge ], [ null, %land.lhs.true.if.end56_crit_edge ], [ null, %if.end43.if.end56_crit_edge ]
  %49 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx241, align 4
  %51 = ptrtoint ptr %arrayidx26244 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx26244, align 4
  %id58 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 6
  %52 = ptrtoint ptr %id58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %id.0254, ptr %id58, align 4
  %id.0.off = add i32 %id.0254, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.0.off)
  %switch = icmp ult i32 %id.0.off, 2
  br i1 %switch, label %sw.bb59, label %sw.default

sw.bb59:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %n_voltages = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 8
  %53 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %n_voltages, align 4
  %ops = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 10
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @palmas_ops_smps10, ptr %ops, align 4
  %vsel_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 27
  %55 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 60, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 28
  %56 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %vsel_mask, align 4
  %enable_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 34
  %57 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 60, ptr %enable_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %id.0254)
  %cmp60 = icmp eq i32 %id.0254, 10
  %spec.select = select i1 %cmp60, i32 1, i32 4
  %58 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 35
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select, ptr %58, align 4
  %bypass_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 39
  %60 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 60, ptr %bypass_reg, align 4
  %bypass_val_on = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 41
  %61 = ptrtoint ptr %bypass_val_on to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %bypass_val_on, align 4
  %bypass_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 40
  %62 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %bypass_mask, align 4
  %min_uV = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 14
  %63 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3750000, ptr %min_uV, align 4
  %uV_step = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 15
  %64 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1250000, ptr %uV_step, align 4
  br label %sw.epilog110

sw.default:                                       ; preds = %if.end56
  %vsel_addr = getelementptr %struct.palmas_regs_info, ptr %44, i32 %id.0254, i32 2
  %65 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %vsel_addr, align 4
  %conv66 = zext i8 %66 to i32
  %n_linear_ranges = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 22
  %67 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %n_linear_ranges, align 4
  %68 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pmic, align 4
  %add.i230 = add nuw nsw i32 %conv66, 32
  %regmap.i231 = getelementptr inbounds %struct.palmas, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %regmap.i231 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i231, align 4
  %call.i232 = call i32 @regmap_read(ptr noundef %71, i32 noundef %add.i230, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool69.not = icmp eq i32 %call.i232, 0
  br i1 %tobool69.not, label %if.end71, label %sw.default.cleanup129_crit_edge

sw.default.cleanup129_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup129

if.end71:                                         ; preds = %sw.default
  %72 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg, align 4
  %and72 = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end76_crit_edge, label %if.then74

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx75 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 7, i32 %id.0254
  %74 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %arrayidx75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end71.if.end76_crit_edge
  %arrayidx78 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 7, i32 %id.0254
  %75 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool79.not = icmp eq i32 %76, 0
  %spec.select267 = select i1 %tobool79.not, ptr @smps_low_ranges, ptr @smps_high_ranges
  %77 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 20
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %spec.select267, ptr %77, align 4
  %tobool84.not = icmp eq ptr %reg_init.0, null
  br i1 %tobool84.not, label %if.end76.if.else89_crit_edge, label %land.lhs.true85

if.end76.if.else89_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else89

land.lhs.true85:                                  ; preds = %if.end76
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init.0, i32 0, i32 1
  %79 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool86.not = icmp eq i32 %80, 0
  br i1 %tobool86.not, label %land.lhs.true85.if.else89_crit_edge, label %land.lhs.true85.if.end91_crit_edge

land.lhs.true85.if.end91_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

land.lhs.true85.if.else89_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else89

if.else89:                                        ; preds = %land.lhs.true85.if.else89_crit_edge, %if.end76.if.else89_crit_edge
  br label %if.end91

if.end91:                                         ; preds = %if.else89, %land.lhs.true85.if.end91_crit_edge
  %palmas_ops_smps.sink = phi ptr [ @palmas_ops_smps, %if.else89 ], [ @palmas_ops_ext_control_smps, %land.lhs.true85.if.end91_crit_edge ]
  %ops90 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 10
  %81 = ptrtoint ptr %ops90 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %palmas_ops_smps.sink, ptr %ops90, align 4
  %n_voltages92 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 8
  %82 = ptrtoint ptr %n_voltages92 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 122, ptr %n_voltages92, align 4
  %83 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %vsel_addr, align 4
  %conv94 = zext i8 %84 to i32
  %add = add nuw nsw i32 %conv94, 32
  %vsel_reg95 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 27
  %85 = ptrtoint ptr %vsel_reg95 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add, ptr %vsel_reg95, align 4
  %vsel_mask96 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 28
  %86 = ptrtoint ptr %vsel_mask96 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 127, ptr %vsel_mask96, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %44, i32 %id.0254, i32 3
  %87 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ctrl_addr, align 1
  %conv97 = zext i8 %88 to i32
  %89 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pmic, align 4
  %add.i233 = add nuw nsw i32 %conv97, 32
  %regmap.i234 = getelementptr inbounds %struct.palmas, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %regmap.i234 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i234, align 4
  %call.i235 = call i32 @regmap_read(ptr noundef %92, i32 noundef %add.i233, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool100.not = icmp eq i32 %call.i235, 0
  br i1 %tobool100.not, label %if.end102, label %if.end91.cleanup129_crit_edge

if.end91.cleanup129_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup129

if.end102:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg, align 4
  %and103 = and i32 %94, 3
  %arrayidx104 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 9, i32 %id.0254
  %95 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and103, ptr %arrayidx104, align 4
  %96 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ctrl_addr, align 1
  %conv106 = zext i8 %97 to i32
  %add107 = add nuw nsw i32 %conv106, 32
  %enable_reg108 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 34
  %98 = ptrtoint ptr %enable_reg108 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add107, ptr %enable_reg108, align 4
  %enable_mask109 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 35
  %99 = ptrtoint ptr %enable_mask109 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %enable_mask109, align 4
  %enable_val = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 36
  %100 = ptrtoint ptr %enable_val to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %enable_val, align 4
  br label %sw.epilog110

sw.epilog110:                                     ; preds = %if.end102, %sw.bb59
  %type = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 12
  %101 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %type, align 4
  %owner = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 13
  %102 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %owner, align 4
  br i1 %tobool44.not, label %sw.epilog110.if.end116_crit_edge, label %if.then112

sw.epilog110.if.end116_crit_edge:                 ; preds = %sw.epilog110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then112:                                       ; preds = %sw.epilog110
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx113 = getelementptr [27 x ptr], ptr %pdata, i32 0, i32 %id.0254
  %103 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx113, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %sw.epilog110.if.end116_crit_edge
  %storemerge = phi ptr [ %104, %if.then112 ], [ null, %sw.epilog110.if.end116_crit_edge ]
  %105 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %storemerge, ptr %config.coerce.fca.1.gep, align 4
  %sname = getelementptr %struct.palmas_regs_info, ptr %44, i32 %id.0254, i32 1
  %106 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sname, align 4
  %supply_name = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0254, i32 1
  %108 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %supply_name, align 4
  %109 = ptrtoint ptr %palmas_matches to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %palmas_matches, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %110, i32 %id.0254, i32 3
  %111 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node, align 4
  %113 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %config.coerce.fca.3.gep, align 4
  %114 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev119, align 4
  %call120 = call ptr @devm_regulator_register(ptr noundef %115, ptr noundef %arrayidx26244, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end125, label %if.end116.for.inc_crit_edge

if.end116.for.inc_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end125:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.82, ptr noundef %pdev_name) #9
  %118 = ptrtoint ptr %call120 to i32
  br label %cleanup129

for.inc:                                          ; preds = %if.end116.for.inc_crit_edge, %sw.bb21.for.inc_crit_edge, %sw.bb16.for.inc_crit_edge, %sw.bb9.for.inc_crit_edge, %sw.bb4.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %inc = add i32 %id.0254, 1
  %119 = ptrtoint ptr %smps_end to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %smps_end, align 4
  %cmp.not = icmp sgt i32 %inc, %120
  br i1 %cmp.not, label %for.inc.cleanup129_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup129_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup129

cleanup129:                                       ; preds = %for.inc.cleanup129_crit_edge, %do.end125, %if.end91.cleanup129_crit_edge, %sw.default.cleanup129_crit_edge, %if.then48.cleanup129_crit_edge, %do.end, %entry.cleanup129_crit_edge
  %retval.2 = phi i32 [ %call.i, %do.end ], [ %118, %do.end125 ], [ 0, %entry.cleanup129_crit_edge ], [ 0, %for.inc.cleanup129_crit_edge ], [ %call.i235, %if.end91.cleanup129_crit_edge ], [ %call.i232, %sw.default.cleanup129_crit_edge ], [ %call52, %if.then48.cleanup129_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_ldo_registration(ptr noundef %pmic, ptr nocapture noundef readonly %ddata, ptr noundef readonly %pdata, ptr noundef %pdev_name, [6 x i32] %config.coerce) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config.coerce.fca.0.extract = extractvalue [6 x i32] %config.coerce, 0
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %config.coerce.fca.0.extract, ptr %config, align 4
  %config.coerce.fca.1.extract = extractvalue [6 x i32] %config.coerce, 1
  %config.coerce.fca.1.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %config.coerce.fca.1.extract, ptr %config.coerce.fca.1.gep, align 4
  %config.coerce.fca.2.extract = extractvalue [6 x i32] %config.coerce, 2
  %config.coerce.fca.2.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %config.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %config.coerce.fca.2.extract, ptr %config.coerce.fca.2.gep, align 4
  %config.coerce.fca.3.extract = extractvalue [6 x i32] %config.coerce, 3
  %config.coerce.fca.3.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %config.coerce.fca.3.extract, ptr %config.coerce.fca.3.gep, align 4
  %config.coerce.fca.4.extract = extractvalue [6 x i32] %config.coerce, 4
  %config.coerce.fca.4.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %config.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %config.coerce.fca.4.extract, ptr %config.coerce.fca.4.gep, align 4
  %config.coerce.fca.5.extract = extractvalue [6 x i32] %config.coerce, 5
  %config.coerce.fca.5.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %config.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %config.coerce.fca.5.extract, ptr %config.coerce.fca.5.gep, align 4
  %ldo_begin = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 2
  %6 = ptrtoint ptr %ldo_begin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ldo_begin, align 4
  %max_reg = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %max_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp191 = icmp slt i32 %7, %9
  br i1 %cmp191, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pdata, null
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 6
  %has_regen3 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 5
  %tobool.not.not = xor i1 %tobool.not, true
  %enable_ldo8_tracking = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 3
  %ldo6_vibrator = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 2
  %palmas_matches = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 7
  %dev = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 1
  %ldo_end = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 3
  %ops44 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 19, i32 10
  %bypass_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 19, i32 39
  %bypass_val_on = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 19, i32 41
  %bypass_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 19, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.0192 = phi i32 [ %7, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 1, i32 %id.0192
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %reg_init.0 = phi ptr [ null, %if.else ], [ %11, %land.lhs.true.if.end_crit_edge ]
  %12 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %palmas_regs_info, align 4
  %arrayidx5 = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0192
  %arrayidx7 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx7, align 4
  %id9 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 6
  %17 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %id.0192, ptr %id9, align 4
  %type = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 12
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 4
  %owner = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 13
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %id.0192)
  %cmp10 = icmp slt i32 %id.0192, 22
  br i1 %cmp10, label %if.then11, label %if.else47

if.then11:                                        ; preds = %if.end
  %n_voltages = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 8
  %20 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 50, ptr %n_voltages, align 4
  %tobool12.not = icmp eq ptr %reg_init.0, null
  br i1 %tobool12.not, label %if.then11.if.else16_crit_edge, label %land.lhs.true13

if.then11.if.else16_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

land.lhs.true13:                                  ; preds = %if.then11
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init.0, i32 0, i32 1
  %21 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %land.lhs.true13.if.else16_crit_edge, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true13.if.else16_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true13.if.else16_crit_edge, %if.then11.if.else16_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %land.lhs.true13.if.end18_crit_edge
  %palmas_ops_ldo.sink = phi ptr [ @palmas_ops_ldo, %if.else16 ], [ @palmas_ops_ext_control_ldo, %land.lhs.true13.if.end18_crit_edge ]
  %ops17 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 10
  %23 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %palmas_ops_ldo.sink, ptr %ops17, align 4
  %min_uV = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 14
  %24 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 900000, ptr %min_uV, align 4
  %uV_step = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 15
  %25 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50000, ptr %uV_step, align 4
  %linear_min_sel = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 16
  %26 = ptrtoint ptr %linear_min_sel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %linear_min_sel, align 4
  %enable_time = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 57
  %27 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 500, ptr %enable_time, align 4
  %vsel_addr = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0192, i32 2
  %28 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vsel_addr, align 4
  %conv = zext i8 %29 to i32
  %add = add nuw nsw i32 %conv, 80
  %vsel_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 27
  %30 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 28
  %31 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 63, ptr %vsel_mask, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0192, i32 3
  %32 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctrl_addr, align 1
  %conv19 = zext i8 %33 to i32
  %add20 = add nuw nsw i32 %conv19, 80
  %enable_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 34
  %34 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add20, ptr %enable_reg, align 4
  %enable_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 35
  %35 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %id.0192)
  %cmp23 = icmp eq i32 %id.0192, 18
  %or.cond = select i1 %tobool.not.not, i1 %cmp23, i1 false
  br i1 %or.cond, label %land.lhs.true25, label %if.end18.if.end31_crit_edge

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true25:                                  ; preds = %if.end18
  %36 = ptrtoint ptr %enable_ldo8_tracking to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enable_ldo8_tracking, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool26.not = icmp eq i8 %37, 0
  br i1 %tobool26.not, label %land.lhs.true25.if.end31_crit_edge, label %if.then28

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true25
  %38 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pmic, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %reg.i, align 4, !annotation !338
  %pmic_ddata.i = getelementptr inbounds %struct.palmas, ptr %39, i32 0, i32 9
  %41 = ptrtoint ptr %pmic_ddata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pmic_ddata.i, align 4
  %palmas_regs_info.i = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %palmas_regs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %palmas_regs_info.i, align 4
  %ctrl_addr.i = getelementptr %struct.palmas_regs_info, ptr %44, i32 18, i32 3
  %45 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ctrl_addr.i, align 1
  %conv.i = zext i8 %46 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 80
  %regmap.i.i = getelementptr inbounds %struct.palmas, ptr %39, i32 0, i32 2
  %47 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %48, i32 noundef %add.i.i, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then28.cleanup.sink.split.i_crit_edge

if.then28.cleanup.sink.split.i_crit_edge:         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then28
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %50, 64
  store i32 %or.i, ptr %reg.i, align 4
  %51 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i, align 4
  %call.i48.i = call i32 @regmap_write(ptr noundef %52, i32 noundef %add.i.i, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end8.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.end.i
  %vsel_addr.i = getelementptr %struct.palmas_regs_info, ptr %44, i32 18, i32 2
  %53 = ptrtoint ptr %vsel_addr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vsel_addr.i, align 4
  %conv9.i = zext i8 %54 to i32
  %add.i49.i = add nuw nsw i32 %conv9.i, 80
  %55 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i.i, align 4
  %call.i51.i = call i32 @regmap_read(ptr noundef %56, i32 noundef %add.i49.i, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool11.not.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %if.end8.i.cleanup.sink.split.i_crit_edge

if.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end17.i:                                       ; preds = %if.end8.i
  %57 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg.i, align 4
  %shl.i = shl i32 %58, 1
  %and.i = and i32 %shl.i, 62
  store i32 %and.i, ptr %reg.i, align 4
  %59 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i.i, align 4
  %call.i54.i = call i32 @regmap_write(ptr noundef %60, i32 noundef %add.i49.i, i32 noundef %and.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp19.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp19.i, label %if.end17.i.cleanup.sink.split.i_crit_edge, label %if.end17.i.palmas_enable_ldo8_track.exit_crit_edge

if.end17.i.palmas_enable_ldo8_track.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %palmas_enable_ldo8_track.exit

if.end17.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end17.i.cleanup.sink.split.i_crit_edge, %if.end8.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %if.then28.cleanup.sink.split.i_crit_edge
  %.str.98.sink.i = phi ptr [ @.str.89, %if.then28.cleanup.sink.split.i_crit_edge ], [ @.str.92, %if.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.95, %if.end8.i.cleanup.sink.split.i_crit_edge ], [ @.str.98, %if.end17.i.cleanup.sink.split.i_crit_edge ]
  %61 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull %.str.98.sink.i) #9
  br label %palmas_enable_ldo8_track.exit

palmas_enable_ldo8_track.exit:                    ; preds = %cleanup.sink.split.i, %if.end17.i.palmas_enable_ldo8_track.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %63 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 450000, ptr %min_uV, align 4
  %64 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 25000, ptr %uV_step, align 4
  br label %if.end31

if.end31:                                         ; preds = %palmas_enable_ldo8_track.exit, %land.lhs.true25.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  br i1 %tobool.not, label %if.end31.if.end40_crit_edge, label %land.lhs.true33

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true33:                                  ; preds = %if.end31
  %65 = ptrtoint ptr %ldo6_vibrator to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ldo6_vibrator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool34.not = icmp ne i32 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %id.0192)
  %cmp36 = icmp eq i32 %id.0192, 16
  %or.cond187 = select i1 %tobool34.not, i1 %cmp36, i1 false
  br i1 %or.cond187, label %if.end69.thread, label %land.lhs.true33.if.end40_crit_edge

land.lhs.true33.if.end40_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end69.thread:                                  ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2000, ptr %enable_time, align 4
  br label %if.then71

if.end40:                                         ; preds = %land.lhs.true33.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %id.0192)
  %cmp41 = icmp eq i32 %id.0192, 19
  br i1 %cmp41, label %if.then43, label %if.end40.if.end69_crit_edge

if.end40.if.end69_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @palmas_ops_ldo9, ptr %ops44, align 4
  %69 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %enable_reg, align 4
  %71 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %bypass_reg, align 4
  %72 = ptrtoint ptr %bypass_val_on to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 64, ptr %bypass_val_on, align 4
  %73 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 64, ptr %bypass_mask, align 4
  br label %if.end69

if.else47:                                        ; preds = %if.end
  %74 = ptrtoint ptr %has_regen3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %has_regen3, align 4, !range !339
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool48.not = icmp eq i8 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %id.0192)
  %cmp50 = icmp eq i32 %id.0192, 24
  %or.cond188 = select i1 %tobool48.not, i1 %cmp50, i1 false
  br i1 %or.cond188, label %if.else47.for.inc_crit_edge, label %if.end53

if.else47.for.inc_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end53:                                         ; preds = %if.else47
  %n_voltages54 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 8
  %76 = ptrtoint ptr %n_voltages54 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %n_voltages54, align 4
  %tobool55.not = icmp eq ptr %reg_init.0, null
  br i1 %tobool55.not, label %if.end53.if.else61_crit_edge, label %land.lhs.true56

if.end53.if.else61_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else61

land.lhs.true56:                                  ; preds = %if.end53
  %roof_floor57 = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init.0, i32 0, i32 1
  %77 = ptrtoint ptr %roof_floor57 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %roof_floor57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool58.not = icmp eq i32 %78, 0
  br i1 %tobool58.not, label %land.lhs.true56.if.else61_crit_edge, label %land.lhs.true56.if.end63_crit_edge

land.lhs.true56.if.end63_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.lhs.true56.if.else61_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else61

if.else61:                                        ; preds = %land.lhs.true56.if.else61_crit_edge, %if.end53.if.else61_crit_edge
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %land.lhs.true56.if.end63_crit_edge
  %palmas_ops_extreg.sink = phi ptr [ @palmas_ops_extreg, %if.else61 ], [ @palmas_ops_ext_control_extreg, %land.lhs.true56.if.end63_crit_edge ]
  %ops62 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 10
  %79 = ptrtoint ptr %ops62 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %palmas_ops_extreg.sink, ptr %ops62, align 4
  %ctrl_addr64 = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0192, i32 3
  %80 = ptrtoint ptr %ctrl_addr64 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ctrl_addr64, align 1
  %conv65 = zext i8 %81 to i32
  %add66 = add nuw nsw i32 %conv65, 212
  %enable_reg67 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 34
  %82 = ptrtoint ptr %enable_reg67 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add66, ptr %enable_reg67, align 4
  %enable_mask68 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 35
  %83 = ptrtoint ptr %enable_mask68 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %enable_mask68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end63, %if.then43, %if.end40.if.end69_crit_edge
  br i1 %tobool.not, label %if.end69.if.end75_crit_edge, label %if.end69.if.then71_crit_edge

if.end69.if.then71_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then71:                                        ; preds = %if.end69.if.then71_crit_edge, %if.end69.thread
  %arrayidx72 = getelementptr [27 x ptr], ptr %pdata, i32 0, i32 %id.0192
  %84 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx72, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end69.if.end75_crit_edge
  %storemerge = phi ptr [ %85, %if.then71 ], [ null, %if.end69.if.end75_crit_edge ]
  %86 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %storemerge, ptr %config.coerce.fca.1.gep, align 4
  %sname = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0192, i32 1
  %87 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sname, align 4
  %supply_name = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0192, i32 1
  %89 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %supply_name, align 4
  %90 = ptrtoint ptr %palmas_matches to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %palmas_matches, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %91, i32 %id.0192, i32 3
  %92 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node, align 4
  %94 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %config.coerce.fca.3.gep, align 4
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %call = call ptr @devm_regulator_register(ptr noundef %96, ptr noundef %arrayidx7, ptr noundef nonnull %config) #6
  %cmp.i189 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %do.end, label %if.end82

do.end:                                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.82, ptr noundef %pdev_name) #9
  %99 = ptrtoint ptr %call to i32
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  br i1 %tobool.not, label %if.end82.for.inc_crit_edge, label %if.then84

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then84:                                        ; preds = %if.end82
  %arrayidx86 = getelementptr %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 1, i32 %id.0192
  %100 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx86, align 4
  %tobool87.not = icmp eq ptr %101, null
  br i1 %tobool87.not, label %if.then84.for.inc_crit_edge, label %if.then88

if.then84.for.inc_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then88:                                        ; preds = %if.then84
  %102 = ptrtoint ptr %ldo_end to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ldo_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0192, i32 %103)
  %cmp89.not = icmp sgt i32 %id.0192, %103
  %104 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pmic, align 4
  br i1 %cmp89.not, label %if.else94, label %if.then91

if.then91:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %call93 = call fastcc i32 @palmas_ldo_init(ptr noundef %105, i32 noundef %id.0192, ptr noundef nonnull %101)
  br label %if.end97

if.else94:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = call fastcc i32 @palmas_extreg_init(ptr noundef %105, i32 noundef %id.0192, ptr noundef nonnull %101)
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then91
  %ret.0 = phi i32 [ %call93, %if.then91 ], [ %call96, %if.else94 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool98.not = icmp eq i32 %ret.0, 0
  br i1 %tobool98.not, label %if.end97.for.inc_crit_edge, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97.for.inc_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end97.for.inc_crit_edge, %if.then84.for.inc_crit_edge, %if.end82.for.inc_crit_edge, %if.else47.for.inc_crit_edge
  %inc = add nsw i32 %id.0192, 1
  %106 = ptrtoint ptr %max_reg to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %max_reg, align 4
  %cmp = icmp slt i32 %inc, %107
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %99, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end97.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @palmas_smps_init(ptr noundef %palmas, i32 noundef %id, ptr nocapture noundef readonly %reg_init) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 9
  %1 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %palmas_regs_info, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %4, i32 %id, i32 3
  %5 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl_addr, align 1
  %conv = zext i8 %6 to i32
  %add.i = add nuw nsw i32 %conv, 32
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id.off = add i32 %id, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off)
  %switch = icmp ult i32 %id.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %and = and i32 %10, -241
  store i32 %and, ptr %reg, align 4
  %mode_sleep = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 2
  %11 = ptrtoint ptr %mode_sleep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not = icmp eq i32 %12, 0
  br i1 %tobool1.not, label %sw.bb.sw.epilog_crit_edge, label %if.then2

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %12, 4
  %or = or i32 %shl, %and
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %reg, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %14 = ptrtoint ptr %reg_init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %and8 = and i32 %17, -205
  %masksel120 = select i1 %tobool5.not, i32 0, i32 128
  %storemerge = or i32 %and8, %masksel120
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 1
  %18 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  %masksel = select i1 %tobool10.not, i32 0, i32 64
  %storemerge105 = or i32 %masksel, %storemerge
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge105, ptr %reg, align 4
  %mode_sleep17 = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 2
  %21 = ptrtoint ptr %mode_sleep17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode_sleep17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not = icmp eq i32 %22, 0
  br i1 %tobool18.not, label %sw.default.sw.epilog_crit_edge, label %if.then19

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then19:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %shl21 = shl i32 %22, 2
  %or22 = or i32 %storemerge105, %shl21
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or22, ptr %reg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.default.sw.epilog_crit_edge, %if.then2, %sw.bb.sw.epilog_crit_edge
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i109 = call i32 @regmap_write(ptr noundef %27, i32 noundef %add.i, i32 noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool25.not = icmp eq i32 %call.i109, 0
  br i1 %tobool25.not, label %if.end27, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog
  %vsel_addr = getelementptr %struct.palmas_regs_info, ptr %4, i32 %id, i32 2
  %28 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vsel_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool29.not = icmp eq i8 %29, 0
  br i1 %tobool29.not, label %if.end27.if.end41_crit_edge, label %land.lhs.true

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end27
  %vsel = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 3
  %30 = ptrtoint ptr %vsel to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vsel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end41_crit_edge, label %if.then32

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then32:                                        ; preds = %land.lhs.true
  %conv30 = zext i8 %31 to i32
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv30, ptr %reg, align 4
  %33 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vsel_addr, align 4
  %conv36 = zext i8 %34 to i32
  %add.i110 = add nuw nsw i32 %conv36, 32
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call.i112 = call i32 @regmap_write(ptr noundef %36, i32 noundef %add.i110, i32 noundef %conv30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool38.not = icmp eq i32 %call.i112, 0
  br i1 %tobool38.not, label %if.then32.if.end41_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %if.then32.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end27.if.end41_crit_edge
  %roof_floor42 = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 1
  %37 = ptrtoint ptr %roof_floor42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %roof_floor42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool43.not = icmp eq i32 %38, 0
  %39 = or i1 %switch, %tobool43.not
  br i1 %39, label %if.end41.cleanup_crit_edge, label %if.then49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %if.end41
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call.i115 = call i32 @regmap_read(ptr noundef %41, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp51 = icmp slt i32 %call.i115, 0
  br i1 %cmp51, label %if.then49.cleanup_crit_edge, label %if.end54

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.then49
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg, align 4
  %and55 = and i32 %43, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end54.if.end64_crit_edge

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57:                                        ; preds = %if.end54
  %or58 = or i32 %43, 1
  %44 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or58, ptr %reg, align 4
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call.i118 = call i32 @regmap_write(ptr noundef %46, i32 noundef %add.i, i32 noundef %or58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp60 = icmp slt i32 %call.i118, 0
  br i1 %cmp60, label %if.then57.cleanup_crit_edge, label %if.then57.if.end64_crit_edge

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.then57.if.end64_crit_edge, %if.end54.if.end64_crit_edge
  %47 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info.i = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %palmas_regs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %palmas_regs_info.i, align 4
  %sleep_id.i = getelementptr %struct.palmas_regs_info, ptr %50, i32 %id, i32 5
  %51 = ptrtoint ptr %sleep_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sleep_id.i, align 4
  %53 = ptrtoint ptr %roof_floor42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %roof_floor42, align 4
  %call.i119 = call i32 @palmas_ext_control_req_config(ptr noundef %palmas, i32 noundef %52, i32 noundef %54, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i = icmp slt i32 %call.i119, 0
  br i1 %cmp.i, label %do.end.i, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %palmas, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.84, i32 noundef %id, i32 noundef %call.i119) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end64.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i109, %sw.epilog.cleanup_crit_edge ], [ %call.i112, %if.then32.cleanup_crit_edge ], [ %call.i115, %if.then49.cleanup_crit_edge ], [ %call.i118, %if.then57.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ %call.i119, %if.end64.cleanup_crit_edge ], [ %call.i119, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @palmas_ext_control_req_config(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

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
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_set_mode_smps(ptr noundef %dev, i32 noundef %mode) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1, align 4
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %palmas_regs_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %5, i32 %call, i32 3
  %9 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_addr, align 1
  %conv = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv, 32
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %12, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and = and i32 %14, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %15 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb7
    i32 1, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and, 1
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %reg, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or8 = or i32 %and, 2
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or8, ptr %reg, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or10 = or i32 %14, 3
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or10, ptr %reg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %and11 = and i32 %20, 3
  %arrayidx12 = getelementptr %struct.palmas_pmic, ptr %call1, i32 0, i32 9, i32 %call
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and11, ptr %arrayidx12, align 4
  br i1 %cmp, label %sw.epilog.if.end19_crit_edge, label %if.then14

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call1, align 4
  %24 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrl_addr, align 1
  %conv17 = zext i8 %25 to i32
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %add.i40 = add nuw nsw i32 %conv17, 32
  %regmap.i41 = getelementptr inbounds %struct.palmas, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %regmap.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i41, align 4
  %call.i42 = call i32 @regmap_write(ptr noundef %29, i32 noundef %add.i40, i32 noundef %27) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %sw.epilog.if.end19_crit_edge
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12, align 4
  %enable_val = getelementptr %struct.palmas_pmic, ptr %call1, i32 0, i32 2, i32 %call, i32 36
  %32 = ptrtoint ptr %enable_val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %enable_val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_get_mode_smps(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %arrayidx = getelementptr %struct.palmas_pmic, ptr %call, i32 0, i32 9, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 3
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.palmas_get_mode_smps, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_smps_set_ramp_delay(ptr noundef %rdev, i32 noundef %ramp_delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1, align 4
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %palmas_regs_info, align 4
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call, label %sw.epilog [
    i32 2, label %entry.cleanup_crit_edge
    i32 6, label %entry.cleanup_crit_edge37
  ]

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ramp_delay)
  %cmp = icmp slt i32 %ramp_delay, 1
  br i1 %cmp, label %sw.epilog.if.end9_crit_edge, label %if.else

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 2501, i32 %ramp_delay)
  %cmp2 = icmp ult i32 %ramp_delay, 2501
  br i1 %cmp2, label %if.else.if.end9_crit_edge, label %if.else4

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5001, i32 %ramp_delay)
  %cmp5 = icmp ult i32 %ramp_delay, 5001
  %. = select i1 %cmp5, i32 2, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.else4, %if.else.if.end9_crit_edge, %sw.epilog.if.end9_crit_edge
  %reg.0 = phi i32 [ 0, %sw.epilog.if.end9_crit_edge ], [ 3, %if.else.if.end9_crit_edge ], [ %., %if.else4 ]
  %tstep_addr = getelementptr %struct.palmas_regs_info, ptr %5, i32 %call, i32 4
  %7 = ptrtoint ptr %tstep_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tstep_addr, align 2
  %conv = zext i8 %8 to i32
  %add.i = add nuw nsw i32 %conv, 32
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add.i, i32 noundef %reg.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.86, i32 noundef %call.i) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr [4 x i32], ptr @palmas_smps_ramp_delay, i32 0, i32 %reg.0
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.palmas_pmic, ptr %call1, i32 0, i32 8, i32 %call
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge37
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i, %if.end16 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @palmas_ldo_init(ptr noundef %palmas, i32 noundef %id, ptr nocapture noundef readonly %reg_init) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 9
  %1 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %palmas_regs_info, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %4, i32 %id, i32 3
  %5 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl_addr, align 1
  %conv = zext i8 %6 to i32
  %add.i = add nuw nsw i32 %conv, 80
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %reg_init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %and = and i32 %12, -133
  %masksel51 = select i1 %tobool1.not, i32 0, i32 128
  %storemerge = or i32 %and, %masksel51
  %mode_sleep = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 2
  %13 = ptrtoint ptr %mode_sleep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  %masksel = select i1 %tobool4.not, i32 0, i32 4
  %storemerge44 = or i32 %masksel, %storemerge
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge44, ptr %reg, align 4
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i47 = call i32 @regmap_write(ptr noundef %17, i32 noundef %add.i, i32 noundef %storemerge44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool11.not = icmp eq i32 %call.i47, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 1
  %18 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end19

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %palmas, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.100, i32 noundef %conv, i32 noundef %call.i.i) #9
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %24 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info.i = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %palmas_regs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %palmas_regs_info.i, align 4
  %sleep_id.i = getelementptr %struct.palmas_regs_info, ptr %27, i32 %id, i32 5
  %28 = ptrtoint ptr %sleep_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sleep_id.i, align 4
  %30 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %roof_floor, align 4
  %call.i50 = call i32 @palmas_ext_control_req_config(ptr noundef %palmas, i32 noundef %29, i32 noundef %31, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i = icmp slt i32 %call.i50, 0
  br i1 %cmp.i, label %do.end.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %palmas, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.84, i32 noundef %id, i32 noundef %call.i50) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end19.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i47, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call.i50, %if.end19.cleanup_crit_edge ], [ %call.i50, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @palmas_extreg_init(ptr noundef %palmas, i32 noundef %id, ptr nocapture noundef readonly %reg_init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 9
  %0 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %palmas_regs_info, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %3, i32 %id, i32 3
  %4 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_addr, align 1
  %conv = zext i8 %5 to i32
  %mode_sleep = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 2
  %6 = ptrtoint ptr %mode_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 4
  %add.i = add nuw nsw i32 %conv, 212
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %palmas, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef 4, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %palmas, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.102, i32 noundef %conv, i32 noundef %call.i.i) #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init, i32 0, i32 1
  %12 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %cmp7 = icmp slt i32 %call.i.i39, 0
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %palmas, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.105, i32 noundef %conv, i32 noundef %call.i.i39) #9
  br label %cleanup

if.end14:                                         ; preds = %if.then5
  %18 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info.i = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %palmas_regs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %palmas_regs_info.i, align 4
  %sleep_id.i = getelementptr %struct.palmas_regs_info, ptr %21, i32 %id, i32 5
  %22 = ptrtoint ptr %sleep_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sleep_id.i, align 4
  %24 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %roof_floor, align 4
  %call.i = tail call i32 @palmas_ext_control_req_config(ptr noundef %palmas, i32 noundef %23, i32 noundef %25, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %palmas to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %palmas, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.84, i32 noundef %id, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end14.cleanup_crit_edge, %do.end12, %if.end3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i39, %do.end12 ], [ 0, %if.end3.cleanup_crit_edge ], [ %call.i, %if.end14.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_is_enabled_ldo(ptr noundef %dev) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %dev) #6
  %call1 = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #6
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1, align 4
  %pmic_ddata = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pmic_ddata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic_ddata, align 4
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %palmas_regs_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %5, i32 %call, i32 3
  %9 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_addr, align 1
  %conv = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv, 80
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %12, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and = lshr i32 %14, 4
  %and.lobit = and i32 %and, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65917_smps_registration(ptr noundef %pmic, ptr nocapture noundef readonly %ddata, ptr noundef readonly %pdata, ptr noundef %pdev_name, [6 x i32] %config.coerce) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config.coerce.fca.0.extract = extractvalue [6 x i32] %config.coerce, 0
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %config.coerce.fca.0.extract, ptr %config, align 4
  %config.coerce.fca.1.extract = extractvalue [6 x i32] %config.coerce, 1
  %config.coerce.fca.1.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %config.coerce.fca.1.extract, ptr %config.coerce.fca.1.gep, align 4
  %config.coerce.fca.2.extract = extractvalue [6 x i32] %config.coerce, 2
  %config.coerce.fca.2.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %config.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %config.coerce.fca.2.extract, ptr %config.coerce.fca.2.gep, align 4
  %config.coerce.fca.3.extract = extractvalue [6 x i32] %config.coerce, 3
  %config.coerce.fca.3.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %config.coerce.fca.3.extract, ptr %config.coerce.fca.3.gep, align 4
  %config.coerce.fca.4.extract = extractvalue [6 x i32] %config.coerce, 4
  %config.coerce.fca.4.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %config.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %config.coerce.fca.4.extract, ptr %config.coerce.fca.4.gep, align 4
  %config.coerce.fca.5.extract = extractvalue [6 x i32] %config.coerce, 5
  %config.coerce.fca.5.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %config.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %config.coerce.fca.5.extract, ptr %config.coerce.fca.5.gep, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg, align 4, !annotation !338
  %7 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ddata, align 4
  %smps_end = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 1
  %9 = ptrtoint ptr %smps_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smps_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not140 = icmp sgt i32 %8, %10
  br i1 %cmp.not140, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %smps12 = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 6
  %tobool4.not = icmp eq ptr %pdata, null
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 6
  %palmas_matches = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 7
  %dev = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.0141 = phi i32 [ %8, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141
  %n_linear_ranges = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 22
  %11 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %n_linear_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.0141)
  %switch = icmp ult i32 %id.0141, 2
  br i1 %switch, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %smps12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smps12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %land.lhs.true5

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true5:                                   ; preds = %if.end
  %arrayidx7 = getelementptr %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 1, i32 %id.0141
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %land.lhs.true5.if.end15_crit_edge, label %if.then9

land.lhs.true5.if.end15_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true5
  %16 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pmic, align 4
  %call = call fastcc i32 @palmas_smps_init(ptr noundef %17, i32 noundef %id.0141, ptr noundef nonnull %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %land.lhs.true5.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %reg_init.0 = phi ptr [ %15, %if.then9.if.end15_crit_edge ], [ null, %land.lhs.true5.if.end15_crit_edge ], [ null, %if.end.if.end15_crit_edge ]
  %18 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %palmas_regs_info, align 4
  %arrayidx16 = getelementptr %struct.palmas_regs_info, ptr %19, i32 %id.0141
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx, align 4
  %id18 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 6
  %23 = ptrtoint ptr %id18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %id.0141, ptr %id18, align 4
  %vsel_addr = getelementptr %struct.palmas_regs_info, ptr %19, i32 %id.0141, i32 2
  %24 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vsel_addr, align 4
  %conv = zext i8 %25 to i32
  %26 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmic, align 4
  %add.i = add nuw nsw i32 %conv, 32
  %regmap.i = getelementptr inbounds %struct.palmas, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %29, i32 noundef %add.i, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %30 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg, align 4
  %and = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 7, i32 %id.0141
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %arrayidx29 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 7, i32 %id.0141
  %33 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool30.not = icmp eq i32 %34, 0
  %spec.select = select i1 %tobool30.not, ptr @smps_low_ranges, ptr @smps_high_ranges
  %35 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 20
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.select, ptr %35, align 4
  %tobool35.not = icmp eq ptr %reg_init.0, null
  br i1 %tobool35.not, label %if.end27.if.else39_crit_edge, label %land.lhs.true36

if.end27.if.else39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

land.lhs.true36:                                  ; preds = %if.end27
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init.0, i32 0, i32 1
  %37 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool37.not = icmp eq i32 %38, 0
  br i1 %tobool37.not, label %land.lhs.true36.if.else39_crit_edge, label %land.lhs.true36.if.end41_crit_edge

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true36.if.else39_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else39

if.else39:                                        ; preds = %land.lhs.true36.if.else39_crit_edge, %if.end27.if.else39_crit_edge
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %land.lhs.true36.if.end41_crit_edge
  %tps65917_ops_smps.sink = phi ptr [ @tps65917_ops_smps, %if.else39 ], [ @tps65917_ops_ext_control_smps, %land.lhs.true36.if.end41_crit_edge ]
  %ops40 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 10
  %39 = ptrtoint ptr %ops40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tps65917_ops_smps.sink, ptr %ops40, align 4
  %n_voltages = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 8
  %40 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 122, ptr %n_voltages, align 4
  %41 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vsel_addr, align 4
  %conv43 = zext i8 %42 to i32
  %add = add nuw nsw i32 %conv43, 32
  %vsel_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 27
  %43 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 28
  %44 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 127, ptr %vsel_mask, align 4
  %ramp_delay = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 18
  %45 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2500, ptr %ramp_delay, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %19, i32 %id.0141, i32 3
  %46 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ctrl_addr, align 1
  %conv44 = zext i8 %47 to i32
  %48 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pmic, align 4
  %add.i137 = add nuw nsw i32 %conv44, 32
  %regmap.i138 = getelementptr inbounds %struct.palmas, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %regmap.i138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i138, align 4
  %call.i139 = call i32 @regmap_read(ptr noundef %51, i32 noundef %add.i137, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool47.not = icmp eq i32 %call.i139, 0
  br i1 %tobool47.not, label %if.end49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %52 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg, align 4
  %and50 = and i32 %53, 3
  %arrayidx51 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 9, i32 %id.0141
  %54 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and50, ptr %arrayidx51, align 4
  %55 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ctrl_addr, align 1
  %conv53 = zext i8 %56 to i32
  %add54 = add nuw nsw i32 %conv53, 32
  %enable_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 34
  %57 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add54, ptr %enable_reg, align 4
  %enable_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 35
  %58 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %enable_mask, align 4
  %enable_val = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 36
  %59 = ptrtoint ptr %enable_val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %enable_val, align 4
  %type = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 12
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %type, align 4
  %owner = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 13
  %61 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %owner, align 4
  br i1 %tobool4.not, label %if.end49.if.end60_crit_edge, label %if.then56

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx57 = getelementptr [27 x ptr], ptr %pdata, i32 0, i32 %id.0141
  %62 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx57, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end49.if.end60_crit_edge
  %storemerge = phi ptr [ %63, %if.then56 ], [ null, %if.end49.if.end60_crit_edge ]
  %64 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %storemerge, ptr %config.coerce.fca.1.gep, align 4
  %sname = getelementptr %struct.palmas_regs_info, ptr %19, i32 %id.0141, i32 1
  %65 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sname, align 4
  %supply_name = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0141, i32 1
  %67 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %supply_name, align 4
  %68 = ptrtoint ptr %palmas_matches to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %palmas_matches, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %69, i32 %id.0141, i32 3
  %70 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node, align 4
  %72 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %config.coerce.fca.3.gep, align 4
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %call63 = call ptr @devm_regulator_register(ptr noundef %74, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end60.for.inc_crit_edge

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end:                                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.82, ptr noundef %pdev_name) #9
  %77 = ptrtoint ptr %call63 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end60.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add i32 %id.0141, 1
  %78 = ptrtoint ptr %smps_end to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %smps_end, align 4
  %cmp.not = icmp sgt i32 %inc, %79
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %if.end41.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then9.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ], [ %call.i139, %if.end41.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65917_ldo_registration(ptr noundef %pmic, ptr nocapture noundef readonly %ddata, ptr noundef readonly %pdata, ptr noundef %pdev_name, [6 x i32] %config.coerce) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config.coerce.fca.0.extract = extractvalue [6 x i32] %config.coerce, 0
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %config.coerce.fca.0.extract, ptr %config, align 4
  %config.coerce.fca.1.extract = extractvalue [6 x i32] %config.coerce, 1
  %config.coerce.fca.1.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %config.coerce.fca.1.extract, ptr %config.coerce.fca.1.gep, align 4
  %config.coerce.fca.2.extract = extractvalue [6 x i32] %config.coerce, 2
  %config.coerce.fca.2.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %config.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %config.coerce.fca.2.extract, ptr %config.coerce.fca.2.gep, align 4
  %config.coerce.fca.3.extract = extractvalue [6 x i32] %config.coerce, 3
  %config.coerce.fca.3.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 3
  %3 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %config.coerce.fca.3.extract, ptr %config.coerce.fca.3.gep, align 4
  %config.coerce.fca.4.extract = extractvalue [6 x i32] %config.coerce, 4
  %config.coerce.fca.4.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %config.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %config.coerce.fca.4.extract, ptr %config.coerce.fca.4.gep, align 4
  %config.coerce.fca.5.extract = extractvalue [6 x i32] %config.coerce, 5
  %config.coerce.fca.5.gep = getelementptr inbounds [6 x i32], ptr %config, i32 0, i32 5
  %5 = ptrtoint ptr %config.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %config.coerce.fca.5.extract, ptr %config.coerce.fca.5.gep, align 4
  %ldo_begin = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 2
  %6 = ptrtoint ptr %ldo_begin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ldo_begin, align 4
  %max_reg = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 4
  %8 = ptrtoint ptr %max_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp151 = icmp slt i32 %7, %9
  br i1 %cmp151, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pdata, null
  %palmas_regs_info = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 6
  %palmas_matches = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %ddata, i32 0, i32 7
  %dev = getelementptr inbounds %struct.palmas_pmic, ptr %pmic, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %id.0152 = phi i32 [ %7, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 1, i32 %id.0152
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %reg_init.0 = phi ptr [ null, %if.else ], [ %11, %land.lhs.true.if.end_crit_edge ]
  %12 = ptrtoint ptr %palmas_regs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %palmas_regs_info, align 4
  %arrayidx5 = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0152
  %arrayidx7 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx7, align 4
  %id9 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 6
  %17 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %id.0152, ptr %id9, align 4
  %type = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 12
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 4
  %owner = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 13
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %id.0152)
  %cmp10 = icmp slt i32 %id.0152, 11
  %n_voltages = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 8
  br i1 %cmp10, label %if.then11, label %if.else29

if.then11:                                        ; preds = %if.end
  %20 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 50, ptr %n_voltages, align 4
  %tobool12.not = icmp eq ptr %reg_init.0, null
  br i1 %tobool12.not, label %if.then11.if.else16_crit_edge, label %land.lhs.true13

if.then11.if.else16_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

land.lhs.true13:                                  ; preds = %if.then11
  %roof_floor = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init.0, i32 0, i32 1
  %21 = ptrtoint ptr %roof_floor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %roof_floor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %land.lhs.true13.if.else16_crit_edge, label %land.lhs.true13.if.end18_crit_edge

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true13.if.else16_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else16

if.else16:                                        ; preds = %land.lhs.true13.if.else16_crit_edge, %if.then11.if.else16_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %land.lhs.true13.if.end18_crit_edge
  %tps65917_ops_ldo.sink = phi ptr [ @tps65917_ops_ldo, %if.else16 ], [ @palmas_ops_ext_control_ldo, %land.lhs.true13.if.end18_crit_edge ]
  %ops17 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 10
  %23 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tps65917_ops_ldo.sink, ptr %ops17, align 4
  %min_uV = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 14
  %24 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 900000, ptr %min_uV, align 4
  %uV_step = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 15
  %25 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50000, ptr %uV_step, align 4
  %linear_min_sel = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 16
  %26 = ptrtoint ptr %linear_min_sel to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %linear_min_sel, align 4
  %enable_time = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 57
  %27 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 500, ptr %enable_time, align 4
  %vsel_addr = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0152, i32 2
  %28 = ptrtoint ptr %vsel_addr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vsel_addr, align 4
  %conv = zext i8 %29 to i32
  %add = add nuw nsw i32 %conv, 80
  %vsel_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 27
  %30 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 28
  %31 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 63, ptr %vsel_mask, align 4
  %ctrl_addr = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0152, i32 3
  %32 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctrl_addr, align 1
  %conv19 = zext i8 %33 to i32
  %add20 = add nuw nsw i32 %conv19, 80
  %enable_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 34
  %34 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add20, ptr %enable_reg, align 4
  %enable_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 35
  %35 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %enable_mask, align 4
  %ramp_delay = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 18
  %36 = ptrtoint ptr %ramp_delay to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2500, ptr %ramp_delay, align 4
  %37 = and i32 %id.0152, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %switch = icmp eq i32 %37, 6
  br i1 %switch, label %if.then25, label %if.end18.if.end45_crit_edge

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %ops26 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 10
  %38 = ptrtoint ptr %ops26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tps65917_ops_ldo_1_2, ptr %ops26, align 4
  %bypass_reg = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 39
  %39 = ptrtoint ptr %bypass_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add20, ptr %bypass_reg, align 4
  %bypass_val_on = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 41
  %40 = ptrtoint ptr %bypass_val_on to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 64, ptr %bypass_val_on, align 4
  %bypass_mask = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 40
  %41 = ptrtoint ptr %bypass_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 64, ptr %bypass_mask, align 4
  br label %if.end45

if.else29:                                        ; preds = %if.end
  %42 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %n_voltages, align 4
  %tobool31.not = icmp eq ptr %reg_init.0, null
  br i1 %tobool31.not, label %if.else29.if.else37_crit_edge, label %land.lhs.true32

if.else29.if.else37_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else37

land.lhs.true32:                                  ; preds = %if.else29
  %roof_floor33 = getelementptr inbounds %struct.palmas_reg_init, ptr %reg_init.0, i32 0, i32 1
  %43 = ptrtoint ptr %roof_floor33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %roof_floor33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool34.not = icmp eq i32 %44, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.else37_crit_edge, label %land.lhs.true32.if.end39_crit_edge

land.lhs.true32.if.end39_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true32.if.else37_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else37

if.else37:                                        ; preds = %land.lhs.true32.if.else37_crit_edge, %if.else29.if.else37_crit_edge
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %land.lhs.true32.if.end39_crit_edge
  %palmas_ops_extreg.sink = phi ptr [ @palmas_ops_extreg, %if.else37 ], [ @palmas_ops_ext_control_extreg, %land.lhs.true32.if.end39_crit_edge ]
  %ops38 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 10
  %45 = ptrtoint ptr %ops38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %palmas_ops_extreg.sink, ptr %ops38, align 4
  %ctrl_addr40 = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0152, i32 3
  %46 = ptrtoint ptr %ctrl_addr40 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ctrl_addr40, align 1
  %conv41 = zext i8 %47 to i32
  %add42 = add nuw nsw i32 %conv41, 212
  %enable_reg43 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 34
  %48 = ptrtoint ptr %enable_reg43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add42, ptr %enable_reg43, align 4
  %enable_mask44 = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 35
  %49 = ptrtoint ptr %enable_mask44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %enable_mask44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end39, %if.then25, %if.end18.if.end45_crit_edge
  br i1 %tobool.not, label %if.end45.if.end51_crit_edge, label %if.then47

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx48 = getelementptr [27 x ptr], ptr %pdata, i32 0, i32 %id.0152
  %50 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx48, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end45.if.end51_crit_edge
  %storemerge = phi ptr [ %51, %if.then47 ], [ null, %if.end45.if.end51_crit_edge ]
  %52 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %storemerge, ptr %config.coerce.fca.1.gep, align 4
  %sname = getelementptr %struct.palmas_regs_info, ptr %13, i32 %id.0152, i32 1
  %53 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sname, align 4
  %supply_name = getelementptr %struct.palmas_pmic, ptr %pmic, i32 0, i32 2, i32 %id.0152, i32 1
  %55 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %supply_name, align 4
  %56 = ptrtoint ptr %palmas_matches to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %palmas_matches, align 4
  %of_node = getelementptr %struct.of_regulator_match, ptr %57, i32 %id.0152, i32 3
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 4
  %60 = ptrtoint ptr %config.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %config.coerce.fca.3.gep, align 4
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call = call ptr @devm_regulator_register(ptr noundef %62, ptr noundef %arrayidx7, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end58

do.end:                                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.82, ptr noundef %pdev_name) #9
  %65 = ptrtoint ptr %call to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  br i1 %tobool.not, label %if.end58.for.inc_crit_edge, label %if.then60

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then60:                                        ; preds = %if.end58
  %arrayidx62 = getelementptr %struct.palmas_pmic_platform_data, ptr %pdata, i32 0, i32 1, i32 %id.0152
  %66 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %67, null
  br i1 %tobool63.not, label %if.then60.for.inc_crit_edge, label %if.then64

if.then60.for.inc_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then64:                                        ; preds = %if.then60
  %68 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pmic, align 4
  br i1 %cmp10, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = call fastcc i32 @palmas_ldo_init(ptr noundef %69, i32 noundef %id.0152, ptr noundef nonnull %67)
  br label %if.end72

if.else69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call fastcc i32 @palmas_extreg_init(ptr noundef %69, i32 noundef %id.0152, ptr noundef nonnull %67)
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then67
  %ret.0 = phi i32 [ %call68, %if.then67 ], [ %call71, %if.else69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool73.not = icmp eq i32 %ret.0, 0
  br i1 %tobool73.not, label %if.end72.for.inc_crit_edge, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end72.for.inc_crit_edge, %if.then60.for.inc_crit_edge, %if.end58.for.inc_crit_edge
  %inc = add nsw i32 %id.0152, 1
  %70 = ptrtoint ptr %max_reg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_reg, align 4
  %cmp = icmp slt i32 %inc, %71
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %65, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.end72.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 166)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !194, !196, !198, !200, !202, !204, !205, !206, !207, !209, !211, !212, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !238, !240, !242, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !258, !259, !260, !261, !262, !264, !265, !266, !268, !270, !272, !273, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !316, !317, !319, !321, !323, !324, !325, !327}
!llvm.module.flags = !{!329, !330, !331, !332, !333, !334, !335, !336}
!llvm.ident = !{!337}

!0 = !{ptr @__initcall__kmod_palmas_regulator__293_1678_palmas_init4, !1, !"__initcall__kmod_palmas_regulator__293_1678_palmas_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/palmas-regulator.c", i32 1678, i32 1}
!2 = !{ptr @__exitcall_palmas_exit, !3, !"__exitcall_palmas_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/palmas-regulator.c", i32 1684, i32 1}
!4 = !{ptr @__UNIQUE_ID_author294, !5, !"__UNIQUE_ID_author294", i1 false, i1 false}
!5 = !{!"../drivers/regulator/palmas-regulator.c", i32 1686, i32 1}
!6 = !{ptr @__UNIQUE_ID_description295, !7, !"__UNIQUE_ID_description295", i1 false, i1 false}
!7 = !{!"../drivers/regulator/palmas-regulator.c", i32 1687, i32 1}
!8 = !{ptr @__UNIQUE_ID_file296, !9, !"__UNIQUE_ID_file296", i1 false, i1 false}
!9 = !{!"../drivers/regulator/palmas-regulator.c", i32 1688, i32 1}
!10 = !{ptr @__UNIQUE_ID_license297, !9, !"__UNIQUE_ID_license297", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias298, !12, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!12 = !{!"../drivers/regulator/palmas-regulator.c", i32 1689, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/palmas-regulator.c", i32 1668, i32 11}
!15 = !{ptr @palmas_driver, !16, !"palmas_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/palmas-regulator.c", i32 1666, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/palmas-regulator.c", i32 1622, i32 36}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/palmas-regulator.c", i32 41, i32 12}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/palmas-regulator.c", i32 42, i32 13}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/palmas-regulator.c", i32 49, i32 12}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/palmas-regulator.c", i32 57, i32 12}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/palmas-regulator.c", i32 58, i32 13}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/palmas-regulator.c", i32 64, i32 12}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/palmas-regulator.c", i32 65, i32 13}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/palmas-regulator.c", i32 72, i32 12}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/palmas-regulator.c", i32 80, i32 12}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/palmas-regulator.c", i32 81, i32 13}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/palmas-regulator.c", i32 88, i32 12}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/palmas-regulator.c", i32 89, i32 13}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/palmas-regulator.c", i32 95, i32 12}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/palmas-regulator.c", i32 96, i32 13}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/palmas-regulator.c", i32 103, i32 12}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/palmas-regulator.c", i32 104, i32 13}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/palmas-regulator.c", i32 110, i32 12}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/palmas-regulator.c", i32 111, i32 13}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/palmas-regulator.c", i32 116, i32 12}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/palmas-regulator.c", i32 117, i32 13}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/palmas-regulator.c", i32 122, i32 12}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/palmas-regulator.c", i32 123, i32 13}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/palmas-regulator.c", i32 129, i32 12}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/palmas-regulator.c", i32 130, i32 13}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/palmas-regulator.c", i32 136, i32 12}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/palmas-regulator.c", i32 137, i32 13}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/palmas-regulator.c", i32 143, i32 12}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/palmas-regulator.c", i32 144, i32 13}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/palmas-regulator.c", i32 150, i32 12}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/palmas-regulator.c", i32 151, i32 13}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/palmas-regulator.c", i32 157, i32 12}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/palmas-regulator.c", i32 158, i32 13}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/regulator/palmas-regulator.c", i32 164, i32 12}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/palmas-regulator.c", i32 165, i32 13}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/palmas-regulator.c", i32 171, i32 12}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/regulator/palmas-regulator.c", i32 172, i32 13}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/regulator/palmas-regulator.c", i32 178, i32 12}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/regulator/palmas-regulator.c", i32 179, i32 13}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/palmas-regulator.c", i32 185, i32 12}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/palmas-regulator.c", i32 186, i32 13}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/regulator/palmas-regulator.c", i32 192, i32 12}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/palmas-regulator.c", i32 193, i32 13}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/regulator/palmas-regulator.c", i32 199, i32 12}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/regulator/palmas-regulator.c", i32 204, i32 12}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/regulator/palmas-regulator.c", i32 209, i32 12}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/regulator/palmas-regulator.c", i32 214, i32 12}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/palmas-regulator.c", i32 219, i32 12}
!113 = !{ptr @palmas_generic_regs_info, !114, !"palmas_generic_regs_info", i1 false, i1 false}
!114 = !{!"../drivers/regulator/palmas-regulator.c", i32 39, i32 32}
!115 = !{ptr @palmas_ddata, !116, !"palmas_ddata", i1 false, i1 false}
!116 = !{!"../drivers/regulator/palmas-regulator.c", i32 1438, i32 39}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/regulator/palmas-regulator.c", i32 1390, i32 12}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/regulator/palmas-regulator.c", i32 1391, i32 12}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/regulator/palmas-regulator.c", i32 1392, i32 12}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/regulator/palmas-regulator.c", i32 1393, i32 12}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/palmas-regulator.c", i32 1394, i32 12}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/regulator/palmas-regulator.c", i32 1395, i32 12}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/regulator/palmas-regulator.c", i32 1396, i32 12}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/regulator/palmas-regulator.c", i32 1397, i32 12}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/regulator/palmas-regulator.c", i32 1398, i32 12}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/palmas-regulator.c", i32 1399, i32 12}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/regulator/palmas-regulator.c", i32 1400, i32 12}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/regulator/palmas-regulator.c", i32 1401, i32 12}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/regulator/palmas-regulator.c", i32 1402, i32 12}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/regulator/palmas-regulator.c", i32 1403, i32 12}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/regulator/palmas-regulator.c", i32 1404, i32 12}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/palmas-regulator.c", i32 1405, i32 12}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/regulator/palmas-regulator.c", i32 1406, i32 12}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/regulator/palmas-regulator.c", i32 1407, i32 12}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/regulator/palmas-regulator.c", i32 1408, i32 12}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/regulator/palmas-regulator.c", i32 1409, i32 12}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/regulator/palmas-regulator.c", i32 1410, i32 12}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/regulator/palmas-regulator.c", i32 1411, i32 12}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/regulator/palmas-regulator.c", i32 1412, i32 12}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/regulator/palmas-regulator.c", i32 1413, i32 12}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/regulator/palmas-regulator.c", i32 1414, i32 12}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/regulator/palmas-regulator.c", i32 1415, i32 12}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/regulator/palmas-regulator.c", i32 1416, i32 12}
!171 = !{ptr @palmas_matches, !172, !"palmas_matches", i1 false, i1 false}
!172 = !{!"../drivers/regulator/palmas-regulator.c", i32 1389, i32 34}
!173 = !{ptr @palma_sleep_req_info, !174, !"palma_sleep_req_info", i1 false, i1 false}
!174 = !{!"../drivers/regulator/palmas-regulator.c", i32 327, i32 43}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/regulator/palmas-regulator.c", i32 1175, i32 5}
!177 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @palmas_smps_registration._entry, !176, !"_entry", i1 false, i1 false}
!182 = !{ptr @palmas_smps_registration._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/regulator/palmas-regulator.c", i32 1275, i32 4}
!185 = !{ptr @palmas_smps_registration._entry.81, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @palmas_smps_registration._entry_ptr.83, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @palmas_smps_ramp_delay, !188, !"palmas_smps_ramp_delay", i1 false, i1 false}
!188 = !{!"../drivers/regulator/palmas-regulator.c", i32 380, i32 27}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/regulator/palmas-regulator.c", i32 683, i32 3}
!191 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @palmas_regulator_config_external._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @palmas_regulator_config_external._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @palmas_ops_smps10, !195, !"palmas_ops_smps10", i1 false, i1 false}
!195 = !{!"../drivers/regulator/palmas-regulator.c", i32 562, i32 35}
!196 = !{ptr @smps_high_ranges, !197, !"smps_high_ranges", i1 false, i1 false}
!197 = !{!"../drivers/regulator/palmas-regulator.c", i32 32, i32 34}
!198 = !{ptr @smps_low_ranges, !199, !"smps_low_ranges", i1 false, i1 false}
!199 = !{!"../drivers/regulator/palmas-regulator.c", i32 25, i32 34}
!200 = !{ptr @palmas_ops_ext_control_smps, !201, !"palmas_ops_ext_control_smps", i1 false, i1 false}
!201 = !{!"../drivers/regulator/palmas-regulator.c", i32 551, i32 35}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/regulator/palmas-regulator.c", i32 529, i32 3}
!204 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @palmas_smps_set_ramp_delay._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @palmas_smps_set_ramp_delay._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @palmas_ops_smps, !208, !"palmas_ops_smps", i1 false, i1 false}
!208 = !{!"../drivers/regulator/palmas-regulator.c", i32 537, i32 35}
!209 = !{ptr @.str.88, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/regulator/palmas-regulator.c", i32 983, i32 4}
!211 = !{ptr @palmas_ldo_registration._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @palmas_ldo_registration._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @palmas_ops_ext_control_ldo, !214, !"palmas_ops_ext_control_ldo", i1 false, i1 false}
!214 = !{!"../drivers/regulator/palmas-regulator.c", i32 633, i32 35}
!215 = !{ptr @palmas_ops_ldo, !216, !"palmas_ops_ldo", i1 false, i1 false}
!216 = !{!"../drivers/regulator/palmas-regulator.c", i32 611, i32 35}
!217 = !{ptr @.str.89, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/regulator/palmas-regulator.c", i32 860, i32 3}
!219 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @palmas_enable_ldo8_track._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @palmas_enable_ldo8_track._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.92, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/regulator/palmas-regulator.c", i32 867, i32 3}
!224 = !{ptr @palmas_enable_ldo8_track._entry.91, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @palmas_enable_ldo8_track._entry_ptr.93, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/regulator/palmas-regulator.c", i32 878, i32 3}
!228 = !{ptr @palmas_enable_ldo8_track._entry.94, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @palmas_enable_ldo8_track._entry_ptr.96, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.98, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/regulator/palmas-regulator.c", i32 885, i32 3}
!232 = !{ptr @palmas_enable_ldo8_track._entry.97, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @palmas_enable_ldo8_track._entry_ptr.99, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @palmas_ops_ldo9, !235, !"palmas_ops_ldo9", i1 false, i1 false}
!235 = !{!"../drivers/regulator/palmas-regulator.c", i32 621, i32 35}
!236 = !{ptr @palmas_ops_ext_control_extreg, !237, !"palmas_ops_ext_control_extreg", i1 false, i1 false}
!237 = !{!"../drivers/regulator/palmas-regulator.c", i32 646, i32 35}
!238 = !{ptr @palmas_ops_extreg, !239, !"palmas_ops_extreg", i1 false, i1 false}
!239 = !{!"../drivers/regulator/palmas-regulator.c", i32 640, i32 35}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/regulator/palmas-regulator.c", i32 799, i32 4}
!242 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @palmas_ldo_init._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @palmas_ldo_init._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.102, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/regulator/palmas-regulator.c", i32 826, i32 3}
!247 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @palmas_extreg_init._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @palmas_extreg_init._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.105, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/regulator/palmas-regulator.c", i32 837, i32 4}
!252 = !{ptr @palmas_extreg_init._entry.104, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @palmas_extreg_init._entry_ptr.106, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.107, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/regulator/palmas-regulator.c", i32 1475, i32 42}
!256 = !{ptr @.str.108, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/regulator/palmas-regulator.c", i32 1477, i32 3}
!258 = !{ptr @.str.109, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @palmas_dt_to_pdata._entry, !257, !"_entry", i1 false, i1 false}
!261 = !{ptr @palmas_dt_to_pdata._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.112, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/regulator/palmas-regulator.c", i32 1485, i32 3}
!264 = !{ptr @palmas_dt_to_pdata._entry.111, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @palmas_dt_to_pdata._entry_ptr.113, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.114, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/regulator/palmas-regulator.c", i32 1507, i32 49}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/regulator/palmas-regulator.c", i32 1508, i32 34}
!270 = !{ptr @.str.117, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/regulator/palmas-regulator.c", i32 1528, i32 6}
!272 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @palmas_dt_to_pdata._entry.116, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @palmas_dt_to_pdata._entry_ptr.119, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/regulator/palmas-regulator.c", i32 1537, i32 34}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/regulator/palmas-regulator.c", i32 1541, i32 35}
!279 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/regulator/palmas-regulator.c", i32 1547, i32 11}
!281 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/regulator/palmas-regulator.c", i32 1550, i32 53}
!283 = !{ptr @of_palmas_match_tbl, !284, !"of_palmas_match_tbl", i1 false, i1 false}
!284 = !{!"../drivers/regulator/palmas-regulator.c", i32 1555, i32 34}
!285 = !{ptr @tps65917_ddata, !286, !"tps65917_ddata", i1 false, i1 false}
!286 = !{!"../drivers/regulator/palmas-regulator.c", i32 1452, i32 39}
!287 = !{ptr @.str.124, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/regulator/palmas-regulator.c", i32 227, i32 12}
!289 = !{ptr @.str.125, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/regulator/palmas-regulator.c", i32 234, i32 12}
!291 = !{ptr @.str.126, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/regulator/palmas-regulator.c", i32 235, i32 13}
!293 = !{ptr @.str.127, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/regulator/palmas-regulator.c", i32 248, i32 12}
!295 = !{ptr @.str.128, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/regulator/palmas-regulator.c", i32 255, i32 12}
!297 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/regulator/palmas-regulator.c", i32 256, i32 13}
!299 = !{ptr @tps65917_regs_info, !300, !"tps65917_regs_info", i1 false, i1 false}
!300 = !{!"../drivers/regulator/palmas-regulator.c", i32 225, i32 32}
!301 = !{ptr @.str.130, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/regulator/palmas-regulator.c", i32 1420, i32 12}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/regulator/palmas-regulator.c", i32 1421, i32 12}
!305 = !{ptr @.str.132, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/regulator/palmas-regulator.c", i32 1423, i32 12}
!307 = !{ptr @.str.133, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/regulator/palmas-regulator.c", i32 1424, i32 12}
!309 = !{ptr @tps65917_matches, !310, !"tps65917_matches", i1 false, i1 false}
!310 = !{!"../drivers/regulator/palmas-regulator.c", i32 1419, i32 34}
!311 = !{ptr @tps65917_sleep_req_info, !312, !"tps65917_sleep_req_info", i1 false, i1 false}
!312 = !{!"../drivers/regulator/palmas-regulator.c", i32 363, i32 43}
!313 = !{ptr @.str.134, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/regulator/palmas-regulator.c", i32 1379, i32 4}
!315 = !{ptr @tps65917_smps_registration._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @tps65917_smps_registration._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @tps65917_ops_ext_control_smps, !318, !"tps65917_ops_ext_control_smps", i1 false, i1 false}
!318 = !{!"../drivers/regulator/palmas-regulator.c", i32 587, i32 35}
!319 = !{ptr @tps65917_ops_smps, !320, !"tps65917_ops_smps", i1 false, i1 false}
!320 = !{!"../drivers/regulator/palmas-regulator.c", i32 574, i32 35}
!321 = !{ptr @.str.135, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/regulator/palmas-regulator.c", i32 1090, i32 4}
!323 = !{ptr @tps65917_ldo_registration._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @tps65917_ldo_registration._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @tps65917_ops_ldo, !326, !"tps65917_ops_ldo", i1 false, i1 false}
!326 = !{!"../drivers/regulator/palmas-regulator.c", i32 649, i32 35}
!327 = !{ptr @tps65917_ops_ldo_1_2, !328, !"tps65917_ops_ldo_1_2", i1 false, i1 false}
!328 = !{!"../drivers/regulator/palmas-regulator.c", i32 660, i32 35}
!329 = !{i32 1, !"wchar_size", i32 2}
!330 = !{i32 1, !"min_enum_size", i32 4}
!331 = !{i32 8, !"branch-target-enforcement", i32 0}
!332 = !{i32 8, !"sign-return-address", i32 0}
!333 = !{i32 8, !"sign-return-address-all", i32 0}
!334 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!335 = !{i32 7, !"uwtable", i32 1}
!336 = !{i32 7, !"frame-pointer", i32 2}
!337 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!338 = !{!"auto-init"}
!339 = !{i8 0, i8 2}
