; ModuleID = '/llk/IR_all_yes/drivers/regulator/wm8400-regulator.c_pt.bc'
source_filename = "../drivers/regulator/wm8400-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8400_register_regulator\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8400_register_regulator\09\09\09\09"
module asm "\09.long\09__crc_wm8400_register_regulator\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8400_register_regulator:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8400_register_regulator\22\09\09\09\09\09"
module asm "__kstrtabns_wm8400_register_regulator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.wm8400 = type { ptr, ptr, [6 x %struct.platform_device] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8400-regulator\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_wm8400_register_regulator = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8400_register_regulator = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8400_register_regulator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8400_register_regulator to i32), ptr @__kstrtab_wm8400_register_regulator, ptr @__kstrtabns_wm8400_register_regulator }, section "___ksymtab_gpl+wm8400_register_regulator", align 4
@__initcall__kmod_wm8400_regulator__288_264_wm8400_regulator_init4 = internal global ptr @wm8400_regulator_init, section ".initcall4.init", align 4
@wm8400_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8400_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8400_regulator_exit = internal global ptr @wm8400_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [73 x i8] c"wm8400_regulator.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"wm8400_regulator.description=WM8400 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"wm8400_regulator.file=drivers/regulator/wm8400-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"wm8400_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [49 x i8] c"wm8400_regulator.alias=platform:wm8400-regulator\00", section ".modinfo", align 1
@regulators = internal global { [6 x %struct.regulator_desc], [360 x i8] } { [6 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.1, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @wm8400_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8400_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.2, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @wm8400_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8400_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.3, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @wm8400_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8400_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 67, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @wm8400_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wm8400_ldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 68, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 128, i32 0, ptr @wm8400_dcdc_ops, i32 0, i32 0, ptr null, i32 850000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 128, i32 0, ptr @wm8400_dcdc_ops, i32 0, i32 0, ptr null, i32 850000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 32768, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [360 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@wm8400_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@wm8400_ldo_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 14, i32 50000 }, %struct.linear_range { i32 1700000, i32 15, i32 31, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO3\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO4\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC1\00", [26 x i8] zeroinitializer }, align 32
@wm8400_dcdc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @wm8400_dcdc_set_mode, ptr @wm8400_dcdc_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8400_dcdc_get_optimum_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCDC2\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 251, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"wm8400_regulator_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 223, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 115, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 117, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"wm8400_ldo_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 21, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"wm8400_ldo_ranges\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 16, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 131, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 145, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 159, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 173, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"wm8400_dcdc_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 102, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [40 x i8] c"../drivers/regulator/wm8400-regulator.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 187, i32 11 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_wm8400_regulator_exit, ptr @__initcall__kmod_wm8400_regulator__288_264_wm8400_regulator_init4, ptr @__ksymtab_wm8400_register_regulator, ptr @wm8400_regulator_exit, ptr @.str, ptr @wm8400_regulator_driver, ptr @regulators, ptr @.str.1, ptr @wm8400_ldo_ops, ptr @wm8400_ldo_ranges, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @wm8400_dcdc_ops, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 1464, i32 1824, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_ldo_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dcdc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8400_register_regulator(ptr noundef %dev, i32 noundef %reg, ptr noundef %initdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.wm8400, ptr %1, i32 0, i32 2, i32 %reg
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.regulator_init_data, ptr %initdata, i32 0, i32 5
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %driver_data, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %arrayidx, align 8
  %id = getelementptr %struct.wm8400, ptr %1, i32 0, i32 2, i32 %reg, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %reg, ptr %id, align 4
  %parent = getelementptr %struct.wm8400, ptr %1, i32 0, i32 2, i32 %reg, i32 3, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %platform_data = getelementptr %struct.wm8400, ptr %1, i32 0, i32 2, i32 %reg, i32 3, i32 7
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %initdata, ptr %platform_data, align 8
  %call14 = tail call i32 @platform_device_register(ptr noundef %arrayidx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_regulator_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8400_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8400_regulator_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8400_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_regulator_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %.neg = mul i32 %1, -992
  %.neg20 = add i32 %.neg, -8
  %add.ptr = getelementptr i8, ptr %pdev, i32 %.neg20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = getelementptr inbounds i8, ptr %config, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %config, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %7 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm8400, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %regmap3 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %11 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regmap3, align 4
  %arrayidx = getelementptr [6 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %1
  %call6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_dcdc_set_mode(ptr noundef %dev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  %sub = shl i32 %call1, 1
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 4, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add = add i32 %sub, 63
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %add, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %add6 = add i32 %sub, 63
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %add6, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp8.not = icmp eq i32 %call.i31, 0
  br i1 %cmp8.not, label %sw.bb5.cleanup.sink.split_crit_edge, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5.cleanup.sink.split_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 16384, %sw.bb.cleanup.sink.split_crit_edge ], [ 16384, %sw.bb5.cleanup.sink.split_crit_edge ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %add14 = add i32 %sub, 62
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef %add14, i32 noundef 24576, i32 noundef %.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i31, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i33, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_dcdc_get_mode(ptr noundef %dev) #0 align 64 {
entry:
  %data = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %dev) #5
  %call1 = tail call i32 @rdev_get_id(ptr noundef %dev) #5
  %sub = shl i32 %call1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !48
  %1 = getelementptr inbounds [2 x i16], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !48
  %add = add i32 %sub, 62
  %call2 = call i32 @regmap_bulk_read(ptr noundef %call, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and7 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.end10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 2
  %7 = and i16 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool14.not = icmp eq i16 %7, 0
  %. = select i1 %tobool14.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ], [ 4, %if.end4.cleanup_crit_edge ], [ %., %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8400_dcdc_get_optimum_mode(ptr nocapture noundef readnone %dev, i32 noundef %input_uV, i32 noundef %output_uV, i32 noundef %load_uA) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/regulator/wm8400-regulator.c", i32 251, i32 33}
!2 = !{ptr @__ksymtab_wm8400_register_regulator, !3, !"__ksymtab_wm8400_register_regulator", i1 false, i1 false}
!3 = !{!"../drivers/regulator/wm8400-regulator.c", i32 258, i32 1}
!4 = !{ptr @__initcall__kmod_wm8400_regulator__288_264_wm8400_regulator_init4, !5, !"__initcall__kmod_wm8400_regulator__288_264_wm8400_regulator_init4", i1 false, i1 false}
!5 = !{!"../drivers/regulator/wm8400-regulator.c", i32 264, i32 1}
!6 = !{ptr @__exitcall_wm8400_regulator_exit, !7, !"__exitcall_wm8400_regulator_exit", i1 false, i1 false}
!7 = !{!"../drivers/regulator/wm8400-regulator.c", i32 270, i32 1}
!8 = !{ptr @__UNIQUE_ID_author289, !9, !"__UNIQUE_ID_author289", i1 false, i1 false}
!9 = !{!"../drivers/regulator/wm8400-regulator.c", i32 272, i32 1}
!10 = !{ptr @__UNIQUE_ID_description290, !11, !"__UNIQUE_ID_description290", i1 false, i1 false}
!11 = !{!"../drivers/regulator/wm8400-regulator.c", i32 273, i32 1}
!12 = !{ptr @__UNIQUE_ID_file291, !13, !"__UNIQUE_ID_file291", i1 false, i1 false}
!13 = !{!"../drivers/regulator/wm8400-regulator.c", i32 274, i32 1}
!14 = !{ptr @__UNIQUE_ID_license292, !13, !"__UNIQUE_ID_license292", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias293, !16, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!16 = !{!"../drivers/regulator/wm8400-regulator.c", i32 275, i32 1}
!17 = !{ptr @wm8400_regulator_driver, !18, !"wm8400_regulator_driver", i1 false, i1 false}
!18 = !{!"../drivers/regulator/wm8400-regulator.c", i32 223, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/wm8400-regulator.c", i32 117, i32 11}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/wm8400-regulator.c", i32 131, i32 11}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/wm8400-regulator.c", i32 145, i32 11}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/wm8400-regulator.c", i32 159, i32 11}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/wm8400-regulator.c", i32 173, i32 11}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/wm8400-regulator.c", i32 187, i32 11}
!31 = !{ptr @regulators, !32, !"regulators", i1 false, i1 false}
!32 = !{!"../drivers/regulator/wm8400-regulator.c", i32 115, i32 30}
!33 = !{ptr @wm8400_ldo_ops, !34, !"wm8400_ldo_ops", i1 false, i1 false}
!34 = !{!"../drivers/regulator/wm8400-regulator.c", i32 21, i32 35}
!35 = !{ptr @wm8400_ldo_ranges, !36, !"wm8400_ldo_ranges", i1 false, i1 false}
!36 = !{!"../drivers/regulator/wm8400-regulator.c", i32 16, i32 34}
!37 = !{ptr @wm8400_dcdc_ops, !38, !"wm8400_dcdc_ops", i1 false, i1 false}
!38 = !{!"../drivers/regulator/wm8400-regulator.c", i32 102, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
