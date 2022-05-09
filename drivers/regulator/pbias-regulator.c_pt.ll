; ModuleID = '/llk/IR_all_yes/drivers/regulator/pbias-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pbias-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pbias_reg_info = type { i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.pbias_of_data = type { i32 }
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
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_pbias_regulator__288_238_pbias_regulator_driver_init6 = internal global ptr @pbias_regulator_driver_init, section ".initcall6.init", align 4
@pbias_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pbias_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pbias_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pbias_regulator_driver_exit = internal global ptr @pbias_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [52 x i8] c"pbias_regulator.author=Balaji T K <balajitk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [52 x i8] c"pbias_regulator.description=pbias voltage regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"pbias_regulator.file=drivers/regulator/pbias-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [28 x i8] c"pbias_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [47 x i8] c"pbias_regulator.alias=platform:pbias-regulator\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pbias-regulator\00", [16 x i8] zeroinitializer }, align 32
@pbias_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-dra7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_dra7 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@pbias_matches = internal global { [4 x %struct.of_regulator_match], [48 x i8] } { [4 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.8, ptr @pbias_mmc_omap2430, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.9, ptr @pbias_sim_omap3, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr @pbias_mmc_omap4, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr @pbias_mmc_omap5, ptr null, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/regulator/pbias-regulator.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: using legacy dt data for pbias offset\0A\00", [50 x i8] zeroinitializer }, align 32
@pbias_regulator_voltage_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@pbias_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 220, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pbias_regulator_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pbias_regulator_probe._entry_ptr = internal global ptr @pbias_regulator_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pbias_mmc_omap2430\00", [45 x i8] zeroinitializer }, align 32
@pbias_mmc_omap2430 = internal constant { %struct.pbias_reg_info, [32 x i8] } { %struct.pbias_reg_info { i32 2, i32 2, i32 0, i32 1, i32 100, ptr @.str.8, ptr @pbias_volt_table_3_0V, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pbias_sim_omap3\00", [16 x i8] zeroinitializer }, align 32
@pbias_sim_omap3 = internal constant { %struct.pbias_reg_info, [32 x i8] } { %struct.pbias_reg_info { i32 512, i32 512, i32 0, i32 256, i32 100, ptr @.str.9, ptr @pbias_volt_table_3_0V, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pbias_mmc_omap4\00", [16 x i8] zeroinitializer }, align 32
@pbias_mmc_omap4 = internal constant { %struct.pbias_reg_info, [32 x i8] } { %struct.pbias_reg_info { i32 71303168, i32 104857600, i32 33554432, i32 2097152, i32 100, ptr @.str.10, ptr @pbias_volt_table_3_0V, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pbias_mmc_omap5\00", [16 x i8] zeroinitializer }, align 32
@pbias_mmc_omap5 = internal constant { %struct.pbias_reg_info, [32 x i8] } { %struct.pbias_reg_info { i32 201326592, i32 234881024, i32 33554432, i32 2097152, i32 100, ptr @.str.11, ptr @pbias_volt_table_3_3V, i32 2 }, [32 x i8] zeroinitializer }, align 32
@pbias_volt_table_3_0V = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 3000000], [24 x i8] zeroinitializer }, align 32
@pbias_volt_table_3_3V = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 3300000], [24 x i8] zeroinitializer }, align 32
@pbias_of_data_omap2 = internal constant { %struct.pbias_of_data, [28 x i8] } { %struct.pbias_of_data { i32 560 }, [28 x i8] zeroinitializer }, align 32
@pbias_of_data_omap3 = internal constant { %struct.pbias_of_data, [28 x i8] } { %struct.pbias_of_data { i32 688 }, [28 x i8] zeroinitializer }, align 32
@pbias_of_data_omap4 = internal constant { %struct.pbias_of_data, [28 x i8] } { %struct.pbias_of_data { i32 96 }, [28 x i8] zeroinitializer }, align 32
@pbias_of_data_omap5 = internal constant { %struct.pbias_of_data, [28 x i8] } { %struct.pbias_of_data { i32 96 }, [28 x i8] zeroinitializer }, align 32
@pbias_of_data_dra7 = internal constant { %struct.pbias_of_data, [28 x i8] } { %struct.pbias_of_data { i32 3584 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"pbias_regulator_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 230, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 233, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"pbias_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 137, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"pbias_matches\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 107, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 170, i32 47 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 183, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"pbias_regulator_voltage_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 55, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 219, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 108, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"pbias_mmc_omap2430\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 64, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 109, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"pbias_sim_omap3\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 75, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 110, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"pbias_mmc_omap4\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 85, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 111, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"pbias_mmc_omap5\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 96, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"pbias_volt_table_3_0V\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 45, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"pbias_volt_table_3_3V\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 50, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"pbias_of_data_omap2\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 117, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"pbias_of_data_omap3\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 121, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"pbias_of_data_omap4\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 125, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c"pbias_of_data_omap5\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 129, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"pbias_of_data_dra7\00", align 1
@___asan_gen_.94 = private constant [39 x i8] c"../drivers/regulator/pbias-regulator.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 133, i32 35 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pbias_regulator_driver_exit, ptr @__initcall__kmod_pbias_regulator__288_238_pbias_regulator_driver_init6, ptr @pbias_regulator_driver_exit, ptr @pbias_regulator_probe._entry, ptr @pbias_regulator_probe._entry_ptr, ptr @pbias_regulator_driver, ptr @.str, ptr @pbias_of_match, ptr @pbias_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pbias_regulator_voltage_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pbias_mmc_omap2430, ptr @.str.9, ptr @pbias_sim_omap3, ptr @.str.10, ptr @pbias_mmc_omap4, ptr @.str.11, ptr @pbias_mmc_omap5, ptr @pbias_volt_table_3_0V, ptr @pbias_volt_table_3_3V, ptr @pbias_of_data_omap2, ptr @pbias_of_data_omap3, ptr @pbias_of_data_omap4, ptr @pbias_of_data_omap5, ptr @pbias_of_data_dra7], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_matches to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_regulator_voltage_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_mmc_omap2430 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_sim_omap3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_mmc_omap4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_mmc_omap5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_volt_table_3_0V to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_volt_table_3_3V to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_of_data_omap2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_of_data_omap3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_of_data_omap4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_of_data_omap5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbias_of_data_dra7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pbias_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pbias_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pbias_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pbias_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pbias_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #6
  %2 = getelementptr inbounds i8, ptr %cfg, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call = tail call i32 @of_regulator_match(ptr noundef %dev, ptr noundef %1, ptr noundef nonnull @pbias_matches, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 244) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !73

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end5

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %devm_kcalloc.exit
  %call6 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call12 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call12, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end10
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else.cleanup_crit_edge, label %if.end19

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.else
  %10 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call16, align 4
  %call26 = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end19.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 184, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %call26, ptr noundef %retval.0.i) #6
  br label %if.end41

if.end41:                                         ; preds = %dev_name.exit, %if.then14
  %offset.0 = phi i32 [ %9, %if.then14 ], [ %11, %dev_name.exit ]
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call6, ptr %regmap, align 4
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool45.not142 = icmp eq i32 %call, 0
  br i1 %tobool45.not142, label %if.end41.cleanup_crit_edge, label %for.body.lr.ph

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end41
  %init_data63 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %of_node66 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0145 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %count.0144 = phi i32 [ %call, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %desc.0143 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %desc.1, %for.inc.for.body_crit_edge ]
  %init_data = getelementptr [4 x %struct.of_regulator_match], ptr @pbias_matches, i32 0, i32 %idx.0145, i32 2
  %18 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_data, align 4
  %tobool46.not = icmp eq ptr %19, null
  br i1 %tobool46.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %of_node48 = getelementptr [4 x %struct.of_regulator_match], ptr @pbias_matches, i32 0, i32 %idx.0145, i32 3
  %20 = ptrtoint ptr %of_node48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node48, align 4
  %tobool49.not = icmp eq ptr %21, null
  br i1 %tobool49.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end51

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end51:                                         ; preds = %lor.lhs.false
  %driver_data = getelementptr [4 x %struct.of_regulator_match], ptr @pbias_matches, i32 0, i32 %idx.0145, i32 1
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data, align 4
  %tobool53.not = icmp eq ptr %23, null
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %if.end55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %name = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %26 = ptrtoint ptr %desc.0143 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %desc.0143, align 4
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 13
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 12
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %type, align 4
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 10
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pbias_regulator_voltage_ops, ptr %ops, align 4
  %pbias_volt_table = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 6
  %30 = ptrtoint ptr %pbias_volt_table to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pbias_volt_table, align 4
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 23
  %32 = ptrtoint ptr %volt_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %volt_table, align 4
  %n_voltages = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 7
  %33 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_voltages, align 4
  %n_voltages57 = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 8
  %35 = ptrtoint ptr %n_voltages57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %n_voltages57, align 4
  %enable_time = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 4
  %36 = ptrtoint ptr %enable_time to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enable_time, align 4
  %enable_time58 = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 57
  %38 = ptrtoint ptr %enable_time58 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %enable_time58, align 4
  %vsel_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 27
  %39 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %offset.0, ptr %vsel_reg, align 4
  %vmode = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 3
  %40 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vmode, align 4
  %vsel_mask = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 28
  %42 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %vsel_mask, align 4
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 34
  %43 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %offset.0, ptr %enable_reg, align 4
  %enable_mask = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 1
  %44 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %enable_mask, align 4
  %enable_mask59 = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 35
  %46 = ptrtoint ptr %enable_mask59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %enable_mask59, align 4
  %47 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %23, align 4
  %enable_val = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 36
  %49 = ptrtoint ptr %enable_val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %enable_val, align 4
  %disable_val = getelementptr inbounds %struct.pbias_reg_info, ptr %23, i32 0, i32 2
  %50 = ptrtoint ptr %disable_val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %disable_val, align 4
  %disable_val60 = getelementptr inbounds %struct.regulator_desc, ptr %desc.0143, i32 0, i32 37
  %52 = ptrtoint ptr %disable_val60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %disable_val60, align 4
  %53 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_data, align 4
  %55 = ptrtoint ptr %init_data63 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %init_data63, align 4
  %56 = ptrtoint ptr %of_node48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node48, align 4
  %58 = ptrtoint ptr %of_node66 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %of_node66, align 4
  %call68 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc.0143, ptr noundef nonnull %cfg) #6
  %cmp.i139 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then70, label %if.end76

if.then70:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %59) #9
  br label %cleanup

if.end76:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr %struct.regulator_desc, ptr %desc.0143, i32 1
  %dec = add i32 %count.0144, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end76, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %desc.1 = phi ptr [ %incdec.ptr, %if.end76 ], [ %desc.0143, %lor.lhs.false.for.inc_crit_edge ], [ %desc.0143, %for.body.for.inc_crit_edge ]
  %count.1 = phi i32 [ %dec, %if.end76 ], [ %count.0144, %lor.lhs.false.for.inc_crit_edge ], [ %count.0144, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %idx.0145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.0145)
  %cmp44 = icmp ugt i32 %idx.0145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool45.not = icmp eq i32 %count.1, 0
  %or.cond = select i1 %cmp44, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then70, %if.end51.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then8, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %59, %if.then70 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ -19, %if.end51.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_pbias_regulator__288_238_pbias_regulator_driver_init6, !1, !"__initcall__kmod_pbias_regulator__288_238_pbias_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/pbias-regulator.c", i32 238, i32 1}
!2 = !{ptr @__exitcall_pbias_regulator_driver_exit, !1, !"__exitcall_pbias_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/pbias-regulator.c", i32 240, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/pbias-regulator.c", i32 241, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/pbias-regulator.c", i32 242, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/pbias-regulator.c", i32 243, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/pbias-regulator.c", i32 233, i32 12}
!14 = !{ptr @pbias_regulator_driver, !15, !"pbias_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/pbias-regulator.c", i32 230, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/pbias-regulator.c", i32 170, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/pbias-regulator.c", i32 183, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/pbias-regulator.c", i32 219, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pbias_regulator_probe._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @pbias_regulator_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/regulator/pbias-regulator.c", i32 108, i32 12}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/pbias-regulator.c", i32 109, i32 12}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/pbias-regulator.c", i32 110, i32 12}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/regulator/pbias-regulator.c", i32 111, i32 12}
!36 = !{ptr @pbias_matches, !37, !"pbias_matches", i1 false, i1 false}
!37 = !{!"../drivers/regulator/pbias-regulator.c", i32 107, i32 34}
!38 = !{ptr @pbias_mmc_omap2430, !39, !"pbias_mmc_omap2430", i1 false, i1 false}
!39 = !{!"../drivers/regulator/pbias-regulator.c", i32 64, i32 36}
!40 = !{ptr @pbias_volt_table_3_0V, !41, !"pbias_volt_table_3_0V", i1 false, i1 false}
!41 = !{!"../drivers/regulator/pbias-regulator.c", i32 45, i32 27}
!42 = !{ptr @pbias_sim_omap3, !43, !"pbias_sim_omap3", i1 false, i1 false}
!43 = !{!"../drivers/regulator/pbias-regulator.c", i32 75, i32 36}
!44 = !{ptr @pbias_mmc_omap4, !45, !"pbias_mmc_omap4", i1 false, i1 false}
!45 = !{!"../drivers/regulator/pbias-regulator.c", i32 85, i32 36}
!46 = !{ptr @pbias_mmc_omap5, !47, !"pbias_mmc_omap5", i1 false, i1 false}
!47 = !{!"../drivers/regulator/pbias-regulator.c", i32 96, i32 36}
!48 = !{ptr @pbias_volt_table_3_3V, !49, !"pbias_volt_table_3_3V", i1 false, i1 false}
!49 = !{!"../drivers/regulator/pbias-regulator.c", i32 50, i32 27}
!50 = !{ptr @pbias_regulator_voltage_ops, !51, !"pbias_regulator_voltage_ops", i1 false, i1 false}
!51 = !{!"../drivers/regulator/pbias-regulator.c", i32 55, i32 35}
!52 = !{ptr @pbias_of_match, !53, !"pbias_of_match", i1 false, i1 false}
!53 = !{!"../drivers/regulator/pbias-regulator.c", i32 137, i32 34}
!54 = !{ptr @pbias_of_data_omap2, !55, !"pbias_of_data_omap2", i1 false, i1 false}
!55 = !{!"../drivers/regulator/pbias-regulator.c", i32 117, i32 35}
!56 = !{ptr @pbias_of_data_omap3, !57, !"pbias_of_data_omap3", i1 false, i1 false}
!57 = !{!"../drivers/regulator/pbias-regulator.c", i32 121, i32 35}
!58 = !{ptr @pbias_of_data_omap4, !59, !"pbias_of_data_omap4", i1 false, i1 false}
!59 = !{!"../drivers/regulator/pbias-regulator.c", i32 125, i32 35}
!60 = !{ptr @pbias_of_data_omap5, !61, !"pbias_of_data_omap5", i1 false, i1 false}
!61 = !{!"../drivers/regulator/pbias-regulator.c", i32 129, i32 35}
!62 = !{ptr @pbias_of_data_dra7, !63, !"pbias_of_data_dra7", i1 false, i1 false}
!63 = !{!"../drivers/regulator/pbias-regulator.c", i32 133, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
