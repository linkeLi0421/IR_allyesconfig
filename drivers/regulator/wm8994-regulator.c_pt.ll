; ModuleID = '/llk/IR_all_yes/drivers/regulator/wm8994-regulator.c_pt.bc'
source_filename = "../drivers/regulator/wm8994-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
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
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.wm8994_ldo = type { ptr, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@__initcall__kmod_wm8994_regulator__290_197_wm8994_ldo_driver_init6 = internal global ptr @wm8994_ldo_driver_init, section ".initcall6.init", align 4
@wm8994_ldo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8994_ldo_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8994_ldo_driver_exit = internal global ptr @wm8994_ldo_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [73 x i8] c"wm8994_regulator.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [47 x i8] c"wm8994_regulator.description=WM8994 LDO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [57 x i8] c"wm8994_regulator.file=drivers/regulator/wm8994-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"wm8994_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [43 x i8] c"wm8994_regulator.alias=platform:wm8994-ldo\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm8994-ldo\00", [21 x i8] zeroinitializer }, align 32
@wm8994_ldo_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 32, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8994_regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8994_ldo_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/wm8994-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Probing LDO%d\0A\00", [17 x i8] zeroinitializer }, align 32
@wm8994_ldo_consumer = internal constant { [2 x %struct.regulator_consumer_supply], [16 x i8] } { [2 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.11 }, %struct.regulator_consumer_supply { ptr null, ptr @.str.12 }], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,ldo2ena\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,ldo1ena\00", [20 x i8] zeroinitializer }, align 32
@wm8994_ldo_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Using default init data, supply %s %s\0A\00", [57 x i8] zeroinitializer }, align 32
@wm8994_ldo_desc = internal constant { [2 x %struct.regulator_desc], [120 x i8] } { [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 8, i32 0, ptr @wm8994_ldo1_ops, i32 0, i32 0, ptr null, i32 2400000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 3000, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 4, i32 0, ptr @wm8994_ldo2_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 60, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 3000, i32 0, i32 0, ptr null }], [120 x i8] zeroinitializer }, align 32
@wm8994_ldo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 181, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register LDO%d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8994_ldo_probe._entry_ptr = internal global ptr @wm8994_ldo_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@wm8994_ldo_default = internal constant { [2 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }], [120 x i8] } { [2 x { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }] [{ ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }], [120 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@wm8994_ldo1_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@wm8994_ldo2_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @wm8994_ldo2_list_voltage, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"wm8994_ldo_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 190, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 193, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 130, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"wm8994_ldo_consumer\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 100, i32 47 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 150, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 150, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 159, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"wm8994_ldo_desc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 73, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 180, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 101, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 102, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"wm8994_ldo_default\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 105, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 75, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"wm8994_ldo1_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 34, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 88, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"wm8994_ldo2_ops\00", align 1
@___asan_gen_.80 = private constant [40 x i8] c"../drivers/regulator/wm8994-regulator.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 67, i32 35 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_wm8994_ldo_driver_exit, ptr @__initcall__kmod_wm8994_regulator__290_197_wm8994_ldo_driver_init6, ptr @wm8994_ldo_driver_exit, ptr @wm8994_ldo_probe._entry, ptr @wm8994_ldo_probe._entry_ptr, ptr @wm8994_ldo_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @wm8994_ldo_consumer, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wm8994_ldo_desc, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @wm8994_ldo_default, ptr @.str.14, ptr @wm8994_ldo1_ops, ptr @.str.15, ptr @wm8994_ldo2_ops], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo_consumer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo_desc to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo_default to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo1_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo2_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_ldo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8994_ldo_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8994_ldo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8994_ldo_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_ldo_probe(ptr noundef %pdev) #2 align 64 {
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
  %dev1 = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %id3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %8 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id3, align 4
  %rem = and i32 %9, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %10 = getelementptr inbounds i8, ptr %config, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8994_ldo_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8994_ldo_probe, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %rem, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8994_ldo_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %add) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %wm899414 = getelementptr inbounds %struct.wm8994_ldo, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %wm899414 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %wm899414, align 4
  %supply = getelementptr inbounds %struct.wm8994_ldo, ptr %call.i, i32 0, i32 2
  %arrayidx = getelementptr [2 x %struct.regulator_consumer_supply], ptr @wm8994_ldo_consumer, i32 0, i32 %rem
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %supply to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %supply, align 4
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i140 = phi ptr [ %21, %if.end.i ], [ %19, %if.end13.dev_name.exit_crit_edge ]
  %22 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i140, ptr %supply, align 4
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %25 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.wm8994, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %regmap20 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %29 = ptrtoint ptr %regmap20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %regmap20, align 4
  %init_data = getelementptr inbounds %struct.wm8994_ldo, ptr %call.i, i32 0, i32 3
  %init_data21 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %30 = ptrtoint ptr %init_data21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init_data, ptr %init_data21, align 4
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool24.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool24.not, ptr @.str.6, ptr @.str.5
  %call25 = tail call ptr @gpiod_get_optional(ptr noundef %32, ptr noundef nonnull %cond, i32 noundef 19) #5
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %dev_name.exit
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %34 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call25, ptr %ena_gpiod, align 4
  %tobool30.not = icmp eq ptr %7, null
  br i1 %tobool30.not, label %if.end29.do.body39_crit_edge, label %lor.lhs.false

if.end29.do.body39_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

lor.lhs.false:                                    ; preds = %if.end29
  %arrayidx32 = getelementptr %struct.wm8994_pdata, ptr %7, i32 0, i32 2, i32 %rem
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx32, align 4
  %tobool34.not = icmp eq ptr %36, null
  br i1 %tobool34.not, label %lor.lhs.false.do.body39_crit_edge, label %lor.lhs.false35

lor.lhs.false.do.body39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %tobool37.not = icmp eq ptr %40, null
  br i1 %tobool37.not, label %if.else, label %lor.lhs.false35.do.body39_crit_edge

lor.lhs.false35.do.body39_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body39:                                        ; preds = %lor.lhs.false35.do.body39_crit_edge, %lor.lhs.false.do.body39_crit_edge, %if.end29.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8994_ldo_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wm8994_ldo_probe, %do.end61)) #5
          to label %if.then53 [label %do.end61], !srcloc !62

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %43 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %supply, align 4
  %supply58 = getelementptr inbounds %struct.wm8994_ldo, ptr %call.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %supply58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %supply58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8994_ldo_probe.__UNIQUE_ID_ddebug289, ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef %44, ptr noundef %46) #5
  br label %do.end61

do.end61:                                         ; preds = %if.then53, %do.body39
  %arrayidx63 = getelementptr [2 x %struct.regulator_init_data], ptr @wm8994_ldo_default, i32 0, i32 %rem
  %47 = call ptr @memcpy(ptr %init_data, ptr %arrayidx63, i32 228)
  %consumer_supplies = getelementptr inbounds %struct.wm8994_ldo, ptr %call.i, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %consumer_supplies to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %supply, ptr %consumer_supplies, align 4
  %tobool66.not = icmp eq ptr %call25, null
  br i1 %tobool66.not, label %if.then67, label %do.end61.if.end74_crit_edge

do.end61.if.end74_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then67:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  %valid_ops_mask = getelementptr inbounds %struct.wm8994_ldo, ptr %call.i, i32 0, i32 3, i32 1, i32 11
  %49 = ptrtoint ptr %valid_ops_mask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %valid_ops_mask, align 4
  br label %if.end74

if.else:                                          ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #7
  %50 = call ptr @memcpy(ptr %init_data, ptr %36, i32 228)
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then67, %do.end61.if.end74_crit_edge
  %arrayidx76 = getelementptr [2 x %struct.regulator_desc], ptr @wm8994_ldo_desc, i32 0, i32 %rem
  %call77 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx76, ptr noundef nonnull %config) #5
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call77, ptr %call.i, align 4
  %cmp.i141 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then80, label %if.end88

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call77 to i32
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 4
  %add87 = add nuw nsw i32 %rem, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.8, i32 noundef %add87, i32 noundef %52) #8
  br label %cleanup

if.end88:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then80, %if.then27, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then27 ], [ %52, %if.then80 ], [ 0, %if.end88 ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_ldo2_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %selector)
  %cmp = icmp ugt i32 %selector, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %wm8994 = getelementptr inbounds %struct.wm8994_ldo, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %wm8994 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wm8994, align 4
  %type = getelementptr inbounds %struct.wm8994, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul nuw nsw i32 %selector, 100000
  %add = add nuw nsw i32 %mul, 900000
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul2 = mul nuw nsw i32 %selector, 100000
  %add3 = add nuw nsw i32 %mul2, 1000000
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %selector)
  %cond = icmp eq i32 %selector, 0
  br i1 %cond, label %sw.bb4.cleanup_crit_edge, label %sw.default

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.default:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %mul6 = mul nuw nsw i32 %selector, 100000
  %add7 = add nuw nsw i32 %mul6, 950000
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4.cleanup_crit_edge, %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add7, %sw.default ], [ %add3, %sw.bb1 ], [ %add, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_wm8994_regulator__290_197_wm8994_ldo_driver_init6, !1, !"__initcall__kmod_wm8994_regulator__290_197_wm8994_ldo_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/wm8994-regulator.c", i32 197, i32 1}
!2 = !{ptr @__exitcall_wm8994_ldo_driver_exit, !1, !"__exitcall_wm8994_ldo_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/regulator/wm8994-regulator.c", i32 200, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/regulator/wm8994-regulator.c", i32 201, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/regulator/wm8994-regulator.c", i32 202, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias295, !11, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!11 = !{!"../drivers/regulator/wm8994-regulator.c", i32 203, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/wm8994-regulator.c", i32 193, i32 11}
!14 = !{ptr @wm8994_ldo_driver, !15, !"wm8994_ldo_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/wm8994-regulator.c", i32 190, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/wm8994-regulator.c", i32 130, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wm8994_ldo_probe.__UNIQUE_ID_ddebug288, !17, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/wm8994-regulator.c", i32 150, i32 13}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/wm8994-regulator.c", i32 150, i32 29}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/wm8994-regulator.c", i32 159, i32 3}
!28 = !{ptr @wm8994_ldo_probe.__UNIQUE_ID_ddebug289, !27, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/wm8994-regulator.c", i32 180, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wm8994_ldo_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm8994_ldo_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/wm8994-regulator.c", i32 101, i32 14}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/wm8994-regulator.c", i32 102, i32 14}
!39 = !{ptr @wm8994_ldo_consumer, !40, !"wm8994_ldo_consumer", i1 false, i1 false}
!40 = !{!"../drivers/regulator/wm8994-regulator.c", i32 100, i32 47}
!41 = !{ptr @wm8994_ldo_default, !42, !"wm8994_ldo_default", i1 false, i1 false}
!42 = !{!"../drivers/regulator/wm8994-regulator.c", i32 105, i32 41}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/wm8994-regulator.c", i32 75, i32 11}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/wm8994-regulator.c", i32 88, i32 11}
!47 = !{ptr @wm8994_ldo_desc, !48, !"wm8994_ldo_desc", i1 false, i1 false}
!48 = !{!"../drivers/regulator/wm8994-regulator.c", i32 73, i32 36}
!49 = !{ptr @wm8994_ldo1_ops, !50, !"wm8994_ldo1_ops", i1 false, i1 false}
!50 = !{!"../drivers/regulator/wm8994-regulator.c", i32 34, i32 35}
!51 = !{ptr @wm8994_ldo2_ops, !52, !"wm8994_ldo2_ops", i1 false, i1 false}
!52 = !{!"../drivers/regulator/wm8994-regulator.c", i32 67, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148956692, i64 2148956697, i64 2148956710, i64 2148956754, i64 2148956788, i64 2148956809}
