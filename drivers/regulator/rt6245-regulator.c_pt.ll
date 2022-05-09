; ModuleID = '/llk/IR_all_yes/drivers/regulator/rt6245-regulator.c_pt.bc'
source_filename = "../drivers/regulator/rt6245-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.rt6245_priv = type { ptr, i8 }

@__initcall__kmod_rt6245_regulator__288_250_rt6245_driver_init6 = internal global ptr @rt6245_driver_init, section ".initcall6.init", align 4
@rt6245_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @rt6245_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt6245_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt6245_driver_exit = internal global ptr @rt6245_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"rt6245_regulator.author=ChiYuan Huang <cy_huang@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"rt6245_regulator.description=Richtek RT6245 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [57 x i8] c"rt6245_regulator.file=drivers/regulator/rt6245-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"rt6245_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt6245\00", [25 x i8] zeroinitializer }, align 32
@rt6245_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt6245\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@rt6245_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get 'enable' gpio\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt6245_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/rt6245-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt6245_probe._entry_ptr = internal global ptr @rt6245_probe._entry, section ".printk_index", align 4
@rt6245_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt6245_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr @rt6245_reg_write, ptr null, i8 0, i32 5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt6245_reg_defaults, i32 6, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"rt6245_regulator:210:(&rt6245_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@rt6245_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize the regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@rt6245_probe._entry_ptr.10 = internal global ptr @rt6245_probe._entry.8, section ".printk_index", align 4
@rt6245_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to initialize device properties\0A\00", [56 x i8] zeroinitializer }, align 32
@rt6245_probe._entry_ptr.13 = internal global ptr @rt6245_probe._entry.11, section ".printk_index", align 4
@rt6245_regulator_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 77, i32 0, ptr @rt6245_regulator_ops, i32 0, i32 0, ptr null, i32 437500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 5, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 7, ptr @rt6245_ramp_delay_table, i32 8, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@rt6245_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@rt6245_probe._entry_ptr.16 = internal global ptr @rt6245_probe._entry.14, section ".printk_index", align 4
@rt6245_reg_defaults = internal constant { [6 x %struct.reg_default], [48 x i8] } { [6 x %struct.reg_default] [%struct.reg_default { i32 0, i32 2 }, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 1 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 1 }, %struct.reg_default { i32 5, i32 25 }], [48 x i8] zeroinitializer }, align 32
@rt6245_reg_write.func_base = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"osxa|\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"richtek,oc-level-select\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"richtek,ot-level-select\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"richtek,pgdly-time-select\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"richtek,switch-freq-select\00", [37 x i8] zeroinitializer }, align 32
@rt6245_init_device_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to apply [%s:%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rt6245_init_device_properties\00", [34 x i8] zeroinitializer }, align 32
@rt6245_init_device_properties._entry_ptr = internal global ptr @rt6245_init_device_properties._entry, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt6245-regulator\00", [47 x i8] zeroinitializer }, align 32
@rt6245_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt6245_enable, ptr @rt6245_disable, ptr @rt6245_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_ramp_delay_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rt6245_ramp_delay_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12500, i32 6250, i32 4167, i32 3125, i32 2500, i32 2083, i32 1786, i32 1562], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"rt6245_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 243, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 245, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"rt6245_of_match_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 237, i32 49 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 202, i32 57 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 204, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"rt6245_regmap_config\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 178, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 210, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 212, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 218, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"rt6245_regulator_desc\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 98, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 230, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"rt6245_reg_defaults\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 163, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"func_base\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 147, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 121, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 122, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 123, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 136, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 99, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"rt6245_regulator_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 83, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [24 x i8] c"rt6245_ramp_delay_table\00", align 1
@___asan_gen_.118 = private constant [40 x i8] c"../drivers/regulator/rt6245-regulator.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 94, i32 27 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rt6245_driver_exit, ptr @__initcall__kmod_rt6245_regulator__288_250_rt6245_driver_init6, ptr @rt6245_driver_exit, ptr @rt6245_init_device_properties._entry, ptr @rt6245_init_device_properties._entry_ptr, ptr @rt6245_probe._entry, ptr @rt6245_probe._entry.11, ptr @rt6245_probe._entry.14, ptr @rt6245_probe._entry.8, ptr @rt6245_probe._entry_ptr, ptr @rt6245_probe._entry_ptr.10, ptr @rt6245_probe._entry_ptr.13, ptr @rt6245_probe._entry_ptr.16, ptr @rt6245_driver, ptr @.str, ptr @rt6245_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rt6245_probe._key, ptr @rt6245_regmap_config, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @rt6245_regulator_desc, ptr @.str.15, ptr @rt6245_reg_defaults, ptr @rt6245_reg_write.func_base, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rt6245_regulator_ops, ptr @rt6245_ramp_delay_table], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_regulator_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_reg_defaults to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_reg_write.func_base to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_init_device_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6245_ramp_delay_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt6245_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt6245_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt6245_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rt6245_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt6245_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %propval.i = alloca i8, align 1
  %regulator_cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %regulator_cfg) #5
  %0 = call ptr @memset(ptr %regulator_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_state = getelementptr inbounds %struct.rt6245_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %enable_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %enable_state, align 4
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %call11 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %i2c, ptr noundef nonnull @rt6245_regmap_config, ptr noundef nonnull @rt6245_probe._key, ptr noundef nonnull @.str.7) #5
  %cmp.i74 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call.i75 = tail call ptr @dev_get_regmap(ptr noundef %dev, ptr noundef null) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %propval.i) #5
  %7 = ptrtoint ptr %propval.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %propval.i, align 1, !annotation !77
  %call.i.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %propval.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.for.inc.i_crit_edge

if.end19.for.inc.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %propval.i, align 1
  %conv.i = zext i8 %9 to i32
  %call3.i = call i32 @regmap_write(ptr noundef %call.i75, i32 noundef 0, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.do.end26_crit_edge

if.end.i.do.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.end19.for.inc.i_crit_edge
  %call.i.1.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull %propval.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %10 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %propval.i, align 1
  %conv.1.i = zext i8 %11 to i32
  %call3.1.i = call i32 @regmap_write(ptr noundef %call.i75, i32 noundef 1, i32 noundef %conv.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %tobool4.not.1.i = icmp eq i32 %call3.1.i, 0
  br i1 %tobool4.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.end.1.i.do.end26_crit_edge

if.end.1.i.do.end26_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %call.i.2.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %propval.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.2.i = icmp eq i32 %call.i.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %12 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %propval.i, align 1
  %conv.2.i = zext i8 %13 to i32
  %call3.2.i = call i32 @regmap_write(ptr noundef %call.i75, i32 noundef 2, i32 noundef %conv.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %tobool4.not.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %tobool4.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.end.2.i.do.end26_crit_edge

if.end.2.i.do.end26_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %call.i.3.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %propval.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.3.i = icmp eq i32 %call.i.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %for.inc.2.i.if.end28_crit_edge

for.inc.2.i.if.end28_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end.3.i:                                       ; preds = %for.inc.2.i
  %14 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %propval.i, align 1
  %conv.3.i = zext i8 %15 to i32
  %call3.3.i = call i32 @regmap_write(ptr noundef %call.i75, i32 noundef 4, i32 noundef %conv.3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %tobool4.not.3.i = icmp eq i32 %call3.3.i, 0
  br i1 %tobool4.not.3.i, label %if.end.3.i.if.end28_crit_edge, label %if.end.3.i.do.end26_crit_edge

if.end.3.i.do.end26_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end.3.i.if.end28_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end26:                                         ; preds = %if.end.3.i.do.end26_crit_edge, %if.end.2.i.do.end26_crit_edge, %if.end.1.i.do.end26_crit_edge, %if.end.i.do.end26_crit_edge
  %.lcssa.i = phi ptr [ @.str.17, %if.end.i.do.end26_crit_edge ], [ @.str.18, %if.end.1.i.do.end26_crit_edge ], [ @.str.19, %if.end.2.i.do.end26_crit_edge ], [ @.str.20, %if.end.3.i.do.end26_crit_edge ]
  %call3.lcssa.i = phi i32 [ %call3.i, %if.end.i.do.end26_crit_edge ], [ %call3.1.i, %if.end.1.i.do.end26_crit_edge ], [ %call3.2.i, %if.end.2.i.do.end26_crit_edge ], [ %call3.3.i, %if.end.3.i.do.end26_crit_edge ]
  %16 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %propval.i, align 1
  %conv8.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull %.lcssa.i, i32 noundef %conv8.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %propval.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end.3.i.if.end28_crit_edge, %for.inc.2.i.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %propval.i) #5
  %18 = ptrtoint ptr %regulator_cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %regulator_cfg, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %of_node32 = getelementptr inbounds %struct.regulator_config, ptr %regulator_cfg, i32 0, i32 3
  %21 = ptrtoint ptr %of_node32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %of_node32, align 4
  %regmap33 = getelementptr inbounds %struct.regulator_config, ptr %regulator_cfg, i32 0, i32 4
  %22 = ptrtoint ptr %regmap33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call11, ptr %regmap33, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %regulator_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data, align 4
  %call37 = call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %20, ptr noundef nonnull @rt6245_regulator_desc) #5
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %regulator_cfg, i32 0, i32 1
  %24 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call37, ptr %init_data, align 4
  %call39 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @rt6245_regulator_desc, ptr noundef nonnull %regulator_cfg) #5
  %cmp.i76 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end44, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end44:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  %25 = ptrtoint ptr %call39 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end28.cleanup_crit_edge, %do.end26, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %6, %do.end16 ], [ %call3.lcssa.i, %do.end26 ], [ %25, %do.end44 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %regulator_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt6245_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x i8], ptr @rt6245_reg_write.func_base, i32 0, i32 %reg
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %conv, %val
  %and = and i32 %add, 127
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %and) #5
  %rem = shl i32 %call.i, 7
  %code.0 = or i32 %rem, %and
  %conv71 = trunc i32 %code.0 to i8
  %call72 = tail call i32 @i2c_smbus_write_byte(ptr noundef %context, i8 noundef zeroext %conv71) #5
  ret i32 %call72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt6245_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %1, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  tail call void @regcache_cache_only(ptr noundef %call1, i1 noundef zeroext false) #5
  %call4 = tail call i32 @regcache_sync(ptr noundef %call1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %enable_state = getelementptr inbounds %struct.rt6245_priv, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %enable_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enable_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt6245_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @regcache_cache_only(ptr noundef %call1, i1 noundef zeroext true) #5
  tail call void @regcache_mark_dirty(ptr noundef %call1) #5
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call3 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 0) #5
  %enable_state = getelementptr inbounds %struct.rt6245_priv, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %enable_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enable_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt6245_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %enable_state = getelementptr inbounds %struct.rt6245_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %enable_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_state, align 4, !range !78
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_rt6245_regulator__288_250_rt6245_driver_init6, !1, !"__initcall__kmod_rt6245_regulator__288_250_rt6245_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/rt6245-regulator.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_rt6245_driver_exit, !1, !"__exitcall_rt6245_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/rt6245-regulator.c", i32 252, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/rt6245-regulator.c", i32 253, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/rt6245-regulator.c", i32 254, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/rt6245-regulator.c", i32 245, i32 11}
!12 = !{ptr @rt6245_driver, !13, !"rt6245_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/rt6245-regulator.c", i32 243, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/rt6245-regulator.c", i32 202, i32 57}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/rt6245-regulator.c", i32 204, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rt6245_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rt6245_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rt6245_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/regulator/rt6245-regulator.c", i32 210, i32 11}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/rt6245-regulator.c", i32 212, i32 3}
!29 = !{ptr @rt6245_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rt6245_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/rt6245-regulator.c", i32 218, i32 3}
!33 = !{ptr @rt6245_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rt6245_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/rt6245-regulator.c", i32 230, i32 3}
!37 = !{ptr @rt6245_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rt6245_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @rt6245_regmap_config, !40, !"rt6245_regmap_config", i1 false, i1 false}
!40 = !{!"../drivers/regulator/rt6245-regulator.c", i32 178, i32 35}
!41 = !{ptr @rt6245_reg_write.func_base, !42, !"func_base", i1 false, i1 false}
!42 = !{!"../drivers/regulator/rt6245-regulator.c", i32 147, i32 18}
!43 = !{ptr @rt6245_reg_defaults, !44, !"rt6245_reg_defaults", i1 false, i1 false}
!44 = !{!"../drivers/regulator/rt6245-regulator.c", i32 163, i32 33}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/rt6245-regulator.c", i32 120, i32 5}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/rt6245-regulator.c", i32 121, i32 5}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/rt6245-regulator.c", i32 122, i32 5}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/rt6245-regulator.c", i32 123, i32 5}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/rt6245-regulator.c", i32 136, i32 4}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rt6245_init_device_properties._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @rt6245_init_device_properties._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/rt6245-regulator.c", i32 99, i32 10}
!60 = !{ptr @rt6245_regulator_desc, !61, !"rt6245_regulator_desc", i1 false, i1 false}
!61 = !{!"../drivers/regulator/rt6245-regulator.c", i32 98, i32 36}
!62 = !{ptr @rt6245_regulator_ops, !63, !"rt6245_regulator_ops", i1 false, i1 false}
!63 = !{!"../drivers/regulator/rt6245-regulator.c", i32 83, i32 35}
!64 = !{ptr @rt6245_ramp_delay_table, !65, !"rt6245_ramp_delay_table", i1 false, i1 false}
!65 = !{!"../drivers/regulator/rt6245-regulator.c", i32 94, i32 27}
!66 = !{ptr @rt6245_of_match_table, !67, !"rt6245_of_match_table", i1 false, i1 false}
!67 = !{!"../drivers/regulator/rt6245-regulator.c", i32 237, i32 49}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i8 0, i8 2}
