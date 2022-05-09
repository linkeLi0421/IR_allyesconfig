; ModuleID = '/llk/IR_all_yes/drivers/regulator/arizona-ldo1.c_pt.bc'
source_filename = "../drivers/regulator/arizona-ldo1.c"
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
%struct.arizona_ldo1 = type { ptr, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_arizona_ldo1__288_404_arizona_ldo1_init6 = internal global ptr @arizona_ldo1_init, section ".initcall6.init", align 4
@madera_ldo1_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @arizona_ldo1_driver, ptr @madera_ldo1_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_madera_ldo1_exit = internal global ptr @madera_ldo1_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [69 x i8] c"arizona_ldo1.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [45 x i8] c"arizona_ldo1.description=Arizona LDO1 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [49 x i8] c"arizona_ldo1.file=drivers/regulator/arizona-ldo1\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"arizona_ldo1.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [41 x i8] c"arizona_ldo1.alias=platform:arizona-ldo1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [40 x i8] c"arizona_ldo1.alias=platform:madera-ldo1\00", section ".modinfo", align 1
@arizona_ldo1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arizona_ldo1_probe, ptr @arizona_ldo1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@madera_ldo1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @madera_ldo1_probe, ptr @arizona_ldo1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arizona-ldo1\00", [19 x i8] zeroinitializer }, align 32
@arizona_ldo1_hc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.1, ptr @.str.2, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 8, i32 0, ptr @arizona_ldo1_hc_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 24000, i32 0, ptr @arizona_ldo1_hc_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 528, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 528, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 1500, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@arizona_ldo1 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.1, ptr @.str.2, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 13, i32 0, ptr @arizona_ldo1_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 24000, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 528, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO1\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LDOVDD\00", [25 x i8] zeroinitializer }, align 32
@arizona_ldo1_hc_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @arizona_ldo1_hc_set_voltage_sel, ptr null, ptr @arizona_ldo1_hc_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@arizona_ldo1_hc_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 6, i32 50000 }, %struct.linear_range { i32 1800000, i32 7, i32 7, i32 0 }], [32 x i8] zeroinitializer }, align 32
@arizona_ldo1_dvfs = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 1200000, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 9, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arizona_ldo1_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@arizona_ldo1_wm5110 = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 1175000, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 9, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arizona_ldo1_default = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wlf,ldoena\00", [21 x i8] zeroinitializer }, align 32
@arizona_ldo1_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 286, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register LDO1 supply: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arizona_ldo1_common_init\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/regulator/arizona-ldo1.c\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arizona_ldo1_common_init._entry_ptr = internal global ptr @arizona_ldo1_common_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DCVDD-supply\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"madera-ldo1\00", [20 x i8] zeroinitializer }, align 32
@madera_ldo1 = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.1, ptr @.str.2, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 13, i32 0, ptr @arizona_ldo1_ops, i32 0, i32 0, ptr null, i32 900000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 528, i32 2016, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 3000, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@madera_ldo1_default = internal constant { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 1200000, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"madera_ldo1_drivers\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 394, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"arizona_ldo1_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 378, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"madera_ldo1_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 386, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 382, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"arizona_ldo1_hc\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 95, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"arizona_ldo1\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 121, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 96, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 97, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"arizona_ldo1_hc_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 81, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"arizona_ldo1_hc_ranges\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 90, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"arizona_ldo1_dvfs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 138, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"arizona_ldo1_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 114, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"arizona_ldo1_wm5110\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 155, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"arizona_ldo1_default\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 148, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 238, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 260, i32 52 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 285, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 200, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 201, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 390, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"madera_ldo1\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 165, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"madera_ldo1_default\00", align 1
@___asan_gen_.96 = private constant [36 x i8] c"../drivers/regulator/arizona-ldo1.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 181, i32 41 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_madera_ldo1_exit, ptr @__initcall__kmod_arizona_ldo1__288_404_arizona_ldo1_init6, ptr @arizona_ldo1_common_init._entry, ptr @arizona_ldo1_common_init._entry_ptr, ptr @madera_ldo1_exit, ptr @madera_ldo1_drivers, ptr @arizona_ldo1_driver, ptr @madera_ldo1_driver, ptr @.str, ptr @arizona_ldo1_hc, ptr @arizona_ldo1, ptr @.str.1, ptr @.str.2, ptr @arizona_ldo1_hc_ops, ptr @arizona_ldo1_hc_ranges, ptr @arizona_ldo1_dvfs, ptr @arizona_ldo1_ops, ptr @arizona_ldo1_wm5110, ptr @arizona_ldo1_default, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @madera_ldo1, ptr @madera_ldo1_default], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_ldo1_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_ldo1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_hc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_hc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_hc_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_dvfs to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_wm5110 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_default to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_ldo1_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_ldo1 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_ldo1_default to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_ldo1_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @madera_ldo1_drivers, i32 noundef 2, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @madera_ldo1_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_unregister_drivers(ptr noundef nonnull @madera_ldo1_drivers, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_ldo1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %external_dcvdd = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %external_dcvdd) #5
  %4 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %external_dcvdd, align 1, !annotation !74
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %regmap3 = getelementptr inbounds %struct.arizona_ldo1, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regmap3, align 4
  %type = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge28
    i32 5, label %if.end.sw.bb_crit_edge29
    i32 6, label %if.end.sw.bb_crit_edge30
    i32 2, label %if.end.sw.bb4_crit_edge
    i32 4, label %if.end.sw.bb4_crit_edge31
  ]

if.end.sw.bb4_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb_crit_edge30:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge29:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge28:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge28, %if.end.sw.bb_crit_edge29, %if.end.sw.bb_crit_edge30
  %init_data = getelementptr inbounds %struct.arizona_ldo1, ptr %call.i, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %init_data, ptr @arizona_ldo1_dvfs, i32 228)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge31
  %init_data5 = getelementptr inbounds %struct.arizona_ldo1, ptr %call.i, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %init_data5, ptr @arizona_ldo1_wm5110, i32 228)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %init_data6 = getelementptr inbounds %struct.arizona_ldo1, ptr %call.i, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %init_data6, ptr @arizona_ldo1_default, i32 228)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %desc.0 = phi ptr [ @arizona_ldo1, %sw.default ], [ @arizona_ldo1, %sw.bb4 ], [ @arizona_ldo1_hc, %sw.bb ]
  %ldo17 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 8, i32 2
  %call8 = call fastcc i32 @arizona_ldo1_common_init(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull %desc.0, ptr noundef %ldo17, ptr noundef nonnull %external_dcvdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then9, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %external_dcvdd, align 1, !range !75
  %external_dcvdd11 = getelementptr inbounds %struct.arizona, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %external_dcvdd11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %external_dcvdd11, align 4
  %bf.shl = shl nuw i8 %15, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %external_dcvdd11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call8, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %external_dcvdd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_ldo1_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ena_gpiod = getelementptr inbounds %struct.arizona_ldo1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ena_gpiod, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_put(ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_ldo1_common_init(ptr noundef %pdev, ptr noundef %ldo1, ptr noundef %desc, ptr nocapture noundef %pdata, ptr nocapture noundef writeonly %external_dcvdd) unnamed_addr #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %2 = getelementptr inbounds i8, ptr %config, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %4 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %external_dcvdd, align 1
  %supply = getelementptr inbounds %struct.arizona_ldo1, ptr %ldo1, i32 0, i32 2
  %supply1 = getelementptr inbounds %struct.arizona_ldo1, ptr %ldo1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %supply1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.6, ptr %supply1, align 4
  %init_data = getelementptr inbounds %struct.arizona_ldo1, ptr %ldo1, i32 0, i32 3
  %consumer_supplies = getelementptr inbounds %struct.arizona_ldo1, ptr %ldo1, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %consumer_supplies to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %supply, ptr %consumer_supplies, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %entry.dev_name.exit_crit_edge ]
  %11 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %supply, align 4
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %config, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ldo1, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.arizona_ldo1, ptr %ldo1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %regmap5 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %16 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %regmap5, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then, label %dev_name.exit.if.end9_crit_edge

dev_name.exit.if.end9_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %dev_name.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %20, ptr noundef nonnull @.str.13) #5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %21 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.i:                          ; preds = %if.then
  %22 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool.not.i67 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i67, label %if.else.i, label %of_parse_phandle.exit.i.if.then.i_crit_edge

of_parse_phandle.exit.i.if.then.i_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool.not2.i = icmp eq ptr %call.i, null
  br i1 %tobool.not2.i, label %of_parse_phandle.exit.thread.i.arizona_ldo1_of_get_pdata.exit_crit_edge, label %of_parse_phandle.exit.thread.i.if.then.i_crit_edge

of_parse_phandle.exit.thread.i.if.then.i_crit_edge: ; preds = %of_parse_phandle.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

of_parse_phandle.exit.thread.i.arizona_ldo1_of_get_pdata.exit_crit_edge: ; preds = %of_parse_phandle.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_ldo1_of_get_pdata.exit

if.then.i:                                        ; preds = %of_parse_phandle.exit.thread.i.if.then.i_crit_edge, %of_parse_phandle.exit.i.if.then.i_crit_edge
  %retval.0.i3.i = phi ptr [ null, %of_parse_phandle.exit.thread.i.if.then.i_crit_edge ], [ %23, %of_parse_phandle.exit.i.if.then.i_crit_edge ]
  %of_node2.i = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %24 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %of_node2.i, align 4
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 4
  %call4.i = call ptr @of_get_regulator_init_data(ptr noundef %26, ptr noundef nonnull %call.i, ptr noundef %desc) #5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then.i.arizona_ldo1_of_get_pdata.exit_crit_edge, label %if.then6.i

if.then.i.arizona_ldo1_of_get_pdata.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_ldo1_of_get_pdata.exit

if.then6.i:                                       ; preds = %if.then.i
  %consumer_supplies.i = getelementptr inbounds %struct.regulator_init_data, ptr %call4.i, i32 0, i32 3
  %27 = ptrtoint ptr %consumer_supplies.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %supply, ptr %consumer_supplies.i, align 4
  %num_consumer_supplies.i = getelementptr inbounds %struct.regulator_init_data, ptr %call4.i, i32 0, i32 2
  %28 = ptrtoint ptr %num_consumer_supplies.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %num_consumer_supplies.i, align 4
  %tobool7.not.i = icmp eq ptr %retval.0.i3.i, null
  %cmp.not.i = icmp eq ptr %retval.0.i3.i, %call.i
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.then6.i.if.end.i68_crit_edge, label %if.then8.i

if.then6.i.if.end.i68_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i68

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %external_dcvdd, align 1
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then8.i, %if.then6.i.if.end.i68_crit_edge
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call4.i, ptr %pdata, align 4
  br label %arizona_ldo1_of_get_pdata.exit

if.else.i:                                        ; preds = %of_parse_phandle.exit.i
  %tobool11.not.i = icmp eq ptr %23, null
  br i1 %tobool11.not.i, label %if.else.i.arizona_ldo1_of_get_pdata.exit_crit_edge, label %if.then12.i

if.else.i.arizona_ldo1_of_get_pdata.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %arizona_ldo1_of_get_pdata.exit

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %external_dcvdd, align 1
  br label %arizona_ldo1_of_get_pdata.exit

arizona_ldo1_of_get_pdata.exit:                   ; preds = %if.then12.i, %if.else.i.arizona_ldo1_of_get_pdata.exit_crit_edge, %if.end.i68, %if.then.i.arizona_ldo1_of_get_pdata.exit_crit_edge, %of_parse_phandle.exit.thread.i.arizona_ldo1_of_get_pdata.exit_crit_edge
  %retval.0.i4.i = phi ptr [ null, %if.else.i.arizona_ldo1_of_get_pdata.exit_crit_edge ], [ %23, %if.then12.i ], [ %retval.0.i3.i, %if.then.i.arizona_ldo1_of_get_pdata.exit_crit_edge ], [ %retval.0.i3.i, %if.end.i68 ], [ null, %of_parse_phandle.exit.thread.i.arizona_ldo1_of_get_pdata.exit_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i4.i) #5
  br label %if.end9

if.end9:                                          ; preds = %arizona_ldo1_of_get_pdata.exit, %dev_name.exit.if.end9_crit_edge
  %call10 = call ptr @gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 19) #5
  %ena_gpiod = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 5
  %32 = ptrtoint ptr %ena_gpiod to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call10, ptr %ena_gpiod, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %ena_gpiod18 = getelementptr inbounds %struct.arizona_ldo1, ptr %ldo1, i32 0, i32 4
  %34 = ptrtoint ptr %ena_gpiod18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call10, ptr %ena_gpiod18, align 4
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata, align 4
  %tobool20.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool20.not, ptr %init_data, ptr %36
  %37 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %spec.select, ptr %37, align 4
  %num_consumer_supplies = getelementptr inbounds %struct.regulator_init_data, ptr %spec.select, i32 0, i32 2
  %39 = ptrtoint ptr %num_consumer_supplies to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_consumer_supplies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp28 = icmp eq i32 %40, 0
  br i1 %cmp28, label %if.then29, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %external_dcvdd, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end16.if.end30_crit_edge
  %call32 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %config) #5
  %42 = ptrtoint ptr %ldo1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call32, ptr %ldo1, align 4
  %of_node = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 4
  call void @of_node_put(ptr noundef %44) #5
  %45 = ptrtoint ptr %ldo1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ldo1, align 4
  %cmp.i69 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %47) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ldo1, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then35, %if.then13
  %retval.0 = phi i32 [ %33, %if.then13 ], [ %47, %if.then35 ], [ 0, %if.end39 ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_ldo1_hc_set_voltage_sel(ptr noundef %rdev, i32 noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #5
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_voltages, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sel)
  %cmp = icmp eq i32 %sub, %sel
  %. = zext i1 %cmp to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 530, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not = icmp ne i32 %call.i, 0
  %brmerge = select i1 %cmp2.not, i1 true, i1 %cmp
  br i1 %brmerge, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %rdev, i32 noundef %sel) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_ldo1_hc_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_regmap(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !74
  %call1 = call i32 @regmap_read(ptr noundef %call, i32 noundef 530, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_voltages, align 4
  %sub = add i32 %6, -1
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = call i32 @regulator_get_voltage_sel_regmap(ptr noundef %rdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then2 ], [ %call4, %if.end3 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_ldo1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %external_dcvdd = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %external_dcvdd) #5
  %4 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %external_dcvdd, align 1, !annotation !74
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %regmap3 = getelementptr inbounds %struct.arizona_ldo1, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regmap3, align 4
  %init_data = getelementptr inbounds %struct.arizona_ldo1, ptr %call.i, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %init_data, ptr @madera_ldo1_default, i32 228)
  %ldo14 = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 11, i32 1
  %call5 = call fastcc i32 @arizona_ldo1_common_init(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef nonnull @madera_ldo1, ptr noundef %ldo14, ptr noundef nonnull %external_dcvdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %external_dcvdd to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %external_dcvdd, align 1, !range !75
  %internal_dcvdd = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 9
  %11 = xor i8 %10, 1
  %12 = ptrtoint ptr %internal_dcvdd to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %internal_dcvdd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %external_dcvdd) #5
  ret i32 %retval.0
}

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_arizona_ldo1__288_404_arizona_ldo1_init6, !1, !"__initcall__kmod_arizona_ldo1__288_404_arizona_ldo1_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/arizona-ldo1.c", i32 404, i32 1}
!2 = !{ptr @__exitcall_madera_ldo1_exit, !3, !"__exitcall_madera_ldo1_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/arizona-ldo1.c", i32 411, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/arizona-ldo1.c", i32 414, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/arizona-ldo1.c", i32 415, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/arizona-ldo1.c", i32 416, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias293, !12, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!12 = !{!"../drivers/regulator/arizona-ldo1.c", i32 417, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias294, !14, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!14 = !{!"../drivers/regulator/arizona-ldo1.c", i32 418, i32 1}
!15 = !{ptr @madera_ldo1_drivers, !16, !"madera_ldo1_drivers", i1 false, i1 false}
!16 = !{!"../drivers/regulator/arizona-ldo1.c", i32 394, i32 39}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/arizona-ldo1.c", i32 382, i32 11}
!19 = !{ptr @arizona_ldo1_driver, !20, !"arizona_ldo1_driver", i1 false, i1 false}
!20 = !{!"../drivers/regulator/arizona-ldo1.c", i32 378, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/arizona-ldo1.c", i32 96, i32 10}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/arizona-ldo1.c", i32 97, i32 17}
!25 = !{ptr @arizona_ldo1_hc, !26, !"arizona_ldo1_hc", i1 false, i1 false}
!26 = !{!"../drivers/regulator/arizona-ldo1.c", i32 95, i32 36}
!27 = !{ptr @arizona_ldo1_hc_ops, !28, !"arizona_ldo1_hc_ops", i1 false, i1 false}
!28 = !{!"../drivers/regulator/arizona-ldo1.c", i32 81, i32 35}
!29 = !{ptr @arizona_ldo1_hc_ranges, !30, !"arizona_ldo1_hc_ranges", i1 false, i1 false}
!30 = !{!"../drivers/regulator/arizona-ldo1.c", i32 90, i32 34}
!31 = !{ptr @arizona_ldo1_dvfs, !32, !"arizona_ldo1_dvfs", i1 false, i1 false}
!32 = !{!"../drivers/regulator/arizona-ldo1.c", i32 138, i32 41}
!33 = !{ptr @arizona_ldo1, !34, !"arizona_ldo1", i1 false, i1 false}
!34 = !{!"../drivers/regulator/arizona-ldo1.c", i32 121, i32 36}
!35 = !{ptr @arizona_ldo1_ops, !36, !"arizona_ldo1_ops", i1 false, i1 false}
!36 = !{!"../drivers/regulator/arizona-ldo1.c", i32 114, i32 35}
!37 = !{ptr @arizona_ldo1_wm5110, !38, !"arizona_ldo1_wm5110", i1 false, i1 false}
!38 = !{!"../drivers/regulator/arizona-ldo1.c", i32 155, i32 41}
!39 = !{ptr @arizona_ldo1_default, !40, !"arizona_ldo1_default", i1 false, i1 false}
!40 = !{!"../drivers/regulator/arizona-ldo1.c", i32 148, i32 41}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/arizona-ldo1.c", i32 238, i32 24}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/arizona-ldo1.c", i32 260, i32 52}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/arizona-ldo1.c", i32 285, i32 3}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @arizona_ldo1_common_init._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @arizona_ldo1_common_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/arizona-ldo1.c", i32 200, i32 39}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/arizona-ldo1.c", i32 201, i32 36}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/arizona-ldo1.c", i32 390, i32 11}
!59 = !{ptr @madera_ldo1_driver, !60, !"madera_ldo1_driver", i1 false, i1 false}
!60 = !{!"../drivers/regulator/arizona-ldo1.c", i32 386, i32 31}
!61 = !{ptr @madera_ldo1_default, !62, !"madera_ldo1_default", i1 false, i1 false}
!62 = !{!"../drivers/regulator/arizona-ldo1.c", i32 181, i32 41}
!63 = !{ptr @madera_ldo1, !64, !"madera_ldo1", i1 false, i1 false}
!64 = !{!"../drivers/regulator/arizona-ldo1.c", i32 165, i32 36}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i8 0, i8 2}
