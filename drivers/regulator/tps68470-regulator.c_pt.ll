; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps68470-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps68470-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_tps68470_regulator__288_191_tps68470_regulator_init4 = internal global ptr @tps68470_regulator_init, section ".initcall4.init", align 4
@tps68470_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps68470_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps68470_regulator_exit = internal global ptr @tps68470_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias289 = internal constant [53 x i8] c"tps68470_regulator.alias=platform:tps68470-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"tps68470_regulator.description=TPS68470 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"tps68470_regulator.file=drivers/regulator/tps68470-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"tps68470_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps68470-regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tps68470-clk\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"getting tps68470-clk\0A\00", [42 x i8] zeroinitializer }, align 32
@regulators = internal constant { [7 x %struct.regulator_desc], [436 x i8] } { [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 43, i32 0, ptr @tps68470_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_core_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 126, i32 0, ptr @tps68470_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_ldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 65, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 126, i32 0, ptr @tps68470_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_ldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 60, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 126, i32 0, ptr @tps68470_always_on_reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_ldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 63, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 126, i32 0, ptr @tps68470_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_ldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 64, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 3, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 126, i32 0, ptr @tps68470_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_ldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 61, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 126, i32 0, ptr @tps68470_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps68470_ldo_ranges, ptr null, i32 1, ptr null, ptr null, i32 0, i32 0, i32 62, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [436 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registering %s regulator\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CORE\00", [27 x i8] zeroinitializer }, align 32
@tps68470_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps68470_regulator_enable, ptr @tps68470_regulator_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps68470_core_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 42, i32 25000 }], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANA\00", [28 x i8] zeroinitializer }, align 32
@tps68470_ldo_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 875000, i32 0, i32 125, i32 17800 }], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCM\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIO\00", [28 x i8] zeroinitializer }, align 32
@tps68470_always_on_reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VSIO\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUX1\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUX2\00", [27 x i8] zeroinitializer }, align 32
@tps68470_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 66, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error enabling TPS68470 clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tps68470_regulator_enable\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps68470-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps68470_regulator_enable._entry_ptr = internal global ptr @tps68470_regulator_enable._entry, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant [26 x i8] c"tps68470_regulator_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 175, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 177, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 151, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 153, i32 49 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 102, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 168, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 103, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"tps68470_regulator_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 85, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"tps68470_core_ranges\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 53, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 107, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"tps68470_ldo_ranges\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 49, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 111, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 115, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"tps68470_always_on_reg_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 95, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 124, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 128, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 132, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [42 x i8] c"../drivers/regulator/tps68470-regulator.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 66, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps68470_regulator_exit, ptr @__initcall__kmod_tps68470_regulator__288_191_tps68470_regulator_init4, ptr @tps68470_regulator_enable._entry, ptr @tps68470_regulator_enable._entry_ptr, ptr @tps68470_regulator_exit, ptr @tps68470_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @regulators, ptr @.str.3, ptr @.str.4, ptr @tps68470_regulator_ops, ptr @tps68470_core_ranges, ptr @.str.5, ptr @tps68470_ldo_ranges, ptr @.str.6, ptr @.str.7, ptr @tps68470_always_on_reg_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 1708, i32 2144, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_core_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_ldo_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_always_on_reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps68470_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps68470_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps68470_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps68470_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %config, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regmap, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data, align 4
  %tobool14.not = icmp eq ptr %1, null
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  br i1 %tobool14.not, label %if.end17, label %if.end17.thread

if.end17.1:                                       ; preds = %if.end17
  %13 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %init_data, align 4
  %call19.1 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i48.1 = icmp ugt ptr %call19.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.1, label %if.end17.1.if.then21_crit_edge, label %if.end17.2

if.end17.1.if.then21_crit_edge:                   ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.1.thread:                                ; preds = %if.end17.thread
  %arrayidx.1 = getelementptr [7 x ptr], ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %16 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %init_data, align 4
  %call19.163 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i48.164 = icmp ugt ptr %call19.163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.164, label %if.end17.1.thread.if.then21_crit_edge, label %if.end17.2.thread

if.end17.1.thread.if.then21_crit_edge:            ; preds = %if.end17.1.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.2:                                       ; preds = %if.end17.1
  %17 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %init_data, align 4
  %call19.2 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i48.2 = icmp ugt ptr %call19.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.2, label %if.end17.2.if.then21_crit_edge, label %if.end17.3

if.end17.2.if.then21_crit_edge:                   ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.2.thread:                                ; preds = %if.end17.1.thread
  %arrayidx.2 = getelementptr [7 x ptr], ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %20 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %init_data, align 4
  %call19.266 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i48.267 = icmp ugt ptr %call19.266, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.267, label %if.end17.2.thread.if.then21_crit_edge, label %if.end17.3.thread

if.end17.2.thread.if.then21_crit_edge:            ; preds = %if.end17.2.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.3:                                       ; preds = %if.end17.2
  %21 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %init_data, align 4
  %call19.3 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), ptr noundef nonnull %config) #5
  %cmp.i48.3 = icmp ugt ptr %call19.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.3, label %if.end17.3.if.then21_crit_edge, label %if.end17.4.critedge

if.end17.3.if.then21_crit_edge:                   ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.3.thread:                                ; preds = %if.end17.2.thread
  %arrayidx.3 = getelementptr [7 x ptr], ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  %24 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %init_data, align 4
  %call19.369 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), ptr noundef nonnull %config) #5
  %cmp.i48.370 = icmp ugt ptr %call19.369, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.370, label %if.end17.3.thread.if.then21_crit_edge, label %if.end17.4.thread

if.end17.3.thread.if.then21_crit_edge:            ; preds = %if.end17.3.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.4.critedge:                              ; preds = %if.end17.3
  %25 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %init_data, align 4
  %call19.4 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), ptr noundef nonnull %config) #5
  %cmp.i48.4 = icmp ugt ptr %call19.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.4, label %if.end17.4.critedge.if.then21_crit_edge, label %if.end17.5

if.end17.4.critedge.if.then21_crit_edge:          ; preds = %if.end17.4.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.4.thread:                                ; preds = %if.end17.3.thread
  %arrayidx.4 = getelementptr [7 x ptr], ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4, align 4
  %28 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %init_data, align 4
  %call19.472 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), ptr noundef nonnull %config) #5
  %cmp.i48.473 = icmp ugt ptr %call19.472, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.473, label %if.end17.4.thread.if.then21_crit_edge, label %if.end17.5.thread

if.end17.4.thread.if.then21_crit_edge:            ; preds = %if.end17.4.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.5:                                       ; preds = %if.end17.4.critedge
  %29 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %init_data, align 4
  %call19.5 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 5), ptr noundef nonnull %config) #5
  %cmp.i48.5 = icmp ugt ptr %call19.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.5, label %if.end17.5.if.then21_crit_edge, label %if.end17.5.if.end17.6_crit_edge

if.end17.5.if.end17.6_crit_edge:                  ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.6

if.end17.5.if.then21_crit_edge:                   ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.5.thread:                                ; preds = %if.end17.4.thread
  %arrayidx.5 = getelementptr [7 x ptr], ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  %32 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %init_data, align 4
  %call19.575 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 5), ptr noundef nonnull %config) #5
  %cmp.i48.576 = icmp ugt ptr %call19.575, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.576, label %if.end17.5.thread.if.then21_crit_edge, label %if.then15.6

if.end17.5.thread.if.then21_crit_edge:            ; preds = %if.end17.5.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.then15.6:                                      ; preds = %if.end17.5.thread
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.6 = getelementptr [7 x ptr], ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.6, align 4
  br label %if.end17.6

if.end17.6:                                       ; preds = %if.then15.6, %if.end17.5.if.end17.6_crit_edge
  %storemerge58 = phi ptr [ %34, %if.then15.6 ], [ null, %if.end17.5.if.end17.6_crit_edge ]
  %35 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %storemerge58, ptr %init_data, align 4
  %call19.6 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 6), ptr noundef nonnull %config) #5
  %cmp.i48.6 = icmp ugt ptr %call19.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.6, label %if.end17.6.if.then21_crit_edge, label %if.end17.6.cleanup_crit_edge

if.end17.6.cleanup_crit_edge:                     ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17.6.if.then21_crit_edge:                   ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17:                                         ; preds = %if.end10
  %36 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %init_data, align 4
  %call19 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @regulators, ptr noundef nonnull %config) #5
  %cmp.i48 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %if.end17.if.then21_crit_edge, label %if.end17.1

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.end17.thread:                                  ; preds = %if.end10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %init_data, align 4
  %call1960 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @regulators, ptr noundef nonnull %config) #5
  %cmp.i4861 = icmp ugt ptr %call1960, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4861, label %if.end17.thread.if.then21_crit_edge, label %if.end17.1.thread

if.end17.thread.if.then21_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

if.then21:                                        ; preds = %if.end17.thread.if.then21_crit_edge, %if.end17.if.then21_crit_edge, %if.end17.6.if.then21_crit_edge, %if.end17.5.thread.if.then21_crit_edge, %if.end17.5.if.then21_crit_edge, %if.end17.4.thread.if.then21_crit_edge, %if.end17.4.critedge.if.then21_crit_edge, %if.end17.3.thread.if.then21_crit_edge, %if.end17.3.if.then21_crit_edge, %if.end17.2.thread.if.then21_crit_edge, %if.end17.2.if.then21_crit_edge, %if.end17.1.thread.if.then21_crit_edge, %if.end17.1.if.then21_crit_edge
  %arrayidx18.lcssa = phi ptr [ @regulators, %if.end17.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), %if.end17.1.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), %if.end17.2.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), %if.end17.3.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), %if.end17.4.critedge.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 5), %if.end17.5.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 6), %if.end17.6.if.then21_crit_edge ], [ @regulators, %if.end17.thread.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 1), %if.end17.1.thread.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 2), %if.end17.2.thread.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 3), %if.end17.3.thread.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 4), %if.end17.4.thread.if.then21_crit_edge ], [ getelementptr inbounds ([7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 5), %if.end17.5.thread.if.then21_crit_edge ]
  %call19.lcssa = phi ptr [ %call19, %if.end17.if.then21_crit_edge ], [ %call19.1, %if.end17.1.if.then21_crit_edge ], [ %call19.2, %if.end17.2.if.then21_crit_edge ], [ %call19.3, %if.end17.3.if.then21_crit_edge ], [ %call19.4, %if.end17.4.critedge.if.then21_crit_edge ], [ %call19.5, %if.end17.5.if.then21_crit_edge ], [ %call19.6, %if.end17.6.if.then21_crit_edge ], [ %call1960, %if.end17.thread.if.then21_crit_edge ], [ %call19.163, %if.end17.1.thread.if.then21_crit_edge ], [ %call19.266, %if.end17.2.thread.if.then21_crit_edge ], [ %call19.369, %if.end17.3.thread.if.then21_crit_edge ], [ %call19.472, %if.end17.4.thread.if.then21_crit_edge ], [ %call19.575, %if.end17.5.thread.if.then21_crit_edge ]
  %40 = ptrtoint ptr %call19.lcssa to i32
  %41 = ptrtoint ptr %arrayidx18.lcssa to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx18.lcssa, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %40, ptr noundef nonnull @.str.3, ptr noundef %42) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end17.6.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %call24, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end17.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %reg_data = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 19
  %4 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end2_crit_edge, label %if.then3.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  %call3 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call3, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps68470_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %id = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_data = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 19
  %4 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @regulator_disable_regmap(ptr noundef %rdev) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_tps68470_regulator__288_191_tps68470_regulator_init4, !1, !"__initcall__kmod_tps68470_regulator__288_191_tps68470_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps68470-regulator.c", i32 191, i32 1}
!2 = !{ptr @__exitcall_tps68470_regulator_exit, !3, !"__exitcall_tps68470_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps68470-regulator.c", i32 197, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias289, !5, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps68470-regulator.c", i32 199, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/tps68470-regulator.c", i32 200, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/tps68470-regulator.c", i32 201, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps68470-regulator.c", i32 177, i32 11}
!13 = !{ptr @tps68470_regulator_driver, !14, !"tps68470_regulator_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps68470-regulator.c", i32 175, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps68470-regulator.c", i32 151, i32 32}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/tps68470-regulator.c", i32 153, i32 49}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/tps68470-regulator.c", i32 168, i32 11}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/tps68470-regulator.c", i32 103, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/tps68470-regulator.c", i32 107, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/tps68470-regulator.c", i32 111, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/tps68470-regulator.c", i32 115, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/tps68470-regulator.c", i32 124, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/tps68470-regulator.c", i32 128, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/tps68470-regulator.c", i32 132, i32 2}
!35 = !{ptr @regulators, !36, !"regulators", i1 false, i1 false}
!36 = !{!"../drivers/regulator/tps68470-regulator.c", i32 102, i32 36}
!37 = !{ptr @tps68470_regulator_ops, !38, !"tps68470_regulator_ops", i1 false, i1 false}
!38 = !{!"../drivers/regulator/tps68470-regulator.c", i32 85, i32 35}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/tps68470-regulator.c", i32 66, i32 4}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tps68470_regulator_enable._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @tps68470_regulator_enable._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tps68470_core_ranges, !48, !"tps68470_core_ranges", i1 false, i1 false}
!48 = !{!"../drivers/regulator/tps68470-regulator.c", i32 53, i32 34}
!49 = !{ptr @tps68470_ldo_ranges, !50, !"tps68470_ldo_ranges", i1 false, i1 false}
!50 = !{!"../drivers/regulator/tps68470-regulator.c", i32 49, i32 34}
!51 = !{ptr @tps68470_always_on_reg_ops, !52, !"tps68470_always_on_reg_ops", i1 false, i1 false}
!52 = !{!"../drivers/regulator/tps68470-regulator.c", i32 95, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
