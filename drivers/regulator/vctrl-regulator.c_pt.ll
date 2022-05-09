; ModuleID = '/llk/IR_all_yes/drivers/regulator/vctrl-regulator.c_pt.bc'
source_filename = "../drivers/regulator/vctrl-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.vctrl_data = type { ptr, %struct.regulator_desc, i8, i32, i32, %struct.vctrl_voltage_ranges, ptr, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.vctrl_voltage_ranges = type { %struct.vctrl_voltage_range, %struct.vctrl_voltage_range }
%struct.vctrl_voltage_range = type { i32, i32 }
%struct.vctrl_voltage_table = type { i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulator = type { ptr, %struct.list_head, i8, i32, i32, i32, [5 x %struct.regulator_voltage], ptr, %struct.device_attribute, ptr, ptr }
%struct.regulator_voltage = type { i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }

@__initcall__kmod_vctrl_regulator__290_553_vctrl_driver_init6 = internal global ptr @vctrl_driver_init, section ".initcall6.init", align 4
@vctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vctrl_driver_exit = internal global ptr @vctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [64 x i8] c"vctrl_regulator.description=Voltage Controlled Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [60 x i8] c"vctrl_regulator.author=Matthias Kaehlcke <mka@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [55 x i8] c"vctrl_regulator.file=drivers/regulator/vctrl-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [31 x i8] c"vctrl_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vctrl-regulator\00", [16 x i8] zeroinitializer }, align 32
@vctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vctrl-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vctrl\00", [26 x i8] zeroinitializer }, align 32
@vctrl_ops_cont = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr @vctrl_set_voltage, ptr null, ptr null, ptr @vctrl_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vctrl_enable, ptr @vctrl_disable, ptr @vctrl_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vctrl_ops_non_cont = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @vctrl_list_voltage, ptr null, ptr @regulator_map_voltage_iterate, ptr @vctrl_set_voltage_sel, ptr null, ptr @vctrl_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vctrl_enable, ptr @vctrl_disable, ptr @vctrl_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@vctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get control voltage\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vctrl_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/regulator/vctrl-regulator.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vctrl_probe._entry_ptr = internal global ptr @vctrl_probe._entry, section ".printk_index", align 4
@vctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 532, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vctrl_probe._entry_ptr.10 = internal global ptr @vctrl_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ovp-threshold-percent\00", [42 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 254, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ovp-threshold-percent (%u) > 100\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vctrl_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr = internal global ptr @vctrl_parse_dt._entry, section ".printk_index", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"min-slew-down-rate\00", [45 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.5, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"min-slew-down-rate must not be 0\0A\00", [62 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.17 = internal global ptr @vctrl_parse_dt._entry.15, section ".printk_index", align 4
@vctrl_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.5, i32 270, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"min-slew-down-rate (%u) too big\0A\00", [63 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.20 = internal global ptr @vctrl_parse_dt._entry.18, section ".printk_index", align 4
@vctrl_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.5, i32 277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ovp-threshold-percent requires min-slew-down-rate\0A\00", [45 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.23 = internal global ptr @vctrl_parse_dt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-min-microvolt\00", [40 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.5, i32 284, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to read regulator-min-microvolt: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.27 = internal global ptr @vctrl_parse_dt._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regulator-max-microvolt\00", [40 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.13, ptr @.str.5, i32 292, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to read regulator-max-microvolt: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.31 = internal global ptr @vctrl_parse_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctrl-voltage-range\00", [45 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.13, ptr @.str.5, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to read ctrl-voltage-range: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.35 = internal global ptr @vctrl_parse_dt._entry.33, section ".printk_index", align 4
@vctrl_parse_dt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.13, ptr @.str.5, i32 307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ctrl-voltage-range is invalid: %d-%d\0A\00", [58 x i8] zeroinitializer }, align 32
@vctrl_parse_dt._entry_ptr.38 = internal global ptr @vctrl_parse_dt._entry.36, section ".printk_index", align 4
@vctrl_calc_output_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013vctrl: failed to get control voltage\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vctrl_calc_output_voltage\00", [38 x i8] zeroinitializer }, align 32
@vctrl_calc_output_voltage._entry_ptr = internal global ptr @vctrl_calc_output_voltage._entry, section ".printk_index", align 4
@vctrl_set_voltage_sel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set control voltage to %duV\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vctrl_set_voltage_sel\00", [42 x i8] zeroinitializer }, align 32
@vctrl_set_voltage_sel._entry_ptr = internal global ptr @vctrl_set_voltage_sel._entry, section ".printk_index", align 4
@vctrl_set_voltage_sel._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 223, ptr @.str.45, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to restore original voltage\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vctrl_set_voltage_sel._entry_ptr.46 = internal global ptr @vctrl_set_voltage_sel._entry.43, section ".printk_index", align 4
@vctrl_init_vtable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 349, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid configuration\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vctrl_init_vtable\00", [46 x i8] zeroinitializer }, align 32
@vctrl_init_vtable._entry_ptr = internal global ptr @vctrl_init_vtable._entry, section ".printk_index", align 4
@vctrl_init_vtable._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 393, ptr @.str.45, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"switching down from %duV may cause OVP shutdown\0A\00", [47 x i8] zeroinitializer }, align 32
@vctrl_init_vtable._entry_ptr.51 = internal global ptr @vctrl_init_vtable._entry.49, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"vctrl_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 545, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 548, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"vctrl_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 539, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 468, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 475, i32 16 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"vctrl_ops_cont\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 427, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"vctrl_ops_non_cont\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 435, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 505, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 532, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 248, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 252, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 259, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 265, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 269, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 276, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 281, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 283, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 289, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 291, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 297, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 300, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 306, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 65, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 198, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 222, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 349, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [39 x i8] c"../drivers/regulator/vctrl-regulator.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 392, i32 4 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_vctrl_driver_exit, ptr @__initcall__kmod_vctrl_regulator__290_553_vctrl_driver_init6, ptr @vctrl_calc_output_voltage._entry, ptr @vctrl_calc_output_voltage._entry_ptr, ptr @vctrl_driver_exit, ptr @vctrl_init_vtable._entry, ptr @vctrl_init_vtable._entry.49, ptr @vctrl_init_vtable._entry_ptr, ptr @vctrl_init_vtable._entry_ptr.51, ptr @vctrl_parse_dt._entry, ptr @vctrl_parse_dt._entry.15, ptr @vctrl_parse_dt._entry.18, ptr @vctrl_parse_dt._entry.21, ptr @vctrl_parse_dt._entry.25, ptr @vctrl_parse_dt._entry.29, ptr @vctrl_parse_dt._entry.33, ptr @vctrl_parse_dt._entry.36, ptr @vctrl_parse_dt._entry_ptr, ptr @vctrl_parse_dt._entry_ptr.17, ptr @vctrl_parse_dt._entry_ptr.20, ptr @vctrl_parse_dt._entry_ptr.23, ptr @vctrl_parse_dt._entry_ptr.27, ptr @vctrl_parse_dt._entry_ptr.31, ptr @vctrl_parse_dt._entry_ptr.35, ptr @vctrl_parse_dt._entry_ptr.38, ptr @vctrl_probe._entry, ptr @vctrl_probe._entry.8, ptr @vctrl_probe._entry_ptr, ptr @vctrl_probe._entry_ptr.10, ptr @vctrl_set_voltage_sel._entry, ptr @vctrl_set_voltage_sel._entry.43, ptr @vctrl_set_voltage_sel._entry_ptr, ptr @vctrl_set_voltage_sel._entry_ptr.46, ptr @vctrl_driver, ptr @.str, ptr @vctrl_of_match, ptr @.str.1, ptr @.str.2, ptr @vctrl_ops_cont, ptr @vctrl_ops_non_cont, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_ops_cont to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_ops_non_cont to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_parse_dt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_calc_output_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_set_voltage_sel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_set_voltage_sel._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_init_vtable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vctrl_init_vtable._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @vctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pval.i = alloca i32, align 4
  %vrange_ctrl.i = alloca [2 x i32], align 4
  %cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #7
  %2 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i) #7
  %6 = ptrtoint ptr %pval.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pval.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vrange_ctrl.i) #7
  %7 = ptrtoint ptr %vrange_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %vrange_ctrl.i, align 4, !annotation !112
  %8 = getelementptr inbounds [2 x i32], ptr %vrange_ctrl.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !112
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end5.i_crit_edge

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %10 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pval.i, align 4
  %ovp_threshold.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %ovp_threshold.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ovp_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %11)
  %cmp.i = icmp ugt i32 %11, 100
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %11) #10
  br label %vctrl_parse_dt.exit.thread

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end.if.end5.i_crit_edge
  %call.i.i120.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i120.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i120.i, -1
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end26.i_crit_edge

if.end5.i.if.end26.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then8.i:                                       ; preds = %if.end5.i
  %13 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pval.i, align 4
  %min_slew_down_rate.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %min_slew_down_rate.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %min_slew_down_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.i = icmp eq i32 %14, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.else.i

do.end14.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %vctrl_parse_dt.exit.thread

if.else.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp17.i = icmp slt i32 %14, 0
  br i1 %cmp17.i, label %do.end21.i, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %14) #10
  br label %vctrl_parse_dt.exit.thread

if.end26.i:                                       ; preds = %if.else.i.if.end26.i_crit_edge, %if.end5.i.if.end26.i_crit_edge
  %ovp_threshold27.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %ovp_threshold27.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ovp_threshold27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not.i = icmp eq i32 %17, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %min_slew_down_rate29.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %min_slew_down_rate29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_slew_down_rate29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not.i = icmp eq i32 %19, 0
  br i1 %tobool30.not.i, label %do.end34.i, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

do.end34.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %vctrl_parse_dt.exit.thread

if.end36.i:                                       ; preds = %land.lhs.true.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %call.i.i121.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i121.i)
  %tobool38.not.i = icmp sgt i32 %call.i.i121.i, -1
  br i1 %tobool38.not.i, label %if.end44.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call.i.i121.i) #10
  br label %vctrl_parse_dt.exit.thread

if.end44.i:                                       ; preds = %if.end36.i
  %20 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pval.i, align 4
  %vrange.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 5
  %out.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %out.i, align 4
  %call.i.i122.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i122.i)
  %tobool46.not.i = icmp sgt i32 %call.i.i122.i, -1
  br i1 %tobool46.not.i, label %if.end52.i, label %do.end50.i

do.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call.i.i122.i) #10
  br label %vctrl_parse_dt.exit.thread

if.end52.i:                                       ; preds = %if.end44.i
  %23 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pval.i, align 4
  %max_uV.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_uV.i, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.32, ptr noundef nonnull %vrange_ctrl.i, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool56.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool56.not.i, label %if.end62.i, label %do.end60.i

do.end60.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call.i.i) #10
  br label %vctrl_parse_dt.exit.thread

if.end62.i:                                       ; preds = %if.end52.i
  %26 = ptrtoint ptr %vrange_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vrange_ctrl.i, align 4
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp64.not.i = icmp ult i32 %27, %29
  br i1 %cmp64.not.i, label %if.end5, label %do.end68.i

do.end68.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %27, i32 noundef %29) #10
  br label %vctrl_parse_dt.exit.thread

vctrl_parse_dt.exit.thread:                       ; preds = %do.end68.i, %do.end60.i, %do.end50.i, %do.end42.i, %do.end34.i, %do.end21.i, %do.end14.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ -22, %do.end21.i ], [ -22, %do.end14.i ], [ -22, %do.end34.i ], [ -22, %do.end68.i ], [ %call.i.i, %do.end60.i ], [ %call.i.i122.i, %do.end50.i ], [ %call.i.i121.i, %do.end42.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vrange_ctrl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end62.i
  %30 = ptrtoint ptr %vrange.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %vrange.i, align 4
  %max_uV79.i = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %max_uV79.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %max_uV79.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vrange_ctrl.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #7
  %call7 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %cmp.i131 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %desc = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.2, ptr %desc, align 4
  %type = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 12
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type, align 4
  %owner = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 13
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %owner, align 4
  %supply_name = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %supply_name to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.1, ptr %supply_name, align 4
  %call12 = call i32 @regulator_get_linear_step(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp eq i32 %call12, 1
  br i1 %cmp, label %if.end11.if.then15_crit_edge, label %lor.lhs.false

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end11
  %call13 = call i32 @regulator_count_voltages(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call13)
  %cmp14 = icmp eq i32 %call13, -22
  br i1 %cmp14, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end11.if.then15_crit_edge
  %continuous_voltage_range = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 7
  %37 = ptrtoint ptr %continuous_voltage_range to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %continuous_voltage_range, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %continuous_voltage_range, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %lor.lhs.false.if.end17_crit_edge
  %vctrl_ops_non_cont.sink = phi ptr [ @vctrl_ops_cont, %if.then15 ], [ @vctrl_ops_non_cont, %lor.lhs.false.if.end17_crit_edge ]
  %ops16 = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 10
  %38 = ptrtoint ptr %ops16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %vctrl_ops_non_cont.sink, ptr %ops16, align 4
  %call19 = call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef %1, ptr noundef %desc) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %of_node23 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 3
  %39 = ptrtoint ptr %of_node23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %of_node23, align 4
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %cfg, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %41 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data, align 4
  %init_data26 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %42 = ptrtoint ptr %init_data26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call19, ptr %init_data26, align 4
  %continuous_voltage_range27 = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %continuous_voltage_range27 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load28 = load i8, ptr %continuous_voltage_range27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28)
  %tobool29.not = icmp sgt i8 %bf.load28, -1
  br i1 %tobool29.not, label %if.then30, label %if.end22.if.end56_crit_edge

if.end22.if.end56_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then30:                                        ; preds = %if.end22
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %vrange.i132 = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 5
  %call1.i = call i32 @regulator_count_voltages(ptr noundef %call7) #7
  %n_voltages2.i = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %n_voltages2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call1.i, ptr %n_voltages2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp142.i = icmp sgt i32 %call1.i, 0
  br i1 %cmp142.i, label %for.body.lr.ph.i, label %if.then30.for.end.i_crit_edge

if.then30.for.end.i_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then30
  %max_uV.i133 = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0143.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call3.i = call i32 @regulator_list_voltage(ptr noundef %call7, i32 noundef %i.0143.i) #7
  %47 = ptrtoint ptr %vrange.i132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vrange.i132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %48)
  %cmp4.i = icmp slt i32 %call3.i, %48
  br i1 %cmp4.i, label %for.body.i.if.then.i134_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i134_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i134

lor.lhs.false.i:                                  ; preds = %for.body.i
  %49 = ptrtoint ptr %max_uV.i133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_uV.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %50)
  %cmp5.i = icmp sgt i32 %call3.i, %50
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then.i134_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i.if.then.i134_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i134

if.then.i134:                                     ; preds = %lor.lhs.false.i.if.then.i134_crit_edge, %for.body.i.if.then.i134_crit_edge
  %51 = ptrtoint ptr %n_voltages2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_voltages2.i, align 4
  %dec.i = add i32 %52, -1
  store i32 %dec.i, ptr %n_voltages2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i134, %lor.lhs.false.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0143.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call1.i
  br i1 %exitcond.not.i, label %for.endthread-pre-split.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %n_voltages2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i = load i32, ptr %n_voltages2.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.then30.for.end.i_crit_edge
  %54 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %call1.i, %if.then30.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp8.i = icmp eq i32 %54, 0
  br i1 %cmp8.i, label %do.end.i136, label %if.end10.i

do.end.i136:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end10.i:                                       ; preds = %for.end.i
  %55 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 12) #7
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !113

devm_kcalloc.exit.thread.i:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %vtable138.i = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 6
  %57 = ptrtoint ptr %vtable138.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %vtable138.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end10.i
  %58 = extractvalue { i32, i1 } %55, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %58, i32 noundef 3520) #7
  %vtable.i = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 6
  %59 = ptrtoint ptr %vtable.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call5.i.i.i, ptr %vtable.i, align 4
  %tobool.not.i137 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i137, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond17.preheader.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond17.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  br i1 %cmp142.i, label %for.body19.lr.ph.i, label %for.cond17.preheader.i.for.end36.i_crit_edge

for.cond17.preheader.i.for.end36.i_crit_edge:     ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36.i

for.body19.lr.ph.i:                               ; preds = %for.cond17.preheader.i
  %max_uV24.i = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 5, i32 0, i32 1
  %out3.i.i = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 5, i32 1
  %max_uV18.i.i = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 5, i32 1, i32 1
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.inc34.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %idx_vt.0146.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %idx_vt.1.i, %for.inc34.i.for.body19.i_crit_edge ]
  %i.1145.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc35.i, %for.inc34.i.for.body19.i_crit_edge ]
  %call20.i = call i32 @regulator_list_voltage(ptr noundef %call7, i32 noundef %i.1145.i) #7
  %60 = ptrtoint ptr %vrange.i132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vrange.i132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %61)
  %cmp22.i = icmp slt i32 %call20.i, %61
  br i1 %cmp22.i, label %for.body19.i.for.inc34.i_crit_edge, label %lor.lhs.false23.i

for.body19.i.for.inc34.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34.i

lor.lhs.false23.i:                                ; preds = %for.body19.i
  %62 = ptrtoint ptr %max_uV24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_uV24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %63)
  %cmp25.i = icmp sgt i32 %call20.i, %63
  br i1 %cmp25.i, label %lor.lhs.false23.i.for.inc34.i_crit_edge, label %if.end27.i

lor.lhs.false23.i.for.inc34.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34.i

if.end27.i:                                       ; preds = %lor.lhs.false23.i
  %64 = ptrtoint ptr %vtable.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vtable.i, align 4
  %arrayidx.i = getelementptr %struct.vctrl_voltage_table, ptr %65, i32 %idx_vt.0146.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call20.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp.i.i = icmp slt i32 %call20.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %vctrl_calc_output_voltage.exit.i

if.end.i.i:                                       ; preds = %if.end27.i
  %67 = ptrtoint ptr %vrange.i132 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vrange.i132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i, i32 %68)
  %cmp4.i.i = icmp slt i32 %call20.i, %68
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %out3.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %out3.i.i, align 4
  br label %vctrl_calc_output_voltage.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %71 = ptrtoint ptr %max_uV24.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_uV24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %call20.i)
  %cmp8.i.i = icmp slt i32 %72, %call20.i
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %max_uV18.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_uV18.i.i, align 4
  br label %vctrl_calc_output_voltage.exit.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %75 = ptrtoint ptr %out3.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %out3.i.i, align 4
  %sub.i.i = sub i32 %72, %68
  %sub16.i.i = sub i32 %call20.i, %68
  %conv17.i.i = sext i32 %sub16.i.i to i64
  %77 = ptrtoint ptr %max_uV18.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_uV18.i.i, align 4
  %sub20.i.i = sub i32 %78, %76
  %conv21.i.i = sext i32 %sub20.i.i to i64
  %mul.i.i = mul nsw i64 %conv21.i.i, %conv17.i.i
  %div.i.i = sdiv i32 %sub.i.i, 2
  %conv22.i.i = sext i32 %div.i.i to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv22.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp197.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp197.i.i, label %if.then201.i.i, label %if.else207.i.i, !prof !114

if.then201.i.i:                                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv202.i.i = trunc i64 %add.i.i to i32
  %div205.i.i = udiv i32 %conv202.i.i, %sub.i.i
  br label %if.end211.i.i

if.else207.i.i:                                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i.i, i64 %add.i.i) #11, !srcloc !115
  %asmresult1.i.i.i = extractvalue { i64, i64 } %79, 1
  %extract.t337.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end211.i.i

if.end211.i.i:                                    ; preds = %if.else207.i.i, %if.then201.i.i
  %_tmp.0.off0.i.i = phi i32 [ %div205.i.i, %if.then201.i.i ], [ %extract.t337.i.i, %if.else207.i.i ]
  %conv215.i.i = add i32 %_tmp.0.off0.i.i, %76
  br label %vctrl_calc_output_voltage.exit.i

vctrl_calc_output_voltage.exit.i:                 ; preds = %if.end211.i.i, %if.then9.i.i, %if.then5.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call20.i, %do.end.i.i ], [ %70, %if.then5.i.i ], [ %74, %if.then9.i.i ], [ %conv215.i.i, %if.end211.i.i ]
  %80 = ptrtoint ptr %vtable.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vtable.i, align 4
  %out.i139 = getelementptr %struct.vctrl_voltage_table, ptr %81, i32 %idx_vt.0146.i, i32 1
  %82 = ptrtoint ptr %out.i139 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i.i, ptr %out.i139, align 4
  %inc33.i = add i32 %idx_vt.0146.i, 1
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %vctrl_calc_output_voltage.exit.i, %lor.lhs.false23.i.for.inc34.i_crit_edge, %for.body19.i.for.inc34.i_crit_edge
  %idx_vt.1.i = phi i32 [ %idx_vt.0146.i, %for.body19.i.for.inc34.i_crit_edge ], [ %idx_vt.0146.i, %lor.lhs.false23.i.for.inc34.i_crit_edge ], [ %inc33.i, %vctrl_calc_output_voltage.exit.i ]
  %inc35.i = add nuw nsw i32 %i.1145.i, 1
  %exitcond154.not.i = icmp eq i32 %inc35.i, %call1.i
  br i1 %exitcond154.not.i, label %for.inc34.i.for.end36.i_crit_edge, label %for.inc34.i.for.body19.i_crit_edge

for.inc34.i.for.body19.i_crit_edge:               ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19.i

for.inc34.i.for.end36.i_crit_edge:                ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36.i

for.end36.i:                                      ; preds = %for.inc34.i.for.end36.i_crit_edge, %for.cond17.preheader.i.for.end36.i_crit_edge
  %83 = ptrtoint ptr %vtable.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vtable.i, align 4
  %85 = ptrtoint ptr %n_voltages2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_voltages2.i, align 4
  call void @sort(ptr noundef %84, i32 noundef %86, i32 noundef 12, ptr noundef nonnull @vctrl_cmp_ctrl_uV, ptr noundef null) #7
  %87 = ptrtoint ptr %n_voltages2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_voltages2.i, align 4
  %i.2149.i = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2149.i)
  %cmp41150.i = icmp sgt i32 %i.2149.i, 0
  br i1 %cmp41150.i, label %for.body42.lr.ph.i, label %for.end36.i.if.end34_crit_edge

for.end36.i.if.end34_crit_edge:                   ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.body42.lr.ph.i:                               ; preds = %for.end36.i
  %ovp_threshold.i140 = getelementptr inbounds %struct.vctrl_data, ptr %45, i32 0, i32 4
  br label %for.body49.preheader.i

for.body49.preheader.i:                           ; preds = %if.end74.i.for.body49.preheader.i_crit_edge, %for.body42.lr.ph.i
  %i.2152.i = phi i32 [ %i.2149.i, %for.body42.lr.ph.i ], [ %i.2.i, %if.end74.i.for.body49.preheader.i_crit_edge ]
  %i.2.in151.i = phi i32 [ %88, %for.body42.lr.ph.i ], [ %i.2152.i, %if.end74.i.for.body49.preheader.i_crit_edge ]
  %89 = ptrtoint ptr %vtable.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vtable.i, align 4
  %out45.i = getelementptr %struct.vctrl_voltage_table, ptr %90, i32 %i.2152.i, i32 1
  %91 = ptrtoint ptr %out45.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %out45.i, align 4
  %93 = ptrtoint ptr %ovp_threshold.i140 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ovp_threshold.i140, align 4
  %sub46.i = sub i32 100, %94
  %mul.i = mul i32 %sub46.i, %92
  %div.i = udiv i32 %mul.i, 100
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.inc58.i.for.body49.i_crit_edge, %for.body49.preheader.i
  %j.0148.i = phi i32 [ %inc59.i, %for.inc58.i.for.body49.i_crit_edge ], [ 0, %for.body49.preheader.i ]
  %out52.i = getelementptr %struct.vctrl_voltage_table, ptr %90, i32 %j.0148.i, i32 1
  %95 = ptrtoint ptr %out52.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %out52.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %div.i)
  %cmp53.not.i = icmp slt i32 %96, %div.i
  br i1 %cmp53.not.i, label %for.inc58.i, label %for.end60.i

for.inc58.i:                                      ; preds = %for.body49.i
  %inc59.i = add nuw nsw i32 %j.0148.i, 1
  %exitcond155.not.i = icmp eq i32 %inc59.i, %i.2152.i
  br i1 %exitcond155.not.i, label %for.inc58.i.do.end65.i_crit_edge, label %for.inc58.i.for.body49.i_crit_edge

for.inc58.i.for.body49.i_crit_edge:               ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.i

for.inc58.i.do.end65.i_crit_edge:                 ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65.i

for.end60.i:                                      ; preds = %for.body49.i
  %ovp_min_sel.i = getelementptr %struct.vctrl_voltage_table, ptr %90, i32 %i.2152.i, i32 2
  %97 = ptrtoint ptr %ovp_min_sel.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %j.0148.i, ptr %ovp_min_sel.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0148.i, i32 %i.2152.i)
  %cmp61.i = icmp eq i32 %j.0148.i, %i.2152.i
  br i1 %cmp61.i, label %for.end60.i.do.end65.i_crit_edge, label %for.end60.i.if.end74.i_crit_edge

for.end60.i.if.end74.i_crit_edge:                 ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

for.end60.i.do.end65.i_crit_edge:                 ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end65.i

do.end65.i:                                       ; preds = %for.end60.i.do.end65.i_crit_edge, %for.inc58.i.do.end65.i_crit_edge
  %98 = ptrtoint ptr %vtable.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vtable.i, align 4
  %out69.i = getelementptr %struct.vctrl_voltage_table, ptr %99, i32 %i.2152.i, i32 1
  %100 = ptrtoint ptr %out69.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %out69.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %101) #10
  %sub70.i = add i32 %i.2.in151.i, -2
  %102 = ptrtoint ptr %vtable.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vtable.i, align 4
  %ovp_min_sel73.i = getelementptr %struct.vctrl_voltage_table, ptr %103, i32 %i.2152.i, i32 2
  %104 = ptrtoint ptr %ovp_min_sel73.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub70.i, ptr %ovp_min_sel73.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %do.end65.i, %for.end60.i.if.end74.i_crit_edge
  %i.2.i = add i32 %i.2152.i, -1
  %cmp41.i = icmp sgt i32 %i.2.i, 0
  br i1 %cmp41.i, label %if.end74.i.for.body49.preheader.i_crit_edge, label %if.end74.i.if.end34_crit_edge

if.end74.i.if.end34_crit_edge:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end74.i.for.body49.preheader.i_crit_edge:      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.preheader.i

if.end34:                                         ; preds = %if.end74.i.if.end34_crit_edge, %for.end36.i.if.end34_crit_edge
  %call35 = call i32 @regulator_get_voltage(ptr noundef %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end, label %if.end39

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %105 = ptrtoint ptr %vrange.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %vrange.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %106)
  %cmp40 = icmp slt i32 %call35, %106
  br i1 %cmp40, label %if.end39.if.end56.sink.split_crit_edge, label %if.else42

if.end39.if.end56.sink.split_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.sink.split

if.else42:                                        ; preds = %if.end39
  %107 = ptrtoint ptr %max_uV79.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_uV79.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %108)
  %cmp43 = icmp sgt i32 %call35, %108
  %n_voltages = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 1, i32 8
  %109 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_voltages, align 4
  br i1 %cmp43, label %if.then44, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp48149.not = icmp eq i32 %110, 0
  br i1 %cmp48149.not, label %for.cond.preheader.if.end56_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vtable = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 6
  %111 = ptrtoint ptr %vtable to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %vtable, align 4
  br label %for.body

if.then44:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %110, -1
  br label %if.end56.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vctrl_voltage_table, ptr %112, i32 %i.0150
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %114)
  %cmp50 = icmp eq i32 %call35, %114
  br i1 %cmp50, label %for.body.if.end56.sink.split_crit_edge, label %for.inc

for.body.if.end56.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, %110
  br i1 %exitcond.not, label %for.inc.if.end56_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end56.sink.split:                              ; preds = %for.body.if.end56.sink.split_crit_edge, %if.then44, %if.end39.if.end56.sink.split_crit_edge
  %i.0150.lcssa.sink = phi i32 [ %sub, %if.then44 ], [ 0, %if.end39.if.end56.sink.split_crit_edge ], [ %i.0150, %for.body.if.end56.sink.split_crit_edge ]
  %sel52 = getelementptr inbounds %struct.vctrl_data, ptr %call.i, i32 0, i32 7
  %115 = ptrtoint ptr %sel52 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %i.0150.lcssa.sink, ptr %sel52, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %for.inc.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge, %if.end22.if.end56_crit_edge
  call void @devm_regulator_put(ptr noundef %call7) #7
  %call58 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %cfg) #7
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call58, ptr %call.i, align 4
  %cmp.i142 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %call58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %117) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end56.cleanup_crit_edge, %do.end, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i136, %if.end17.cleanup_crit_edge, %if.then9, %vctrl_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %if.then9 ], [ %117, %if.then61 ], [ %call35, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ %retval.0.i.ph, %vctrl_parse_dt.exit.thread ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -22, %do.end.i136 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_linear_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_set_voltage(ptr noundef %rdev, i32 noundef %req_min_uV, i32 noundef %req_max_uV, ptr nocapture noundef readnone %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %supply = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 15
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end:                                           ; preds = %entry
  %rdev2 = getelementptr inbounds %struct.regulator, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev2, align 4
  %call3 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %3) #7
  %out3.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %vctrl_calc_output_voltage.exit

if.end.i:                                         ; preds = %if.end
  %vrange.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %vrange.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vrange.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %5)
  %cmp4.i = icmp slt i32 %call3, %5
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %out3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out3.i, align 4
  br label %vctrl_calc_output_voltage.exit

if.end7.i:                                        ; preds = %if.end.i
  %max_uV.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call3)
  %cmp8.i = icmp slt i32 %9, %call3
  br i1 %cmp8.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_uV10.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %max_uV10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_uV10.i, align 4
  br label %vctrl_calc_output_voltage.exit

if.end11.i:                                       ; preds = %if.end7.i
  %12 = ptrtoint ptr %out3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out3.i, align 4
  %sub.i = sub i32 %9, %5
  %sub16.i = sub i32 %call3, %5
  %conv17.i = sext i32 %sub16.i to i64
  %max_uV18.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %max_uV18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_uV18.i, align 4
  %sub20.i = sub i32 %15, %13
  %conv21.i = sext i32 %sub20.i to i64
  %mul.i = mul nsw i64 %conv21.i, %conv17.i
  %div.i = sdiv i32 %sub.i, 2
  %conv22.i = sext i32 %div.i to i64
  %add.i = add nsw i64 %mul.i, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp197.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp197.i, label %if.then201.i, label %if.else207.i, !prof !114

if.then201.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv202.i = trunc i64 %add.i to i32
  %div205.i = udiv i32 %conv202.i, %sub.i
  br label %if.end211.i

if.else207.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i, i64 %add.i) #11, !srcloc !115
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t337.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.else207.i, %if.then201.i
  %_tmp.0.off0.i = phi i32 [ %div205.i, %if.then201.i ], [ %extract.t337.i, %if.else207.i ]
  %conv215.i = add i32 %_tmp.0.off0.i, %13
  br label %vctrl_calc_output_voltage.exit

vctrl_calc_output_voltage.exit:                   ; preds = %if.end211.i, %if.then9.i, %if.then5.i, %do.end.i
  %retval.0.i = phi i32 [ %call3, %do.end.i ], [ %7, %if.then5.i ], [ %11, %if.then9.i ], [ %conv215.i, %if.end211.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %req_min_uV)
  %cmp.not = icmp sgt i32 %retval.0.i, %req_min_uV
  br i1 %cmp.not, label %lor.lhs.false, label %vctrl_calc_output_voltage.exit.if.then6_crit_edge

vctrl_calc_output_voltage.exit.if.then6_crit_edge: ; preds = %vctrl_calc_output_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %vctrl_calc_output_voltage.exit
  %ovp_threshold = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %ovp_threshold to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ovp_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %while.body.lr.ph

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

while.body.lr.ph:                                 ; preds = %lor.lhs.false
  %vrange.i260 = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5
  %max_uV.i262 = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1, i32 1
  %max_uV8.i266 = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 0, i32 1
  %min_slew_down_rate = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 3
  br label %while.body

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %vctrl_calc_output_voltage.exit.if.then6_crit_edge
  %19 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %supply, align 4
  %rdev8 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %rdev8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdev8, align 4
  %vrange.i75 = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %vrange.i75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vrange.i75, align 4
  %max_uV.i77 = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %max_uV.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_uV.i77, align 4
  %27 = ptrtoint ptr %out3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out3.i, align 4
  %sub.i78 = sub i32 %26, %28
  %sub6.i = sub i32 %req_min_uV, %28
  %conv7.i = sext i32 %sub6.i to i64
  %max_uV8.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %max_uV8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_uV8.i, align 4
  %sub10.i = sub i32 %30, %24
  %conv11.i = sext i32 %sub10.i to i64
  %mul.i79 = mul nsw i64 %conv11.i, %conv7.i
  %div.i80 = sdiv i32 %sub.i78, 2
  %conv12.i = sext i32 %div.i80 to i64
  %add.i81 = add nsw i64 %mul.i79, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i81)
  %cmp182.i = icmp ult i64 %add.i81, 4294967296
  br i1 %cmp182.i, label %if.then186.i, label %if.else192.i, !prof !114

if.then186.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %conv187.i = trunc i64 %add.i81 to i32
  %div190.i = udiv i32 %conv187.i, %sub.i78
  br label %vctrl_calc_ctrl_voltage.exit

if.else192.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i78, i64 %add.i81) #11, !srcloc !115
  %asmresult1.i.i122 = extractvalue { i64, i64 } %31, 1
  %extract.t312.i = trunc i64 %asmresult1.i.i122 to i32
  br label %vctrl_calc_ctrl_voltage.exit

vctrl_calc_ctrl_voltage.exit:                     ; preds = %if.else192.i, %if.then186.i
  %_tmp.0.off0.i123 = phi i32 [ %div190.i, %if.then186.i ], [ %extract.t312.i, %if.else192.i ]
  %conv200.i = add i32 %_tmp.0.off0.i123, %24
  %sub6.i128 = sub i32 %req_max_uV, %28
  %conv7.i129 = sext i32 %sub6.i128 to i64
  %mul.i133 = mul nsw i64 %conv11.i, %conv7.i129
  %add.i136 = add nsw i64 %mul.i133, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i136)
  %cmp182.i249 = icmp ult i64 %add.i136, 4294967296
  br i1 %cmp182.i249, label %if.then186.i253, label %if.else192.i256, !prof !114

if.then186.i253:                                  ; preds = %vctrl_calc_ctrl_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv187.i251 = trunc i64 %add.i136 to i32
  %div190.i252 = udiv i32 %conv187.i251, %sub.i78
  br label %vctrl_calc_ctrl_voltage.exit259

if.else192.i256:                                  ; preds = %vctrl_calc_ctrl_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i78, i64 %add.i136) #11, !srcloc !115
  %asmresult1.i.i254 = extractvalue { i64, i64 } %32, 1
  %extract.t312.i255 = trunc i64 %asmresult1.i.i254 to i32
  br label %vctrl_calc_ctrl_voltage.exit259

vctrl_calc_ctrl_voltage.exit259:                  ; preds = %if.else192.i256, %if.then186.i253
  %_tmp.0.off0.i257 = phi i32 [ %div190.i252, %if.then186.i253 ], [ %extract.t312.i255, %if.else192.i256 ]
  %conv200.i258 = add i32 %_tmp.0.off0.i257, %24
  %call11 = tail call i32 @regulator_set_voltage_rdev(ptr noundef %22, i32 noundef %conv200.i, i32 noundef %conv200.i258, i32 noundef 0) #7
  br label %cleanup40

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %uV.0411 = phi i32 [ %retval.0.i, %while.body.lr.ph ], [ %36, %cleanup.while.body_crit_edge ]
  %33 = ptrtoint ptr %ovp_threshold to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ovp_threshold, align 4
  %mul = mul i32 %34, %uV.0411
  %div = udiv i32 %mul, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %35 = icmp ult i32 %mul, 100
  %spec.store.select = select i1 %35, i32 1, i32 %div
  %sub = sub i32 %uV.0411, %spec.store.select
  %36 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %req_min_uV)
  %37 = ptrtoint ptr %vrange.i260 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vrange.i260, align 4
  %39 = ptrtoint ptr %max_uV.i262 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_uV.i262, align 4
  %41 = ptrtoint ptr %out3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %out3.i, align 4
  %sub.i263 = sub i32 %40, %42
  %sub6.i264 = sub i32 %36, %42
  %conv7.i265 = sext i32 %sub6.i264 to i64
  %43 = ptrtoint ptr %max_uV8.i266 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_uV8.i266, align 4
  %sub10.i267 = sub i32 %44, %38
  %conv11.i268 = sext i32 %sub10.i267 to i64
  %mul.i269 = mul nsw i64 %conv7.i265, %conv11.i268
  %div.i270 = sdiv i32 %sub.i263, 2
  %conv12.i271 = sext i32 %div.i270 to i64
  %add.i272 = add nsw i64 %mul.i269, %conv12.i271
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i272)
  %cmp182.i385 = icmp ult i64 %add.i272, 4294967296
  br i1 %cmp182.i385, label %if.then186.i389, label %if.else192.i392, !prof !114

if.then186.i389:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv187.i387 = trunc i64 %add.i272 to i32
  %div190.i388 = udiv i32 %conv187.i387, %sub.i263
  br label %vctrl_calc_ctrl_voltage.exit395

if.else192.i392:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i263, i64 %add.i272) #11, !srcloc !115
  %asmresult1.i.i390 = extractvalue { i64, i64 } %45, 1
  %extract.t312.i391 = trunc i64 %asmresult1.i.i390 to i32
  br label %vctrl_calc_ctrl_voltage.exit395

vctrl_calc_ctrl_voltage.exit395:                  ; preds = %if.else192.i392, %if.then186.i389
  %_tmp.0.off0.i393 = phi i32 [ %div190.i388, %if.then186.i389 ], [ %extract.t312.i391, %if.else192.i392 ]
  %conv200.i394 = add i32 %_tmp.0.off0.i393, %38
  %46 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %supply, align 4
  %rdev21 = getelementptr inbounds %struct.regulator, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %rdev21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rdev21, align 4
  %call22 = tail call i32 @regulator_set_voltage_rdev(ptr noundef %49, i32 noundef %conv200.i394, i32 noundef %conv200.i394, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %err

cleanup:                                          ; preds = %vctrl_calc_ctrl_voltage.exit395
  %50 = ptrtoint ptr %min_slew_down_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %min_slew_down_rate, align 4
  %52 = xor i32 %36, -1
  %add = add i32 %uV.0411, %52
  %sub27 = add i32 %add, %51
  %div29 = udiv i32 %sub27, %51
  %sub31 = add i32 %div29, 9
  %div32 = sdiv i32 %sub31, 10
  %add33 = add i32 %div32, %div29
  tail call void @usleep_range_state(i32 noundef %div29, i32 noundef %add33, i32 noundef 2) #7
  %cmp13 = icmp sgt i32 %sub, %req_min_uV
  br i1 %cmp13, label %cleanup.while.body_crit_edge, label %cleanup.cleanup40_crit_edge

cleanup.cleanup40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

err:                                              ; preds = %vctrl_calc_ctrl_voltage.exit395
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %supply, align 4
  %rdev38 = getelementptr inbounds %struct.regulator, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %rdev38 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rdev38, align 4
  %call39 = tail call i32 @regulator_set_voltage_rdev(ptr noundef %56, i32 noundef %call3, i32 noundef %call3, i32 noundef 0) #7
  br label %cleanup40

cleanup40:                                        ; preds = %err, %cleanup.cleanup40_crit_edge, %vctrl_calc_ctrl_voltage.exit259, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ %call11, %vctrl_calc_ctrl_voltage.exit259 ], [ %call22, %err ], [ -517, %entry.cleanup40_crit_edge ], [ 0, %cleanup.cleanup40_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_get_voltage(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %supply = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 15
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdev2 = getelementptr inbounds %struct.regulator, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev2, align 4
  %call3 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %3) #7
  %out3.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %vrange.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %vrange.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vrange.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %5)
  %cmp4.i = icmp slt i32 %call3, %5
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %out3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out3.i, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %max_uV.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_uV.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call3)
  %cmp8.i = icmp slt i32 %9, %call3
  br i1 %cmp8.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_uV10.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %max_uV10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_uV10.i, align 4
  br label %cleanup

if.end11.i:                                       ; preds = %if.end7.i
  %12 = ptrtoint ptr %out3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out3.i, align 4
  %sub.i = sub i32 %9, %5
  %sub16.i = sub i32 %call3, %5
  %conv17.i = sext i32 %sub16.i to i64
  %max_uV18.i = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %max_uV18.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_uV18.i, align 4
  %sub20.i = sub i32 %15, %13
  %conv21.i = sext i32 %sub20.i to i64
  %mul.i = mul nsw i64 %conv21.i, %conv17.i
  %div.i = sdiv i32 %sub.i, 2
  %conv22.i = sext i32 %div.i to i64
  %add.i = add nsw i64 %mul.i, %conv22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp197.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp197.i, label %if.then201.i, label %if.else207.i, !prof !114

if.then201.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv202.i = trunc i64 %add.i to i32
  %div205.i = udiv i32 %conv202.i, %sub.i
  br label %if.end211.i

if.else207.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i, i64 %add.i) #11, !srcloc !115
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  %extract.t337.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.else207.i, %if.then201.i
  %_tmp.0.off0.i = phi i32 [ %div205.i, %if.then201.i ], [ %extract.t337.i, %if.else207.i ]
  %conv215.i = add i32 %_tmp.0.off0.i, %13
  br label %cleanup

cleanup:                                          ; preds = %if.end211.i, %if.then9.i, %if.then5.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ %call3, %do.end.i ], [ %7, %if.then5.i ], [ %11, %if.then9.i ], [ %conv215.i, %if.end211.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %enabled = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %enabled = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %enabled = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !116
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_list_voltage(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vtable = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %vtable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vtable, align 4
  %out = getelementptr %struct.vctrl_voltage_table, ptr %5, i32 %selector, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %sel = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sel, align 4
  %supply = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 15
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup81_crit_edge, label %if.end

entry.cleanup81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %n_voltages = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %selector)
  %cmp.not = icmp ugt i32 %7, %selector
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup81_crit_edge

if.end.cleanup81_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %selector)
  %cmp4.not = icmp ugt i32 %1, %selector
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end2.if.then6_crit_edge

if.end2.if.then6_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end2
  %ovp_threshold = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %ovp_threshold to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ovp_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %while.cond.preheader

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

while.cond.preheader:                             ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %selector)
  %cmp19.not136 = icmp eq i32 %11, %selector
  br i1 %cmp19.not136, label %while.cond.preheader.cleanup81_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup81_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %vtable20 = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 6
  %min_slew_down_rate = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 3
  br label %while.body

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end2.if.then6_crit_edge
  %rdev8 = getelementptr inbounds %struct.regulator, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %rdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev8, align 4
  %vtable = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %vtable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vtable, align 4
  %arrayidx = getelementptr %struct.vctrl_voltage_table, ptr %15, i32 %selector
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call12 = tail call i32 @regulator_set_voltage_rdev(ptr noundef %13, i32 noundef %17, i32 noundef %17, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.then6.cleanup81_crit_edge

if.then6.cleanup81_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.then14:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %selector, ptr %sel, align 4
  br label %cleanup81

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %19 = phi i32 [ %11, %while.body.lr.ph ], [ %35, %cleanup.while.body_crit_edge ]
  %20 = ptrtoint ptr %vtable20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vtable20, align 4
  %ovp_min_sel = getelementptr %struct.vctrl_voltage_table, ptr %21, i32 %19, i32 2
  %22 = ptrtoint ptr %ovp_min_sel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ovp_min_sel, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %selector)
  %25 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %supply, align 4
  %rdev31 = getelementptr inbounds %struct.regulator, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %rdev31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdev31, align 4
  %arrayidx33 = getelementptr %struct.vctrl_voltage_table, ptr %21, i32 %24
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx33, align 4
  %call38 = tail call i32 @regulator_set_voltage_rdev(ptr noundef %28, i32 noundef %30, i32 noundef %30, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %err

cleanup:                                          ; preds = %while.body
  %31 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %24, ptr %sel, align 4
  %32 = ptrtoint ptr %min_slew_down_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_slew_down_rate, align 4
  %sub52 = add i32 %33, -1
  %div = udiv i32 %sub52, %33
  %sub55 = add i32 %div, 9
  %div56 = sdiv i32 %sub55, 10
  %add57 = add i32 %div56, %div
  tail call void @usleep_range_state(i32 noundef %div, i32 noundef %add57, i32 noundef 2) #7
  %34 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sel, align 4
  %cmp19.not = icmp eq i32 %35, %selector
  br i1 %cmp19.not, label %cleanup.cleanup81_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.cleanup81_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

err:                                              ; preds = %while.body
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %36 = ptrtoint ptr %vtable20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vtable20, align 4
  %arrayidx42 = getelementptr %struct.vctrl_voltage_table, ptr %37, i32 %24
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %39) #10
  %40 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %1)
  %cmp60.not = icmp eq i32 %41, %1
  br i1 %cmp60.not, label %err.cleanup81_crit_edge, label %if.then61

err.cleanup81_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.then61:                                        ; preds = %err
  %42 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %supply, align 4
  %rdev63 = getelementptr inbounds %struct.regulator, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %rdev63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rdev63, align 4
  %46 = ptrtoint ptr %vtable20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vtable20, align 4
  %arrayidx65 = getelementptr %struct.vctrl_voltage_table, ptr %47, i32 %1
  %48 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx65, align 4
  %call70 = tail call i32 @regulator_set_voltage_rdev(ptr noundef %45, i32 noundef %49, i32 noundef %49, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %do.end77

if.then72:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %1, ptr %sel, align 4
  br label %cleanup81

do.end77:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44) #10
  br label %cleanup81

cleanup81:                                        ; preds = %do.end77, %if.then72, %err.cleanup81_crit_edge, %cleanup.cleanup81_crit_edge, %if.then14, %if.then6.cleanup81_crit_edge, %while.cond.preheader.cleanup81_crit_edge, %if.end.cleanup81_crit_edge, %entry.cleanup81_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup81_crit_edge ], [ -22, %if.end.cleanup81_crit_edge ], [ 0, %if.then14 ], [ %call12, %if.then6.cleanup81_crit_edge ], [ %call38, %if.then72 ], [ %call38, %do.end77 ], [ %call38, %err.cleanup81_crit_edge ], [ 0, %while.cond.preheader.cleanup81_crit_edge ], [ 0, %cleanup.cleanup81_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vctrl_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %sel = getelementptr inbounds %struct.vctrl_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sel, align 4
  ret i32 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vctrl_cmp_ctrl_uV(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_vctrl_regulator__290_553_vctrl_driver_init6, !1, !"__initcall__kmod_vctrl_regulator__290_553_vctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/vctrl-regulator.c", i32 553, i32 1}
!2 = !{ptr @__exitcall_vctrl_driver_exit, !1, !"__exitcall_vctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/regulator/vctrl-regulator.c", i32 555, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/regulator/vctrl-regulator.c", i32 556, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/regulator/vctrl-regulator.c", i32 557, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/vctrl-regulator.c", i32 548, i32 12}
!12 = !{ptr @vctrl_driver, !13, !"vctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/vctrl-regulator.c", i32 545, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/vctrl-regulator.c", i32 468, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/vctrl-regulator.c", i32 475, i32 16}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/regulator/vctrl-regulator.c", i32 505, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vctrl_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @vctrl_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/vctrl-regulator.c", i32 532, i32 3}
!28 = !{ptr @vctrl_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vctrl_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/regulator/vctrl-regulator.c", i32 248, i32 33}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/vctrl-regulator.c", i32 252, i32 4}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vctrl_parse_dt._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @vctrl_parse_dt._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/vctrl-regulator.c", i32 259, i32 33}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/vctrl-regulator.c", i32 265, i32 4}
!41 = !{ptr @vctrl_parse_dt._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @vctrl_parse_dt._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/vctrl-regulator.c", i32 269, i32 4}
!45 = !{ptr @vctrl_parse_dt._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @vctrl_parse_dt._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/vctrl-regulator.c", i32 276, i32 3}
!49 = !{ptr @vctrl_parse_dt._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vctrl_parse_dt._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/vctrl-regulator.c", i32 281, i32 33}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/vctrl-regulator.c", i32 283, i32 3}
!55 = !{ptr @vctrl_parse_dt._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vctrl_parse_dt._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/vctrl-regulator.c", i32 289, i32 33}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/vctrl-regulator.c", i32 291, i32 3}
!61 = !{ptr @vctrl_parse_dt._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vctrl_parse_dt._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/vctrl-regulator.c", i32 297, i32 39}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/vctrl-regulator.c", i32 300, i32 3}
!67 = !{ptr @vctrl_parse_dt._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vctrl_parse_dt._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/vctrl-regulator.c", i32 306, i32 3}
!71 = !{ptr @vctrl_parse_dt._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @vctrl_parse_dt._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @vctrl_ops_cont, !74, !"vctrl_ops_cont", i1 false, i1 false}
!74 = !{!"../drivers/regulator/vctrl-regulator.c", i32 427, i32 35}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/vctrl-regulator.c", i32 65, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @vctrl_calc_output_voltage._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @vctrl_calc_output_voltage._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @vctrl_ops_non_cont, !81, !"vctrl_ops_non_cont", i1 false, i1 false}
!81 = !{!"../drivers/regulator/vctrl-regulator.c", i32 435, i32 35}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/regulator/vctrl-regulator.c", i32 198, i32 4}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vctrl_set_voltage_sel._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @vctrl_set_voltage_sel._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/regulator/vctrl-regulator.c", i32 222, i32 4}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vctrl_set_voltage_sel._entry.43, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @vctrl_set_voltage_sel._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/regulator/vctrl-regulator.c", i32 349, i32 3}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vctrl_init_vtable._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @vctrl_init_vtable._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/regulator/vctrl-regulator.c", i32 392, i32 4}
!99 = !{ptr @vctrl_init_vtable._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @vctrl_init_vtable._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @vctrl_of_match, !102, !"vctrl_of_match", i1 false, i1 false}
!102 = !{!"../drivers/regulator/vctrl-regulator.c", i32 539, i32 34}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2147993980, i64 2147994260, i64 2147994594, i64 2147994928}
!116 = !{i8 0, i8 2}
