; ModuleID = '/llk/IR_all_yes/drivers/regulator/as3711-regulator.c_pt.bc'
source_filename = "../drivers/regulator/as3711-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.as3711 = type { ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_as3711_regulator__288_254_as3711_regulator_init4 = internal global ptr @as3711_regulator_init, section ".initcall4.init", align 4
@as3711_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @as3711_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_as3711_regulator_exit = internal global ptr @as3711_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [70 x i8] c"as3711_regulator.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [53 x i8] c"as3711_regulator.description=AS3711 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [49 x i8] c"as3711_regulator.alias=platform:as3711-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [57 x i8] c"as3711_regulator.file=drivers/regulator/as3711-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [32 x i8] c"as3711_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as3711-regulator\00", [47 x i8] zeroinitializer }, align 32
@as3711_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No platform data...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/as3711-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as3711_regulator_probe._entry_ptr = internal global ptr @as3711_regulator_probe._entry, section ".printk_index", align 4
@as3711_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DT parsing failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@as3711_regulator_probe._entry_ptr.8 = internal global ptr @as3711_regulator_probe._entry.6, section ".printk_index", align 4
@as3711_reg_desc = internal constant { [12 x %struct.regulator_desc], [720 x i8] } { [12 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 1, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 2, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 128, i32 0, ptr @as3711_sd_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_sd_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 3, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @as3711_aldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_aldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 4, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @as3711_aldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_aldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 5, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 6, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 7, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 8, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 9, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 10, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @as3711_dldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @as3711_dldo_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 11, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [720 x i8] zeroinitializer }, align 32
@as3711_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@as3711_regulator_probe._entry_ptr.11 = internal global ptr @as3711_regulator_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@as3711_regulator_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator node not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"as3711_regulator_parse_dt\00", [38 x i8] zeroinitializer }, align 32
@as3711_regulator_parse_dt._entry_ptr = internal global ptr @as3711_regulator_parse_dt._entry, section ".printk_index", align 4
@as3711_regulator_matches = internal global { [12 x %struct.of_regulator_match], [48 x i8] } { [12 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.18, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.19, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.20, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.21, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.22, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.23, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.24, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr null, ptr null, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@as3711_regulator_parse_dt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error parsing regulator init data: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@as3711_regulator_parse_dt._entry_ptr.17 = internal global ptr @as3711_regulator_parse_dt._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd1\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd2\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd3\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sd4\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo3\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo4\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo5\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo6\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo7\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldo8\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as3711-regulator-SD_1\00", [42 x i8] zeroinitializer }, align 32
@as3711_sd_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @as3711_set_mode_sd, ptr @as3711_get_mode_sd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3711_sd_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 612500, i32 1, i32 64, i32 12500 }, %struct.linear_range { i32 1425000, i32 65, i32 112, i32 25000 }, %struct.linear_range { i32 2650000, i32 113, i32 127, i32 50000 }], [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as3711-regulator-SD_2\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as3711-regulator-SD_3\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"as3711-regulator-SD_4\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_1\00", [41 x i8] zeroinitializer }, align 32
@as3711_aldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3711_aldo_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 1200000, i32 0, i32 15, i32 50000 }, %struct.linear_range { i32 1800000, i32 16, i32 31, i32 100000 }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_2\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_3\00", [41 x i8] zeroinitializer }, align 32
@as3711_dldo_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@as3711_dldo_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 16, i32 50000 }, %struct.linear_range { i32 1750000, i32 32, i32 63, i32 50000 }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_4\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_5\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_6\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_7\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711-regulator-LDO_8\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"as3711_regulator_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 243, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 245, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 221, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"as3711_reg_desc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 138, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 234, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 177, i32 46 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 182, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [25 x i8] c"as3711_regulator_matches\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 157, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 190, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 158, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 159, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 160, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 161, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 162, i32 39 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 163, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 164, i32 39 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 165, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 166, i32 39 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 167, i32 39 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 168, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 169, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 139, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [14 x i8] c"as3711_sd_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 74, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"as3711_sd_ranges\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 106, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 140, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 141, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 142, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 143, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"as3711_aldo_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 86, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"as3711_aldo_ranges\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 112, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 144, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 145, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"as3711_dldo_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 96, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"as3711_dldo_ranges\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 117, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 146, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 147, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 148, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 149, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [40 x i8] c"../drivers/regulator/as3711-regulator.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 150, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_as3711_regulator_exit, ptr @__initcall__kmod_as3711_regulator__288_254_as3711_regulator_init4, ptr @as3711_regulator_exit, ptr @as3711_regulator_parse_dt._entry, ptr @as3711_regulator_parse_dt._entry.15, ptr @as3711_regulator_parse_dt._entry_ptr, ptr @as3711_regulator_parse_dt._entry_ptr.17, ptr @as3711_regulator_probe._entry, ptr @as3711_regulator_probe._entry.6, ptr @as3711_regulator_probe._entry.9, ptr @as3711_regulator_probe._entry_ptr, ptr @as3711_regulator_probe._entry_ptr.11, ptr @as3711_regulator_probe._entry_ptr.8, ptr @as3711_regulator_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @as3711_reg_desc, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @as3711_regulator_matches, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @as3711_sd_ops, ptr @as3711_sd_ranges, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @as3711_aldo_ops, ptr @as3711_aldo_ranges, ptr @.str.35, ptr @.str.36, ptr @as3711_dldo_ops, ptr @as3711_dldo_ranges, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_reg_desc to i32), i32 2928, i32 3648, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_matches to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_regulator_parse_dt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_sd_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_sd_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_aldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_aldo_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_dldo_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_dldo_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3711_regulator_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as3711_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3711_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %of_node = alloca [12 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #5
  %6 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %7 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %8 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %9 = getelementptr inbounds i8, ptr %config, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 16)
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %of_node) #5
  %12 = call ptr @memset(ptr %of_node, i32 0, i32 48)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %13 = ptrtoint ptr %of_node8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node8, align 8
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end.if.end19_crit_edge, label %if.then10

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then10:                                        ; preds = %if.end
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %of_node1.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node1.i, align 8
  %call2.i = tail call ptr @of_get_child_by_name(ptr noundef %18, ptr noundef nonnull @.str.12) #5
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %do.end16

if.end.i:                                         ; preds = %if.then10
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %call4.i = tail call i32 @of_regulator_match(ptr noundef %20, ptr noundef nonnull %call2.i, ptr noundef nonnull @as3711_regulator_matches, i32 noundef 12) #5
  tail call void @of_node_put(ptr noundef nonnull %call2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end8.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end.i
  %21 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 0, i32 3), align 4
  %tobool12.not.i = icmp eq ptr %21, null
  br i1 %tobool12.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.then13.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call4.i) #8
  br label %do.end16

if.then13.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 0, i32 2), align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %1, align 4
  %24 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 0, i32 3), align 4
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then13.i, %for.body.preheader.i.for.inc.i_crit_edge
  %26 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 1, i32 3), align 4
  %tobool12.not.1.i = icmp eq ptr %26, null
  br i1 %tobool12.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then13.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then13.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 1, i32 2), align 4
  %arrayidx.1.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx.1.i, align 4
  %29 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 1, i32 3), align 4
  %arrayidx16.1.i = getelementptr inbounds ptr, ptr %of_node, i32 1
  %30 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx16.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then13.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %31 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 2, i32 3), align 4
  %tobool12.not.2.i = icmp eq ptr %31, null
  br i1 %tobool12.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then13.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then13.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 2, i32 2), align 4
  %arrayidx.2.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx.2.i, align 4
  %34 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 2, i32 3), align 4
  %arrayidx16.2.i = getelementptr inbounds ptr, ptr %of_node, i32 2
  %35 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx16.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then13.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %36 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 3, i32 3), align 4
  %tobool12.not.3.i = icmp eq ptr %36, null
  br i1 %tobool12.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then13.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then13.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 3, i32 2), align 4
  %arrayidx.3.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %arrayidx.3.i, align 4
  %39 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 3, i32 3), align 4
  %arrayidx16.3.i = getelementptr inbounds ptr, ptr %of_node, i32 3
  %40 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %arrayidx16.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then13.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %41 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 4, i32 3), align 4
  %tobool12.not.4.i = icmp eq ptr %41, null
  br i1 %tobool12.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then13.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

if.then13.4.i:                                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 4, i32 2), align 4
  %arrayidx.4.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %arrayidx.4.i, align 4
  %44 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 4, i32 3), align 4
  %arrayidx16.4.i = getelementptr inbounds ptr, ptr %of_node, i32 4
  %45 = ptrtoint ptr %arrayidx16.4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %arrayidx16.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then13.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %46 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 5, i32 3), align 4
  %tobool12.not.5.i = icmp eq ptr %46, null
  br i1 %tobool12.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then13.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

if.then13.5.i:                                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 5, i32 2), align 4
  %arrayidx.5.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx.5.i, align 4
  %49 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 5, i32 3), align 4
  %arrayidx16.5.i = getelementptr inbounds ptr, ptr %of_node, i32 5
  %50 = ptrtoint ptr %arrayidx16.5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arrayidx16.5.i, align 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then13.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %51 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 6, i32 3), align 4
  %tobool12.not.6.i = icmp eq ptr %51, null
  br i1 %tobool12.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then13.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i

if.then13.6.i:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 6, i32 2), align 4
  %arrayidx.6.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 6
  %53 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %arrayidx.6.i, align 4
  %54 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 6, i32 3), align 4
  %arrayidx16.6.i = getelementptr inbounds ptr, ptr %of_node, i32 6
  %55 = ptrtoint ptr %arrayidx16.6.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %arrayidx16.6.i, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then13.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %56 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 7, i32 3), align 4
  %tobool12.not.7.i = icmp eq ptr %56, null
  br i1 %tobool12.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %if.then13.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7.i

if.then13.7.i:                                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 7, i32 2), align 4
  %arrayidx.7.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %arrayidx.7.i, align 4
  %59 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 7, i32 3), align 4
  %arrayidx16.7.i = getelementptr inbounds ptr, ptr %of_node, i32 7
  %60 = ptrtoint ptr %arrayidx16.7.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx16.7.i, align 4
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then13.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %61 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 8, i32 3), align 4
  %tobool12.not.8.i = icmp eq ptr %61, null
  br i1 %tobool12.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %if.then13.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8.i

if.then13.8.i:                                    ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 8, i32 2), align 4
  %arrayidx.8.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 8
  %63 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %arrayidx.8.i, align 4
  %64 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 8, i32 3), align 4
  %arrayidx16.8.i = getelementptr inbounds ptr, ptr %of_node, i32 8
  %65 = ptrtoint ptr %arrayidx16.8.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %arrayidx16.8.i, align 4
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then13.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %66 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 9, i32 3), align 4
  %tobool12.not.9.i = icmp eq ptr %66, null
  br i1 %tobool12.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %if.then13.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9.i

if.then13.9.i:                                    ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 9, i32 2), align 4
  %arrayidx.9.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 9
  %68 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %arrayidx.9.i, align 4
  %69 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 9, i32 3), align 4
  %arrayidx16.9.i = getelementptr inbounds ptr, ptr %of_node, i32 9
  %70 = ptrtoint ptr %arrayidx16.9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %arrayidx16.9.i, align 4
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %if.then13.9.i, %for.inc.8.i.for.inc.9.i_crit_edge
  %71 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 10, i32 3), align 4
  %tobool12.not.10.i = icmp eq ptr %71, null
  br i1 %tobool12.not.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge, label %if.then13.10.i

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10.i

if.then13.10.i:                                   ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 10, i32 2), align 4
  %arrayidx.10.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 10
  %73 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %arrayidx.10.i, align 4
  %74 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 10, i32 3), align 4
  %arrayidx16.10.i = getelementptr inbounds ptr, ptr %of_node, i32 10
  %75 = ptrtoint ptr %arrayidx16.10.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %arrayidx16.10.i, align 4
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %if.then13.10.i, %for.inc.9.i.for.inc.10.i_crit_edge
  %76 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 11, i32 3), align 4
  %tobool12.not.11.i = icmp eq ptr %76, null
  br i1 %tobool12.not.11.i, label %for.inc.10.i.if.end19_crit_edge, label %if.then13.11.i

for.inc.10.i.if.end19_crit_edge:                  ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then13.11.i:                                   ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 11, i32 2), align 4
  %arrayidx.11.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 11
  %78 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %arrayidx.11.i, align 4
  %79 = load ptr, ptr getelementptr inbounds ([12 x %struct.of_regulator_match], ptr @as3711_regulator_matches, i32 0, i32 11, i32 3), align 4
  %arrayidx16.11.i = getelementptr inbounds ptr, ptr %of_node, i32 11
  %80 = ptrtoint ptr %arrayidx16.11.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %arrayidx16.11.i, align 4
  br label %if.end19

do.end16:                                         ; preds = %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end.i ], [ %call4.i, %do.end8.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then13.11.i, %for.inc.10.i.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %regmap = getelementptr inbounds %struct.as3711, ptr %5, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %id.064, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end19
  %id.064 = phi i32 [ 0, %if.end19 ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x ptr], ptr %1, i32 0, i32 %id.064
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %6, align 4
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %86 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %8, align 4
  %arrayidx23 = getelementptr [12 x ptr], ptr %of_node, i32 0, i32 %id.064
  %87 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx23, align 4
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %7, align 4
  %arrayidx26 = getelementptr [12 x %struct.regulator_desc], ptr @as3711_reg_desc, i32 0, i32 %id.064
  %call27 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx26, ptr noundef nonnull %config) #5
  %cmp.i60 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %do.end32, label %for.cond

do.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %91) #8
  %92 = ptrtoint ptr %call27 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %for.cond.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end16 ], [ %92, %do.end32 ], [ -19, %do.end ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %of_node) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_set_mode_sd(ptr nocapture noundef readonly %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_mask, align 4
  %shl = shl i32 %3, 4
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %shl, %3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb3 ], [ %or, %sw.bb ], [ %shl, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %or4 = or i32 %shl, %3
  %conv5 = and i32 %val.0, 255
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 48, i32 noundef %or4, i32 noundef %conv5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_get_mode_sd(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_mask = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_mask, align 4
  %shl = shl i32 %3, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !117
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 48, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %shl, %3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or)
  %cmp1 = icmp eq i32 %and, %or
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shl)
  %cmp5 = icmp eq i32 %and, %shl
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 4, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 2, %if.end3.cleanup_crit_edge ], [ %., %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_as3711_regulator__288_254_as3711_regulator_init4, !1, !"__initcall__kmod_as3711_regulator__288_254_as3711_regulator_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/as3711-regulator.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_as3711_regulator_exit, !3, !"__exitcall_as3711_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/as3711-regulator.c", i32 260, i32 1}
!4 = !{ptr @__UNIQUE_ID_author289, !5, !"__UNIQUE_ID_author289", i1 false, i1 false}
!5 = !{!"../drivers/regulator/as3711-regulator.c", i32 262, i32 1}
!6 = !{ptr @__UNIQUE_ID_description290, !7, !"__UNIQUE_ID_description290", i1 false, i1 false}
!7 = !{!"../drivers/regulator/as3711-regulator.c", i32 263, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias291, !9, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!9 = !{!"../drivers/regulator/as3711-regulator.c", i32 264, i32 1}
!10 = !{ptr @__UNIQUE_ID_file292, !11, !"__UNIQUE_ID_file292", i1 false, i1 false}
!11 = !{!"../drivers/regulator/as3711-regulator.c", i32 265, i32 1}
!12 = !{ptr @__UNIQUE_ID_license293, !11, !"__UNIQUE_ID_license293", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/regulator/as3711-regulator.c", i32 245, i32 11}
!15 = !{ptr @as3711_regulator_driver, !16, !"as3711_regulator_driver", i1 false, i1 false}
!16 = !{!"../drivers/regulator/as3711-regulator.c", i32 243, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/regulator/as3711-regulator.c", i32 214, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @as3711_regulator_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @as3711_regulator_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/regulator/as3711-regulator.c", i32 221, i32 4}
!27 = !{ptr @as3711_regulator_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @as3711_regulator_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/as3711-regulator.c", i32 234, i32 4}
!31 = !{ptr @as3711_regulator_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @as3711_regulator_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/as3711-regulator.c", i32 177, i32 46}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/as3711-regulator.c", i32 182, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @as3711_regulator_parse_dt._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @as3711_regulator_parse_dt._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/regulator/as3711-regulator.c", i32 190, i32 3}
!42 = !{ptr @as3711_regulator_parse_dt._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @as3711_regulator_parse_dt._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/regulator/as3711-regulator.c", i32 158, i32 38}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/as3711-regulator.c", i32 159, i32 38}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/as3711-regulator.c", i32 160, i32 38}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/regulator/as3711-regulator.c", i32 161, i32 38}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/as3711-regulator.c", i32 162, i32 39}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/regulator/as3711-regulator.c", i32 163, i32 39}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/as3711-regulator.c", i32 164, i32 39}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/as3711-regulator.c", i32 165, i32 39}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/regulator/as3711-regulator.c", i32 166, i32 39}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/regulator/as3711-regulator.c", i32 167, i32 39}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/regulator/as3711-regulator.c", i32 168, i32 39}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/regulator/as3711-regulator.c", i32 169, i32 39}
!68 = !{ptr @as3711_regulator_matches, !69, !"as3711_regulator_matches", i1 false, i1 false}
!69 = !{!"../drivers/regulator/as3711-regulator.c", i32 157, i32 1}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/regulator/as3711-regulator.c", i32 139, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/regulator/as3711-regulator.c", i32 140, i32 2}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/as3711-regulator.c", i32 141, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/regulator/as3711-regulator.c", i32 142, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/regulator/as3711-regulator.c", i32 143, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/regulator/as3711-regulator.c", i32 144, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/as3711-regulator.c", i32 145, i32 2}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/regulator/as3711-regulator.c", i32 146, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/regulator/as3711-regulator.c", i32 147, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/regulator/as3711-regulator.c", i32 148, i32 2}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/as3711-regulator.c", i32 149, i32 2}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/as3711-regulator.c", i32 150, i32 2}
!94 = !{ptr @as3711_reg_desc, !95, !"as3711_reg_desc", i1 false, i1 false}
!95 = !{!"../drivers/regulator/as3711-regulator.c", i32 138, i32 36}
!96 = !{ptr @as3711_sd_ops, !97, !"as3711_sd_ops", i1 false, i1 false}
!97 = !{!"../drivers/regulator/as3711-regulator.c", i32 74, i32 35}
!98 = !{ptr @as3711_sd_ranges, !99, !"as3711_sd_ranges", i1 false, i1 false}
!99 = !{!"../drivers/regulator/as3711-regulator.c", i32 106, i32 34}
!100 = !{ptr @as3711_aldo_ops, !101, !"as3711_aldo_ops", i1 false, i1 false}
!101 = !{!"../drivers/regulator/as3711-regulator.c", i32 86, i32 35}
!102 = !{ptr @as3711_aldo_ranges, !103, !"as3711_aldo_ranges", i1 false, i1 false}
!103 = !{!"../drivers/regulator/as3711-regulator.c", i32 112, i32 34}
!104 = !{ptr @as3711_dldo_ops, !105, !"as3711_dldo_ops", i1 false, i1 false}
!105 = !{!"../drivers/regulator/as3711-regulator.c", i32 96, i32 35}
!106 = !{ptr @as3711_dldo_ranges, !107, !"as3711_dldo_ranges", i1 false, i1 false}
!107 = !{!"../drivers/regulator/as3711-regulator.c", i32 117, i32 34}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
