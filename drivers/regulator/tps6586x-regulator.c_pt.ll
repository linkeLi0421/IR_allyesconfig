; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps6586x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps6586x-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.tps6586x_regulator = type { %struct.regulator_desc, [2 x i32], [2 x i32] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.tps6586x_platform_data = type { i32, ptr, i32, i32, i8, [15 x ptr] }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_tps6586x_regulator__289_531_tps6586x_regulator_init4 = internal global ptr @tps6586x_regulator_init, section ".initcall4.init", align 4
@tps6586x_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps6586x_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps6586x_regulator_exit = internal global ptr @tps6586x_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [61 x i8] c"tps6586x_regulator.file=drivers/regulator/tps6586x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [31 x i8] c"tps6586x_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [62 x i8] c"tps6586x_regulator.author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [69 x i8] c"tps6586x_regulator.description=Regulator Driver for TI TPS6586X PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [53 x i8] c"tps6586x_regulator.alias=platform:tps6586x-regulator\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps6586x-regulator\00", [45 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps6586x_regulator\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps6586x_regulator_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps6586x-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Probing regulator\0A\00", [45 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Platform data not available, exiting\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe._entry_ptr = internal global ptr @tps6586x_regulator_probe._entry, section ".printk_index", align 4
@tps6586x_regulator_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 480, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid regulator ID specified\0A\00", [32 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe._entry_ptr.10 = internal global ptr @tps6586x_regulator_probe._entry.8, section ".printk_index", align 4
@tps6586x_regulator_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regulator %d preinit failed, e %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe._entry_ptr.13 = internal global ptr @tps6586x_regulator_probe._entry.11, section ".printk_index", align 4
@tps6586x_regulator_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe._entry_ptr.16 = internal global ptr @tps6586x_regulator_probe._entry.14, section ".printk_index", align 4
@tps6586x_regulator_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Slew rate config failed, e %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tps6586x_regulator_probe._entry_ptr.19 = internal global ptr @tps6586x_regulator_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@tps6586x_parse_regulator_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator node not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tps6586x_parse_regulator_dt\00", [36 x i8] zeroinitializer }, align 32
@tps6586x_parse_regulator_dt._entry_ptr = internal global ptr @tps6586x_parse_regulator_dt._entry, section ".printk_index", align 4
@tps6586x_matches = internal global { [15 x %struct.of_regulator_match], [84 x i8] } { [15 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.26, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.34, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.35, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.36, ptr inttoptr (i32 10 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.37, ptr inttoptr (i32 11 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.38, ptr inttoptr (i32 12 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.39, ptr inttoptr (i32 13 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.40, ptr inttoptr (i32 14 to ptr), ptr null, ptr null, ptr null }], [84 x i8] zeroinitializer }, align 32
@tps6586x_parse_regulator_dt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 414, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Regulator match failed, e %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tps6586x_parse_regulator_dt._entry_ptr.25 = internal global ptr @tps6586x_parse_regulator_dt._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm0\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm1\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sm2\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo0\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo9\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldo_rtc\00", [24 x i8] zeroinitializer }, align 32
@tps658623_regulator = internal global { [1 x %struct.tps6586x_regulator], [92 x i8] } { [1 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }], [92 x i8] zeroinitializer }, align 32
@tps658640_regulator = internal global { [8 x %struct.tps6586x_regulator], [512 x i8] } { [8 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 68, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 2, i32 2], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.45, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 70, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.47, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 67, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.49, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 67, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 5, i32 5], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.50, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 66, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.51, ptr @.str.52, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 70, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 2150000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.53, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 4, i32 0, ptr @tps6586x_ro_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps658640_rtc_voltages, ptr null, i32 0, i32 0, i32 68, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 68, i32 68] }], [512 x i8] zeroinitializer }, align 32
@tps658643_regulator = internal global { [1 x %struct.tps6586x_regulator], [92 x i8] } { [1 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 1025000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }], [92 x i8] zeroinitializer }, align 32
@tps6586x_regulator = internal global { [15 x %struct.tps6586x_regulator], [964 x i8] } { [15 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.46, ptr @.str.26, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @tps6586x_sys_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.54, ptr @.str.55, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 65, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] zeroinitializer, [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 68, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 2, i32 2], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.45, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 70, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.47, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 67, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.49, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 67, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 5, i32 5], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.50, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 66, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.51, ptr @.str.52, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 70, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.53, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 68, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 68, i32 68] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.56, ptr @.str.55, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 3000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.57, ptr @.str.44, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 31, i32 0, i32 0, i32 0, i32 33, i32 64, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 3, i32 3], [2 x i32] [i32 16, i32 17] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.58, ptr @.str.59, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 31, i32 0, i32 0, i32 0, i32 32, i32 64, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 3, i32 3], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.60, ptr @.str.61, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 31, i32 0, i32 0, i32 0, i32 32, i32 4, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 16, i32 17] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.62, ptr @.str.63, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 31, i32 0, i32 0, i32 0, i32 32, i32 1, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] zeroinitializer, [2 x i32] [i32 16, i32 17] }], [964 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REG-SM_2\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin-sm2\00", [24 x i8] zeroinitializer }, align 32
@tps6586x_rw_linear_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_3\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vinldo23\00", [23 x i8] zeroinitializer }, align 32
@tps6586x_rw_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps6586x_ldo0_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2500000, i32 2700000, i32 2850000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_5\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REG-SYS\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_6\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vinldo678\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_7\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_8\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_9\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vinldo9\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"REG-LDO_RTC\00", [20 x i8] zeroinitializer }, align 32
@tps6586x_ro_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps658640_rtc_voltages = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2500000, i32 2850000, i32 3100000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@tps6586x_sys_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_0\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vinldo01\00", [23 x i8] zeroinitializer }, align 32
@tps6586x_ldo_voltages = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1250000, i32 1500000, i32 1800000, i32 2500000, i32 2700000, i32 2850000, i32 3100000, i32 3300000], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_2\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"REG-LDO_4\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vinldo4\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REG-SM_0\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin-sm0\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REG-SM_1\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vin-sm1\00", [24 x i8] zeroinitializer }, align 32
@tps6586x_regulator_set_slew_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Only SM0/SM1 can set slew rate\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tps6586x_regulator_set_slew_rate\00", [63 x i8] zeroinitializer }, align 32
@tps6586x_regulator_set_slew_rate._entry_ptr = internal global ptr @tps6586x_regulator_set_slew_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 14]
@__sancov_gen_cov_switch_values.66 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 10, i64 27]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"tps6586x_regulator_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 520, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 522, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 460, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 468, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 480, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 486, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 500, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 509, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 405, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 407, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"tps6586x_matches\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 375, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 414, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 376, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 377, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 378, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 379, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 380, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 381, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 382, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 383, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 384, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 385, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 386, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 387, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 388, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 389, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 390, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"tps658623_regulator\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 232, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"tps658640_regulator\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 237, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"tps658643_regulator\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 257, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"tps6586x_regulator\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 200, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 233, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [33 x i8] c"tps6586x_rw_linear_regulator_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 74, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 238, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [26 x i8] c"tps6586x_rw_regulator_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 63, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant [23 x i8] c"tps6586x_ldo0_voltages\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 97, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 240, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 242, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 244, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 246, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 248, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 253, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [26 x i8] c"tps6586x_ro_regulator_ops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 84, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [23 x i8] c"tps658640_rtc_voltages\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 105, i32 27 }
@___asan_gen_.254 = private unnamed_addr constant [27 x i8] c"tps6586x_sys_regulator_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 94, i32 35 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 202, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [22 x i8] c"tps6586x_ldo_voltages\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 101, i32 27 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 218, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 222, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 224, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 226, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 228, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private constant [42 x i8] c"../drivers/regulator/tps6586x-regulator.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 325, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_tps6586x_regulator_exit, ptr @__initcall__kmod_tps6586x_regulator__289_531_tps6586x_regulator_init4, ptr @tps6586x_parse_regulator_dt._entry, ptr @tps6586x_parse_regulator_dt._entry.23, ptr @tps6586x_parse_regulator_dt._entry_ptr, ptr @tps6586x_parse_regulator_dt._entry_ptr.25, ptr @tps6586x_regulator_exit, ptr @tps6586x_regulator_probe._entry, ptr @tps6586x_regulator_probe._entry.11, ptr @tps6586x_regulator_probe._entry.14, ptr @tps6586x_regulator_probe._entry.17, ptr @tps6586x_regulator_probe._entry.8, ptr @tps6586x_regulator_probe._entry_ptr, ptr @tps6586x_regulator_probe._entry_ptr.10, ptr @tps6586x_regulator_probe._entry_ptr.13, ptr @tps6586x_regulator_probe._entry_ptr.16, ptr @tps6586x_regulator_probe._entry_ptr.19, ptr @tps6586x_regulator_set_slew_rate._entry, ptr @tps6586x_regulator_set_slew_rate._entry_ptr, ptr @tps6586x_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @tps6586x_matches, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @tps658623_regulator, ptr @tps658640_regulator, ptr @tps658643_regulator, ptr @tps6586x_regulator, ptr @.str.41, ptr @.str.42, ptr @tps6586x_rw_linear_regulator_ops, ptr @.str.43, ptr @.str.44, ptr @tps6586x_rw_regulator_ops, ptr @tps6586x_ldo0_voltages, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @tps6586x_ro_regulator_ops, ptr @tps658640_rtc_voltages, ptr @tps6586x_sys_regulator_ops, ptr @.str.54, ptr @.str.55, ptr @tps6586x_ldo_voltages, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_parse_regulator_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_matches to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_parse_regulator_dt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps658623_regulator to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps658640_regulator to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps658643_regulator to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator to i32), i32 3900, i32 4864, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rw_linear_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_rw_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_ldo0_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_ro_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps658640_rtc_voltages to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_sys_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_ldo_voltages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6586x_regulator_set_slew_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6586x_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps6586x_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps6586x_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6586x_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val1.i = alloca i8, align 1
  %val2.i = alloca i8, align 1
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tps6586x_regulator_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tps6586x_regulator_probe, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tps6586x_regulator_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.lhs.true, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %land.lhs.true.do.end17_crit_edge, label %if.then10

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.then10:                                        ; preds = %land.lhs.true
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %6, ptr noundef nonnull @.str.20) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.21) #8
  br label %do.end17

if.end.i:                                         ; preds = %if.then10
  %call3.i = tail call i32 @of_regulator_match(ptr noundef %dev4, ptr noundef nonnull %call.i, ptr noundef nonnull @tps6586x_matches, i32 noundef 15) #5
  tail call void @of_node_put(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end7.i, label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.24, i32 noundef %call3.i) #8
  br label %do.end17

if.end9.i:                                        ; preds = %if.end.i
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev4, i32 noundef 80, i32 noundef 3520) #5
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %if.end9.i.do.end17_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.do.end17_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %i.063.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %sys_rail.062.i = phi ptr [ %sys_rail.2.i, %cleanup.i.for.body.i_crit_edge ], [ null, %if.end9.i.for.body.i_crit_edge ]
  %init_data.i = getelementptr [15 x %struct.of_regulator_match], ptr @tps6586x_matches, i32 0, i32 %i.063.i, i32 2
  %7 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_data.i, align 4
  %tobool16.not.i = icmp eq ptr %8, null
  br i1 %tobool16.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end18.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end18.i:                                       ; preds = %for.body.i
  %arrayidx21.i = getelementptr %struct.tps6586x_platform_data, ptr %call.i.i, i32 0, i32 5, i32 %i.063.i
  %9 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %arrayidx21.i, align 4
  %driver_data.i = getelementptr [15 x %struct.of_regulator_match], ptr @tps6586x_matches, i32 0, i32 %i.063.i, i32 1
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %cmp23.i = icmp eq ptr %11, null
  br i1 %cmp23.i, label %if.then24.i, label %if.end18.i.if.end27.i_crit_edge

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %constraints.i = getelementptr inbounds %struct.regulator_init_data, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %constraints.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %constraints.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end18.i.if.end27.i_crit_edge
  %sys_rail.1.i = phi ptr [ %13, %if.then24.i ], [ %sys_rail.062.i, %if.end18.i.if.end27.i_crit_edge ]
  %magicptr.i = ptrtoint ptr %11 to i32
  %14 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.end27.i.cleanup.i_crit_edge [
    i32 9, label %if.end27.i.if.then30.i_crit_edge
    i32 14, label %if.end27.i.if.then30.i_crit_edge272
  ]

if.end27.i.if.then30.i_crit_edge272:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30.i

if.end27.i.if.then30.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30.i

if.end27.i.cleanup.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.then30.i:                                      ; preds = %if.end27.i.if.then30.i_crit_edge, %if.end27.i.if.then30.i_crit_edge272
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sys_rail.1.i, ptr %8, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then30.i, %if.end27.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %sys_rail.2.i = phi ptr [ %sys_rail.062.i, %for.body.i.cleanup.i_crit_edge ], [ %sys_rail.1.i, %if.end27.i.cleanup.i_crit_edge ], [ %sys_rail.1.i, %if.then30.i ]
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %cleanup.i.if.end19_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.if.end19_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.end17:                                         ; preds = %if.end9.i.do.end17_crit_edge, %do.end7.i, %do.end.i, %land.lhs.true.do.end17_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end19:                                         ; preds = %cleanup.i.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %pdata.0149 = phi ptr [ %4, %do.end.if.end19_crit_edge ], [ %call.i.i, %cleanup.i.if.end19_crit_edge ]
  %tps6586x_reg_matches.1148 = phi ptr [ null, %do.end.if.end19_crit_edge ], [ @tps6586x_matches, %cleanup.i.if.end19_crit_edge ]
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %call22 = tail call i32 @tps6586x_get_version(ptr noundef %17) #5
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %of_node48 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19
  %id.0189 = phi i32 [ 0, %if.end19 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tps6586x_platform_data, ptr %pdata.0149, i32 0, i32 5, i32 %id.0189
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call22, label %for.body.if.end6.i_crit_edge [
    i32 27, label %for.body.for.body.i119_crit_edge
    i32 10, label %for.body.for.body.i119_crit_edge273
    i32 1, label %for.body.sw.bb1.i_crit_edge
    i32 2, label %for.body.sw.bb1.i_crit_edge274
    i32 3, label %sw.bb2.i
  ]

for.body.sw.bb1.i_crit_edge274:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

for.body.sw.bb1.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

for.body.for.body.i119_crit_edge273:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i119

for.body.for.body.i119_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i119

for.body.if.end6.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

sw.bb1.i:                                         ; preds = %for.body.sw.bb1.i_crit_edge, %for.body.sw.bb1.i_crit_edge274
  br label %for.body.i119

sw.bb2.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i119

for.cond.i:                                       ; preds = %for.body.i119
  br i1 %exitcond.not.i118, label %for.cond.i.if.end6.i_crit_edge, label %for.body.i119.1

for.cond.i.if.end6.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

for.body.i119.1:                                  ; preds = %for.cond.i
  %arrayidx.i.1 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 1
  %id3.i.1 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 1, i32 0, i32 6
  %21 = ptrtoint ptr %id3.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id3.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %id.0189)
  %cmp4.i.1 = icmp eq i32 %22, %id.0189
  br i1 %cmp4.i.1, label %for.body.i119.1.find_regulator_info.exit_crit_edge, label %for.body.i119.2

for.body.i119.1.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119.2:                                  ; preds = %for.body.i119.1
  %arrayidx.i.2 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 2
  %id3.i.2 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 2, i32 0, i32 6
  %23 = ptrtoint ptr %id3.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id3.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %id.0189)
  %cmp4.i.2 = icmp eq i32 %24, %id.0189
  br i1 %cmp4.i.2, label %for.body.i119.2.find_regulator_info.exit_crit_edge, label %for.body.i119.3

for.body.i119.2.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119.3:                                  ; preds = %for.body.i119.2
  %arrayidx.i.3 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 3
  %id3.i.3 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 3, i32 0, i32 6
  %25 = ptrtoint ptr %id3.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id3.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %id.0189)
  %cmp4.i.3 = icmp eq i32 %26, %id.0189
  br i1 %cmp4.i.3, label %for.body.i119.3.find_regulator_info.exit_crit_edge, label %for.body.i119.4

for.body.i119.3.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119.4:                                  ; preds = %for.body.i119.3
  %arrayidx.i.4 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 4
  %id3.i.4 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 4, i32 0, i32 6
  %27 = ptrtoint ptr %id3.i.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id3.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %id.0189)
  %cmp4.i.4 = icmp eq i32 %28, %id.0189
  br i1 %cmp4.i.4, label %for.body.i119.4.find_regulator_info.exit_crit_edge, label %for.body.i119.5

for.body.i119.4.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119.5:                                  ; preds = %for.body.i119.4
  %arrayidx.i.5 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 5
  %id3.i.5 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 5, i32 0, i32 6
  %29 = ptrtoint ptr %id3.i.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id3.i.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %id.0189)
  %cmp4.i.5 = icmp eq i32 %30, %id.0189
  br i1 %cmp4.i.5, label %for.body.i119.5.find_regulator_info.exit_crit_edge, label %for.body.i119.6

for.body.i119.5.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119.6:                                  ; preds = %for.body.i119.5
  %arrayidx.i.6 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 6
  %id3.i.6 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 6, i32 0, i32 6
  %31 = ptrtoint ptr %id3.i.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id3.i.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %id.0189)
  %cmp4.i.6 = icmp eq i32 %32, %id.0189
  br i1 %cmp4.i.6, label %for.body.i119.6.find_regulator_info.exit_crit_edge, label %for.body.i119.7

for.body.i119.6.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119.7:                                  ; preds = %for.body.i119.6
  %arrayidx.i.7 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 7
  %id3.i.7 = getelementptr %struct.tps6586x_regulator, ptr %table.0.i, i32 7, i32 0, i32 6
  %33 = ptrtoint ptr %id3.i.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id3.i.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %id.0189)
  %cmp4.i.7 = icmp eq i32 %34, %id.0189
  br i1 %cmp4.i.7, label %for.body.i119.7.find_regulator_info.exit_crit_edge, label %for.body.i119.7.if.end6.i_crit_edge

for.body.i119.7.if.end6.i_crit_edge:              ; preds = %for.body.i119.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

for.body.i119.7.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

for.body.i119:                                    ; preds = %sw.bb2.i, %sw.bb1.i, %for.body.for.body.i119_crit_edge, %for.body.for.body.i119_crit_edge273
  %table.0.i = phi ptr [ @tps658643_regulator, %sw.bb2.i ], [ @tps658640_regulator, %sw.bb1.i ], [ @tps658623_regulator, %for.body.for.body.i119_crit_edge ], [ @tps658623_regulator, %for.body.for.body.i119_crit_edge273 ]
  %exitcond.not.i118 = phi i1 [ true, %sw.bb2.i ], [ false, %sw.bb1.i ], [ true, %for.body.for.body.i119_crit_edge ], [ true, %for.body.for.body.i119_crit_edge273 ]
  %id3.i = getelementptr inbounds %struct.regulator_desc, ptr %table.0.i, i32 0, i32 6
  %35 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %id.0189)
  %cmp4.i = icmp eq i32 %36, %id.0189
  br i1 %cmp4.i, label %for.body.i119.find_regulator_info.exit_crit_edge, label %for.cond.i

for.body.i119.find_regulator_info.exit_crit_edge: ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_regulator_info.exit

if.end6.i:                                        ; preds = %for.body.i119.7.if.end6.i_crit_edge, %for.cond.i.if.end6.i_crit_edge, %for.body.if.end6.i_crit_edge
  %37 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 0, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %id.0189)
  %cmp13.i = icmp eq i32 %37, %id.0189
  br i1 %cmp13.i, label %if.end6.i.if.end30_crit_edge, label %for.cond7.i

if.end6.i.if.end30_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.i:                                      ; preds = %if.end6.i
  %38 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 1, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %id.0189)
  %cmp13.1.i = icmp eq i32 %38, %id.0189
  br i1 %cmp13.1.i, label %for.cond7.i.if.end30_crit_edge, label %for.cond7.1.i

for.cond7.i.if.end30_crit_edge:                   ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.1.i:                                    ; preds = %for.cond7.i
  %39 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 2, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %id.0189)
  %cmp13.2.i = icmp eq i32 %39, %id.0189
  br i1 %cmp13.2.i, label %for.cond7.1.i.if.end30_crit_edge, label %for.cond7.2.i

for.cond7.1.i.if.end30_crit_edge:                 ; preds = %for.cond7.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.2.i:                                    ; preds = %for.cond7.1.i
  %40 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 3, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %id.0189)
  %cmp13.3.i = icmp eq i32 %40, %id.0189
  br i1 %cmp13.3.i, label %for.cond7.2.i.if.end30_crit_edge, label %for.cond7.3.i

for.cond7.2.i.if.end30_crit_edge:                 ; preds = %for.cond7.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.3.i:                                    ; preds = %for.cond7.2.i
  %41 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 4, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %id.0189)
  %cmp13.4.i = icmp eq i32 %41, %id.0189
  br i1 %cmp13.4.i, label %for.cond7.3.i.if.end30_crit_edge, label %for.cond7.4.i

for.cond7.3.i.if.end30_crit_edge:                 ; preds = %for.cond7.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.4.i:                                    ; preds = %for.cond7.3.i
  %42 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 5, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %id.0189)
  %cmp13.5.i = icmp eq i32 %42, %id.0189
  br i1 %cmp13.5.i, label %for.cond7.4.i.if.end30_crit_edge, label %for.cond7.5.i

for.cond7.4.i.if.end30_crit_edge:                 ; preds = %for.cond7.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.5.i:                                    ; preds = %for.cond7.4.i
  %43 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 6, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %id.0189)
  %cmp13.6.i = icmp eq i32 %43, %id.0189
  br i1 %cmp13.6.i, label %for.cond7.5.i.if.end30_crit_edge, label %for.cond7.6.i

for.cond7.5.i.if.end30_crit_edge:                 ; preds = %for.cond7.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.6.i:                                    ; preds = %for.cond7.5.i
  %44 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 7, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %id.0189)
  %cmp13.7.i = icmp eq i32 %44, %id.0189
  br i1 %cmp13.7.i, label %for.cond7.6.i.if.end30_crit_edge, label %for.cond7.7.i

for.cond7.6.i.if.end30_crit_edge:                 ; preds = %for.cond7.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.7.i:                                    ; preds = %for.cond7.6.i
  %45 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 8, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %id.0189)
  %cmp13.8.i = icmp eq i32 %45, %id.0189
  br i1 %cmp13.8.i, label %for.cond7.7.i.if.end30_crit_edge, label %for.cond7.8.i

for.cond7.7.i.if.end30_crit_edge:                 ; preds = %for.cond7.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.8.i:                                    ; preds = %for.cond7.7.i
  %46 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 9, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %id.0189)
  %cmp13.9.i = icmp eq i32 %46, %id.0189
  br i1 %cmp13.9.i, label %for.cond7.8.i.if.end30_crit_edge, label %for.cond7.9.i

for.cond7.8.i.if.end30_crit_edge:                 ; preds = %for.cond7.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.9.i:                                    ; preds = %for.cond7.8.i
  %47 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 10, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %id.0189)
  %cmp13.10.i = icmp eq i32 %47, %id.0189
  br i1 %cmp13.10.i, label %for.cond7.9.i.if.end30_crit_edge, label %for.cond7.10.i

for.cond7.9.i.if.end30_crit_edge:                 ; preds = %for.cond7.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.10.i:                                   ; preds = %for.cond7.9.i
  %48 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 11, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %id.0189)
  %cmp13.11.i = icmp eq i32 %48, %id.0189
  br i1 %cmp13.11.i, label %for.cond7.10.i.if.end30_crit_edge, label %for.cond7.11.i

for.cond7.10.i.if.end30_crit_edge:                ; preds = %for.cond7.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.11.i:                                   ; preds = %for.cond7.10.i
  %49 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 12, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %id.0189)
  %cmp13.12.i = icmp eq i32 %49, %id.0189
  br i1 %cmp13.12.i, label %for.cond7.11.i.if.end30_crit_edge, label %for.cond7.12.i

for.cond7.11.i.if.end30_crit_edge:                ; preds = %for.cond7.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.12.i:                                   ; preds = %for.cond7.11.i
  %50 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 13, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %id.0189)
  %cmp13.13.i = icmp eq i32 %50, %id.0189
  br i1 %cmp13.13.i, label %for.cond7.12.i.if.end30_crit_edge, label %for.cond7.13.i

for.cond7.12.i.if.end30_crit_edge:                ; preds = %for.cond7.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.cond7.13.i:                                   ; preds = %for.cond7.12.i
  %51 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 14, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %id.0189)
  %cmp13.14.i = icmp eq i32 %51, %id.0189
  br i1 %cmp13.14.i, label %for.cond7.13.i.if.end30_crit_edge, label %for.cond7.13.i.do.end28_crit_edge

for.cond7.13.i.do.end28_crit_edge:                ; preds = %for.cond7.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

for.cond7.13.i.if.end30_crit_edge:                ; preds = %for.cond7.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

find_regulator_info.exit:                         ; preds = %for.body.i119.find_regulator_info.exit_crit_edge, %for.body.i119.7.find_regulator_info.exit_crit_edge, %for.body.i119.6.find_regulator_info.exit_crit_edge, %for.body.i119.5.find_regulator_info.exit_crit_edge, %for.body.i119.4.find_regulator_info.exit_crit_edge, %for.body.i119.3.find_regulator_info.exit_crit_edge, %for.body.i119.2.find_regulator_info.exit_crit_edge, %for.body.i119.1.find_regulator_info.exit_crit_edge
  %arrayidx.i.lcssa = phi ptr [ %table.0.i, %for.body.i119.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.1, %for.body.i119.1.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.2, %for.body.i119.2.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.3, %for.body.i119.3.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.4, %for.body.i119.4.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.5, %for.body.i119.5.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.6, %for.body.i119.6.find_regulator_info.exit_crit_edge ], [ %arrayidx.i.7, %for.body.i119.7.find_regulator_info.exit_crit_edge ]
  %tobool24.not = icmp eq ptr %arrayidx.i.lcssa, null
  br i1 %tobool24.not, label %find_regulator_info.exit.do.end28_crit_edge, label %find_regulator_info.exit.if.end30_crit_edge

find_regulator_info.exit.if.end30_crit_edge:      ; preds = %find_regulator_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

find_regulator_info.exit.do.end28_crit_edge:      ; preds = %find_regulator_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end28:                                         ; preds = %find_regulator_info.exit.do.end28_crit_edge, %for.cond7.13.i.do.end28_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end30:                                         ; preds = %find_regulator_info.exit.if.end30_crit_edge, %for.cond7.13.i.if.end30_crit_edge, %for.cond7.12.i.if.end30_crit_edge, %for.cond7.11.i.if.end30_crit_edge, %for.cond7.10.i.if.end30_crit_edge, %for.cond7.9.i.if.end30_crit_edge, %for.cond7.8.i.if.end30_crit_edge, %for.cond7.7.i.if.end30_crit_edge, %for.cond7.6.i.if.end30_crit_edge, %for.cond7.5.i.if.end30_crit_edge, %for.cond7.4.i.if.end30_crit_edge, %for.cond7.3.i.if.end30_crit_edge, %for.cond7.2.i.if.end30_crit_edge, %for.cond7.1.i.if.end30_crit_edge, %for.cond7.i.if.end30_crit_edge, %if.end6.i.if.end30_crit_edge
  %retval.0.i120152 = phi ptr [ %arrayidx.i.lcssa, %find_regulator_info.exit.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 13), %for.cond7.12.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 12), %for.cond7.11.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 11), %for.cond7.10.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 10), %for.cond7.9.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 9), %for.cond7.8.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 8), %for.cond7.7.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 7), %for.cond7.6.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 6), %for.cond7.5.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 5), %for.cond7.4.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 4), %for.cond7.3.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 3), %for.cond7.2.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 2), %for.cond7.1.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 1), %for.cond7.i.if.end30_crit_edge ], [ @tps6586x_regulator, %if.end6.i.if.end30_crit_edge ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 14), %for.cond7.13.i.if.end30_crit_edge ]
  %52 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val1.i) #5
  %54 = ptrtoint ptr %val1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %val1.i, align 1, !annotation !162
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2.i) #5
  %55 = ptrtoint ptr %val2.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %val2.i, align 1, !annotation !162
  %enable_reg.i = getelementptr inbounds %struct.tps6586x_regulator, ptr %retval.0.i120152, i32 0, i32 2
  %56 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %enable_reg.i, align 4
  %arrayidx2.i = getelementptr %struct.tps6586x_regulator, ptr %retval.0.i120152, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp.i122 = icmp eq i32 %57, %59
  br i1 %cmp.i122, label %land.lhs.true.i, label %if.end30.if.end.i125_crit_edge

if.end30.if.end.i125_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i125

land.lhs.true.i:                                  ; preds = %if.end30
  %enable_bit.i = getelementptr inbounds %struct.tps6586x_regulator, ptr %retval.0.i120152, i32 0, i32 1
  %60 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %enable_bit.i, align 4
  %arrayidx5.i = getelementptr %struct.tps6586x_regulator, ptr %retval.0.i120152, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp6.i = icmp eq i32 %61, %63
  br i1 %cmp6.i, label %land.lhs.true.i.tps6586x_regulator_preinit.exit.thread160_crit_edge, label %land.lhs.true.i.if.end.i125_crit_edge

land.lhs.true.i.if.end.i125_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i125

land.lhs.true.i.tps6586x_regulator_preinit.exit.thread160_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit.thread160

if.end.i125:                                      ; preds = %land.lhs.true.i.if.end.i125_crit_edge, %if.end30.if.end.i125_crit_edge
  %call.i123 = call i32 @tps6586x_read(ptr noundef %53, i32 noundef %57, ptr noundef nonnull %val1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %if.end10.i, label %if.end.i125.tps6586x_regulator_preinit.exit.thread_crit_edge

if.end.i125.tps6586x_regulator_preinit.exit.thread_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit.thread

if.end10.i:                                       ; preds = %if.end.i125
  %64 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx2.i, align 4
  %call13.i = call i32 @tps6586x_read(ptr noundef %53, i32 noundef %65, ptr noundef nonnull %val2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end10.i.tps6586x_regulator_preinit.exit.thread_crit_edge

if.end10.i.tps6586x_regulator_preinit.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit.thread

if.end16.i:                                       ; preds = %if.end10.i
  %66 = ptrtoint ptr %val2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %val2.i, align 1
  %conv.i = zext i8 %67 to i32
  %arrayidx18.i = getelementptr %struct.tps6586x_regulator, ptr %retval.0.i120152, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx18.i, align 4
  %shl.i = shl nuw i32 1, %69
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.tps6586x_regulator_preinit.exit.thread160_crit_edge, label %if.end21.i

if.end16.i.tps6586x_regulator_preinit.exit.thread160_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit.thread160

if.end21.i:                                       ; preds = %if.end16.i
  %enable_bit17.i = getelementptr inbounds %struct.tps6586x_regulator, ptr %retval.0.i120152, i32 0, i32 1
  %70 = ptrtoint ptr %val1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val1.i, align 1
  %conv22.i = zext i8 %71 to i32
  %72 = ptrtoint ptr %enable_bit17.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %enable_bit17.i, align 4
  %shl25.i = shl nuw i32 1, %73
  %and26.i = and i32 %shl25.i, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end21.i.tps6586x_regulator_preinit.exit_crit_edge

if.end21.i.tps6586x_regulator_preinit.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit

if.then28.i:                                      ; preds = %if.end21.i
  %74 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %enable_reg.i, align 4
  %conv34.i = trunc i32 %shl25.i to i8
  %call35.i = call i32 @tps6586x_set_bits(ptr noundef %53, i32 noundef %75, i8 noundef zeroext %conv34.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then28.i.tps6586x_regulator_preinit.exit_crit_edge, label %if.then28.i.tps6586x_regulator_preinit.exit.thread_crit_edge

if.then28.i.tps6586x_regulator_preinit.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit.thread

if.then28.i.tps6586x_regulator_preinit.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_preinit.exit

tps6586x_regulator_preinit.exit.thread:           ; preds = %if.then28.i.tps6586x_regulator_preinit.exit.thread_crit_edge, %if.end10.i.tps6586x_regulator_preinit.exit.thread_crit_edge, %if.end.i125.tps6586x_regulator_preinit.exit.thread_crit_edge
  %retval.0.i126.ph = phi i32 [ %call35.i, %if.then28.i.tps6586x_regulator_preinit.exit.thread_crit_edge ], [ %call13.i, %if.end10.i.tps6586x_regulator_preinit.exit.thread_crit_edge ], [ %call.i123, %if.end.i125.tps6586x_regulator_preinit.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #5
  br label %do.end38

tps6586x_regulator_preinit.exit.thread160:        ; preds = %if.end16.i.tps6586x_regulator_preinit.exit.thread160_crit_edge, %land.lhs.true.i.tps6586x_regulator_preinit.exit.thread160_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #5
  br label %if.end40

tps6586x_regulator_preinit.exit:                  ; preds = %if.then28.i.tps6586x_regulator_preinit.exit_crit_edge, %if.end21.i.tps6586x_regulator_preinit.exit_crit_edge
  %76 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx2.i, align 4
  %78 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx18.i, align 4
  %shl44.i = shl nuw i32 1, %79
  %conv45.i = trunc i32 %shl44.i to i8
  %call46.i = call i32 @tps6586x_clr_bits(ptr noundef %53, i32 noundef %77, i8 noundef zeroext %conv45.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool34.not = icmp eq i32 %call46.i, 0
  br i1 %tobool34.not, label %tps6586x_regulator_preinit.exit.if.end40_crit_edge, label %tps6586x_regulator_preinit.exit.do.end38_crit_edge

tps6586x_regulator_preinit.exit.do.end38_crit_edge: ; preds = %tps6586x_regulator_preinit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

tps6586x_regulator_preinit.exit.if.end40_crit_edge: ; preds = %tps6586x_regulator_preinit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end38:                                         ; preds = %tps6586x_regulator_preinit.exit.do.end38_crit_edge, %tps6586x_regulator_preinit.exit.thread
  %retval.0.i126158 = phi i32 [ %retval.0.i126.ph, %tps6586x_regulator_preinit.exit.thread ], [ %call46.i, %tps6586x_regulator_preinit.exit.do.end38_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.12, i32 noundef %id.0189, i32 noundef %retval.0.i126158) #8
  br label %cleanup

if.end40:                                         ; preds = %tps6586x_regulator_preinit.exit.if.end40_crit_edge, %tps6586x_regulator_preinit.exit.thread160
  %80 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent, align 8
  %82 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %config, align 4
  %83 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %19, ptr %init_data, align 4
  %84 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %retval.0.i120152, ptr %driver_data, align 4
  br i1 %tobool6.not, label %if.then45, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %of_node47 = getelementptr %struct.of_regulator_match, ptr %tps6586x_reg_matches.1148, i32 %id.0189, i32 3
  %85 = ptrtoint ptr %of_node47 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %of_node47, align 4
  %87 = ptrtoint ptr %of_node48 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %of_node48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end40.if.end49_crit_edge
  %call51 = call ptr @devm_regulator_register(ptr noundef %dev4, ptr noundef nonnull %retval.0.i120152, ptr noundef nonnull %config) #5
  %cmp.i128 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %retval.0.i120152 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %retval.0.i120152, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.15, ptr noundef %89) #8
  %90 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end49
  %tobool61.not = icmp eq ptr %19, null
  br i1 %tobool61.not, label %if.end60.for.inc_crit_edge, label %if.then62

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then62:                                        ; preds = %if.end60
  %91 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent, align 8
  %driver_data.i130 = getelementptr inbounds %struct.regulator_init_data, ptr %19, i32 0, i32 5
  %93 = ptrtoint ptr %driver_data.i130 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i130, align 4
  %cmp.i131 = icmp eq ptr %94, null
  br i1 %cmp.i131, label %if.then62.for.inc_crit_edge, label %if.end.i134

if.then62.for.inc_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i134:                                      ; preds = %if.then62
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %and.i132 = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132)
  %tobool.not.i133 = icmp eq i32 %and.i132, 0
  br i1 %tobool.not.i133, label %if.end.i134.for.inc_crit_edge, label %if.end3.i

if.end.i134.for.inc_crit_edge:                    ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end3.i:                                        ; preds = %if.end.i134
  %97 = zext i32 %id.0189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %id.0189, label %tps6586x_regulator_set_slew_rate.exit.thread165 [
    i32 1, label %if.end3.i.tps6586x_regulator_set_slew_rate.exit_crit_edge
    i32 2, label %sw.bb4.i
  ]

if.end3.i.tps6586x_regulator_set_slew_rate.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_set_slew_rate.exit

sw.bb4.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tps6586x_regulator_set_slew_rate.exit

tps6586x_regulator_set_slew_rate.exit.thread165:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.64) #8
  br label %do.end68

tps6586x_regulator_set_slew_rate.exit:            ; preds = %sw.bb4.i, %if.end3.i.tps6586x_regulator_set_slew_rate.exit_crit_edge
  %reg.0.i = phi i32 [ 37, %sw.bb4.i ], [ 40, %if.end3.i.tps6586x_regulator_set_slew_rate.exit_crit_edge ]
  %98 = trunc i32 %96 to i8
  %conv8.i = and i8 %98, 7
  %call.i136 = call i32 @tps6586x_write(ptr noundef %92, i32 noundef %reg.0.i, i8 noundef zeroext %conv8.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp64 = icmp slt i32 %call.i136, 0
  br i1 %cmp64, label %tps6586x_regulator_set_slew_rate.exit.do.end68_crit_edge, label %tps6586x_regulator_set_slew_rate.exit.for.inc_crit_edge

tps6586x_regulator_set_slew_rate.exit.for.inc_crit_edge: ; preds = %tps6586x_regulator_set_slew_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

tps6586x_regulator_set_slew_rate.exit.do.end68_crit_edge: ; preds = %tps6586x_regulator_set_slew_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

do.end68:                                         ; preds = %tps6586x_regulator_set_slew_rate.exit.do.end68_crit_edge, %tps6586x_regulator_set_slew_rate.exit.thread165
  %retval.0.i138168 = phi i32 [ -22, %tps6586x_regulator_set_slew_rate.exit.thread165 ], [ %call.i136, %tps6586x_regulator_set_slew_rate.exit.do.end68_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i138168) #8
  br label %cleanup

for.inc:                                          ; preds = %tps6586x_regulator_set_slew_rate.exit.for.inc_crit_edge, %if.end.i134.for.inc_crit_edge, %if.then62.for.inc_crit_edge, %if.end60.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.0189, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call51, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end68, %do.end56, %do.end38, %do.end28, %do.end17
  %retval.0 = phi i32 [ %retval.0.i126158, %do.end38 ], [ %90, %do.end56 ], [ %retval.0.i138168, %do.end68 ], [ -22, %do.end28 ], [ 0, %for.end ], [ -19, %do.end17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_get_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !135, !137, !138, !140, !141, !143, !145, !147, !149, !150, !151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_tps6586x_regulator__289_531_tps6586x_regulator_init4, !1, !"__initcall__kmod_tps6586x_regulator__289_531_tps6586x_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 531, i32 1}
!2 = !{ptr @__exitcall_tps6586x_regulator_exit, !3, !"__exitcall_tps6586x_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 537, i32 1}
!4 = !{ptr @__UNIQUE_ID_file290, !5, !"__UNIQUE_ID_file290", i1 false, i1 false}
!5 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 539, i32 1}
!6 = !{ptr @__UNIQUE_ID_license291, !5, !"__UNIQUE_ID_license291", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author292, !8, !"__UNIQUE_ID_author292", i1 false, i1 false}
!8 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 540, i32 1}
!9 = !{ptr @__UNIQUE_ID_description293, !10, !"__UNIQUE_ID_description293", i1 false, i1 false}
!10 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 541, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias294, !12, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!12 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 542, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 522, i32 11}
!15 = !{ptr @tps6586x_regulator_driver, !16, !"tps6586x_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 520, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 460, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tps6586x_regulator_probe.__UNIQUE_ID_ddebug288, !18, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 468, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tps6586x_regulator_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @tps6586x_regulator_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 480, i32 4}
!31 = !{ptr @tps6586x_regulator_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tps6586x_regulator_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 486, i32 4}
!35 = !{ptr @tps6586x_regulator_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tps6586x_regulator_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 500, i32 4}
!39 = !{ptr @tps6586x_regulator_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tps6586x_regulator_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 509, i32 5}
!43 = !{ptr @tps6586x_regulator_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tps6586x_regulator_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 405, i32 34}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 407, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tps6586x_parse_regulator_dt._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tps6586x_parse_regulator_dt._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 414, i32 3}
!54 = !{ptr @tps6586x_parse_regulator_dt._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tps6586x_parse_regulator_dt._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 376, i32 12}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 377, i32 12}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 378, i32 12}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 379, i32 12}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 380, i32 12}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 381, i32 12}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 382, i32 12}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 383, i32 12}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 384, i32 12}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 385, i32 12}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 386, i32 12}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 387, i32 12}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 388, i32 12}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 389, i32 12}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 390, i32 12}
!86 = !{ptr @tps6586x_matches, !87, !"tps6586x_matches", i1 false, i1 false}
!87 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 375, i32 34}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 233, i32 2}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tps658623_regulator, !92, !"tps658623_regulator", i1 false, i1 false}
!92 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 232, i32 34}
!93 = !{ptr @tps6586x_rw_linear_regulator_ops, !94, !"tps6586x_rw_linear_regulator_ops", i1 false, i1 false}
!94 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 74, i32 35}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 238, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 240, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 242, i32 2}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 244, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 246, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 248, i32 2}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 253, i32 2}
!113 = !{ptr @tps658640_regulator, !114, !"tps658640_regulator", i1 false, i1 false}
!114 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 237, i32 34}
!115 = !{ptr @tps6586x_rw_regulator_ops, !116, !"tps6586x_rw_regulator_ops", i1 false, i1 false}
!116 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 63, i32 35}
!117 = !{ptr @tps6586x_ldo0_voltages, !118, !"tps6586x_ldo0_voltages", i1 false, i1 false}
!118 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 97, i32 27}
!119 = !{ptr @tps6586x_ro_regulator_ops, !120, !"tps6586x_ro_regulator_ops", i1 false, i1 false}
!120 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 84, i32 35}
!121 = !{ptr @tps658640_rtc_voltages, !122, !"tps658640_rtc_voltages", i1 false, i1 false}
!122 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 105, i32 27}
!123 = !{ptr @tps658643_regulator, !124, !"tps658643_regulator", i1 false, i1 false}
!124 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 257, i32 34}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 202, i32 2}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 218, i32 2}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 222, i32 2}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 224, i32 2}
!134 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 226, i32 2}
!137 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 228, i32 2}
!140 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tps6586x_regulator, !142, !"tps6586x_regulator", i1 false, i1 false}
!142 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 200, i32 34}
!143 = !{ptr @tps6586x_sys_regulator_ops, !144, !"tps6586x_sys_regulator_ops", i1 false, i1 false}
!144 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 94, i32 35}
!145 = !{ptr @tps6586x_ldo_voltages, !146, !"tps6586x_ldo_voltages", i1 false, i1 false}
!146 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 101, i32 27}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/regulator/tps6586x-regulator.c", i32 325, i32 3}
!149 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @tps6586x_regulator_set_slew_rate._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @tps6586x_regulator_set_slew_rate._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2148705784, i64 2148705789, i64 2148705802, i64 2148705846, i64 2148705880, i64 2148705901}
!162 = !{!"auto-init"}
