; ModuleID = '/llk/IR_all_yes/drivers/regulator/tps65086-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65086-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.tps65086_regulator = type { %struct.regulator_desc, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.tps65086 = type { ptr, ptr, i32, ptr }

@__initcall__kmod_tps65086_regulator__288_250_tps65086_regulator_driver_init6 = internal global ptr @tps65086_regulator_driver_init, section ".initcall6.init", align 4
@tps65086_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tps65086_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65086_regulator_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tps65086_regulator_driver_exit = internal global ptr @tps65086_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"tps65086_regulator.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [57 x i8] c"tps65086_regulator.description=TPS65086 Regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"tps65086_regulator.file=drivers/regulator/tps65086-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"tps65086_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps65086-regulator\00", [45 x i8] zeroinitializer }, align 32
@tps65086_regulator_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"tps65086-regulator\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@regulators = internal global { [13 x %struct.tps65086_regulator], [820 x i8] } { [13 x %struct.tps65086_regulator] [%struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 0, i8 0, i32 128, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_10mv_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 32, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 156, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 32, i32 1 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.10, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 1, i8 0, i32 128, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_10mv_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 156, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 33, i32 1 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.12, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 2, i8 0, i32 128, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_10mv_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 156, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 34, i32 1 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 3, i8 0, i32 128, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_10mv_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 148, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 37, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 148, i32 1 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 4, i8 0, i32 128, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_10mv_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 150, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 38, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 38, i32 1 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.18, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 5, i8 0, i32 128, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_10mv_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 152, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 39, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 39, i32 1 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.20, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 6, i8 0, i32 15, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_ldoa1_ranges, ptr null, i32 5, ptr null, ptr null, i32 0, i32 0, i32 174, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 174, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.22, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 7, i8 0, i32 16, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_ldoa23_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 154, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.24, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 8, i8 0, i32 16, i32 0, ptr @reg_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65086_ldoa23_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 155, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 41, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.26, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 9, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 159, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.28, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 10, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 159, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.30, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 11, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 159, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }, %struct.tps65086_regulator { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.32, i8 0, ptr @.str.8, ptr @tps65086_of_parse_cb, i32 12, i8 0, i32 0, i32 0, ptr @switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 159, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i32 0, i32 0 }], [820 x i8] zeroinitializer }, align 32
@tps65086_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register %s regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tps65086_regulator_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/regulator/tps65086-regulator.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps65086_regulator_probe._entry_ptr = internal global ptr @tps65086_regulator_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK1\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@reg_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tps65086_10mv_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 410000, i32 1, i32 127, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK2\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck2\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK3\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck3\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK4\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck4\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK5\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck5\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUCK6\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"buck6\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDOA1\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldoa1\00", [26 x i8] zeroinitializer }, align 32
@tps65086_ldoa1_ranges = internal constant { [5 x %struct.linear_range], [48 x i8] } { [5 x %struct.linear_range] [%struct.linear_range { i32 1350000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 1500000, i32 1, i32 7, i32 100000 }, %struct.linear_range { i32 2300000, i32 8, i32 11, i32 100000 }, %struct.linear_range { i32 2850000, i32 12, i32 13, i32 150000 }, %struct.linear_range { i32 3300000, i32 14, i32 14, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDOA2\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldoa2\00", [26 x i8] zeroinitializer }, align 32
@tps65086_ldoa23_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 13, i32 50000 }, %struct.linear_range { i32 1400000, i32 14, i32 15, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDOA3\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldoa3\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWA1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swa1\00", [27 x i8] zeroinitializer }, align 32
@switch_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWB1\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swb1\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWB2\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swb2\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VTT\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vtt\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti,regulator-step-size-25mv\00", [36 x i8] zeroinitializer }, align 32
@tps65086_buck126_25mv_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 1000000, i32 1, i32 24, i32 0 }, %struct.linear_range { i32 1025000, i32 25, i32 127, i32 25000 }], [48 x i8] zeroinitializer }, align 32
@tps65086_buck345_25mv_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 425000, i32 1, i32 127, i32 25000 }], [32 x i8] zeroinitializer }, align 32
@tps65086_of_parse_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 191, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"25mV step mode only valid for BUCK regulators\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps65086_of_parse_cb\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tps65086_of_parse_cb._entry_ptr = internal global ptr @tps65086_of_parse_cb._entry, section ".printk_index", align 4
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,regulator-decay\00", [45 x i8] zeroinitializer }, align 32
@tps65086_of_parse_cb._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error setting decay\0A\00", [43 x i8] zeroinitializer }, align 32
@tps65086_of_parse_cb._entry_ptr.40 = internal global ptr @tps65086_of_parse_cb._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"tps65086_regulator_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 243, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 245, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"tps65086_regulator_id_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 237, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 125, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 228, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 126, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"reg_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 104, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"tps65086_10mv_ranges\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 74, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 130, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 134, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 138, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 142, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 146, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 150, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"tps65086_ldoa1_ranges\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 90, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 153, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"tps65086_ldoa23_ranges\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 98, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 156, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 159, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [11 x i8] c"switch_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 115, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 160, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 161, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 162, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 172, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [29 x i8] c"tps65086_buck126_25mv_ranges\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 79, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant [29 x i8] c"tps65086_buck345_25mv_ranges\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 85, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 191, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 196, i32 55 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [42 x i8] c"../drivers/regulator/tps65086-regulator.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 202, i32 4 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tps65086_regulator_driver_exit, ptr @__initcall__kmod_tps65086_regulator__288_250_tps65086_regulator_driver_init6, ptr @tps65086_of_parse_cb._entry, ptr @tps65086_of_parse_cb._entry.38, ptr @tps65086_of_parse_cb._entry_ptr, ptr @tps65086_of_parse_cb._entry_ptr.40, ptr @tps65086_regulator_driver_exit, ptr @tps65086_regulator_probe._entry, ptr @tps65086_regulator_probe._entry_ptr, ptr @tps65086_regulator_driver, ptr @.str, ptr @tps65086_regulator_id_table, ptr @regulators, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @reg_ops, ptr @tps65086_10mv_ranges, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tps65086_ldoa1_ranges, ptr @.str.21, ptr @.str.22, ptr @tps65086_ldoa23_ranges, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @tps65086_buck126_25mv_ranges, ptr @tps65086_buck345_25mv_ranges, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_regulator_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulators to i32), i32 3276, i32 4096, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_10mv_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_ldoa1_ranges to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_ldoa23_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_buck126_25mv_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_buck345_25mv_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_of_parse_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps65086_of_parse_cb._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65086_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65086_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps65086_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65086_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65086_regulator_probe(ptr noundef %pdev) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %4 = getelementptr inbounds i8, ptr %config, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 20)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %config, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node5, align 8
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.tps65086, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %regmap6 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %16 = ptrtoint ptr %regmap6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %regmap6, align 4
  %call8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @regulators, ptr noundef nonnull %config) #5
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %for.cond

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond:                                         ; preds = %entry
  %call8.1 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 1), ptr noundef nonnull %config) #5
  %cmp.i.1 = icmp ugt ptr %call8.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %call8.2 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 2), ptr noundef nonnull %config) #5
  %cmp.i.2 = icmp ugt ptr %call8.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %call8.3 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 3), ptr noundef nonnull %config) #5
  %cmp.i.3 = icmp ugt ptr %call8.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %call8.4 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 4), ptr noundef nonnull %config) #5
  %cmp.i.4 = icmp ugt ptr %call8.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.cond.3.do.end_crit_edge, label %for.cond.4

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.4:                                       ; preds = %for.cond.3
  %call8.5 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 5), ptr noundef nonnull %config) #5
  %cmp.i.5 = icmp ugt ptr %call8.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.cond.4.do.end_crit_edge, label %for.cond.5

for.cond.4.do.end_crit_edge:                      ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.4
  %call8.6 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 6), ptr noundef nonnull %config) #5
  %cmp.i.6 = icmp ugt ptr %call8.6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6, label %for.cond.5.do.end_crit_edge, label %for.cond.6

for.cond.5.do.end_crit_edge:                      ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.6:                                       ; preds = %for.cond.5
  %call8.7 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 7), ptr noundef nonnull %config) #5
  %cmp.i.7 = icmp ugt ptr %call8.7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7, label %for.cond.6.do.end_crit_edge, label %for.cond.7

for.cond.6.do.end_crit_edge:                      ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.7:                                       ; preds = %for.cond.6
  %call8.8 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 8), ptr noundef nonnull %config) #5
  %cmp.i.8 = icmp ugt ptr %call8.8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.8, label %for.cond.7.do.end_crit_edge, label %for.cond.8

for.cond.7.do.end_crit_edge:                      ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.8:                                       ; preds = %for.cond.7
  %call8.9 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 9), ptr noundef nonnull %config) #5
  %cmp.i.9 = icmp ugt ptr %call8.9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.9, label %for.cond.8.do.end_crit_edge, label %for.cond.9

for.cond.8.do.end_crit_edge:                      ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.9:                                       ; preds = %for.cond.8
  %call8.10 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 10), ptr noundef nonnull %config) #5
  %cmp.i.10 = icmp ugt ptr %call8.10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.10, label %for.cond.9.do.end_crit_edge, label %for.cond.10

for.cond.9.do.end_crit_edge:                      ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.10:                                      ; preds = %for.cond.9
  %call8.11 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 11), ptr noundef nonnull %config) #5
  %cmp.i.11 = icmp ugt ptr %call8.11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.11, label %for.cond.10.do.end_crit_edge, label %for.cond.11

for.cond.10.do.end_crit_edge:                     ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.11:                                      ; preds = %for.cond.10
  %call8.12 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef getelementptr inbounds ([13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 12), ptr noundef nonnull %config) #5
  %cmp.i.12 = icmp ugt ptr %call8.12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.12, label %for.cond.11.do.end_crit_edge, label %for.cond.11.cleanup_crit_edge

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.11.do.end_crit_edge:                     ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.cond.11.do.end_crit_edge, %for.cond.10.do.end_crit_edge, %for.cond.9.do.end_crit_edge, %for.cond.8.do.end_crit_edge, %for.cond.7.do.end_crit_edge, %for.cond.6.do.end_crit_edge, %for.cond.5.do.end_crit_edge, %for.cond.4.do.end_crit_edge, %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call8.lcssa = phi ptr [ %call8, %entry.do.end_crit_edge ], [ %call8.1, %for.cond.do.end_crit_edge ], [ %call8.2, %for.cond.1.do.end_crit_edge ], [ %call8.3, %for.cond.2.do.end_crit_edge ], [ %call8.4, %for.cond.3.do.end_crit_edge ], [ %call8.5, %for.cond.4.do.end_crit_edge ], [ %call8.6, %for.cond.5.do.end_crit_edge ], [ %call8.7, %for.cond.6.do.end_crit_edge ], [ %call8.8, %for.cond.7.do.end_crit_edge ], [ %call8.9, %for.cond.8.do.end_crit_edge ], [ %call8.10, %for.cond.9.do.end_crit_edge ], [ %call8.11, %for.cond.10.do.end_crit_edge ], [ %call8.12, %for.cond.11.do.end_crit_edge ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %20) #8
  %21 = ptrtoint ptr %call8.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.11.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end ], [ 0, %for.cond.11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps65086_of_parse_cb(ptr noundef %node, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.33, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %if.then.sw.bb_crit_edge
    i32 1, label %if.then.sw.bb_crit_edge48
    i32 5, label %if.then.sw.bb_crit_edge49
    i32 2, label %if.then.sw.bb6_crit_edge
    i32 3, label %if.then.sw.bb6_crit_edge50
    i32 4, label %if.then.sw.bb6_crit_edge51
  ]

if.then.sw.bb6_crit_edge51:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.then.sw.bb6_crit_edge50:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.then.sw.bb6_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

if.then.sw.bb_crit_edge49:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then.sw.bb_crit_edge48:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge48, %if.then.sw.bb_crit_edge49
  %linear_ranges = getelementptr [13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 %1, i32 0, i32 20
  %3 = ptrtoint ptr %linear_ranges to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tps65086_buck126_25mv_ranges, ptr %linear_ranges, align 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %n_linear_ranges = getelementptr [13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 %5, i32 0, i32 22
  %6 = ptrtoint ptr %n_linear_ranges to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %n_linear_ranges, align 4
  br label %if.end

sw.bb6:                                           ; preds = %if.then.sw.bb6_crit_edge, %if.then.sw.bb6_crit_edge50, %if.then.sw.bb6_crit_edge51
  %linear_ranges10 = getelementptr [13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 %1, i32 0, i32 20
  %7 = ptrtoint ptr %linear_ranges10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tps65086_buck345_25mv_ranges, ptr %linear_ranges10, align 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %n_linear_ranges14 = getelementptr [13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 %9, i32 0, i32 22
  %10 = ptrtoint ptr %n_linear_ranges14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %n_linear_ranges14, align 4
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.34) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb6, %sw.bb, %entry.if.end_crit_edge
  %id15 = getelementptr inbounds %struct.regulator_desc, ptr %desc, i32 0, i32 6
  %13 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp = icmp slt i32 %14, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call.i45 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.37, ptr noundef null) #5
  %tobool.i46.not = icmp eq ptr %call.i45, null
  br i1 %tobool.i46.not, label %land.lhs.true.cleanup_crit_edge, label %if.then17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  %regmap = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %id15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id15, align 4
  %decay_reg = getelementptr [13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 %18, i32 1
  %19 = ptrtoint ptr %decay_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %decay_reg, align 4
  %decay_mask = getelementptr [13 x %struct.tps65086_regulator], ptr @regulators, i32 0, i32 %18, i32 2
  %21 = ptrtoint ptr %decay_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %decay_mask, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %20, i32 noundef %22, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not = icmp eq i32 %call.i47, 0
  br i1 %tobool.not, label %if.then17.cleanup_crit_edge, label %do.end29

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.39) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.then17.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i47, %do.end29 ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

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
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !69, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_tps65086_regulator__288_250_tps65086_regulator_driver_init6, !1, !"__initcall__kmod_tps65086_regulator__288_250_tps65086_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/tps65086-regulator.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_tps65086_regulator_driver_exit, !1, !"__exitcall_tps65086_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/tps65086-regulator.c", i32 252, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/tps65086-regulator.c", i32 253, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/tps65086-regulator.c", i32 254, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/tps65086-regulator.c", i32 245, i32 11}
!12 = !{ptr @tps65086_regulator_driver, !13, !"tps65086_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/tps65086-regulator.c", i32 243, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/tps65086-regulator.c", i32 228, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tps65086_regulator_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tps65086_regulator_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/regulator/tps65086-regulator.c", i32 126, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/tps65086-regulator.c", i32 130, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/tps65086-regulator.c", i32 134, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/tps65086-regulator.c", i32 138, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/tps65086-regulator.c", i32 142, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/tps65086-regulator.c", i32 146, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/tps65086-regulator.c", i32 150, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/tps65086-regulator.c", i32 153, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/tps65086-regulator.c", i32 156, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/tps65086-regulator.c", i32 159, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/tps65086-regulator.c", i32 160, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/tps65086-regulator.c", i32 161, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/tps65086-regulator.c", i32 162, i32 2}
!61 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @regulators, !63, !"regulators", i1 false, i1 false}
!63 = !{!"../drivers/regulator/tps65086-regulator.c", i32 125, i32 34}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/tps65086-regulator.c", i32 172, i32 34}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/tps65086-regulator.c", i32 191, i32 4}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tps65086_of_parse_cb._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @tps65086_of_parse_cb._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/tps65086-regulator.c", i32 196, i32 55}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/tps65086-regulator.c", i32 202, i32 4}
!76 = !{ptr @tps65086_of_parse_cb._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tps65086_of_parse_cb._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @tps65086_buck126_25mv_ranges, !79, !"tps65086_buck126_25mv_ranges", i1 false, i1 false}
!79 = !{!"../drivers/regulator/tps65086-regulator.c", i32 79, i32 34}
!80 = !{ptr @tps65086_buck345_25mv_ranges, !81, !"tps65086_buck345_25mv_ranges", i1 false, i1 false}
!81 = !{!"../drivers/regulator/tps65086-regulator.c", i32 85, i32 34}
!82 = !{ptr @reg_ops, !83, !"reg_ops", i1 false, i1 false}
!83 = !{!"../drivers/regulator/tps65086-regulator.c", i32 104, i32 35}
!84 = !{ptr @tps65086_10mv_ranges, !85, !"tps65086_10mv_ranges", i1 false, i1 false}
!85 = !{!"../drivers/regulator/tps65086-regulator.c", i32 74, i32 34}
!86 = !{ptr @tps65086_ldoa1_ranges, !87, !"tps65086_ldoa1_ranges", i1 false, i1 false}
!87 = !{!"../drivers/regulator/tps65086-regulator.c", i32 90, i32 34}
!88 = !{ptr @tps65086_ldoa23_ranges, !89, !"tps65086_ldoa23_ranges", i1 false, i1 false}
!89 = !{!"../drivers/regulator/tps65086-regulator.c", i32 98, i32 34}
!90 = !{ptr @switch_ops, !91, !"switch_ops", i1 false, i1 false}
!91 = !{!"../drivers/regulator/tps65086-regulator.c", i32 115, i32 35}
!92 = !{ptr @tps65086_regulator_id_table, !93, !"tps65086_regulator_id_table", i1 false, i1 false}
!93 = !{!"../drivers/regulator/tps65086-regulator.c", i32 237, i32 40}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
