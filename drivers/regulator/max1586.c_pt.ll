; ModuleID = '/llk/IR_all_yes/drivers/regulator/max1586.c_pt.bc'
source_filename = "../drivers/regulator/max1586.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.max1586_platform_data = type { i32, ptr, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.max1586_subdev_data = type { i32, ptr, ptr }
%struct.max1586_data = type { ptr, i32, i32, i32, i32 }

@__initcall__kmod_max1586__290_305_max1586_pmic_init4 = internal global ptr @max1586_pmic_init, section ".initcall4.init", align 4
@max1586_pmic_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max1586_pmic_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max1586_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max1586_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max1586_pmic_exit = internal global ptr @max1586_pmic_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [56 x i8] c"max1586.description=MAXIM 1586 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [30 x i8] c"max1586.author=Robert Jarzmik\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"max1586.file=drivers/regulator/max1586\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [20 x i8] c"max1586.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1586\00", [24 x i8] zeroinitializer }, align 32
@max1586_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max1586\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max1586_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max1586\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max1586_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error: No device match found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max1586_pmic_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/regulator/max1586.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max1586_pmic_probe._entry_ptr = internal global ptr @max1586_pmic_probe._entry, section ".printk_index", align 4
@max1586_pmic_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid regulator id %d\0A\00", [39 x i8] zeroinitializer }, align 32
@max1586_pmic_probe._entry_ptr.8 = internal global ptr @max1586_pmic_probe._entry.6, section ".printk_index", align 4
@max1586_reg = internal global { [2 x %struct.regulator_desc], [120 x i8] } { [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.23, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @max1586_v3_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 4, i32 0, ptr @max1586_v6_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @v6_voltages_uv, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [120 x i8] zeroinitializer }, align 32
@max1586_pmic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@max1586_pmic_probe._entry_ptr.11 = internal global ptr @max1586_pmic_probe._entry.9, section ".printk_index", align 4
@max1586_pmic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Maxim 1586 regulator driver loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max1586_pmic_probe._entry_ptr.15 = internal global ptr @max1586_pmic_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v3-gain\00", [24 x i8] zeroinitializer }, align 32
@of_get_max1586_platform_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOF has no 'v3-gain' property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_get_max1586_platform_data\00", [35 x i8] zeroinitializer }, align 32
@of_get_max1586_platform_data._entry_ptr = internal global ptr @of_get_max1586_platform_data._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@of_get_max1586_platform_data._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing 'regulators' subnode in DT\0A\00", [60 x i8] zeroinitializer }, align 32
@of_get_max1586_platform_data._entry_ptr.22 = internal global ptr @of_get_max1586_platform_data._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Output_V3\00", [22 x i8] zeroinitializer }, align 32
@max1586_v3_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max1586_v3_set_voltage_sel, ptr null, ptr @max1586_v3_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Output_V6\00", [22 x i8] zeroinitializer }, align 32
@max1586_v6_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @max1586_v6_set_voltage_sel, ptr null, ptr @max1586_v6_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@v6_voltages_uv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1800000, i32 2500000, i32 3000000], [16 x i8] zeroinitializer }, align 32
@max1586_v3_set_voltage_sel.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max1586_v3_set_voltage_sel\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"changing voltage v3 to %dmv\0A\00", [35 x i8] zeroinitializer }, align 32
@max1586_v6_set_voltage_sel.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max1586_v6_set_voltage_sel\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"changing voltage v6 to %dmv\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"max1586_pmic_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 292, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 295, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"max1586_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 204, i32 49 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"max1586_id\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 286, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 224, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 257, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"max1586_reg\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 129, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 275, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 282, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 157, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 159, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 163, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 165, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 131, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"max1586_v3_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 116, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 139, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"max1586_v6_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 123, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"v6_voltages_uv\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 46, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 71, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [31 x i8] c"../drivers/regulator/max1586.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 99, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_max1586_pmic_exit, ptr @__initcall__kmod_max1586__290_305_max1586_pmic_init4, ptr @max1586_pmic_exit, ptr @max1586_pmic_probe._entry, ptr @max1586_pmic_probe._entry.12, ptr @max1586_pmic_probe._entry.6, ptr @max1586_pmic_probe._entry.9, ptr @max1586_pmic_probe._entry_ptr, ptr @max1586_pmic_probe._entry_ptr.11, ptr @max1586_pmic_probe._entry_ptr.15, ptr @max1586_pmic_probe._entry_ptr.8, ptr @of_get_max1586_platform_data._entry, ptr @of_get_max1586_platform_data._entry.20, ptr @of_get_max1586_platform_data._entry_ptr, ptr @of_get_max1586_platform_data._entry_ptr.22, ptr @max1586_pmic_driver, ptr @.str, ptr @max1586_of_match, ptr @max1586_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @max1586_reg, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @max1586_v3_ops, ptr @.str.24, ptr @max1586_v6_ops, ptr @v6_voltages_uv, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_pmic_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_pmic_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_reg to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_pmic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_pmic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_max1586_platform_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_max1586_platform_data._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_v3_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1586_v6_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v6_voltages_uv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max1586_pmic_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max1586_pmic_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max1586_pmic_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max1586_pmic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1586_pmic_probe(ptr noundef %client, ptr nocapture noundef readnone %i2c_id) #2 align 64 {
entry:
  %rmatch.i = alloca [2 x %struct.of_regulator_match], align 4
  %pdata_of = alloca %struct.max1586_platform_data, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pdata_of) #6
  %0 = ptrtoint ptr %pdata_of to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pdata_of, align 4, !annotation !82
  %1 = getelementptr inbounds %struct.max1586_platform_data, ptr %pdata_of, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !82
  %3 = getelementptr inbounds %struct.max1586_platform_data, ptr %pdata_of, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %5 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp ne ptr %9, null
  %tobool2.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @of_match_device(ptr noundef nonnull @max1586_of_match, ptr noundef %dev) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup73

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rmatch.i) #6
  %10 = getelementptr inbounds i8, ptr %rmatch.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 36)
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef %3, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %13) #9
  br label %of_get_max1586_platform_data.exit.thread

if.end.i:                                         ; preds = %if.end
  %call1.i = call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.19) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end5.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i
  %14 = load ptr, ptr @max1586_reg, align 4
  %15 = ptrtoint ptr %rmatch.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rmatch.i, align 4
  %16 = load ptr, ptr getelementptr inbounds ([2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 1), align 4
  %arrayidx8.1.i = getelementptr inbounds [2 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx8.1.i, align 4
  %call10.i = call i32 @of_regulator_match(ptr noundef %dev, ptr noundef nonnull %call1.i, ptr noundef nonnull %rmatch.i, i32 noundef 2) #6
  call void @of_node_put(ptr noundef nonnull %call1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 1
  br i1 %cmp11.i, label %of_get_max1586_platform_data.exit, label %if.end13.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %of_get_max1586_platform_data.exit.thread

if.end13.i:                                       ; preds = %for.body.preheader.i
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call10.i, i32 12) #6
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !83

devm_kcalloc.exit.thread.i:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %1, align 4
  br label %of_get_max1586_platform_data.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end13.i
  %21 = extractvalue { i32, i1 } %18, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %21, i32 noundef 3520) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i.i, ptr %1, align 4
  %tobool16.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool16.not.i, label %devm_kcalloc.exit.i.of_get_max1586_platform_data.exit.thread_crit_edge, label %for.body22.preheader.i

devm_kcalloc.exit.i.of_get_max1586_platform_data.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_get_max1586_platform_data.exit.thread

for.body22.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  %23 = ptrtoint ptr %pdata_of to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call10.i, ptr %pdata_of, align 4
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body22.preheader.i
  %i.169.i = phi i32 [ %inc29.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.body22.preheader.i ]
  %sub.068.i = phi ptr [ %incdec.ptr.i, %for.body22.i.for.body22.i_crit_edge ], [ %call5.i.i.i, %for.body22.preheader.i ]
  %24 = ptrtoint ptr %sub.068.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.169.i, ptr %sub.068.i, align 4
  %of_node24.i = getelementptr [2 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 %i.169.i, i32 3
  %25 = ptrtoint ptr %of_node24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node24.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %name26.i = getelementptr inbounds %struct.max1586_subdev_data, ptr %sub.068.i, i32 0, i32 1
  %29 = ptrtoint ptr %name26.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name26.i, align 4
  %init_data.i = getelementptr [2 x %struct.of_regulator_match], ptr %rmatch.i, i32 0, i32 %i.169.i, i32 2
  %30 = ptrtoint ptr %init_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_data.i, align 4
  %platform_data.i127 = getelementptr inbounds %struct.max1586_subdev_data, ptr %sub.068.i, i32 0, i32 2
  %32 = ptrtoint ptr %platform_data.i127 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %platform_data.i127, align 4
  %incdec.ptr.i = getelementptr %struct.max1586_subdev_data, ptr %sub.068.i, i32 1
  %inc29.i = add nuw nsw i32 %i.169.i, 1
  %exitcond.not.i = icmp eq i32 %inc29.i, %call10.i
  br i1 %exitcond.not.i, label %of_get_max1586_platform_data.exit.thread131, label %for.body22.i.for.body22.i_crit_edge

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i

of_get_max1586_platform_data.exit.thread131:      ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rmatch.i) #6
  br label %if.end12

of_get_max1586_platform_data.exit.thread:         ; preds = %devm_kcalloc.exit.i.of_get_max1586_platform_data.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end5.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.of_get_max1586_platform_data.exit.thread_crit_edge ], [ -22, %do.end5.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rmatch.i) #6
  br label %cleanup73

of_get_max1586_platform_data.exit:                ; preds = %for.body.preheader.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rmatch.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp = icmp slt i32 %call10.i, 0
  br i1 %cmp, label %of_get_max1586_platform_data.exit.cleanup73_crit_edge, label %of_get_max1586_platform_data.exit.if.end12_crit_edge

of_get_max1586_platform_data.exit.if.end12_crit_edge: ; preds = %of_get_max1586_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

of_get_max1586_platform_data.exit.cleanup73_crit_edge: ; preds = %of_get_max1586_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end12:                                         ; preds = %of_get_max1586_platform_data.exit.if.end12_crit_edge, %of_get_max1586_platform_data.exit.thread131, %entry.if.end12_crit_edge
  %pdata.0 = phi ptr [ %7, %entry.if.end12_crit_edge ], [ %pdata_of, %of_get_max1586_platform_data.exit.if.end12_crit_edge ], [ %pdata_of, %of_get_max1586_platform_data.exit.thread131 ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end12.cleanup73_crit_edge, label %if.end17

if.end12.cleanup73_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end17:                                         ; preds = %if.end12
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %client, ptr %call.i, align 4
  %v3_gain = getelementptr inbounds %struct.max1586_platform_data, ptr %pdata.0, i32 0, i32 2
  %34 = ptrtoint ptr %v3_gain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v3_gain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool19.not = icmp eq i32 %35, 0
  br i1 %tobool19.not, label %if.end17.cleanup73_crit_edge, label %if.end21

if.end17.cleanup73_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end21:                                         ; preds = %if.end17
  %mul = mul i32 %35, 700
  %div = sdiv i32 %mul, 1000
  %min_uV = getelementptr inbounds %struct.max1586_data, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div, ptr %min_uV, align 4
  %37 = ptrtoint ptr %v3_gain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v3_gain, align 4
  %mul24 = mul i32 %38, 1475
  %div25 = sdiv i32 %mul24, 1000
  %max_uV = getelementptr inbounds %struct.max1586_data, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %max_uV to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div25, ptr %max_uV, align 4
  %v3_curr_sel = getelementptr inbounds %struct.max1586_data, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %v3_curr_sel to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 24, ptr %v3_curr_sel, align 4
  %v6_curr_sel = getelementptr inbounds %struct.max1586_data, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %v6_curr_sel to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %v6_curr_sel, align 4
  %42 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp26137 = icmp sgt i32 %43, 0
  br i1 %cmp26137, label %for.body.lr.ph, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %subdevs = getelementptr inbounds %struct.max1586_platform_data, ptr %pdata.0, i32 0, i32 1
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %44 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %subdevs, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %platform_data = getelementptr %struct.max1586_subdev_data, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %platform_data, align 4
  %tobool31.not = icmp eq ptr %49, null
  br i1 %tobool31.not, label %for.body.lr.ph.for.inc_crit_edge, label %if.end33

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end33:                                         ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %50 = icmp ugt i32 %47, 1
  br i1 %50, label %if.end33.do.end39_crit_edge, label %if.end41

if.end33.do.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end39:                                         ; preds = %if.end33.1.do.end39_crit_edge, %if.end33.do.end39_crit_edge
  %.lcssa = phi i32 [ %47, %if.end33.do.end39_crit_edge ], [ %70, %if.end33.1.do.end39_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %.lcssa) #9
  br label %cleanup73

if.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp42 = icmp eq i32 %47, 0
  br i1 %cmp42, label %if.then43, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %min_uV, align 4
  store i32 %52, ptr getelementptr inbounds ([2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 0, i32 14), align 4
  %53 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_uV, align 4
  %sub = sub i32 %54, %52
  %div49 = udiv i32 %sub, 31
  store i32 %div49, ptr getelementptr inbounds ([2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 0, i32 15), align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.end41.if.end51_crit_edge
  %55 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %config, align 4
  %56 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subdevs, align 4
  %platform_data56 = getelementptr %struct.max1586_subdev_data, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %platform_data56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platform_data56, align 4
  %60 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %init_data, align 4
  %61 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %driver_data, align 4
  %arrayidx58 = getelementptr [2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 %47
  %call59 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx58, ptr noundef nonnull %config) #6
  %cmp.i128 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.end51.do.end64_crit_edge, label %if.end51.for.inc_crit_edge

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end51.do.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end64:                                         ; preds = %if.end51.1.do.end64_crit_edge, %if.end51.do.end64_crit_edge
  %arrayidx58.lcssa = phi ptr [ %arrayidx58, %if.end51.do.end64_crit_edge ], [ %arrayidx58.1, %if.end51.1.do.end64_crit_edge ]
  %call59.lcssa = phi ptr [ %call59, %if.end51.do.end64_crit_edge ], [ %call59.1, %if.end51.1.do.end64_crit_edge ]
  %62 = ptrtoint ptr %arrayidx58.lcssa to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx58.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %63) #9
  %64 = ptrtoint ptr %call59.lcssa to i32
  br label %cleanup73

for.inc:                                          ; preds = %if.end51.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %65 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp26 = icmp sgt i32 %66, 1
  br i1 %cmp26, label %for.body.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %67 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %subdevs, align 4
  %arrayidx.1 = getelementptr %struct.max1586_subdev_data, ptr %68, i32 1
  %69 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.1, align 4
  %platform_data.1 = getelementptr %struct.max1586_subdev_data, ptr %68, i32 1, i32 2
  %71 = ptrtoint ptr %platform_data.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %platform_data.1, align 4
  %tobool31.not.1 = icmp eq ptr %72, null
  br i1 %tobool31.not.1, label %for.body.1.for.end_crit_edge, label %if.end33.1

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end33.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %73 = icmp ugt i32 %70, 1
  br i1 %73, label %if.end33.1.do.end39_crit_edge, label %if.end41.1

if.end33.1.do.end39_crit_edge:                    ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end41.1:                                       ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp42.1 = icmp eq i32 %70, 0
  br i1 %cmp42.1, label %if.then43.1, label %if.end41.1.if.end51.1_crit_edge

if.end41.1.if.end51.1_crit_edge:                  ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.1

if.then43.1:                                      ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %min_uV, align 4
  store i32 %75, ptr getelementptr inbounds ([2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 0, i32 14), align 4
  %76 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_uV, align 4
  %sub.1 = sub i32 %77, %75
  %div49.1 = udiv i32 %sub.1, 31
  store i32 %div49.1, ptr getelementptr inbounds ([2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 0, i32 15), align 4
  br label %if.end51.1

if.end51.1:                                       ; preds = %if.then43.1, %if.end41.1.if.end51.1_crit_edge
  %78 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev, ptr %config, align 4
  %79 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %subdevs, align 4
  %platform_data56.1 = getelementptr %struct.max1586_subdev_data, ptr %80, i32 1, i32 2
  %81 = ptrtoint ptr %platform_data56.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %platform_data56.1, align 4
  %83 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %init_data, align 4
  %84 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %driver_data, align 4
  %arrayidx58.1 = getelementptr [2 x %struct.regulator_desc], ptr @max1586_reg, i32 0, i32 %70
  %call59.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx58.1, ptr noundef nonnull %config) #6
  %cmp.i128.1 = icmp ugt ptr %call59.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.1, label %if.end51.1.do.end64_crit_edge, label %if.end51.1.for.end_crit_edge

if.end51.1.for.end_crit_edge:                     ; preds = %if.end51.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end51.1.do.end64_crit_edge:                    ; preds = %if.end51.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

for.end:                                          ; preds = %if.end51.1.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end21.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup73

cleanup73:                                        ; preds = %for.end, %do.end64, %do.end39, %if.end17.cleanup73_crit_edge, %if.end12.cleanup73_crit_edge, %of_get_max1586_platform_data.exit.cleanup73_crit_edge, %of_get_max1586_platform_data.exit.thread, %do.end
  %retval.2 = phi i32 [ 0, %for.end ], [ -19, %do.end ], [ %call10.i, %of_get_max1586_platform_data.exit.cleanup73_crit_edge ], [ -12, %if.end12.cleanup73_crit_edge ], [ -22, %if.end17.cleanup73_crit_edge ], [ %retval.0.i.ph, %of_get_max1586_platform_data.exit.thread ], [ %64, %do.end64 ], [ -22, %do.end39 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pdata_of) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1586_v3_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max1586_v3_set_voltage_sel.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max1586_v3_set_voltage_sel, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @regulator_list_voltage_linear(ptr noundef %rdev, i32 noundef %selector) #6
  %div = sdiv i32 %call6, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max1586_v3_set_voltage_sel.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %div) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = trunc i32 %selector to i8
  %call9 = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %v3_curr_sel = getelementptr inbounds %struct.max1586_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %v3_curr_sel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %selector, ptr %v3_curr_sel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end.cleanup_crit_edge
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1586_v3_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %v3_curr_sel = getelementptr inbounds %struct.max1586_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %v3_curr_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v3_curr_sel, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1586_v6_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max1586_v6_set_voltage_sel.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max1586_v6_set_voltage_sel, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %volt_table, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %selector
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %div = udiv i32 %7, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max1586_v6_set_voltage_sel.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %div) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = trunc i32 %selector to i8
  %conv7 = or i8 %8, 32
  %call8 = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %v6_curr_sel = getelementptr inbounds %struct.max1586_data, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %v6_curr_sel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %selector, ptr %v6_curr_sel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1586_v6_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %v6_curr_sel = getelementptr inbounds %struct.max1586_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %v6_curr_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v6_curr_sel, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_max1586__290_305_max1586_pmic_init4, !1, !"__initcall__kmod_max1586__290_305_max1586_pmic_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/max1586.c", i32 305, i32 1}
!2 = !{ptr @__exitcall_max1586_pmic_exit, !3, !"__exitcall_max1586_pmic_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/max1586.c", i32 311, i32 1}
!4 = !{ptr @__UNIQUE_ID_description291, !5, !"__UNIQUE_ID_description291", i1 false, i1 false}
!5 = !{!"../drivers/regulator/max1586.c", i32 314, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/regulator/max1586.c", i32 315, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/regulator/max1586.c", i32 316, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/max1586.c", i32 295, i32 11}
!13 = !{ptr @max1586_pmic_driver, !14, !"max1586_pmic_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/max1586.c", i32 292, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/max1586.c", i32 224, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @max1586_pmic_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @max1586_pmic_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/max1586.c", i32 257, i32 4}
!25 = !{ptr @max1586_pmic_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @max1586_pmic_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/max1586.c", i32 275, i32 4}
!29 = !{ptr @max1586_pmic_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @max1586_pmic_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/max1586.c", i32 282, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @max1586_pmic_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @max1586_pmic_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/max1586.c", i32 157, i32 31}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/max1586.c", i32 159, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @of_get_max1586_platform_data._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @of_get_max1586_platform_data._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/max1586.c", i32 163, i32 32}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/max1586.c", i32 165, i32 3}
!47 = !{ptr @of_get_max1586_platform_data._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @of_get_max1586_platform_data._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/max1586.c", i32 131, i32 11}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/max1586.c", i32 139, i32 11}
!53 = !{ptr @max1586_reg, !54, !"max1586_reg", i1 false, i1 false}
!54 = !{!"../drivers/regulator/max1586.c", i32 129, i32 30}
!55 = !{ptr @max1586_v3_ops, !56, !"max1586_v3_ops", i1 false, i1 false}
!56 = !{!"../drivers/regulator/max1586.c", i32 116, i32 35}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/max1586.c", i32 71, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @max1586_v3_set_voltage_sel.__UNIQUE_ID_ddebug288, !58, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!61 = !{ptr @max1586_v6_ops, !62, !"max1586_v6_ops", i1 false, i1 false}
!62 = !{!"../drivers/regulator/max1586.c", i32 123, i32 35}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/max1586.c", i32 99, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max1586_v6_set_voltage_sel.__UNIQUE_ID_ddebug289, !64, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!67 = !{ptr @v6_voltages_uv, !68, !"v6_voltages_uv", i1 false, i1 false}
!68 = !{!"../drivers/regulator/max1586.c", i32 46, i32 27}
!69 = !{ptr @max1586_of_match, !70, !"max1586_of_match", i1 false, i1 false}
!70 = !{!"../drivers/regulator/max1586.c", i32 204, i32 49}
!71 = !{ptr @max1586_id, !72, !"max1586_id", i1 false, i1 false}
!72 = !{!"../drivers/regulator/max1586.c", i32 286, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2148959580, i64 2148959585, i64 2148959598, i64 2148959642, i64 2148959676, i64 2148959697}
