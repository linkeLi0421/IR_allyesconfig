; ModuleID = '/llk/IR_all_yes/drivers/regulator/arizona-micsupp.c_pt.bc'
source_filename = "../drivers/regulator/arizona-micsupp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arizona_micsupp = type { ptr, ptr, ptr, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, %struct.work_struct }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.arizona = type { ptr, ptr, i32, i32, i32, [2 x %struct.regulator_bulk_data], ptr, i8, %struct.arizona_pdata, i8, i32, ptr, ptr, ptr, i8, i32, %struct.mutex, i32, [2 x ptr], i8, ptr, [3 x i32], [3 x i32], i16, i8, %struct.mutex, %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.arizona_pdata = type { ptr, %struct.arizona_micsupp_pdata, %struct.arizona_ldo1_pdata, i32, i32, i32, [5 x i32], [3 x i32], i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, i32, [4 x i32], [3 x %struct.arizona_micbias], [4 x i32], [6 x i32], [12 x i32], [2 x i32], [2 x i32], i32, i32, i32 }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micbias = type { i32, i8 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_arizona_micsupp__294_386_arizona_micsupp_init6 = internal global ptr @arizona_micsupp_init, section ".initcall6.init", align 4
@arizona_micsupp_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @arizona_micsupp_driver, ptr @madera_micsupp_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_arizona_micsupp_exit = internal global ptr @arizona_micsupp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [72 x i8] c"arizona_micsupp.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [61 x i8] c"arizona_micsupp.description=Arizona microphone supply driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [55 x i8] c"arizona_micsupp.file=drivers/regulator/arizona-micsupp\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"arizona_micsupp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [47 x i8] c"arizona_micsupp.alias=platform:arizona-micsupp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [46 x i8] c"arizona_micsupp.alias=platform:madera-micsupp\00", section ".modinfo", align 1
@arizona_micsupp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arizona_micsupp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@madera_micsupp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @madera_micsupp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona-micsupp\00", [16 x i8] zeroinitializer }, align 32
@arizona_micsupp_ext = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.1, ptr @.str.2, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 40, i32 0, ptr @arizona_micsupp_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @arizona_micsupp_ext_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 531, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 1, i32 0, i32 0, i8 0, i32 512, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 3000, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@arizona_micsupp = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.1, ptr @.str.2, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @arizona_micsupp_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @arizona_micsupp_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 531, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 1, i32 0, i32 0, i8 0, i32 512, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 3000, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@arizona_micsupp_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arizona_micsupp_enable, ptr @arizona_micsupp_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arizona_micsupp_set_bypass, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@arizona_micsupp_ext_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 20, i32 25000 }, %struct.linear_range { i32 1500000, i32 21, i32 39, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arizona_micsupp_ext_default = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 900000, i32 3300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 41, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arizona_micsupp_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1700000, i32 0, i32 30, i32 50000 }, %struct.linear_range { i32 3300000, i32 31, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@arizona_micsupp_default = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 1700000, i32 3300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 41, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arizona_micsupp_common_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&micsupp->check_cp_work)\00", [53 x i8] zeroinitializer }, align 32
@arizona_micsupp_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 300, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register mic supply: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arizona_micsupp_common_init\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/regulator/arizona-micsupp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arizona_micsupp_common_init._entry_ptr = internal global ptr @arizona_micsupp_common_init._entry, section ".printk_index", align 4
@arizona_micsupp_check_cp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 58, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read CP state: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arizona_micsupp_check_cp\00", [39 x i8] zeroinitializer }, align 32
@arizona_micsupp_check_cp._entry_ptr = internal global ptr @arizona_micsupp_check_cp._entry, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICSUPP\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"micvdd\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"madera-micsupp\00", [17 x i8] zeroinitializer }, align 32
@madera_micsupp = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.1, ptr @.str.16, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 40, i32 0, ptr @arizona_micsupp_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @arizona_micsupp_ext_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 531, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 512, i32 1, i32 0, i32 0, i8 0, i32 512, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 3000, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPVDD1\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"arizona_micsupp_drivers\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 376, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"arizona_micsupp_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 362, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"madera_micsupp_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 369, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 365, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"arizona_micsupp_ext\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 160, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"arizona_micsupp\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 133, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 161, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 162, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"arizona_micsupp_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 113, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"arizona_micsupp_ext_ranges\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 155, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"arizona_micsupp_ext_default\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 194, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"arizona_micsupp_ranges\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 128, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"arizona_micsupp_default\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 182, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 262, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 299, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 57, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 68, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 236, i32 50 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 372, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"madera_micsupp\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 206, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [39 x i8] c"../drivers/regulator/arizona-micsupp.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 208, i32 17 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_arizona_micsupp_exit, ptr @__initcall__kmod_arizona_micsupp__294_386_arizona_micsupp_init6, ptr @arizona_micsupp_check_cp._entry, ptr @arizona_micsupp_check_cp._entry_ptr, ptr @arizona_micsupp_common_init._entry, ptr @arizona_micsupp_common_init._entry_ptr, ptr @arizona_micsupp_exit, ptr @arizona_micsupp_drivers, ptr @arizona_micsupp_driver, ptr @madera_micsupp_driver, ptr @.str, ptr @arizona_micsupp_ext, ptr @arizona_micsupp, ptr @.str.1, ptr @.str.2, ptr @arizona_micsupp_ops, ptr @arizona_micsupp_ext_ranges, ptr @arizona_micsupp_ext_default, ptr @arizona_micsupp_ranges, ptr @arizona_micsupp_default, ptr @arizona_micsupp_common_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @madera_micsupp, ptr @.str.16], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_micsupp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_ext to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_ext_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_ext_default to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_default to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_common_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micsupp_check_cp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_micsupp to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_micsupp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @arizona_micsupp_drivers, i32 noundef 2, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arizona_micsupp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_unregister_drivers(ptr noundef nonnull @arizona_micsupp_drivers, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_micsupp_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %regmap3 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap3, align 4
  %dapm = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 20
  %dapm4 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %dapm4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dapm, ptr %dapm4, align 4
  %dev5 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %dev6 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dev6, align 4
  %type = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.default [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge23
  ]

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge23
  %init_data = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %init_data, ptr @arizona_micsupp_ext_default, i32 228)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %init_data7 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 6
  %15 = call ptr @memcpy(ptr %init_data7, ptr @arizona_micsupp_default, i32 228)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %desc.0 = phi ptr [ @arizona_micsupp, %sw.default ], [ @arizona_micsupp_ext, %sw.bb ]
  %micvdd = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 8, i32 1
  %call8 = tail call fastcc i32 @arizona_micsupp_common_init(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull %desc.0, ptr noundef %micvdd)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_micsupp_common_init(ptr noundef %pdev, ptr noundef %micsupp, ptr noundef %desc, ptr nocapture noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %0 = getelementptr inbounds i8, ptr %config, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %check_cp_work = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 7
  tail call void @__init_work(ptr noundef %check_cp_work, i32 noundef 0) #5
  %2 = ptrtoint ptr %check_cp_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %check_cp_work, align 4
  %lockdep_map = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @arizona_micsupp_common_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry4 = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 7, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @arizona_micsupp_check_cp, ptr %func, align 4
  %supply = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 5
  %init_data = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 6
  %consumer_supplies = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %consumer_supplies to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %supply, ptr %consumer_supplies, align 4
  %supply7 = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %supply7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.1, ptr %supply7, align 4
  %dev = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %entry.dev_name.exit_crit_edge ]
  %14 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %supply, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 34
  %15 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %enable_reg, align 4
  %enable_reg9 = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 3
  %17 = ptrtoint ptr %enable_reg9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %enable_reg9, align 4
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %micsupp, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.arizona_micsupp, ptr %micsupp, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %regmap12 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %22 = ptrtoint ptr %regmap12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %regmap12, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %if.then, label %dev_name.exit.if.end17_crit_edge

dev_name.exit.if.end17_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %dev_name.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %26, ptr noundef nonnull @.str.14) #5
  %tobool.not.i72 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i72, label %if.then.if.end17_crit_edge, label %if.then.i

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then.i:                                        ; preds = %if.then
  %of_node1.i = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %27 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %of_node1.i, align 4
  %28 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config, align 4
  %call3.i = tail call ptr @of_get_regulator_init_data(ptr noundef %29, ptr noundef nonnull %call.i, ptr noundef %desc) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then.i.if.end17_crit_edge, label %if.end17.thread

if.then.i.if.end17_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17.thread:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %consumer_supplies.i = getelementptr inbounds %struct.regulator_init_data, ptr %call3.i, i32 0, i32 3
  %30 = ptrtoint ptr %consumer_supplies.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %supply, ptr %consumer_supplies.i, align 4
  %num_consumer_supplies.i = getelementptr inbounds %struct.regulator_init_data, ptr %call3.i, i32 0, i32 2
  %31 = ptrtoint ptr %num_consumer_supplies.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_consumer_supplies.i, align 4
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3.i, ptr %pdata, align 4
  br label %if.end25

if.end17:                                         ; preds = %if.then.i.if.end17_crit_edge, %if.then.if.end17_crit_edge, %dev_name.exit.if.end17_crit_edge
  %33 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load ptr, ptr %pdata, align 4
  %tobool19.not = icmp eq ptr %.pr, null
  %spec.select = select i1 %tobool19.not, ptr %init_data, ptr %.pr
  br label %if.end25

if.end25:                                         ; preds = %if.end17, %if.end17.thread
  %init_data.sink = phi ptr [ %call3.i, %if.end17.thread ], [ %spec.select, %if.end17 ]
  %init_data24 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %34 = ptrtoint ptr %init_data24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init_data.sink, ptr %init_data24, align 4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %enable_reg9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enable_reg9, align 4
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %38, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %dev29 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call30 = call ptr @devm_regulator_register(ptr noundef %dev29, ptr noundef %desc, ptr noundef nonnull %config) #5
  %39 = ptrtoint ptr %micsupp to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call30, ptr %micsupp, align 4
  %of_node = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 4
  call void @of_node_put(ptr noundef %41) #5
  %42 = ptrtoint ptr %micsupp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %micsupp, align 4
  %cmp.i = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end40

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %43 to i32
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.6, i32 noundef %44) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %micsupp, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then33
  %retval.0 = phi i32 [ %44, %if.then33 ], [ 0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

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
define internal i32 @arizona_micsupp_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %check_cp_work = getelementptr inbounds %struct.arizona_micsupp, ptr %call, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %check_cp_work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_micsupp_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @regulator_disable_regmap(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %check_cp_work = getelementptr inbounds %struct.arizona_micsupp, ptr %call, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %check_cp_work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_micsupp_set_bypass(ptr noundef %rdev, i1 noundef zeroext %ena) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %call1 = tail call i32 @regulator_set_bypass_regmap(ptr noundef %rdev, i1 noundef zeroext %ena) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %check_cp_work = getelementptr inbounds %struct.arizona_micsupp, ptr %call, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %check_cp_work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arizona_micsupp_check_cp(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr i8, ptr %work, i32 -248
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !76
  %regmap = getelementptr i8, ptr %work, i32 -252
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr i8, ptr %work, i32 -244
  %7 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %work, i32 -240
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 -176
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp4 = icmp eq i32 %and, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 @snd_soc_component_force_enable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13) #5
  br label %if.end8

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %call9 = call i32 @snd_soc_dapm_sync(ptr noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_micsupp_probe(ptr noundef %pdev) #2 align 64 {
entry:
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %regmap3 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap3, align 4
  %dapm = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 18
  %dapm4 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %dapm4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dapm, ptr %dapm4, align 4
  %dev5 = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %dev6 = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dev6, align 4
  %init_data = getelementptr inbounds %struct.arizona_micsupp, ptr %call.i, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %init_data, ptr @arizona_micsupp_ext_default, i32 228)
  %micvdd = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 11, i32 2
  %call7 = tail call fastcc i32 @arizona_micsupp_common_init(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @madera_micsupp, ptr noundef %micvdd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_arizona_micsupp__294_386_arizona_micsupp_init6, !1, !"__initcall__kmod_arizona_micsupp__294_386_arizona_micsupp_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/arizona-micsupp.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_arizona_micsupp_exit, !3, !"__exitcall_arizona_micsupp_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/arizona-micsupp.c", i32 393, i32 1}
!4 = !{ptr @__UNIQUE_ID_author295, !5, !"__UNIQUE_ID_author295", i1 false, i1 false}
!5 = !{!"../drivers/regulator/arizona-micsupp.c", i32 396, i32 1}
!6 = !{ptr @__UNIQUE_ID_description296, !7, !"__UNIQUE_ID_description296", i1 false, i1 false}
!7 = !{!"../drivers/regulator/arizona-micsupp.c", i32 397, i32 1}
!8 = !{ptr @__UNIQUE_ID_file297, !9, !"__UNIQUE_ID_file297", i1 false, i1 false}
!9 = !{!"../drivers/regulator/arizona-micsupp.c", i32 398, i32 1}
!10 = !{ptr @__UNIQUE_ID_license298, !9, !"__UNIQUE_ID_license298", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias299, !12, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!12 = !{!"../drivers/regulator/arizona-micsupp.c", i32 399, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias300, !14, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!14 = !{!"../drivers/regulator/arizona-micsupp.c", i32 400, i32 1}
!15 = !{ptr @arizona_micsupp_drivers, !16, !"arizona_micsupp_drivers", i1 false, i1 false}
!16 = !{!"../drivers/regulator/arizona-micsupp.c", i32 376, i32 39}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/arizona-micsupp.c", i32 365, i32 11}
!19 = !{ptr @arizona_micsupp_driver, !20, !"arizona_micsupp_driver", i1 false, i1 false}
!20 = !{!"../drivers/regulator/arizona-micsupp.c", i32 362, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/arizona-micsupp.c", i32 161, i32 10}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/arizona-micsupp.c", i32 162, i32 17}
!25 = !{ptr @arizona_micsupp_ext, !26, !"arizona_micsupp_ext", i1 false, i1 false}
!26 = !{!"../drivers/regulator/arizona-micsupp.c", i32 160, i32 36}
!27 = !{ptr @arizona_micsupp_ops, !28, !"arizona_micsupp_ops", i1 false, i1 false}
!28 = !{!"../drivers/regulator/arizona-micsupp.c", i32 113, i32 35}
!29 = !{ptr @arizona_micsupp_ext_ranges, !30, !"arizona_micsupp_ext_ranges", i1 false, i1 false}
!30 = !{!"../drivers/regulator/arizona-micsupp.c", i32 155, i32 34}
!31 = !{ptr @arizona_micsupp_ext_default, !32, !"arizona_micsupp_ext_default", i1 false, i1 false}
!32 = !{!"../drivers/regulator/arizona-micsupp.c", i32 194, i32 41}
!33 = !{ptr @arizona_micsupp, !34, !"arizona_micsupp", i1 false, i1 false}
!34 = !{!"../drivers/regulator/arizona-micsupp.c", i32 133, i32 36}
!35 = !{ptr @arizona_micsupp_ranges, !36, !"arizona_micsupp_ranges", i1 false, i1 false}
!36 = !{!"../drivers/regulator/arizona-micsupp.c", i32 128, i32 34}
!37 = !{ptr @arizona_micsupp_default, !38, !"arizona_micsupp_default", i1 false, i1 false}
!38 = !{!"../drivers/regulator/arizona-micsupp.c", i32 182, i32 41}
!39 = !{ptr @arizona_micsupp_common_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/regulator/arizona-micsupp.c", i32 262, i32 2}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/arizona-micsupp.c", i32 299, i32 3}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @arizona_micsupp_common_init._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @arizona_micsupp_common_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/arizona-micsupp.c", i32 57, i32 3}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @arizona_micsupp_check_cp._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @arizona_micsupp_check_cp._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/arizona-micsupp.c", i32 68, i32 11}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/arizona-micsupp.c", i32 236, i32 50}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/arizona-micsupp.c", i32 372, i32 11}
!61 = !{ptr @madera_micsupp_driver, !62, !"madera_micsupp_driver", i1 false, i1 false}
!62 = !{!"../drivers/regulator/arizona-micsupp.c", i32 369, i32 31}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/arizona-micsupp.c", i32 208, i32 17}
!65 = !{ptr @madera_micsupp, !66, !"madera_micsupp", i1 false, i1 false}
!66 = !{!"../drivers/regulator/arizona-micsupp.c", i32 206, i32 36}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
