; ModuleID = '/llk/IR_all_yes/drivers/regulator/aat2870-regulator.c_pt.bc'
source_filename = "../drivers/regulator/aat2870-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aat2870_regulator = type { ptr, %struct.regulator_desc, i8, i8, i8, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.aat2870_data = type { ptr, ptr, %struct.mutex, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_aat2870_regulator__288_189_aat2870_regulator_init4 = internal global ptr @aat2870_regulator_init, section ".initcall4.init", align 4
@aat2870_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aat2870_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aat2870_regulator_exit = internal global ptr @aat2870_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [61 x i8] c"aat2870_regulator.description=AnalogicTech AAT2870 Regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [59 x i8] c"aat2870_regulator.file=drivers/regulator/aat2870-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [30 x i8] c"aat2870_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [57 x i8] c"aat2870_regulator.author=Jin Park <jinyoungp@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [51 x i8] c"aat2870_regulator.alias=platform:aat2870-regulator\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aat2870-regulator\00", [46 x i8] zeroinitializer }, align 32
@aat2870_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid device ID, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aat2870_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/aat2870-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aat2870_regulator_probe._entry_ptr = internal global ptr @aat2870_regulator_probe._entry, section ".printk_index", align 4
@aat2870_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@aat2870_regulator_probe._entry_ptr.8 = internal global ptr @aat2870_regulator_probe._entry.6, section ".printk_index", align 4
@aat2870_regulators = internal global { [4 x %struct.aat2870_regulator], [256 x i8] } { [4 x %struct.aat2870_regulator] [%struct.aat2870_regulator { ptr null, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @aat2870_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @aat2870_ldo_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.aat2870_regulator { ptr null, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 16, i32 0, ptr @aat2870_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @aat2870_ldo_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.aat2870_regulator { ptr null, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @aat2870_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @aat2870_ldo_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.aat2870_regulator { ptr null, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @aat2870_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @aat2870_ldo_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }], [256 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDOA\00", [27 x i8] zeroinitializer }, align 32
@aat2870_ldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @aat2870_ldo_set_voltage_sel, ptr null, ptr @aat2870_ldo_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aat2870_ldo_enable, ptr @aat2870_ldo_disable, ptr @aat2870_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@aat2870_ldo_voltages = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 1200000, i32 1300000, i32 1500000, i32 1600000, i32 1800000, i32 2000000, i32 2200000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000, i32 3100000, i32 3200000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDOB\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDOC\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDOD\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"aat2870_regulator_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 178, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 180, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 158, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 169, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"aat2870_regulators\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 117, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 118, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"aat2870_ldo_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 87, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"aat2870_ldo_voltages\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 97, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 119, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 120, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [41 x i8] c"../drivers/regulator/aat2870-regulator.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 121, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_aat2870_regulator_exit, ptr @__initcall__kmod_aat2870_regulator__288_189_aat2870_regulator_init4, ptr @aat2870_regulator_exit, ptr @aat2870_regulator_probe._entry, ptr @aat2870_regulator_probe._entry.6, ptr @aat2870_regulator_probe._entry_ptr, ptr @aat2870_regulator_probe._entry_ptr.8, ptr @aat2870_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @aat2870_regulators, ptr @.str.9, ptr @aat2870_ldo_ops, ptr @aat2870_ldo_voltages, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_regulators to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_ldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_ldo_voltages to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aat2870_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aat2870_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @aat2870_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 0, i32 1, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i = icmp eq i32 %4, %3
  br i1 %cmp2.i, label %entry.aat2870_get_regulator.exit_crit_edge, label %for.inc.i

entry.aat2870_get_regulator.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %aat2870_get_regulator.exit

for.inc.i:                                        ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 1, i32 1, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i, label %for.inc.i.aat2870_get_regulator.exit_crit_edge, label %for.inc.1.i

for.inc.i.aat2870_get_regulator.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aat2870_get_regulator.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %6 = load i32, ptr getelementptr inbounds ([4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 2, i32 1, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i, label %for.inc.1.i.aat2870_get_regulator.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.aat2870_get_regulator.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aat2870_get_regulator.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %7 = load i32, ptr getelementptr inbounds ([4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 3, i32 1, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i, label %for.inc.2.i.aat2870_get_regulator.exit_crit_edge, label %for.inc.2.i.do.end_crit_edge

for.inc.2.i.do.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.2.i.aat2870_get_regulator.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %aat2870_get_regulator.exit

aat2870_get_regulator.exit:                       ; preds = %for.inc.2.i.aat2870_get_regulator.exit_crit_edge, %for.inc.1.i.aat2870_get_regulator.exit_crit_edge, %for.inc.i.aat2870_get_regulator.exit_crit_edge, %entry.aat2870_get_regulator.exit_crit_edge
  %i.040.lcssa.i = phi i32 [ 0, %entry.aat2870_get_regulator.exit_crit_edge ], [ 1, %for.inc.i.aat2870_get_regulator.exit_crit_edge ], [ 2, %for.inc.1.i.aat2870_get_regulator.exit_crit_edge ], [ 3, %for.inc.2.i.aat2870_get_regulator.exit_crit_edge ]
  %ri.137.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i
  %enable_addr.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 2
  %8 = ptrtoint ptr %enable_addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 38, ptr %enable_addr.i, align 4
  %sub.i = add i32 %3, -1
  %conv.i = trunc i32 %sub.i to i8
  %enable_shift.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 3
  %9 = ptrtoint ptr %enable_shift.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %enable_shift.i, align 1
  %conv7.i = and i32 %sub.i, 255
  %shl.i = shl nuw i32 1, %conv7.i
  %conv8.i = trunc i32 %shl.i to i8
  %enable_mask.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 4
  %10 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv8.i, ptr %enable_mask.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %11 = icmp ult i32 %3, 3
  %conv10.i = select i1 %11, i8 36, i8 37
  %voltage_addr.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 5
  %12 = ptrtoint ptr %voltage_addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10.i, ptr %voltage_addr.i, align 1
  %13 = shl i8 %conv.i, 2
  %14 = and i8 %13, 4
  %conv14.i = xor i8 %14, 4
  %voltage_shift.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 6
  %15 = ptrtoint ptr %voltage_shift.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14.i, ptr %voltage_shift.i, align 4
  %shl17.i = shl i8 15, %conv14.i
  %voltage_mask.i = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 7
  %16 = ptrtoint ptr %voltage_mask.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %shl17.i, ptr %voltage_mask.i, align 1
  %tobool.not = icmp eq ptr %ri.137.i, null
  br i1 %tobool.not, label %aat2870_get_regulator.exit.do.end_crit_edge, label %if.end

aat2870_get_regulator.exit.do.end_crit_edge:      ; preds = %aat2870_get_regulator.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %aat2870_get_regulator.exit.do.end_crit_edge, %for.inc.2.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %18) #8
  br label %cleanup

if.end:                                           ; preds = %aat2870_get_regulator.exit
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i, align 4
  %23 = ptrtoint ptr %ri.137.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %ri.137.i, align 4
  %24 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev2, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ri.137.i, ptr %driver_data, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %26 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platform_data.i, align 8
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %28 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %init_data, align 4
  %desc = getelementptr [4 x %struct.aat2870_regulator], ptr @aat2870_regulators, i32 0, i32 %i.040.lcssa.i, i32 1
  %call9 = call ptr @devm_regulator_register(ptr noundef %dev2, ptr noundef %desc, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.7, ptr noundef %30) #8
  %31 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call9, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end14, %do.end
  %retval.0 = phi i32 [ %31, %do.end14 ], [ 0, %if.end18 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_ldo_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %update = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 4
  %voltage_addr = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %voltage_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %voltage_addr, align 1
  %voltage_mask = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %voltage_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %voltage_mask, align 1
  %voltage_shift = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %voltage_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %voltage_shift, align 4
  %conv = zext i8 %9 to i32
  %shl = shl i32 %selector, %conv
  %conv2 = trunc i32 %shl to i8
  %call3 = tail call i32 %3(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext %conv2) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_ldo_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !52
  %read = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %voltage_addr = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %voltage_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %voltage_addr, align 1
  %call2 = call i32 %4(ptr noundef %1, i8 noundef zeroext %6, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %voltage_mask = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %voltage_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %voltage_mask, align 1
  %and13 = and i8 %10, %8
  %and = zext i8 %and13 to i32
  %voltage_shift = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %voltage_shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %voltage_shift, align 4
  %conv4 = zext i8 %12 to i32
  %shr = lshr i32 %and, %conv4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_ldo_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %update = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 4
  %enable_addr = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %enable_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_addr, align 4
  %enable_mask = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_mask, align 2
  %call3 = tail call i32 %3(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext %7) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_ldo_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %update = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 4
  %enable_addr = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %enable_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_addr, align 4
  %enable_mask = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_mask, align 2
  %call2 = tail call i32 %3(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext 0) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_ldo_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !52
  %read = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %enable_addr = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %enable_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_addr, align 4
  %call2 = call i32 %4(ptr noundef %1, i8 noundef zeroext %6, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %enable_mask = getelementptr inbounds %struct.aat2870_regulator, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_mask, align 2
  %and12 = and i8 %10, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12)
  %tobool4.not = icmp ne i8 %and12, 0
  %cond = zext i1 %tobool4.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_aat2870_regulator__288_189_aat2870_regulator_init4, !1, !"__initcall__kmod_aat2870_regulator__288_189_aat2870_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/aat2870-regulator.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_aat2870_regulator_exit, !3, !"__exitcall_aat2870_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/aat2870-regulator.c", i32 195, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/aat2870-regulator.c", i32 197, i32 1}
!6 = !{ptr @__UNIQUE_ID_file290, !7, !"__UNIQUE_ID_file290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/aat2870-regulator.c", i32 198, i32 1}
!8 = !{ptr @__UNIQUE_ID_license291, !7, !"__UNIQUE_ID_license291", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author292, !10, !"__UNIQUE_ID_author292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/aat2870-regulator.c", i32 199, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/aat2870-regulator.c", i32 200, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/aat2870-regulator.c", i32 180, i32 11}
!15 = !{ptr @aat2870_regulator_driver, !16, !"aat2870_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/aat2870-regulator.c", i32 178, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/aat2870-regulator.c", i32 158, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aat2870_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @aat2870_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/aat2870-regulator.c", i32 169, i32 3}
!27 = !{ptr @aat2870_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @aat2870_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/aat2870-regulator.c", i32 118, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/aat2870-regulator.c", i32 119, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/aat2870-regulator.c", i32 120, i32 2}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/aat2870-regulator.c", i32 121, i32 2}
!37 = !{ptr @aat2870_regulators, !38, !"aat2870_regulators", i1 false, i1 false}
!38 = !{!"../drivers/regulator/aat2870-regulator.c", i32 117, i32 33}
!39 = !{ptr @aat2870_ldo_ops, !40, !"aat2870_ldo_ops", i1 false, i1 false}
!40 = !{!"../drivers/regulator/aat2870-regulator.c", i32 87, i32 35}
!41 = !{ptr @aat2870_ldo_voltages, !42, !"aat2870_ldo_voltages", i1 false, i1 false}
!42 = !{!"../drivers/regulator/aat2870-regulator.c", i32 97, i32 27}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
