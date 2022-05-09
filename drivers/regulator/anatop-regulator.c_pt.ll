; ModuleID = '/llk/IR_all_yes/drivers/regulator/anatop-regulator.c_pt.bc'
source_filename = "../drivers/regulator/anatop-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.anatop_regulator = type { i32, i32, i32, %struct.regulator_desc, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_anatop_regulator__289_340_anatop_regulator_init2 = internal global ptr @anatop_regulator_init, section ".initcall2.init", align 4
@anatop_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @anatop_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_anatop_regulator_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_anatop_regulator_exit = internal global ptr @anatop_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [62 x i8] c"anatop_regulator.author=Nancy Chen <Nancy.Chen@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [70 x i8] c"anatop_regulator.author=Ying-Chun Liu (PaulLiu) <paul.liu@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [53 x i8] c"anatop_regulator.description=ANATOP Regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [57 x i8] c"anatop_regulator.file=drivers/regulator/anatop-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [32 x i8] c"anatop_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [49 x i8] c"anatop_regulator.alias=platform:anatop_regulator\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"anatop_regulator\00", [47 x i8] zeroinitializer }, align 32
@of_anatop_regulator_match_tbl = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,anatop-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regulator-name\00", [17 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get a regulator-name\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anatop_regulator_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/regulator/anatop-regulator.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr = internal global ptr @anatop_regulator_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"anatop-reg-offset\00", [46 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no anatop-reg-offset property set\0A\00", [61 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.11 = internal global ptr @anatop_regulator_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"anatop-vol-bit-width\00", [43 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no anatop-vol-bit-width property set\0A\00", [58 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.15 = internal global ptr @anatop_regulator_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"anatop-vol-bit-shift\00", [43 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no anatop-vol-bit-shift property set\0A\00", [58 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.19 = internal global ptr @anatop_regulator_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anatop-min-bit-val\00", [45 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no anatop-min-bit-val property set\0A\00", [60 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.23 = internal global ptr @anatop_regulator_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anatop-min-voltage\00", [45 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no anatop-min-voltage property set\0A\00", [60 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.27 = internal global ptr @anatop_regulator_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anatop-max-voltage\00", [45 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no anatop-max-voltage property set\0A\00", [60 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.31 = internal global ptr @anatop_regulator_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"anatop-delay-reg-offset\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anatop-delay-bit-width\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anatop-delay-bit-shift\00", [41 x i8] zeroinitializer }, align 32
@anatop_core_rops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @anatop_regmap_core_set_voltage_sel, ptr null, ptr @anatop_regmap_core_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anatop_regmap_enable, ptr @anatop_regmap_disable, ptr @anatop_regmap_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anatop_regmap_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr @anatop_regmap_set_bypass, ptr @anatop_regmap_get_bypass, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read initial state\0A\00", [34 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.37 = internal global ptr @anatop_regulator_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddpu\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddpcie\00", [24 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to read a valid default voltage selector.\0A\00", [46 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.42 = internal global ptr @anatop_regulator_probe._entry.40, section ".printk_index", align 4
@anatop_rops = internal global { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"anatop-enable-bit\00", [46 x i8] zeroinitializer }, align 32
@anatop_regulator_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.44, i8 0, i8 77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register %s, deferring...\0A\00", [59 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.3, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@anatop_regulator_probe._entry_ptr.47 = internal global ptr @anatop_regulator_probe._entry.45, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 31]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 31]
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"anatop_regulator_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 328, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 330, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [30 x i8] c"of_anatop_regulator_match_tbl\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 322, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 183, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 185, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 193, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 203, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 205, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 208, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 210, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 213, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 215, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 218, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 220, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 223, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 225, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 228, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 230, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 235, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 237, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 239, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"anatop_core_rops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 142, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 263, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 278, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 282, i32 42 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 286, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"anatop_rops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 135, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 294, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 310, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [40 x i8] c"../drivers/regulator/anatop-regulator.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 313, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_anatop_regulator_exit, ptr @__initcall__kmod_anatop_regulator__289_340_anatop_regulator_init2, ptr @anatop_regulator_exit, ptr @anatop_regulator_probe._entry, ptr @anatop_regulator_probe._entry.13, ptr @anatop_regulator_probe._entry.17, ptr @anatop_regulator_probe._entry.21, ptr @anatop_regulator_probe._entry.25, ptr @anatop_regulator_probe._entry.29, ptr @anatop_regulator_probe._entry.35, ptr @anatop_regulator_probe._entry.40, ptr @anatop_regulator_probe._entry.45, ptr @anatop_regulator_probe._entry.9, ptr @anatop_regulator_probe._entry_ptr, ptr @anatop_regulator_probe._entry_ptr.11, ptr @anatop_regulator_probe._entry_ptr.15, ptr @anatop_regulator_probe._entry_ptr.19, ptr @anatop_regulator_probe._entry_ptr.23, ptr @anatop_regulator_probe._entry_ptr.27, ptr @anatop_regulator_probe._entry_ptr.31, ptr @anatop_regulator_probe._entry_ptr.37, ptr @anatop_regulator_probe._entry_ptr.42, ptr @anatop_regulator_probe._entry_ptr.47, ptr @anatop_regulator_driver, ptr @.str, ptr @of_anatop_regulator_match_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @anatop_core_rops, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @anatop_rops, ptr @.str.43, ptr @.str.44, ptr @.str.46], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_anatop_regulator_match_tbl to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_core_rops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_rops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anatop_regulator_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regulator_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @anatop_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anatop_regulator_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @anatop_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  %control_reg = alloca i32, align 4
  %vol_bit_shift = alloca i32, align 4
  %vol_bit_width = alloca i32, align 4
  %min_bit_val = alloca i32, align 4
  %min_voltage = alloca i32, align 4
  %max_voltage = alloca i32, align 4
  %val = alloca i32, align 4
  %enable_bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = call ptr @memset(ptr %config, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control_reg) #6
  %3 = ptrtoint ptr %control_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %control_reg, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol_bit_shift) #6
  %4 = ptrtoint ptr %vol_bit_shift to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %vol_bit_shift, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vol_bit_width) #6
  %5 = ptrtoint ptr %vol_bit_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %vol_bit_width, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_bit_val) #6
  %6 = ptrtoint ptr %min_bit_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %min_bit_val, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_voltage) #6
  %7 = ptrtoint ptr %min_voltage to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %min_voltage, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_voltage) #6
  %8 = ptrtoint ptr %max_voltage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %max_voltage, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !109
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 264, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdesc2 = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3
  %type = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 13
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 4
  %call3 = tail call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %rdesc2) #6
  %12 = ptrtoint ptr %rdesc2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdesc2, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %1, ptr noundef %rdesc2) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.7, ptr %call8, align 4
  %call12 = tail call ptr @of_get_parent(ptr noundef %1) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %call12) #6
  tail call void @of_node_put(ptr noundef nonnull %call12) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %control_reg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool22.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %call.i.i259 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %vol_bit_width, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i259)
  %tobool29.not = icmp sgt i32 %call.i.i259, -1
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call.i.i260 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %vol_bit_shift, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i260)
  %tobool36.not = icmp sgt i32 %call.i.i260, -1
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %call.i.i261 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %min_bit_val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i261)
  %tobool43.not = icmp sgt i32 %call.i.i261, -1
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %call.i.i262 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %min_voltage, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i262)
  %tobool50.not = icmp sgt i32 %call.i.i262, -1
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call.i.i263 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %max_voltage, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i263)
  %tobool57.not = icmp sgt i32 %call.i.i263, -1
  br i1 %tobool57.not, label %if.end62, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %call.i.i264 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #6
  %delay_bit_width = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 2
  %call.i.i265 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %delay_bit_width, i32 noundef 1, i32 noundef 0) #6
  %delay_bit_shift = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 1
  %call.i.i266 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %delay_bit_shift, i32 noundef 1, i32 noundef 0) #6
  %16 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_voltage, align 4
  %18 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_voltage, align 4
  %sub = sub i32 %17, %19
  %div = udiv i32 %sub, 25000
  %20 = ptrtoint ptr %min_bit_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_bit_val, align 4
  %add = add i32 %21, 1
  %add66 = add i32 %add, %div
  %n_voltages = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %n_voltages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add66, ptr %n_voltages, align 4
  %min_uV = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 14
  %23 = ptrtoint ptr %min_uV to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %min_uV, align 4
  %uV_step = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 15
  %24 = ptrtoint ptr %uV_step to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 25000, ptr %uV_step, align 4
  %linear_min_sel = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 16
  %25 = ptrtoint ptr %linear_min_sel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %linear_min_sel, align 4
  %26 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %control_reg, align 4
  %vsel_reg = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %vsel_reg, align 4
  %29 = ptrtoint ptr %vol_bit_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vol_bit_width, align 4
  %notmask = shl nsw i32 -1, %30
  %sub67 = xor i32 %notmask, -1
  %31 = ptrtoint ptr %vol_bit_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vol_bit_shift, align 4
  %shl68 = shl i32 %sub67, %32
  %vsel_mask = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 28
  %33 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl68, ptr %vsel_mask, align 4
  %min_dropout_uV = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 19
  %34 = ptrtoint ptr %min_dropout_uV to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 125000, ptr %min_dropout_uV, align 4
  %35 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev1, ptr %config, align 4
  %init_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %36 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8, ptr %init_data, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %37 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data, align 4
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %of_node73 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 3
  %40 = ptrtoint ptr %of_node73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %of_node73, align 4
  %regmap74 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %41 = ptrtoint ptr %regmap74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call16, ptr %regmap74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool75.not = icmp eq i32 %27, 0
  br i1 %tobool75.not, label %if.end62.if.else_crit_edge, label %land.lhs.true

if.end62.if.else_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end62
  %42 = ptrtoint ptr %delay_bit_width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay_bit_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool77.not = icmp eq i32 %43, 0
  br i1 %tobool77.not, label %land.lhs.true.if.else_crit_edge, label %if.then78

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then78:                                        ; preds = %land.lhs.true
  %ops = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 10
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @anatop_core_rops, ptr %ops, align 4
  %call81 = call i32 @regmap_read(ptr noundef %call16, i32 noundef %27, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end87, label %do.end86

do.end86:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end87:                                         ; preds = %if.then78
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  %47 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vsel_mask, align 4
  %and = and i32 %48, %46
  %49 = ptrtoint ptr %vol_bit_shift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vol_bit_shift, align 4
  %shr = lshr i32 %and, %50
  %sel = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr, ptr %sel, align 4
  %52 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end87.if.end110_crit_edge [
    i32 31, label %if.end92.thread
    i32 0, label %if.end87.land.lhs.true95_crit_edge
  ]

if.end87.land.lhs.true95_crit_edge:               ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true95

if.end87.if.end110_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.end92.thread:                                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %sel, align 4
  %bypass = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %bypass to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %bypass, align 4
  br label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.end92.thread, %if.end87.land.lhs.true95_crit_edge
  %55 = ptrtoint ptr %rdesc2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rdesc2, align 4
  %call97 = call i32 @strcmp(ptr noundef %56, ptr noundef nonnull dereferenceable(6) @.str.38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %land.lhs.true95.if.end110.sink.split_crit_edge, label %if.end101

land.lhs.true95.if.end110.sink.split_crit_edge:   ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.sink.split

if.end101:                                        ; preds = %land.lhs.true95
  %57 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool103.not = icmp eq i32 %.pr, 0
  br i1 %tobool103.not, label %land.lhs.true104, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

land.lhs.true104:                                 ; preds = %if.end101
  %58 = ptrtoint ptr %rdesc2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rdesc2, align 4
  %call106 = call i32 @strcmp(ptr noundef %59, ptr noundef nonnull dereferenceable(8) @.str.39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %land.lhs.true104.if.end110.sink.split_crit_edge, label %land.lhs.true104.if.end110_crit_edge

land.lhs.true104.if.end110_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

land.lhs.true104.if.end110.sink.split_crit_edge:  ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %land.lhs.true104.if.end110.sink.split_crit_edge, %land.lhs.true95.if.end110.sink.split_crit_edge
  %.sink = phi i32 [ 22, %land.lhs.true95.if.end110.sink.split_crit_edge ], [ 16, %land.lhs.true104.if.end110.sink.split_crit_edge ]
  %60 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink, ptr %sel, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %land.lhs.true104.if.end110_crit_edge, %if.end101.if.end110_crit_edge, %if.end87.if.end110_crit_edge
  %bypass111 = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 4
  %61 = ptrtoint ptr %bypass111 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bypass111, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool112.not = icmp eq i8 %62, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %if.end110.if.end128_crit_edge

if.end110.if.end128_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

land.lhs.true113:                                 ; preds = %if.end110
  %63 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool115.not = icmp eq i32 %64, 0
  br i1 %tobool115.not, label %do.end119, label %land.lhs.true113.if.end128_crit_edge

land.lhs.true113.if.end128_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

do.end119:                                        ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end62.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_bit) #6
  %65 = ptrtoint ptr %enable_bit to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %enable_bit, align 4, !annotation !109
  %ops122 = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 10
  %66 = ptrtoint ptr %ops122 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @anatop_rops, ptr %ops122, align 4
  %call.i.i267 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %enable_bit, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i267)
  %tobool124.not = icmp sgt i32 %call.i.i267, -1
  br i1 %tobool124.not, label %if.then125, label %if.else.if.end127_crit_edge

if.else.if.end127_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then125:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @regulator_enable_regmap, ptr getelementptr inbounds (%struct.regulator_ops, ptr @anatop_rops, i32 0, i32 14), align 4
  store ptr @regulator_disable_regmap, ptr getelementptr inbounds (%struct.regulator_ops, ptr @anatop_rops, i32 0, i32 15), align 4
  store ptr @regulator_is_enabled_regmap, ptr getelementptr inbounds (%struct.regulator_ops, ptr @anatop_rops, i32 0, i32 16), align 4
  %67 = ptrtoint ptr %control_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %control_reg, align 4
  %enable_reg = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 34
  %69 = ptrtoint ptr %enable_reg to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %enable_reg, align 4
  %70 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %enable_bit, align 4
  %shl126 = shl nuw i32 1, %71
  %enable_mask = getelementptr inbounds %struct.anatop_regulator, ptr %call.i, i32 0, i32 3, i32 35
  %72 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shl126, ptr %enable_mask, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.else.if.end127_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_bit) #6
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %land.lhs.true113.if.end128_crit_edge, %if.end110.if.end128_crit_edge
  %call129 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef %rdesc2, ptr noundef nonnull %config) #6
  %cmp.i268 = icmp ugt ptr %call129, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then131, label %if.end152

if.then131:                                       ; preds = %if.end128
  %cmp133 = icmp eq ptr %call129, inttoptr (i32 -517 to ptr)
  br i1 %cmp133, label %do.body135, label %do.end149

do.body135:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anatop_regulator_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@anatop_regulator_probe, %cleanup)) #6
          to label %if.then141 [label %cleanup], !srcloc !111

if.then141:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %rdesc2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rdesc2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anatop_regulator_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.44, ptr noundef %74) #6
  br label %cleanup

do.end149:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %call129 to i32
  %76 = ptrtoint ptr %rdesc2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rdesc2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, ptr noundef %77) #9
  br label %cleanup

if.end152:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call129, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %do.end149, %if.then141, %do.body135, %do.end119, %do.end86, %do.end61, %do.end54, %do.end47, %do.end40, %do.end33, %do.end26, %if.then18, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then18 ], [ %call.i.i, %do.end26 ], [ %call.i.i259, %do.end33 ], [ %call.i.i260, %do.end40 ], [ %call.i.i261, %do.end47 ], [ %call.i.i262, %do.end54 ], [ %call.i.i263, %do.end61 ], [ %call81, %do.end86 ], [ 0, %if.end152 ], [ -22, %do.end119 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -19, %if.end11.cleanup_crit_edge ], [ -517, %if.then141 ], [ %75, %do.end149 ], [ -517, %do.body135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_voltage) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_voltage) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_bit_val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol_bit_width) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vol_bit_shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control_reg) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_core_set_voltage_sel(ptr noundef %reg, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %reg) #6
  %bypass = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bypass, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %call.i = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %reg, i32 noundef %selector) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %sel6 = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %sel6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %selector, ptr %sel6, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_core_get_voltage_sel(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %reg) #6
  %bypass = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bypass, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call.i = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sel = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %reg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_enable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %reg) #6
  %bypass = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bypass, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sel1 = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %sel1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 31, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %reg, i32 noundef %cond) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %reg, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_is_enabled(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_set_voltage_time_sel(ptr noundef %reg, i32 noundef %old_sel, i32 noundef %new_sel) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %reg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !109
  %delay_bit_width = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %delay_bit_width to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %delay_bit_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %new_sel, i32 %old_sel)
  %cmp = icmp ugt i32 %new_sel, %old_sel
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %reg, i32 0, i32 17
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %delay_bit_shift = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %delay_bit_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay_bit_shift, align 4
  %shr = lshr i32 %8, %10
  %11 = ptrtoint ptr %delay_bit_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay_bit_width, align 4
  %notmask = shl nsw i32 -1, %12
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %sub3 = sub i32 %new_sel, %old_sel
  %shl4 = shl i32 64, %and
  %mul = mul i32 %shl4, %sub3
  %div = udiv i32 %mul, 24
  %add = add nuw nsw i32 %div, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %add, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_set_bypass(ptr noundef %reg, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %reg) #6
  %bypass = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bypass, align 4, !range !110
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sel6 = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %sel6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 31, %if.end.cond.end_crit_edge ]
  %4 = ptrtoint ptr %bypass to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %bypass, align 4
  %call10 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %reg, i32 noundef %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %cond.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anatop_regmap_get_bypass(ptr noundef %reg, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %reg) #6
  %call1 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %reg) #6
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call1, label %if.then24 [
    i32 31, label %if.then
    i32 0, label %entry.if.end58_crit_edge
  ]

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then:                                          ; preds = %entry
  %bypass = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bypass, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then.if.end58.sink.split_crit_edge, label %if.then.if.end58_crit_edge, !prof !112

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then.if.end58.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.sink.split

if.then24:                                        ; preds = %entry
  %bypass26 = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %bypass26 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bypass26, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool27.not = icmp eq i8 %4, 0
  br i1 %tobool27.not, label %if.then24.if.end58_crit_edge, label %if.then24.if.end58.sink.split_crit_edge, !prof !113

if.then24.if.end58.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.sink.split

if.then24.if.end58_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58.sink.split:                              ; preds = %if.then24.if.end58.sink.split_crit_edge, %if.then.if.end58.sink.split_crit_edge
  %.sink = phi i32 [ 113, %if.then.if.end58.sink.split_crit_edge ], [ 115, %if.then24.if.end58.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.then24.if.end58_crit_edge, %if.then.if.end58_crit_edge, %entry.if.end58_crit_edge
  %bypass59 = getelementptr inbounds %struct.anatop_regulator, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %bypass59 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bypass59, align 4, !range !110
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %enable, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !75, !76, !77, !79, !81, !83, !84, !85, !87, !89, !90, !92, !93, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_anatop_regulator__289_340_anatop_regulator_init2, !1, !"__initcall__kmod_anatop_regulator__289_340_anatop_regulator_init2", i1 false, i1 false}
!1 = !{!"../drivers/regulator/anatop-regulator.c", i32 340, i32 1}
!2 = !{ptr @__exitcall_anatop_regulator_exit, !3, !"__exitcall_anatop_regulator_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/anatop-regulator.c", i32 346, i32 1}
!4 = !{ptr @__UNIQUE_ID_author290, !5, !"__UNIQUE_ID_author290", i1 false, i1 false}
!5 = !{!"../drivers/regulator/anatop-regulator.c", i32 348, i32 1}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/regulator/anatop-regulator.c", i32 349, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/regulator/anatop-regulator.c", i32 350, i32 1}
!10 = !{ptr @__UNIQUE_ID_file293, !11, !"__UNIQUE_ID_file293", i1 false, i1 false}
!11 = !{!"../drivers/regulator/anatop-regulator.c", i32 351, i32 1}
!12 = !{ptr @__UNIQUE_ID_license294, !11, !"__UNIQUE_ID_license294", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias295, !14, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!14 = !{!"../drivers/regulator/anatop-regulator.c", i32 352, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/anatop-regulator.c", i32 330, i32 11}
!17 = !{ptr @anatop_regulator_driver, !18, !"anatop_regulator_driver", i1 false, i1 false}
!18 = !{!"../drivers/regulator/anatop-regulator.c", i32 328, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/regulator/anatop-regulator.c", i32 183, i32 30}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/regulator/anatop-regulator.c", i32 185, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @anatop_regulator_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @anatop_regulator_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/anatop-regulator.c", i32 193, i32 31}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/regulator/anatop-regulator.c", i32 203, i32 33}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/regulator/anatop-regulator.c", i32 205, i32 3}
!35 = !{ptr @anatop_regulator_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @anatop_regulator_probe._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/anatop-regulator.c", i32 208, i32 33}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/anatop-regulator.c", i32 210, i32 3}
!41 = !{ptr @anatop_regulator_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @anatop_regulator_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/anatop-regulator.c", i32 213, i32 33}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/anatop-regulator.c", i32 215, i32 3}
!47 = !{ptr @anatop_regulator_probe._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @anatop_regulator_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/anatop-regulator.c", i32 218, i32 33}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/anatop-regulator.c", i32 220, i32 3}
!53 = !{ptr @anatop_regulator_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @anatop_regulator_probe._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/anatop-regulator.c", i32 223, i32 33}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/anatop-regulator.c", i32 225, i32 3}
!59 = !{ptr @anatop_regulator_probe._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @anatop_regulator_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/anatop-regulator.c", i32 228, i32 33}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/anatop-regulator.c", i32 230, i32 3}
!65 = !{ptr @anatop_regulator_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @anatop_regulator_probe._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/anatop-regulator.c", i32 235, i32 27}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/anatop-regulator.c", i32 237, i32 27}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/anatop-regulator.c", i32 239, i32 27}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/anatop-regulator.c", i32 263, i32 4}
!75 = !{ptr @anatop_regulator_probe._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @anatop_regulator_probe._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/anatop-regulator.c", i32 278, i32 42}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/anatop-regulator.c", i32 282, i32 42}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/regulator/anatop-regulator.c", i32 286, i32 4}
!83 = !{ptr @anatop_regulator_probe._entry.40, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @anatop_regulator_probe._entry_ptr.42, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/regulator/anatop-regulator.c", i32 294, i32 33}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/anatop-regulator.c", i32 310, i32 4}
!89 = !{ptr @anatop_regulator_probe.__UNIQUE_ID_ddebug288, !88, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/regulator/anatop-regulator.c", i32 313, i32 4}
!92 = !{ptr @anatop_regulator_probe._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @anatop_regulator_probe._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @anatop_core_rops, !95, !"anatop_core_rops", i1 false, i1 false}
!95 = !{!"../drivers/regulator/anatop-regulator.c", i32 142, i32 35}
!96 = !{ptr @anatop_rops, !97, !"anatop_rops", i1 false, i1 false}
!97 = !{!"../drivers/regulator/anatop-regulator.c", i32 135, i32 29}
!98 = !{ptr @of_anatop_regulator_match_tbl, !99, !"of_anatop_regulator_match_tbl", i1 false, i1 false}
!99 = !{!"../drivers/regulator/anatop-regulator.c", i32 322, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i8 0, i8 2}
!111 = !{i64 2148209089, i64 2148209094, i64 2148209107, i64 2148209151, i64 2148209185, i64 2148209206}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
