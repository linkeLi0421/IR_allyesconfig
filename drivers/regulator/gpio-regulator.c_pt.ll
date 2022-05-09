; ModuleID = '/llk/IR_all_yes/drivers/regulator/gpio-regulator.c_pt.bc'
source_filename = "../drivers/regulator/gpio-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.gpio_regulator_config = type { ptr, i8, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.gpio_regulator_state = type { i32, i32 }
%struct.gpio_regulator_data = type { %struct.regulator_desc, ptr, i32, ptr, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_gpio_regulator__288_364_gpio_regulator_init4 = internal global ptr @gpio_regulator_init, section ".initcall4.init", align 4
@gpio_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @regulator_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_regulator_exit = internal global ptr @gpio_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"gpio_regulator.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [50 x i8] c"gpio_regulator.description=gpio voltage regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [53 x i8] c"gpio_regulator.file=drivers/regulator/gpio-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"gpio_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [45 x i8] c"gpio_regulator.alias=platform:gpio-regulator\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio-regulator\00", [17 x i8] zeroinitializer }, align 32
@regulator_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate supply name\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_regulator_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/regulator/gpio-regulator.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry_ptr = internal global ptr @gpio_regulator_probe._entry, section ".printk_index", align 4
@gpio_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate state data\0A\00", [33 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry_ptr.8 = internal global ptr @gpio_regulator_probe._entry.6, section ".printk_index", align 4
@gpio_regulator_voltage_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @gpio_regulator_list_voltage, ptr @gpio_regulator_set_voltage, ptr null, ptr null, ptr @gpio_regulator_get_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@gpio_regulator_current_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_regulator_set_current_limit, ptr @gpio_regulator_get_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No regulator type set\0A\00", [41 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry_ptr.11 = internal global ptr @gpio_regulator_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gpio_regulator_probe._entry_ptr.15 = internal global ptr @gpio_regulator_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enable-at-boot\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"startup-delay-us\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpios-states\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"states\00", [25 x i8] zeroinitializer }, align 32
@of_get_gpio_regulator_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No 'states' property found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_get_gpio_regulator_config\00", [35 x i8] zeroinitializer }, align 32
@of_get_gpio_regulator_config._entry_ptr = internal global ptr @of_get_gpio_regulator_config._entry, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-type\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"voltage\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"current\00", [24 x i8] zeroinitializer }, align 32
@of_get_gpio_regulator_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 220, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown regulator-type '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@of_get_gpio_regulator_config._entry_ptr.28 = internal global ptr @of_get_gpio_regulator_config._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"gpio_regulator_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 352, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 355, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"regulator_gpio_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 345, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 256, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 282, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"gpio_regulator_voltage_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 123, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"gpio_regulator_current_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 226, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 302, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 328, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 335, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 158, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 161, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 176, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 190, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 192, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 212, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 214, i32 16 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 216, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [38 x i8] c"../drivers/regulator/gpio-regulator.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 219, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_gpio_regulator_exit, ptr @__initcall__kmod_gpio_regulator__288_364_gpio_regulator_init4, ptr @gpio_regulator_exit, ptr @gpio_regulator_probe._entry, ptr @gpio_regulator_probe._entry.13, ptr @gpio_regulator_probe._entry.6, ptr @gpio_regulator_probe._entry.9, ptr @gpio_regulator_probe._entry_ptr, ptr @gpio_regulator_probe._entry_ptr.11, ptr @gpio_regulator_probe._entry_ptr.15, ptr @gpio_regulator_probe._entry_ptr.8, ptr @of_get_gpio_regulator_config._entry, ptr @of_get_gpio_regulator_config._entry.25, ptr @of_get_gpio_regulator_config._entry_ptr, ptr @of_get_gpio_regulator_config._entry_ptr.28, ptr @gpio_regulator_driver, ptr @.str, ptr @regulator_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @gpio_regulator_voltage_ops, ptr @gpio_regulator_current_ops, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_voltage_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_current_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regulator_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_gpio_regulator_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_gpio_regulator_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %regtype.i = alloca ptr, align 4
  %val.i = alloca i32, align 4
  %cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #7
  %4 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 264, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regtype.i) #7
  %5 = ptrtoint ptr %regtype.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %regtype.i, align 4, !annotation !78
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then3.of_get_gpio_regulator_config.exit.thread_crit_edge, label %if.end.i

if.then3.of_get_gpio_regulator_config.exit.thread_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_gpio_regulator_config.exit.thread

if.end.i:                                         ; preds = %if.then3
  %call2.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef nonnull %3, ptr noundef nonnull %call.i) #7
  %init_data.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %init_data.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.of_get_gpio_regulator_config.exit.thread_crit_edge, label %if.end7.i

if.end.i.of_get_gpio_regulator_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_gpio_regulator_config.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %constraints.i = getelementptr inbounds %struct.regulator_init_data, ptr %call2.i, i32 0, i32 1
  %7 = ptrtoint ptr %constraints.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %constraints.i, align 4
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call.i.i, align 4
  %boot_on.i = getelementptr inbounds %struct.regulator_init_data, ptr %call2.i, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %boot_on.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %boot_on.i, align 4
  %11 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool11.not.i = icmp eq i16 %11, 0
  br i1 %tobool11.not.i, label %if.end7.i.if.end15.i_crit_edge, label %if.then12.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %enabled_at_boot.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %enabled_at_boot.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load13.i = load i8, ptr %enabled_at_boot.i, align 4
  %bf.set.i = or i8 %bf.load13.i, -128
  store i8 %bf.set.i, ptr %enabled_at_boot.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.end7.i.if.end15.i_crit_edge
  %call.i145.i = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i145.i, null
  br i1 %tobool.i.not.i, label %if.end15.i.if.end22.i_crit_edge, label %if.then17.i

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %enabled_at_boot18.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %enabled_at_boot18.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load19.i = load i8, ptr %enabled_at_boot18.i, align 4
  %bf.set21.i = or i8 %bf.load19.i, -128
  store i8 %bf.set21.i, ptr %enabled_at_boot18.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end22.i_crit_edge
  %startup_delay.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, ptr noundef %startup_delay.i, i32 noundef 1, i32 noundef 0) #7
  %call24.i = tail call i32 @gpiod_count(ptr noundef %dev1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp.i = icmp sgt i32 %call24.i, 0
  br i1 %cmp.i, label %if.then25.i, label %if.end22.i.if.end41.i_crit_edge

if.end22.i.if.end41.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then25.i:                                      ; preds = %if.end22.i
  %mul.i = shl i32 %call24.i, 2
  %call.i146.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul.i, i32 noundef 3520) #7
  %gflags.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %gflags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i146.i, ptr %gflags.i, align 4
  %tobool28.not.i = icmp eq ptr %call.i146.i, null
  br i1 %tobool28.not.i, label %if.then25.i.of_get_gpio_regulator_config.exit.thread_crit_edge, label %if.then25.i.for.body.i_crit_edge

if.then25.i.for.body.i_crit_edge:                 ; preds = %if.then25.i
  br label %for.body.i

if.then25.i.of_get_gpio_regulator_config.exit.thread_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_gpio_regulator_config.exit.thread

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %if.then25.i.for.body.i_crit_edge
  %i.0154.i = phi i32 [ %inc.i, %if.end40.i.for.body.i_crit_edge ], [ 0, %if.then25.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  %call33.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef %i.0154.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.else.i, label %for.body.i.if.end40.i_crit_edge

for.body.i.if.end40.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool37.not.i = icmp eq i32 %17, 0
  %cond.i = select i1 %tobool37.not.i, i32 3, i32 7
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i, %for.body.i.if.end40.i_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.else.i ], [ 7, %for.body.i.if.end40.i_crit_edge ]
  %18 = ptrtoint ptr %gflags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gflags.i, align 4
  %arrayidx39.i = getelementptr i32, ptr %19, i32 %i.0154.i
  %20 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.sink.i, ptr %arrayidx39.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call24.i
  br i1 %exitcond.not.i, label %if.end40.i.if.end41.i_crit_edge, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end40.i.if.end41.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end40.i.if.end41.i_crit_edge, %if.end22.i.if.end41.i_crit_edge
  %ngpios42.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %ngpios42.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call24.i, ptr %ngpios42.i, align 4
  %call.i147.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %cmp44.i = icmp slt i32 %call.i147.i, 0
  br i1 %cmp44.i, label %do.end.i, label %if.end47.i

do.end.i:                                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %of_get_gpio_regulator_config.exit.thread

if.end47.i:                                       ; preds = %if.end41.i
  %div151152.i = lshr i32 %call.i147.i, 1
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div151152.i, i32 8) #7
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !79

devm_kcalloc.exit.thread.i:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %states149.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %states149.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %states149.i, align 4
  br label %of_get_gpio_regulator_config.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end47.i
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %25, i32 noundef 3520) #7
  %states.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %states.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i.i, ptr %states.i, align 4
  %tobool50.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool50.not.i, label %devm_kcalloc.exit.i.of_get_gpio_regulator_config.exit.thread_crit_edge, label %for.cond54.preheader.i

devm_kcalloc.exit.i.of_get_gpio_regulator_config.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_gpio_regulator_config.exit.thread

for.cond54.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i147.i)
  %cmp56156.not.i = icmp ult i32 %call.i147.i, 2
  br i1 %cmp56156.not.i, label %for.cond54.preheader.i.for.end68.i_crit_edge, label %for.body57.preheader.i

for.cond54.preheader.i.for.end68.i_crit_edge:     ; preds = %for.cond54.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68.i

for.body57.preheader.i:                           ; preds = %for.cond54.preheader.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div151152.i, i32 1) #7
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %for.body57.preheader.i
  %i.1157.i = phi i32 [ %inc67.i, %for.body57.i.for.body57.i_crit_edge ], [ 0, %for.body57.preheader.i ]
  %mul58.i = shl nuw i32 %i.1157.i, 1
  %27 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %states.i, align 4
  %arrayidx60.i = getelementptr %struct.gpio_regulator_state, ptr %28, i32 %i.1157.i
  %call61.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef %mul58.i, ptr noundef %arrayidx60.i) #7
  %add.i = or i32 %mul58.i, 1
  %29 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %states.i, align 4
  %gpios.i = getelementptr %struct.gpio_regulator_state, ptr %30, i32 %i.1157.i, i32 1
  %call65.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef %add.i, ptr noundef %gpios.i) #7
  %inc67.i = add nuw nsw i32 %i.1157.i, 1
  %exitcond158.not.i = icmp eq i32 %inc67.i, %umax.i
  br i1 %exitcond158.not.i, label %for.body57.i.for.end68.i_crit_edge, label %for.body57.i.for.body57.i_crit_edge

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57.i

for.body57.i.for.end68.i_crit_edge:               ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68.i

for.end68.i:                                      ; preds = %for.body57.i.for.end68.i_crit_edge, %for.cond54.preheader.i.for.end68.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 0, %for.cond54.preheader.i.for.end68.i_crit_edge ], [ %umax.i, %for.body57.i.for.end68.i_crit_edge ]
  %nr_states.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %nr_states.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %i.1.lcssa.i, ptr %nr_states.i, align 4
  %type.i = getelementptr inbounds %struct.gpio_regulator_config, ptr %call.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type.i, align 4
  %call69.i = call i32 @of_property_read_string(ptr noundef nonnull %3, ptr noundef nonnull @.str.22, ptr noundef nonnull %regtype.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call69.i)
  %cmp70.i = icmp sgt i32 %call69.i, -1
  br i1 %cmp70.i, label %if.then71.i, label %for.end68.i.of_get_gpio_regulator_config.exit_crit_edge

for.end68.i.of_get_gpio_regulator_config.exit_crit_edge: ; preds = %for.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_gpio_regulator_config.exit

if.then71.i:                                      ; preds = %for.end68.i
  %33 = ptrtoint ptr %regtype.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regtype.i, align 4
  %call72.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.23, ptr noundef %34, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.then74.i, label %if.else76.i

if.then74.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %type.i, align 4
  br label %of_get_gpio_regulator_config.exit

if.else76.i:                                      ; preds = %if.then71.i
  %call77.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.24, ptr noundef %34, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %do.end84.i

if.then79.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type.i, align 4
  br label %of_get_gpio_regulator_config.exit

do.end84.i:                                       ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %34) #10
  br label %of_get_gpio_regulator_config.exit

of_get_gpio_regulator_config.exit.thread:         ; preds = %devm_kcalloc.exit.i.of_get_gpio_regulator_config.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i, %if.then25.i.of_get_gpio_regulator_config.exit.thread_crit_edge, %if.end.i.of_get_gpio_regulator_config.exit.thread_crit_edge, %if.then3.of_get_gpio_regulator_config.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.of_get_gpio_regulator_config.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.thread.i ], [ inttoptr (i32 -12 to ptr), %if.then25.i.of_get_gpio_regulator_config.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.of_get_gpio_regulator_config.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then3.of_get_gpio_regulator_config.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regtype.i) #7
  br label %if.then6

of_get_gpio_regulator_config.exit:                ; preds = %do.end84.i, %if.then79.i, %if.then74.i, %for.end68.i.of_get_gpio_regulator_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regtype.i) #7
  %cmp.i183 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %of_get_gpio_regulator_config.exit.if.then6_crit_edge, label %of_get_gpio_regulator_config.exit.if.end9_crit_edge

of_get_gpio_regulator_config.exit.if.end9_crit_edge: ; preds = %of_get_gpio_regulator_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

of_get_gpio_regulator_config.exit.if.then6_crit_edge: ; preds = %of_get_gpio_regulator_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %of_get_gpio_regulator_config.exit.if.then6_crit_edge, %of_get_gpio_regulator_config.exit.thread
  %retval.0.i190 = phi ptr [ %retval.0.i.ph, %of_get_gpio_regulator_config.exit.thread ], [ %call.i.i, %of_get_gpio_regulator_config.exit.if.then6_crit_edge ]
  %37 = ptrtoint ptr %retval.0.i190 to i32
  br label %cleanup

if.end9:                                          ; preds = %of_get_gpio_regulator_config.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %config.0 = phi ptr [ %call.i.i, %of_get_gpio_regulator_config.exit.if.end9_crit_edge ], [ %1, %if.end.if.end9_crit_edge ]
  %38 = ptrtoint ptr %config.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.0, align 4
  %call10 = call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %39, i32 noundef 3264) #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call10, ptr %call.i, align 4
  %cmp14 = icmp eq ptr %call10, null
  br i1 %cmp14, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call.i184 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #7
  %gpiods = getelementptr inbounds %struct.gpio_regulator_data, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %gpiods to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i184, ptr %gpiods, align 4
  %tobool19.not = icmp eq ptr %call.i184, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %for.cond.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  %ngpios = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 4
  %42 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ngpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp22193 = icmp sgt i32 %43, 0
  br i1 %cmp22193, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gflags23 = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.body.lr.ph
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end34.for.body_crit_edge ]
  %44 = ptrtoint ptr %gflags23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gflags23, align 4
  %arrayidx = getelementptr i32, ptr %45, i32 %i.0194
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %call24 = call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef %i.0194, i32 noundef %47) #7
  %48 = ptrtoint ptr %gpiods to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gpiods, align 4
  %arrayidx26 = getelementptr ptr, ptr %49, i32 %i.0194
  %50 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call24, ptr %arrayidx26, align 4
  %51 = load ptr, ptr %gpiods, align 4
  %arrayidx28 = getelementptr ptr, ptr %51, i32 %i.0194
  %52 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx28, align 4
  %cmp.i185 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %53 to i32
  br label %cleanup

if.end34:                                         ; preds = %for.body
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call39 = call i32 @gpiod_set_consumer_name(ptr noundef %53, ptr noundef %56) #7
  %inc = add nuw nsw i32 %i.0194, 1
  %57 = ptrtoint ptr %ngpios to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ngpios, align 4
  %cmp22 = icmp slt i32 %inc, %58
  br i1 %cmp22, label %if.end34.for.body_crit_edge, label %if.end34.for.end_crit_edge

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %43, %for.cond.preheader.for.end_crit_edge ], [ %58, %if.end34.for.end_crit_edge ]
  %nr_gpios = getelementptr inbounds %struct.gpio_regulator_data, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.lcssa, ptr %nr_gpios, align 4
  %states = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 5
  %60 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %states, align 4
  %nr_states = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 6
  %62 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_states, align 4
  %mul = shl i32 %63, 3
  %call41 = call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef %61, i32 noundef %mul, i32 noundef 3264) #7
  %states42 = getelementptr inbounds %struct.gpio_regulator_data, ptr %call.i, i32 0, i32 3
  %64 = ptrtoint ptr %states42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call41, ptr %states42, align 4
  %cmp44 = icmp eq ptr %call41, null
  br i1 %cmp44, label %do.end48, label %if.end49

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end49:                                         ; preds = %for.end
  %65 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_states, align 4
  %nr_states51 = getelementptr inbounds %struct.gpio_regulator_data, ptr %call.i, i32 0, i32 4
  %67 = ptrtoint ptr %nr_states51 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %nr_states51, align 4
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 13
  %68 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %owner, align 4
  %startup_delay = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 2
  %69 = ptrtoint ptr %startup_delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %startup_delay, align 4
  %enable_time = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 57
  %71 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %enable_time, align 4
  %type = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 7
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %73, label %do.end66 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %type55 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 12
  %75 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %type55, align 4
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @gpio_regulator_voltage_ops, ptr %ops, align 4
  %77 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_states, align 4
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 8
  %79 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %n_voltages, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %type61 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 12
  %80 = ptrtoint ptr %type61 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type61, align 4
  %ops63 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %81 = ptrtoint ptr %ops63 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @gpio_regulator_current_ops, ptr %ops63, align 4
  br label %sw.epilog

do.end66:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb59, %sw.bb
  %82 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp69195 = icmp sgt i32 %83, 0
  br i1 %cmp69195, label %for.body70.lr.ph, label %sw.epilog.for.end78_crit_edge

sw.epilog.for.end78_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end78

for.body70.lr.ph:                                 ; preds = %sw.epilog
  %gflags71 = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 3
  %84 = ptrtoint ptr %gflags71 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gflags71, align 4
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body70.lr.ph
  %state.0197 = phi i32 [ 0, %for.body70.lr.ph ], [ %state.1, %for.body70.for.body70_crit_edge ]
  %ptr.0196 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc77, %for.body70.for.body70_crit_edge ]
  %arrayidx72 = getelementptr i32, ptr %85, i32 %ptr.0196
  %86 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %87)
  %cmp73 = icmp eq i32 %87, 7
  %shl = shl nuw i32 1, %ptr.0196
  %or = select i1 %cmp73, i32 %shl, i32 0
  %state.1 = or i32 %or, %state.0197
  %inc77 = add nuw nsw i32 %ptr.0196, 1
  %exitcond.not = icmp eq i32 %inc77, %83
  br i1 %exitcond.not, label %for.body70.for.end78_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body70

for.body70.for.end78_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end78

for.end78:                                        ; preds = %for.body70.for.end78_crit_edge, %sw.epilog.for.end78_crit_edge
  %state.0.lcssa = phi i32 [ 0, %sw.epilog.for.end78_crit_edge ], [ %state.1, %for.body70.for.end78_crit_edge ]
  %state79 = getelementptr inbounds %struct.gpio_regulator_data, ptr %call.i, i32 0, i32 5
  %88 = ptrtoint ptr %state79 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %state.0.lcssa, ptr %state79, align 4
  %89 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %dev1, ptr %cfg, align 4
  %init_data = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 8
  %90 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init_data, align 4
  %init_data81 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %92 = ptrtoint ptr %init_data81 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %init_data81, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %93 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %driver_data, align 4
  %of_node82 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 3
  %94 = ptrtoint ptr %of_node82 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %3, ptr %of_node82, align 4
  %enabled_at_boot = getelementptr inbounds %struct.gpio_regulator_config, ptr %config.0, i32 0, i32 1
  %95 = ptrtoint ptr %enabled_at_boot to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load = load i8, ptr %enabled_at_boot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool83.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool83.not, i32 19, i32 23
  %call86 = call ptr @gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %.) #7
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 5
  %96 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call86, ptr %ena_gpiod, align 4
  %cmp.i186 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then89, label %if.end92

if.then89:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %call86 to i32
  br label %cleanup

if.end92:                                         ; preds = %for.end78
  %call94 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %cfg) #7
  %cmp.i187 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then96, label %if.end101

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %call94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %98) #10
  br label %cleanup

if.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then96, %if.then89, %do.end66, %do.end48, %if.then30, %if.end16.cleanup_crit_edge, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %if.then6 ], [ -12, %do.end ], [ %54, %if.then30 ], [ -12, %do.end48 ], [ -22, %do.end66 ], [ %97, %if.then89 ], [ %98, %if.then96 ], [ 0, %if.end101 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regulator_list_voltage(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %nr_states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_states, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %selector)
  %cmp.not = icmp ugt i32 %1, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %states, align 4
  %arrayidx = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regulator_set_voltage(ptr noundef %dev, i32 noundef %min_uV, i32 noundef %max_uV, ptr noundef writeonly %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %nr_states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp57 = icmp sgt i32 %1, 0
  br i1 %cmp57, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 3
  %tobool.not = icmp eq ptr %selector, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best_val.061 = phi i32 [ 2147483647, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %target.060 = phi i32 [ 0, %for.body.lr.ph ], [ %target.1, %for.inc.for.body_crit_edge ]
  %ptr.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %states, align 4
  %arrayidx = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %ptr.058
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %best_val.061)
  %cmp1 = icmp sge i32 %5, %best_val.061
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_uV)
  %cmp5.not = icmp slt i32 %5, %min_uV
  %or.cond = or i1 %cmp1, %cmp5.not
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uV)
  %cmp10.not = icmp sgt i32 %5, %max_uV
  %or.cond56 = or i1 %cmp10.not, %or.cond
  br i1 %or.cond56, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %gpios = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %ptr.058, i32 1
  %6 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpios, align 4
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then16

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ptr.058, ptr %selector, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %target.1 = phi i32 [ %7, %if.then16 ], [ %7, %if.then.for.inc_crit_edge ], [ %target.060, %for.body.for.inc_crit_edge ]
  %best_val.1 = phi i32 [ %5, %if.then16 ], [ %5, %if.then.for.inc_crit_edge ], [ %best_val.061, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %ptr.058, 1
  %9 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_states, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %best_val.1)
  %cmp18 = icmp eq i32 %best_val.1, 2147483647
  br i1 %cmp18, label %for.end.cleanup_crit_edge, label %for.cond21.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond21.preheader:                             ; preds = %for.end
  %nr_gpios = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2263 = icmp sgt i32 %12, 0
  br i1 %cmp2263, label %for.body23.lr.ph, label %for.cond21.preheader.for.end27_crit_edge

for.cond21.preheader.for.end27_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %gpiods = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 1
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %ptr.164 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc26, %for.body23.for.body23_crit_edge ]
  %shl = shl nuw i32 1, %ptr.164
  %and = and i32 %shl, %target.1
  %shr = ashr i32 %and, %ptr.164
  %13 = ptrtoint ptr %gpiods to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiods, align 4
  %arrayidx24 = getelementptr ptr, ptr %14, i32 %ptr.164
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef %shr) #7
  %inc26 = add nuw nsw i32 %ptr.164, 1
  %17 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_gpios, align 4
  %cmp22 = icmp slt i32 %inc26, %18
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end27_crit_edge

for.body23.for.end27_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.end27:                                        ; preds = %for.body23.for.end27_crit_edge, %for.cond21.preheader.for.end27_crit_edge
  %state28 = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %state28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %target.1, ptr %state28, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end27 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regulator_get_value(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %nr_states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %states, align 4
  %state = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ptr.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %gpios = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %ptr.013, i32 1
  %6 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1 = icmp eq i32 %7, %5
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %ptr.013
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %ptr.013, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regulator_set_current_limit(ptr noundef %dev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %nr_states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %nr_states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53 = icmp sgt i32 %1, 0
  br i1 %cmp53, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %states = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %states, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %best_val.057 = phi i32 [ 0, %for.body.lr.ph ], [ %best_val.1, %for.inc.for.body_crit_edge ]
  %target.056 = phi i32 [ 0, %for.body.lr.ph ], [ %target.1, %for.inc.for.body_crit_edge ]
  %ptr.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %ptr.054
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %best_val.057)
  %cmp1 = icmp sle i32 %5, %best_val.057
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_uA)
  %cmp5.not = icmp slt i32 %5, %min_uA
  %or.cond = or i1 %cmp1, %cmp5.not
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uA)
  %cmp10.not = icmp sgt i32 %5, %max_uA
  %or.cond52 = or i1 %cmp10.not, %or.cond
  br i1 %or.cond52, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %gpios = getelementptr %struct.gpio_regulator_state, ptr %3, i32 %ptr.054, i32 1
  %6 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpios, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %target.1 = phi i32 [ %7, %if.then ], [ %target.056, %for.body.for.inc_crit_edge ]
  %best_val.1 = phi i32 [ %5, %if.then ], [ %best_val.057, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %ptr.054, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_val.1)
  %cmp16 = icmp eq i32 %best_val.1, 0
  br i1 %cmp16, label %for.end.cleanup_crit_edge, label %for.cond19.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond19.preheader:                             ; preds = %for.end
  %nr_gpios = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2059 = icmp sgt i32 %9, 0
  br i1 %cmp2059, label %for.body21.lr.ph, label %for.cond19.preheader.for.end25_crit_edge

for.cond19.preheader.for.end25_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %gpiods = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 1
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.lr.ph
  %ptr.160 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc24, %for.body21.for.body21_crit_edge ]
  %shl = shl nuw i32 1, %ptr.160
  %and = and i32 %shl, %target.1
  %shr = ashr i32 %and, %ptr.160
  %10 = ptrtoint ptr %gpiods to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiods, align 4
  %arrayidx22 = getelementptr ptr, ptr %11, i32 %ptr.160
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx22, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %shr) #7
  %inc24 = add nuw nsw i32 %ptr.160, 1
  %14 = ptrtoint ptr %nr_gpios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_gpios, align 4
  %cmp20 = icmp slt i32 %inc24, %15
  br i1 %cmp20, label %for.body21.for.body21_crit_edge, label %for.body21.for.end25_crit_edge

for.body21.for.end25_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.end25:                                        ; preds = %for.body21.for.end25_crit_edge, %for.cond19.preheader.for.end25_crit_edge
  %state26 = getelementptr inbounds %struct.gpio_regulator_data, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %state26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %target.1, ptr %state26, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end25 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_gpio_regulator__288_364_gpio_regulator_init4, !1, !"__initcall__kmod_gpio_regulator__288_364_gpio_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/gpio-regulator.c", i32 364, i32 1}
!2 = !{ptr @__exitcall_gpio_regulator_exit, !3, !"__exitcall_gpio_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/gpio-regulator.c", i32 370, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/gpio-regulator.c", i32 372, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/gpio-regulator.c", i32 373, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/gpio-regulator.c", i32 374, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/gpio-regulator.c", i32 375, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/gpio-regulator.c", i32 355, i32 12}
!15 = !{ptr @gpio_regulator_driver, !16, !"gpio_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/gpio-regulator.c", i32 352, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/gpio-regulator.c", i32 256, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gpio_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @gpio_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/gpio-regulator.c", i32 282, i32 3}
!27 = !{ptr @gpio_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gpio_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/gpio-regulator.c", i32 302, i32 3}
!31 = !{ptr @gpio_regulator_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gpio_regulator_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/gpio-regulator.c", i32 328, i32 42}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/gpio-regulator.c", i32 335, i32 3}
!37 = !{ptr @gpio_regulator_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gpio_regulator_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/gpio-regulator.c", i32 158, i32 32}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/gpio-regulator.c", i32 161, i32 27}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/gpio-regulator.c", i32 176, i32 41}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/gpio-regulator.c", i32 190, i32 44}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/gpio-regulator.c", i32 192, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @of_get_gpio_regulator_config._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @of_get_gpio_regulator_config._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/gpio-regulator.c", i32 212, i32 36}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/gpio-regulator.c", i32 214, i32 16}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/gpio-regulator.c", i32 216, i32 21}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/gpio-regulator.c", i32 219, i32 4}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @of_get_gpio_regulator_config._entry.25, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @of_get_gpio_regulator_config._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @gpio_regulator_voltage_ops, !64, !"gpio_regulator_voltage_ops", i1 false, i1 false}
!64 = !{!"../drivers/regulator/gpio-regulator.c", i32 123, i32 35}
!65 = !{ptr @gpio_regulator_current_ops, !66, !"gpio_regulator_current_ops", i1 false, i1 false}
!66 = !{!"../drivers/regulator/gpio-regulator.c", i32 226, i32 35}
!67 = !{ptr @regulator_gpio_of_match, !68, !"regulator_gpio_of_match", i1 false, i1 false}
!68 = !{!"../drivers/regulator/gpio-regulator.c", i32 345, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{!"branch_weights", i32 1, i32 2000}
