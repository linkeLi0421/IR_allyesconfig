; ModuleID = '/llk/IR_all_yes/drivers/regulator/fixed.c_pt.bc'
source_filename = "../drivers/regulator/fixed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fixed_dev_type = type { i8, i8 }
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
%struct.fixed_voltage_config = type { ptr, ptr, i32, i32, i32, i8, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.fixed_voltage_data = type { %struct.regulator_desc, ptr, ptr, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_fixed__289_348_regulator_fixed_voltage_init4 = internal global ptr @regulator_fixed_voltage_init, section ".initcall4.init", align 4
@regulator_fixed_voltage_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @reg_fixed_voltage_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fixed_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_regulator_fixed_voltage_exit = internal global ptr @regulator_fixed_voltage_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [62 x i8] c"fixed.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [42 x i8] c"fixed.description=Fixed voltage regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"fixed.file=drivers/regulator/fixed\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [18 x i8] c"fixed.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [39 x i8] c"fixed.alias=platform:reg-fixed-voltage\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg-fixed-voltage\00", [46 x i8] zeroinitializer }, align 32
@fixed_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-fixed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fixed_voltage_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fixed_clkenable_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-fixed-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fixed_domain_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate supply name\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_fixed_voltage_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/regulator/fixed.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry_ptr = internal global ptr @reg_fixed_voltage_probe._entry, section ".printk_index", align 4
@fixed_voltage_clkenabled_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reg_clock_enable, ptr @reg_clock_disable, ptr @reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't get enable-clock from devicetree\0A\00", [56 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry_ptr.8 = internal global ptr @reg_fixed_voltage_probe._entry.6, section ".printk_index", align 4
@fixed_voltage_domain_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reg_domain_enable, ptr @reg_domain_disable, ptr @reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Can't get performance state from devicetree\0A\00", [51 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry_ptr.11 = internal global ptr @reg_fixed_voltage_probe._entry.9, section ".printk_index", align 4
@fixed_voltage_ops = internal constant { %struct.regulator_ops, [48 x i8] } zeroinitializer, align 32
@reg_fixed_voltage_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input supply\0A\00", [63 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe._entry_ptr.14 = internal global ptr @reg_fixed_voltage_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"can't get GPIO\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register regulator: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@reg_fixed_voltage_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixed\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s supplying %duV\0A\00", [45 x i8] zeroinitializer }, align 32
@of_get_fixed_voltage_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Fixed regulator specified with variable voltages\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"of_get_fixed_voltage_config\00", [36 x i8] zeroinitializer }, align 32
@of_get_fixed_voltage_config._entry_ptr = internal global ptr @of_get_fixed_voltage_config._entry, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"startup-delay-us\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"off-on-delay-us\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vin-supply\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@fixed_voltage_data = internal constant { %struct.fixed_dev_type, [30 x i8] } zeroinitializer, align 32
@fixed_clkenable_data = internal constant { %struct.fixed_dev_type, [30 x i8] } { %struct.fixed_dev_type { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@fixed_domain_data = internal constant { %struct.fixed_dev_type, [30 x i8] } { %struct.fixed_dev_type { i8 0, i8 1 }, [30 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"regulator_fixed_voltage_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 336, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 339, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"fixed_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 317, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 206, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [29 x i8] c"fixed_voltage_clkenabled_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 163, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 217, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"fixed_voltage_domain_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 169, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 225, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"fixed_voltage_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 160, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 240, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 280, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 291, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 298, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 143, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 151, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 152, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 154, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 155, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"fixed_voltage_data\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 305, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"fixed_clkenable_data\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 309, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"fixed_domain_data\00", align 1
@___asan_gen_.119 = private constant [29 x i8] c"../drivers/regulator/fixed.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 313, i32 36 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_regulator_fixed_voltage_exit, ptr @__initcall__kmod_fixed__289_348_regulator_fixed_voltage_init4, ptr @of_get_fixed_voltage_config._entry, ptr @of_get_fixed_voltage_config._entry_ptr, ptr @reg_fixed_voltage_probe._entry, ptr @reg_fixed_voltage_probe._entry.12, ptr @reg_fixed_voltage_probe._entry.6, ptr @reg_fixed_voltage_probe._entry.9, ptr @reg_fixed_voltage_probe._entry_ptr, ptr @reg_fixed_voltage_probe._entry_ptr.11, ptr @reg_fixed_voltage_probe._entry_ptr.14, ptr @reg_fixed_voltage_probe._entry_ptr.8, ptr @regulator_fixed_voltage_exit, ptr @regulator_fixed_voltage_driver, ptr @.str, ptr @fixed_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fixed_voltage_clkenabled_ops, ptr @.str.7, ptr @fixed_voltage_domain_ops, ptr @.str.10, ptr @fixed_voltage_ops, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @fixed_voltage_data, ptr @fixed_clkenable_data, ptr @fixed_domain_data], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_fixed_voltage_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_fixed_voltage_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_voltage_clkenabled_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_fixed_voltage_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_voltage_domain_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_fixed_voltage_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_voltage_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_fixed_voltage_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_fixed_voltage_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_voltage_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_clkenable_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_domain_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_fixed_voltage_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @regulator_fixed_voltage_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @regulator_fixed_voltage_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @regulator_fixed_voltage_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_fixed_voltage_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #5
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 260, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.end
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then6.if.then10_crit_edge, label %if.end.i

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end.i:                                         ; preds = %if.then6
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call3.i = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %6, ptr noundef nonnull %call.i) #5
  %init_data4.i = getelementptr inbounds %struct.fixed_voltage_config, ptr %call.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %init_data4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3.i, ptr %init_data4.i, align 4
  %tobool6.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.then10_crit_edge, label %if.end9.i

if.end.i.if.then10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end9.i:                                        ; preds = %if.end.i
  %constraints.i = getelementptr inbounds %struct.regulator_init_data, ptr %call3.i, i32 0, i32 1
  %apply_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call3.i, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %apply_uV.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %apply_uV.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -8193
  store i16 %bf.clear.i, ptr %apply_uV.i, align 4
  %9 = ptrtoint ptr %constraints.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %constraints.i, align 4
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call.i.i, align 4
  %min_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call3.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %min_uV.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_uV.i, align 4
  %max_uV.i = getelementptr inbounds %struct.regulator_init_data, ptr %call3.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i = icmp eq i32 %13, %15
  br i1 %cmp.i, label %if.then14.i, label %do.end.i

if.then14.i:                                      ; preds = %if.end9.i
  %microvolts.i = getelementptr inbounds %struct.fixed_voltage_config, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %microvolts.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %microvolts.i, align 4
  %17 = ptrtoint ptr %apply_uV.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load20.i = load i16, ptr %apply_uV.i, align 4
  %18 = and i16 %bf.load20.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool22.not.i = icmp eq i16 %18, 0
  br i1 %tobool22.not.i, label %if.then14.i.if.end27.i_crit_edge, label %if.then23.i

if.then14.i.if.end27.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %if.then10

if.then23.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %enabled_at_boot.i = getelementptr inbounds %struct.fixed_voltage_config, ptr %call.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %enabled_at_boot.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load24.i = load i8, ptr %enabled_at_boot.i, align 4
  %bf.set26.i = or i8 %bf.load24.i, -128
  store i8 %bf.set26.i, ptr %enabled_at_boot.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.then14.i.if.end27.i_crit_edge
  %startup_delay.i = getelementptr inbounds %struct.fixed_voltage_config, ptr %call.i.i, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.21, ptr noundef %startup_delay.i, i32 noundef 1, i32 noundef 0) #5
  %off_on_delay.i = getelementptr inbounds %struct.fixed_voltage_config, ptr %call.i.i, i32 0, i32 4
  %call.i.i57.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef %off_on_delay.i, i32 noundef 1, i32 noundef 0) #5
  %call30.i = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef null) #5
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end27.i.of_get_fixed_voltage_config.exit_crit_edge, label %if.then32.i

if.end27.i.of_get_fixed_voltage_config.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_fixed_voltage_config.exit

if.then32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %input_supply.i = getelementptr inbounds %struct.fixed_voltage_config, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %input_supply.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.24, ptr %input_supply.i, align 4
  br label %of_get_fixed_voltage_config.exit

of_get_fixed_voltage_config.exit:                 ; preds = %if.then32.i, %if.end27.i.of_get_fixed_voltage_config.exit_crit_edge
  %cmp.i208 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %of_get_fixed_voltage_config.exit.if.then10_crit_edge, label %of_get_fixed_voltage_config.exit.if.end18_crit_edge

of_get_fixed_voltage_config.exit.if.end18_crit_edge: ; preds = %of_get_fixed_voltage_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

of_get_fixed_voltage_config.exit.if.then10_crit_edge: ; preds = %of_get_fixed_voltage_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %of_get_fixed_voltage_config.exit.if.then10_crit_edge, %do.end.i, %if.end.i.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %retval.0.i207214 = phi ptr [ %call.i.i, %of_get_fixed_voltage_config.exit.if.then10_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then6.if.then10_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %21 = ptrtoint ptr %retval.0.i207214 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i, align 8
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %of_get_fixed_voltage_config.exit.if.end18_crit_edge
  %config.0217 = phi ptr [ %23, %if.end15.if.end18_crit_edge ], [ %call.i.i, %of_get_fixed_voltage_config.exit.if.end18_crit_edge ]
  %24 = ptrtoint ptr %config.0217 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.0217, align 4
  %call20 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %25, i32 noundef 3264) #5
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call20, ptr %call.i, align 4
  %cmp = icmp eq ptr %call20, null
  br i1 %cmp, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %type = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 13
  %28 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %owner, align 4
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %if.end26.if.else58_crit_edge, label %land.lhs.true

if.end26.if.else58_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else58

land.lhs.true:                                    ; preds = %if.end26
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %call, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not = icmp eq i8 %30, 0
  br i1 %tobool30.not, label %land.lhs.true43.critedge, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @fixed_voltage_clkenabled_ops, ptr %ops, align 4
  %call33 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %enable_clock = getelementptr inbounds %struct.fixed_voltage_data, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %enable_clock to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call33, ptr %enable_clock, align 4
  %cmp.i209 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end39, label %if.then31.if.end62_crit_edge

if.then31.if.end62_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

land.lhs.true43.critedge:                         ; preds = %land.lhs.true
  %has_performance_state = getelementptr inbounds %struct.fixed_dev_type, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %has_performance_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_performance_state, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool44.not = icmp eq i8 %34, 0
  br i1 %tobool44.not, label %land.lhs.true43.critedge.if.else58_crit_edge, label %if.then45

land.lhs.true43.critedge.if.else58_crit_edge:     ; preds = %land.lhs.true43.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else58

if.then45:                                        ; preds = %land.lhs.true43.critedge
  %ops47 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %35 = ptrtoint ptr %ops47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @fixed_voltage_domain_ops, ptr %ops47, align 4
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call49 = tail call i32 @of_get_required_opp_performance_state(ptr noundef %37, i32 noundef 0) #5
  %performance_state = getelementptr inbounds %struct.fixed_voltage_data, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %performance_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call49, ptr %performance_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp51 = icmp slt i32 %call49, 0
  br i1 %cmp51, label %do.end55, label %if.then45.if.end62_crit_edge

if.then45.if.end62_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end55:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %39 = ptrtoint ptr %performance_state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %performance_state, align 4
  br label %cleanup

if.else58:                                        ; preds = %land.lhs.true43.critedge.if.else58_crit_edge, %if.end26.if.else58_crit_edge
  %ops60 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %ops60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @fixed_voltage_ops, ptr %ops60, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then45.if.end62_crit_edge, %if.then31.if.end62_crit_edge
  %startup_delay = getelementptr inbounds %struct.fixed_voltage_config, ptr %config.0217, i32 0, i32 3
  %42 = ptrtoint ptr %startup_delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %startup_delay, align 4
  %enable_time = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 57
  %44 = ptrtoint ptr %enable_time to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %enable_time, align 4
  %off_on_delay = getelementptr inbounds %struct.fixed_voltage_config, ptr %config.0217, i32 0, i32 4
  %45 = ptrtoint ptr %off_on_delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %off_on_delay, align 4
  %off_on_delay65 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 58
  %47 = ptrtoint ptr %off_on_delay65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %off_on_delay65, align 4
  %input_supply = getelementptr inbounds %struct.fixed_voltage_config, ptr %config.0217, i32 0, i32 1
  %48 = ptrtoint ptr %input_supply to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input_supply, align 4
  %tobool66.not = icmp eq ptr %49, null
  br i1 %tobool66.not, label %if.end62.if.end82_crit_edge, label %if.then67

if.end62.if.end82_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then67:                                        ; preds = %if.end62
  %call70 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef nonnull %49, i32 noundef 3264) #5
  %supply_name72 = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %supply_name72 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call70, ptr %supply_name72, align 4
  %tobool75.not = icmp eq ptr %call70, null
  br i1 %tobool75.not, label %do.end79, label %if.then67.if.end82_crit_edge

if.then67.if.end82_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end79:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end82:                                         ; preds = %if.then67.if.end82_crit_edge, %if.end62.if.end82_crit_edge
  %microvolts = getelementptr inbounds %struct.fixed_voltage_config, ptr %config.0217, i32 0, i32 2
  %51 = ptrtoint ptr %microvolts to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %microvolts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool83.not = icmp eq i32 %52, 0
  br i1 %tobool83.not, label %if.end82.if.end86_crit_edge, label %if.then84

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 8
  %53 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %n_voltages, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end82.if.end86_crit_edge
  %54 = ptrtoint ptr %microvolts to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %microvolts, align 4
  %fixed_uV = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 17
  %56 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %fixed_uV, align 4
  %enabled_at_boot = getelementptr inbounds %struct.fixed_voltage_config, ptr %config.0217, i32 0, i32 5
  %57 = ptrtoint ptr %enabled_at_boot to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %enabled_at_boot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool89.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool89.not, i32 19, i32 23
  %call94 = tail call ptr @gpiod_get_optional(ptr noundef %dev1, ptr noundef null, i32 noundef %.) #5
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 5
  %58 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call94, ptr %ena_gpiod, align 4
  %cmp.i210 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then97, label %if.end102

if.then97:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %call94 to i32
  %call101 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %59, ptr noundef nonnull @.str.15) #5
  br label %cleanup

if.end102:                                        ; preds = %if.end86
  %60 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev1, ptr %cfg, align 4
  %init_data = getelementptr inbounds %struct.fixed_voltage_config, ptr %config.0217, i32 0, i32 6
  %61 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_data, align 4
  %init_data105 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %63 = ptrtoint ptr %init_data105 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %init_data105, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %64 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data, align 4
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %of_node108 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 3
  %67 = ptrtoint ptr %of_node108 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %of_node108, align 4
  %call111 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %cfg) #5
  %dev112 = getelementptr inbounds %struct.fixed_voltage_data, ptr %call.i, i32 0, i32 1
  %68 = ptrtoint ptr %dev112 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call111, ptr %dev112, align 4
  %cmp.i211 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then115, label %if.end122

if.then115:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %call111 to i32
  %call121 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %69, ptr noundef nonnull @.str.16, i32 noundef %69) #5
  br label %cleanup

if.end122:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reg_fixed_voltage_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@reg_fixed_voltage_probe, %cleanup)) #5
          to label %if.then129 [label %cleanup], !srcloc !82

if.then129:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %73 = ptrtoint ptr %fixed_uV to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fixed_uV, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reg_fixed_voltage_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %72, i32 noundef %74) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %if.end122, %if.then115, %if.then97, %do.end79, %do.end55, %do.end39, %do.end, %if.end15.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then10 ], [ -12, %do.end ], [ -2, %do.end39 ], [ %call101, %if.then97 ], [ %call121, %if.then115 ], [ -12, %do.end79 ], [ %40, %do.end55 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ 0, %if.then129 ], [ 0, %if.end122 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_required_opp_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_clock_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %enable_clock = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enable_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %enable_counter = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %enable_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %enable_counter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0.i8 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_clock_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %enable_clock = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enable_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_clock, align 4
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %enable_counter = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %enable_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_counter, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %enable_counter, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %enable_counter = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %enable_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_domain_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %parent = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %performance_state = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %performance_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %performance_state, align 4
  %call2 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %1, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable_counter = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %enable_counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_counter, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %enable_counter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reg_domain_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %parent = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call2 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable_counter = getelementptr inbounds %struct.fixed_voltage_data, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %enable_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_counter, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %enable_counter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_fixed__289_348_regulator_fixed_voltage_init4, !1, !"__initcall__kmod_fixed__289_348_regulator_fixed_voltage_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/fixed.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_regulator_fixed_voltage_exit, !3, !"__exitcall_regulator_fixed_voltage_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/fixed.c", i32 354, i32 1}
!4 = !{ptr @__UNIQUE_ID_author290, !5, !"__UNIQUE_ID_author290", i1 false, i1 false}
!5 = !{!"../drivers/regulator/fixed.c", i32 356, i32 1}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/fixed.c", i32 357, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/fixed.c", i32 358, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias294, !12, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!12 = !{!"../drivers/regulator/fixed.c", i32 359, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/fixed.c", i32 339, i32 12}
!15 = !{ptr @regulator_fixed_voltage_driver, !16, !"regulator_fixed_voltage_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/fixed.c", i32 336, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/fixed.c", i32 206, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reg_fixed_voltage_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @reg_fixed_voltage_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/fixed.c", i32 217, i32 4}
!27 = !{ptr @reg_fixed_voltage_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @reg_fixed_voltage_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/fixed.c", i32 225, i32 4}
!31 = !{ptr @reg_fixed_voltage_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @reg_fixed_voltage_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/fixed.c", i32 240, i32 4}
!35 = !{ptr @reg_fixed_voltage_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @reg_fixed_voltage_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/fixed.c", i32 280, i32 10}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/fixed.c", i32 291, i32 9}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/fixed.c", i32 298, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @reg_fixed_voltage_probe.__UNIQUE_ID_ddebug288, !42, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/fixed.c", i32 143, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @of_get_fixed_voltage_config._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @of_get_fixed_voltage_config._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/fixed.c", i32 151, i32 27}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/fixed.c", i32 152, i32 27}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/fixed.c", i32 154, i32 27}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/fixed.c", i32 155, i32 26}
!58 = !{ptr @fixed_voltage_clkenabled_ops, !59, !"fixed_voltage_clkenabled_ops", i1 false, i1 false}
!59 = !{!"../drivers/regulator/fixed.c", i32 163, i32 35}
!60 = !{ptr @fixed_voltage_domain_ops, !61, !"fixed_voltage_domain_ops", i1 false, i1 false}
!61 = !{!"../drivers/regulator/fixed.c", i32 169, i32 35}
!62 = !{ptr @fixed_voltage_ops, !63, !"fixed_voltage_ops", i1 false, i1 false}
!63 = !{!"../drivers/regulator/fixed.c", i32 160, i32 35}
!64 = !{ptr @fixed_of_match, !65, !"fixed_of_match", i1 false, i1 false}
!65 = !{!"../drivers/regulator/fixed.c", i32 317, i32 34}
!66 = !{ptr @fixed_voltage_data, !67, !"fixed_voltage_data", i1 false, i1 false}
!67 = !{!"../drivers/regulator/fixed.c", i32 305, i32 36}
!68 = !{ptr @fixed_clkenable_data, !69, !"fixed_clkenable_data", i1 false, i1 false}
!69 = !{!"../drivers/regulator/fixed.c", i32 309, i32 36}
!70 = !{ptr @fixed_domain_data, !71, !"fixed_domain_data", i1 false, i1 false}
!71 = !{!"../drivers/regulator/fixed.c", i32 313, i32 36}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{i64 2148183641, i64 2148183646, i64 2148183659, i64 2148183703, i64 2148183737, i64 2148183758}
