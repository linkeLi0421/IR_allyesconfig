; ModuleID = '/llk/IR_all_yes/drivers/regulator/pwm-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pwm-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pwm_regulator_data = type { ptr, ptr, %struct.pwm_continuous_reg_data, %struct.regulator_desc, i32, ptr }
%struct.pwm_continuous_reg_data = type { i32, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.pwm_voltages = type { i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_pwm_regulator__288_401_pwm_regulator_driver_init6 = internal global ptr @pwm_regulator_driver_init, section ".initcall6.init", align 4
@pwm_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_regulator_driver_exit = internal global ptr @pwm_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [51 x i8] c"pwm_regulator.file=drivers/regulator/pwm-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [26 x i8] c"pwm_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"pwm_regulator.author=Lee Jones <lee.jones@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [47 x i8] c"pwm_regulator.description=PWM Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [43 x i8] c"pwm_regulator.alias=platform:pwm-regulator\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm-regulator\00", [18 x i8] zeroinitializer }, align 32
@pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pwm_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device Tree node missing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm_regulator_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/regulator/pwm-regulator.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_regulator_probe._entry_ptr = internal global ptr @pwm_regulator_probe._entry, section ".printk_index", align 4
@pwm_regulator_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str, ptr @.str.15, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"voltage-table\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get PWM\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@pwm_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get enable GPIO: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pwm_regulator_probe._entry_ptr.11 = internal global ptr @pwm_regulator_probe._entry.9, section ".printk_index", align 4
@pwm_regulator_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register regulator %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pwm_regulator_probe._entry_ptr.14 = internal global ptr @pwm_regulator_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_regulator_init_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"voltage-table length(%d) is invalid\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pwm_regulator_init_table\00", [39 x i8] zeroinitializer }, align 32
@pwm_regulator_init_table._entry_ptr = internal global ptr @pwm_regulator_init_table._entry, section ".printk_index", align 4
@pwm_regulator_init_table._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read voltage-table: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@pwm_regulator_init_table._entry_ptr.20 = internal global ptr @pwm_regulator_init_table._entry.18, section ".printk_index", align 4
@pwm_regulator_voltage_table_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @pwm_regulator_list_voltage, ptr null, ptr @regulator_map_voltage_iterate, ptr @pwm_regulator_set_voltage_sel, ptr null, ptr @pwm_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_regulator_enable, ptr @pwm_regulator_disable, ptr @pwm_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pwm_regulator_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to configure PWM: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pwm_regulator_set_voltage_sel\00", [34 x i8] zeroinitializer }, align 32
@pwm_regulator_set_voltage_sel._entry_ptr = internal global ptr @pwm_regulator_set_voltage_sel._entry, section ".printk_index", align 4
@pwm_regulator_voltage_continuous_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr @pwm_regulator_set_voltage, ptr null, ptr null, ptr @pwm_regulator_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_regulator_enable, ptr @pwm_regulator_disable, ptr @pwm_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm-dutycycle-range\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm-dutycycle-unit\00", [45 x i8] zeroinitializer }, align 32
@pwm_regulator_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.25, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwm_regulator_set_voltage\00", [38 x i8] zeroinitializer }, align 32
@pwm_regulator_set_voltage._entry_ptr = internal global ptr @pwm_regulator_set_voltage._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"pwm_regulator_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 393, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 395, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"pwm_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 387, i32 49 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 327, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"pwm_regulator_desc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 246, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 337, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 357, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 363, i32 58 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 367, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 379, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 250, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 265, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 278, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [32 x i8] c"pwm_regulator_voltage_table_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 228, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 95, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [37 x i8] c"pwm_regulator_voltage_continuous_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 238, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 300, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 302, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [37 x i8] c"../drivers/regulator/pwm-regulator.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 221, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_pwm_regulator_driver_exit, ptr @__initcall__kmod_pwm_regulator__288_401_pwm_regulator_driver_init6, ptr @pwm_regulator_driver_exit, ptr @pwm_regulator_init_table._entry, ptr @pwm_regulator_init_table._entry.18, ptr @pwm_regulator_init_table._entry_ptr, ptr @pwm_regulator_init_table._entry_ptr.20, ptr @pwm_regulator_probe._entry, ptr @pwm_regulator_probe._entry.12, ptr @pwm_regulator_probe._entry.9, ptr @pwm_regulator_probe._entry_ptr, ptr @pwm_regulator_probe._entry_ptr.11, ptr @pwm_regulator_probe._entry_ptr.14, ptr @pwm_regulator_set_voltage._entry, ptr @pwm_regulator_set_voltage._entry_ptr, ptr @pwm_regulator_set_voltage_sel._entry, ptr @pwm_regulator_set_voltage_sel._entry_ptr, ptr @pwm_regulator_driver, ptr @.str, ptr @pwm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pwm_regulator_desc, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @pwm_regulator_voltage_table_ops, ptr @.str.21, ptr @.str.22, ptr @pwm_regulator_voltage_continuous_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_init_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_init_table._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_voltage_table_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_voltage_continuous_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_regulator_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dutycycle_range.i = alloca [2 x i32], align 8
  %dutycycle_unit.i = alloca i32, align 4
  %length.i = alloca i32, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = call ptr @memset(ptr %config, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %desc = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %desc, ptr @pwm_regulator_desc, i32 244)
  %call6 = tail call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, ptr noundef null) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i) #5
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %length.i, align 4
  %call.i119 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %length.i) #5
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp.i = icmp ugt i32 %8, 7
  %rem.i = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %8) #8
  br label %pwm_regulator_init_table.exit

if.end.i:                                         ; preds = %if.then8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #5
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.pwm_regulator_init_table.exit_crit_edge, label %if.end6.i

if.end.i.pwm_regulator_init_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_regulator_init_table.exit

if.end6.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %div32.i = lshr i32 %10, 2
  %call.i34.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i.i, i32 noundef %div32.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i34.i)
  %tobool8.not.i = icmp sgt i32 %call.i34.i, -1
  br i1 %tobool8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i34.i) #8
  br label %pwm_regulator_init_table.exit

if.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -131, ptr %state.i, align 4
  %duty_cycle_table15.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %duty_cycle_table15.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %duty_cycle_table15.i, align 4
  %ops.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 3, i32 10
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pwm_regulator_voltage_table_ops, ptr %ops.i, align 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  %div1633.i = lshr i32 %15, 3
  %n_voltages.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1633.i, ptr %n_voltages.i, align 4
  br label %pwm_regulator_init_table.exit

pwm_regulator_init_table.exit:                    ; preds = %if.end14.i, %do.end12.i, %if.end.i.pwm_regulator_init_table.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call.i34.i, %do.end12.i ], [ 0, %if.end14.i ], [ -12, %if.end.i.pwm_regulator_init_table.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i) #5
  br label %if.end11

if.else:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dutycycle_range.i) #5
  %17 = ptrtoint ptr %dutycycle_range.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 100, ptr %dutycycle_range.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dutycycle_unit.i) #5
  %18 = ptrtoint ptr %dutycycle_unit.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %dutycycle_unit.i, align 4
  %ops.i120 = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %ops.i120 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pwm_regulator_voltage_continuous_ops, ptr %ops.i120, align 4
  %continuous_voltage_range.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %continuous_voltage_range.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %continuous_voltage_range.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %continuous_voltage_range.i, align 4
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i.i122 = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.23, ptr noundef nonnull %dutycycle_range.i, i32 noundef 2, i32 noundef 0) #5
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.24, ptr noundef nonnull %dutycycle_unit.i, i32 noundef 1, i32 noundef 0) #5
  %25 = ptrtoint ptr %dutycycle_range.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dutycycle_range.i, align 8
  %27 = ptrtoint ptr %dutycycle_unit.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dutycycle_unit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i123 = icmp ugt i32 %26, %28
  br i1 %cmp.i123, label %if.else.pwm_regulator_init_continuous.exit_crit_edge, label %lor.lhs.false.i

if.else.pwm_regulator_init_continuous.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_regulator_init_continuous.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %arrayidx5.i = getelementptr inbounds [2 x i32], ptr %dutycycle_range.i, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp6.i = icmp ugt i32 %30, %28
  br i1 %cmp6.i, label %lor.lhs.false.i.pwm_regulator_init_continuous.exit_crit_edge, label %if.end.i124

lor.lhs.false.i.pwm_regulator_init_continuous.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_regulator_init_continuous.exit

if.end.i124:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %continuous.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 2
  %dutycycle_unit7.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %dutycycle_unit7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %dutycycle_unit7.i, align 4
  %32 = ptrtoint ptr %continuous.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %continuous.i, align 4
  %max_uV_dutycycle.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %max_uV_dutycycle.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %max_uV_dutycycle.i, align 4
  br label %pwm_regulator_init_continuous.exit

pwm_regulator_init_continuous.exit:               ; preds = %if.end.i124, %lor.lhs.false.i.pwm_regulator_init_continuous.exit_crit_edge, %if.else.pwm_regulator_init_continuous.exit_crit_edge
  %retval.0.i125 = phi i32 [ 0, %if.end.i124 ], [ -22, %lor.lhs.false.i.pwm_regulator_init_continuous.exit_crit_edge ], [ -22, %if.else.pwm_regulator_init_continuous.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dutycycle_unit.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dutycycle_range.i) #5
  br label %if.end11

if.end11:                                         ; preds = %pwm_regulator_init_continuous.exit, %pwm_regulator_init_table.exit
  %ret.0 = phi i32 [ %retval.0.i, %pwm_regulator_init_table.exit ], [ %retval.0.i125, %pwm_regulator_init_continuous.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %call17 = call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef nonnull %2, ptr noundef %desc) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %of_node21 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %34 = ptrtoint ptr %of_node21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %2, ptr %of_node21, align 4
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %36 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data, align 4
  %init_data24 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %37 = ptrtoint ptr %init_data24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call17, ptr %init_data24, align 4
  %call26 = call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef null) #5
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call26, ptr %call.i, align 4
  %cmp.i126 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call26 to i32
  %call33 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %39, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end20
  %boot_on = getelementptr inbounds %struct.regulator_init_data, ptr %call17, i32 0, i32 1, i32 28
  %40 = ptrtoint ptr %boot_on to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load = load i16, ptr %boot_on, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %41 = icmp ult i16 %bf.load, 16384
  %gpio_flags.0 = select i1 %41, i32 3, i32 7
  %call45 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %gpio_flags.0) #5
  %enb_gpio = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %enb_gpio to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call45, ptr %enb_gpio, align 4
  %cmp.i127 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %call45 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %43) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end34
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call57 = call i32 @pwm_adjust_config(ptr noundef %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %call63 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #5
  %cmp.i128 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call63 to i32
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %48, i32 noundef %46) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.then48, %if.then29, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call33, %if.then29 ], [ %43, %if.then48 ], [ %46, %if.then65 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end11.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ %call57, %if.end55.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_adjust_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %selector)
  %cmp.not = icmp ugt i32 %3, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %duty_cycle_table = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %duty_cycle_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %duty_cycle_table, align 4
  %arrayidx = getelementptr %struct.pwm_voltages, ptr %5, i32 %selector
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  %pstate = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pstate) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %pstate, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %5 = ptrtoint ptr %pstate to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %args.sroa.0.0.copyload8.i, ptr %pstate, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %pstate, i32 0, i32 2
  %6 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %pstate, i32 0, i32 1
  %7 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %pstate, i32 0, i32 4
  %8 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %usage_power.i, align 1
  %duty_cycle_table = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %duty_cycle_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %duty_cycle_table, align 4
  %dutycycle = getelementptr %struct.pwm_voltages, ptr %10, i32 %selector, i32 1
  %11 = ptrtoint ptr %dutycycle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dutycycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %12)
  %cmp.i = icmp ugt i32 %12, 100
  br i1 %cmp.i, label %entry.pwm_set_relative_duty_cycle.exit_crit_edge, label %if.end.i

entry.pwm_set_relative_duty_cycle.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_set_relative_duty_cycle.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i32 %12 to i64
  %mul.i = mul i64 %args.sroa.0.0.copyload8.i, %conv.i
  %add.i = add i64 %mul.i, 50
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i32 0) #9, !srcloc !79
  %asmresult.i.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !80
  %asmresult10.i.i = extractvalue { i64, i32 } %14, 0
  %div168.i13 = lshr i64 %asmresult10.i.i, 6
  %15 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %div168.i13, ptr %duty_cycle.i, align 8
  br label %pwm_set_relative_duty_cycle.exit

pwm_set_relative_duty_cycle.exit:                 ; preds = %if.end.i, %entry.pwm_set_relative_duty_cycle.exit_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %call3 = call i32 @pwm_apply_state(ptr noundef %17, ptr noundef nonnull %pstate) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %pwm_set_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %pwm_set_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %selector, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pstate) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %state = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %pwm_state.sroa.0.0.copyload13.i = load i64, ptr %state1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pwm_state.sroa.0.0.copyload13.i)
  %tobool.not.i.i = icmp eq i64 %pwm_state.sroa.0.0.copyload13.i, 0
  br i1 %tobool.not.i.i, label %if.then.pwm_get_relative_duty_cycle.exit.i_crit_edge, label %if.end.i.i

if.then.pwm_get_relative_duty_cycle.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_get_relative_duty_cycle.exit.i

if.end.i.i:                                       ; preds = %if.then
  %pwm_state.sroa.5.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %pwm_state.sroa.5.0.state1.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %pwm_state.sroa.5.0.copyload14.i = load i64, ptr %pwm_state.sroa.5.0.state1.i.sroa_idx.i, align 8
  %mul.i.i = mul i64 %pwm_state.sroa.5.0.copyload14.i, 100
  %div274.i.i = lshr i64 %pwm_state.sroa.0.0.copyload13.i, 1
  %add.i.i = add i64 %mul.i.i, %div274.i.i
  %conv2.i.i = trunc i64 %pwm_state.sroa.0.0.copyload13.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp174.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp174.i.i, label %if.then178.i.i, label %if.else184.i.i, !prof !81

if.then178.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv179.i.i = trunc i64 %add.i.i to i32
  %div182.i.i = udiv i32 %conv179.i.i, %conv2.i.i
  br label %pwm_get_relative_duty_cycle.exit.i

if.else184.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2.i.i, i64 %add.i.i) #9, !srcloc !82
  %asmresult1.i.i.i = extractvalue { i64, i64 } %6, 1
  %extract.t300.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %pwm_get_relative_duty_cycle.exit.i

pwm_get_relative_duty_cycle.exit.i:               ; preds = %if.else184.i.i, %if.then178.i.i, %if.then.pwm_get_relative_duty_cycle.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.then.pwm_get_relative_duty_cycle.exit.i_crit_edge ], [ %div182.i.i, %if.then178.i.i ], [ %extract.t300.i.i, %if.else184.i.i ]
  %7 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev, align 8
  %n_voltages.i = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_voltages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 0
  br i1 %cmp16.not.i, label %pwm_get_relative_duty_cycle.exit.i.if.end_crit_edge, label %for.body.lr.ph.i

pwm_get_relative_duty_cycle.exit.i.if.end_crit_edge: ; preds = %pwm_get_relative_duty_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %pwm_get_relative_duty_cycle.exit.i
  %duty_cycle_table.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %duty_cycle_table.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %duty_cycle_table.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %dutycycle2.i = getelementptr %struct.pwm_voltages, ptr %12, i32 %i.017.i, i32 1
  %13 = ptrtoint ptr %dutycycle2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dutycycle2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %14)
  %cmp3.i = icmp eq i32 %retval.0.i.i, %14
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr inbounds %struct.pwm_regulator_data, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.017.i, ptr %state.i, align 4
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.i, %pwm_get_relative_duty_cycle.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_enable(ptr noundef %dev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %enb_gpio = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %enb_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enb_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #5
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.pwm_enable.exit_crit_edge, label %if.end.i

entry.pwm_enable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_enable.exit

if.end.i:                                         ; preds = %entry
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.i = icmp eq i8 %6, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.pwm_enable.exit_crit_edge

if.end.i.pwm_enable.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_enable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %3, ptr noundef nonnull %state.i) #5
  br label %pwm_enable.exit

pwm_enable.exit:                                  ; preds = %if.end3.i, %if.end.i.pwm_enable.exit_crit_edge, %entry.pwm_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end3.i ], [ -22, %entry.pwm_enable.exit_crit_edge ], [ 0, %if.end.i.pwm_enable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_disable(ptr noundef %dev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #5
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.pwm_disable.exit_crit_edge, label %if.end.i

entry.pwm_disable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end.i:                                         ; preds = %entry
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.pwm_disable.exit_crit_edge, label %if.end3.i

if.end.i.pwm_disable.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %1, ptr noundef nonnull %state.i) #5
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i, %if.end.i.pwm_disable.exit_crit_edge, %entry.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #5
  %enb_gpio = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %enb_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enb_gpio, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #5
  %enb_gpio = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %enb_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enb_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i = icmp ne i8 %state.sroa.4.0.copyload1.i, 0
  %conv = zext i1 %tobool.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_set_voltage(ptr noundef %rdev, i32 noundef %req_min_uV, i32 noundef %req_max_uV, ptr nocapture noundef readnone %selector) #2 align 64 {
entry:
  %pstate = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %continuous = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %continuous to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %continuous, align 4
  %max_uV_dutycycle = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %max_uV_dutycycle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_uV_dutycycle, align 4
  %dutycycle_unit = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %dutycycle_unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dutycycle_unit, align 4
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %6 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %constraints, align 8
  %min_uV3 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %min_uV3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_uV3, align 4
  %max_uV5 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %max_uV5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_uV5, align 4
  %sub = sub i32 %11, %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pstate) #5
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %13, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %pstate, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %13, i32 0, i32 6
  %15 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %13, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %17 = ptrtoint ptr %pstate to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %args.sroa.0.0.copyload8.i, ptr %pstate, align 8
  %polarity2.i = getelementptr inbounds %struct.pwm_state, ptr %pstate, i32 0, i32 2
  %18 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %pstate, i32 0, i32 1
  %19 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.pwm_state, ptr %pstate, i32 0, i32 4
  %20 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %usage_power.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ult i32 %3, %1
  %sub6 = sub i32 %1, %3
  %sub7 = sub i32 %3, %1
  %diff_duty.0 = select i1 %cmp, i32 %sub6, i32 %sub7
  %sub8 = sub i32 %req_min_uV, %9
  %conv = sext i32 %sub8 to i64
  %conv9 = zext i32 %diff_duty.0 to i64
  %mul = mul nsw i64 %conv, %conv9
  %div = sdiv i32 %sub, 2
  %conv10 = sext i32 %div to i64
  %add = add nsw i64 %mul, %conv10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp185 = icmp ult i64 %add, 4294967296
  br i1 %cmp185, label %if.then189, label %if.else195, !prof !81

if.then189:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv190 = trunc i64 %add to i32
  %div193 = udiv i32 %conv190, %sub
  br label %if.end199

if.else195:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub, i64 %add) #9, !srcloc !82
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  %extract.t353 = trunc i64 %asmresult1.i to i32
  br label %if.end199

if.end199:                                        ; preds = %if.else195, %if.then189
  %_tmp.0.off0 = phi i32 [ %div193, %if.then189 ], [ %extract.t353, %if.else195 ]
  %22 = sub i32 0, %_tmp.0.off0
  %dutycycle.0.p = select i1 %cmp, i32 %22, i32 %_tmp.0.off0
  %dutycycle.0 = add i32 %dutycycle.0.p, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %dutycycle.0, i32 %5)
  %cmp.i = icmp ugt i32 %dutycycle.0, %5
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.end199.pwm_set_relative_duty_cycle.exit_crit_edge, label %if.end.i

if.end199.pwm_set_relative_duty_cycle.exit_crit_edge: ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_set_relative_duty_cycle.exit

if.end.i:                                         ; preds = %if.end199
  %conv.i = zext i32 %dutycycle.0 to i64
  %mul.i = mul i64 %args.sroa.0.0.copyload8.i, %conv.i
  %div1.i = lshr i32 %5, 1
  %conv1.i = zext i32 %div1.i to i64
  %add.i = add i64 %mul.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp174.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !81

if.then178.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv179.i = trunc i64 %add.i to i32
  %div182.i = udiv i32 %conv179.i, %5
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 %add.i) #9, !srcloc !82
  %asmresult1.i.i = extractvalue { i64, i64 } %23, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %_tmp.0.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %24 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %_tmp.0.i, ptr %duty_cycle.i, align 8
  br label %pwm_set_relative_duty_cycle.exit

pwm_set_relative_duty_cycle.exit:                 ; preds = %if.end188.i, %if.end199.pwm_set_relative_duty_cycle.exit_crit_edge
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %call212 = call i32 @pwm_apply_state(ptr noundef %26, ptr noundef nonnull %pstate) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %pwm_set_relative_duty_cycle.exit.cleanup_crit_edge, label %do.end

pwm_set_relative_duty_cycle.exit.cleanup_crit_edge: ; preds = %pwm_set_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %pwm_set_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call212) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %pwm_set_relative_duty_cycle.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pstate) #5
  ret i32 %call212
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_regulator_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %continuous = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %continuous to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %continuous, align 4
  %max_uV_dutycycle = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %max_uV_dutycycle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_uV_dutycycle, align 4
  %constraints = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 14
  %4 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %constraints, align 8
  %min_uV3 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %min_uV3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_uV3, align 4
  %max_uV5 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %max_uV5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_uV5, align 4
  %sub = sub i32 %9, %7
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %pstate.sroa.0.0.copyload311 = load i64, ptr %state1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pstate.sroa.0.0.copyload311)
  %tobool.not.i = icmp eq i64 %pstate.sroa.0.0.copyload311, 0
  br i1 %tobool.not.i, label %entry.pwm_get_relative_duty_cycle.exit_crit_edge, label %if.end.i

entry.pwm_get_relative_duty_cycle.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pwm_get_relative_duty_cycle.exit

if.end.i:                                         ; preds = %entry
  %pstate.sroa.5.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %11, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %pstate.sroa.5.0.state1.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %13)
  %pstate.sroa.5.0.copyload312 = load i64, ptr %pstate.sroa.5.0.state1.i.sroa_idx, align 8
  %dutycycle_unit = getelementptr inbounds %struct.pwm_regulator_data, ptr %call, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %dutycycle_unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dutycycle_unit, align 4
  %conv.i = zext i32 %15 to i64
  %mul.i = mul i64 %pstate.sroa.5.0.copyload312, %conv.i
  %div274.i = lshr i64 %pstate.sroa.0.0.copyload311, 1
  %add.i = add i64 %mul.i, %div274.i
  %conv2.i = trunc i64 %pstate.sroa.0.0.copyload311 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp174.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !81

if.then178.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv179.i = trunc i64 %add.i to i32
  %div182.i = udiv i32 %conv179.i, %conv2.i
  br label %pwm_get_relative_duty_cycle.exit

if.else184.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2.i, i64 %add.i) #9, !srcloc !82
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t300.i = trunc i64 %asmresult1.i.i to i32
  br label %pwm_get_relative_duty_cycle.exit

pwm_get_relative_duty_cycle.exit:                 ; preds = %if.else184.i, %if.then178.i, %entry.pwm_get_relative_duty_cycle.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pwm_get_relative_duty_cycle.exit_crit_edge ], [ %div182.i, %if.then178.i ], [ %extract.t300.i, %if.else184.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ult i32 %3, %1
  %sub7 = sub i32 %1, %retval.0.i
  %sub8 = sub i32 %1, %3
  %sub9 = sub i32 %retval.0.i, %1
  %sub10 = sub i32 %3, %1
  %diff_duty.0 = select i1 %cmp, i32 %sub8, i32 %sub10
  %voltage.0 = select i1 %cmp, i32 %sub7, i32 %sub9
  %conv = zext i32 %voltage.0 to i64
  %conv11 = sext i32 %sub to i64
  %mul = mul nsw i64 %conv, %conv11
  %div303 = lshr i32 %diff_duty.0, 1
  %conv12 = zext i32 %div303 to i64
  %add = add nsw i64 %mul, %conv12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp187 = icmp ult i64 %add, 4294967296
  br i1 %cmp187, label %if.then191, label %if.else197, !prof !81

if.then191:                                       ; preds = %pwm_get_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv192 = trunc i64 %add to i32
  %div195 = udiv i32 %conv192, %diff_duty.0
  br label %if.end201

if.else197:                                       ; preds = %pwm_get_relative_duty_cycle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %diff_duty.0, i64 %add) #9, !srcloc !82
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %extract.t332 = trunc i64 %asmresult1.i to i32
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then191
  %_tmp.0.off0 = phi i32 [ %div195, %if.then191 ], [ %extract.t332, %if.else197 ]
  %add205 = add i32 %_tmp.0.off0, %7
  ret i32 %add205
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_pwm_regulator__288_401_pwm_regulator_driver_init6, !1, !"__initcall__kmod_pwm_regulator__288_401_pwm_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pwm-regulator.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_pwm_regulator_driver_exit, !1, !"__exitcall_pwm_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pwm-regulator.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/pwm-regulator.c", i32 404, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/pwm-regulator.c", i32 405, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/pwm-regulator.c", i32 406, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pwm-regulator.c", i32 395, i32 12}
!14 = !{ptr @pwm_regulator_driver, !15, !"pwm_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pwm-regulator.c", i32 393, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/pwm-regulator.c", i32 327, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pwm_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pwm_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/pwm-regulator.c", i32 337, i32 27}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/pwm-regulator.c", i32 357, i32 10}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/pwm-regulator.c", i32 363, i32 58}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/pwm-regulator.c", i32 367, i32 3}
!32 = !{ptr @pwm_regulator_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pwm_regulator_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/pwm-regulator.c", i32 379, i32 3}
!36 = !{ptr @pwm_regulator_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pwm_regulator_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/pwm-regulator.c", i32 250, i32 20}
!40 = !{ptr @pwm_regulator_desc, !41, !"pwm_regulator_desc", i1 false, i1 false}
!41 = !{!"../drivers/regulator/pwm-regulator.c", i32 246, i32 36}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/pwm-regulator.c", i32 265, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pwm_regulator_init_table._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pwm_regulator_init_table._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/pwm-regulator.c", i32 278, i32 3}
!49 = !{ptr @pwm_regulator_init_table._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pwm_regulator_init_table._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @pwm_regulator_voltage_table_ops, !52, !"pwm_regulator_voltage_table_ops", i1 false, i1 false}
!52 = !{!"../drivers/regulator/pwm-regulator.c", i32 228, i32 35}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/pwm-regulator.c", i32 95, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pwm_regulator_set_voltage_sel._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @pwm_regulator_set_voltage_sel._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/pwm-regulator.c", i32 300, i32 8}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/pwm-regulator.c", i32 302, i32 42}
!62 = !{ptr @pwm_regulator_voltage_continuous_ops, !63, !"pwm_regulator_voltage_continuous_ops", i1 false, i1 false}
!63 = !{!"../drivers/regulator/pwm-regulator.c", i32 238, i32 35}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/pwm-regulator.c", i32 221, i32 3}
!66 = !{ptr @pwm_regulator_set_voltage._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pwm_regulator_set_voltage._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @pwm_of_match, !69, !"pwm_of_match", i1 false, i1 false}
!69 = !{!"../drivers/regulator/pwm-regulator.c", i32 387, i32 49}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 709759, i64 709786, i64 709808, i64 709836}
!80 = !{i64 710167, i64 710194, i64 710227, i64 710248, i64 710275, i64 710301}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148195303, i64 2148195583, i64 2148195917, i64 2148196251}
!83 = !{i8 0, i8 2}
