; ModuleID = '/llk/IR_all_yes/drivers/mfd/wcd934x.c_pt.bc'
source_filename = "../drivers/mfd/wcd934x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.slim_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.slim_device_id = type { i16, i16, i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.wcd934x_ddata = type { [5 x %struct.regulator_bulk_data], ptr, ptr, ptr, ptr, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@__initcall__kmod_wcd934x__288_293_wcd934x_slim_driver_init6 = internal global ptr @wcd934x_slim_driver_init, section ".initcall6.init", align 4
@wcd934x_slim_driver = internal global { %struct.slim_driver, [32 x i8] } { %struct.slim_driver { ptr @wcd934x_slim_probe, ptr @wcd934x_slim_remove, ptr null, ptr @wcd934x_slim_status, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wcd934x_slim_id }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wcd934x_slim_driver_exit = internal global ptr @wcd934x_slim_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [40 x i8] c"wcd934x.description=WCD934X slim driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [33 x i8] c"wcd934x.file=drivers/mfd/wcd934x\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [23 x i8] c"wcd934x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [29 x i8] c"wcd934x.alias=slim:217:250:*\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [68 x i8] c"wcd934x.author=Srinivas Kandagatla <srinivas.kandagatla@linaro.org>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wcd934x-slim\00", [19 x i8] zeroinitializer }, align 32
@wcd934x_slim_id = internal constant { [2 x %struct.slim_device_id], [40 x i8] } { [2 x %struct.slim_device_id] [%struct.slim_device_id { i16 535, i16 592, i16 1, i16 0, i32 0 }, %struct.slim_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@wcd934x_slim_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get extclk\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcd934x_slim_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/wcd934x.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcd934x_slim_probe._entry_ptr = internal global ptr @wcd934x_slim_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd-buck\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdd-buck-sido\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-tx\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-rx\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-io\00", [25 x i8] zeroinitializer }, align 32
@wcd934x_slim_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 238, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get supplies: err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wcd934x_slim_probe._entry_ptr.15 = internal global ptr @wcd934x_slim_probe._entry.13, section ".printk_index", align 4
@wcd934x_slim_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable supplies: err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wcd934x_slim_probe._entry_ptr.18 = internal global ptr @wcd934x_slim_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get reset gpio: err = %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wcd934x_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @wcd934x_is_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0, i32 0, ptr @wcd934x_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wcd934x:159:(&wcd934x_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error allocating slim regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcd934x_slim_status_up\00", [41 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._entry_ptr = internal global ptr @wcd934x_slim_status_up._entry, section ".printk_index", align 4
@wcd934x_slim_status_up._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 167, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to bring up WCD934X: err = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._entry_ptr.26 = internal global ptr @wcd934x_slim_status_up._entry.24, section ".printk_index", align 4
@wcd934x_slim_status_up._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add IRQ chip: err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._entry_ptr.29 = internal global ptr @wcd934x_slim_status_up._entry.27, section ".printk_index", align 4
@wcd934x_devices = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.40, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.41, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.43, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.5, i32 184, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to add child devices: err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wcd934x_slim_status_up._entry_ptr.32 = internal global ptr @wcd934x_slim_status_up._entry.30, section ".printk_index", align 4
@wcd934x_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr @.str.33, i32 0, i32 65535, i32 2048, i32 255, i32 0, i32 2048, i32 256 }], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WCD934X\00", [24 x i8] zeroinitializer }, align 32
@wcd934x_bring_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 135, ptr @.str.36, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WCD934x chip id major 0x%x, minor 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wcd934x_bring_up\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wcd934x_bring_up._entry_ptr = internal global ptr @wcd934x_bring_up._entry, section ".printk_index", align 4
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wcd934x_irq\00", [20 x i8] zeroinitializer }, align 32
@wcd934x_irqs = internal constant { [21 x %struct.regmap_irq], [172 x i8] } { [21 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type { i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 3 } }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type { i32 0, i32 4, i32 0, i32 0, i32 4, i32 4, i32 3 } }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type { i32 0, i32 8, i32 0, i32 0, i32 8, i32 8, i32 3 } }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type { i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 3 } }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type { i32 1, i32 2, i32 0, i32 0, i32 2, i32 2, i32 3 } }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type { i32 1, i32 4, i32 0, i32 0, i32 4, i32 4, i32 3 } }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type { i32 1, i32 8, i32 0, i32 0, i32 8, i32 8, i32 3 } }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type { i32 1, i32 16, i32 0, i32 0, i32 16, i32 16, i32 3 } }, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq zeroinitializer, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type { i32 2, i32 16, i32 0, i32 0, i32 16, i32 16, i32 3 } }], [172 x i8] zeroinitializer }, align 32
@wcd934x_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.37, i32 0, i32 0, ptr null, i32 0, i32 1041, i32 1033, i32 0, i32 1049, i32 0, i32 1121, ptr null, i32 0, i8 0, i8 0, i32 4, ptr @wcd934x_irqs, i32 21, i32 4, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcd934x-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wcd934x-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,wcd9340-gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcd934x-soundwire\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qcom,soundwire-v1.3.0\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [52 x i64] [i64 50, i64 32, i64 1041, i64 1042, i64 1043, i64 1044, i64 1045, i64 1046, i64 1047, i64 1048, i64 1049, i64 1050, i64 1051, i64 1052, i64 1053, i64 1054, i64 1055, i64 1056, i64 1057, i64 1058, i64 1059, i64 1060, i64 1061, i64 1062, i64 1063, i64 1064, i64 1065, i64 1066, i64 1067, i64 1068, i64 1069, i64 1070, i64 1071, i64 1072, i64 1073, i64 1074, i64 1075, i64 1076, i64 1537, i64 1539, i64 1556, i64 1557, i64 1558, i64 1559, i64 1560, i64 1561, i64 1571, i64 3217, i64 3218, i64 3219, i64 3220, i64 3222]
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"wcd934x_slim_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 283, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 285, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"wcd934x_slim_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 277, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 222, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 224, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 226, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 230, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 231, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 232, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 233, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 234, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 238, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 244, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 254, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 257, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"wcd934x_regmap_config\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 107, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 159, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 161, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 167, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 176, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"wcd934x_devices\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 34, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 183, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"wcd934x_ranges\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 95, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 96, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 134, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 59, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"wcd934x_irqs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 46, i32 32 }
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"wcd934x_regmap_irq_chip\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 58, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 36, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 38, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 39, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 41, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [25 x i8] c"../drivers/mfd/wcd934x.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 42, i32 20 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_wcd934x_slim_driver_exit, ptr @__initcall__kmod_wcd934x__288_293_wcd934x_slim_driver_init6, ptr @wcd934x_bring_up._entry, ptr @wcd934x_bring_up._entry_ptr, ptr @wcd934x_slim_driver_exit, ptr @wcd934x_slim_probe._entry, ptr @wcd934x_slim_probe._entry.13, ptr @wcd934x_slim_probe._entry.16, ptr @wcd934x_slim_probe._entry_ptr, ptr @wcd934x_slim_probe._entry_ptr.15, ptr @wcd934x_slim_probe._entry_ptr.18, ptr @wcd934x_slim_status_up._entry, ptr @wcd934x_slim_status_up._entry.24, ptr @wcd934x_slim_status_up._entry.27, ptr @wcd934x_slim_status_up._entry.30, ptr @wcd934x_slim_status_up._entry_ptr, ptr @wcd934x_slim_status_up._entry_ptr.26, ptr @wcd934x_slim_status_up._entry_ptr.29, ptr @wcd934x_slim_status_up._entry_ptr.32, ptr @wcd934x_slim_driver, ptr @.str, ptr @wcd934x_slim_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @wcd934x_slim_status_up._key, ptr @wcd934x_regmap_config, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @wcd934x_devices, ptr @.str.31, ptr @wcd934x_ranges, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @wcd934x_irqs, ptr @wcd934x_regmap_irq_chip, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_id to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_status_up._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_status_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_status_up._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_status_up._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_devices to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_slim_status_up._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_bring_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_irqs to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd934x_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd934x_slim_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__slim_driver_register(ptr noundef nonnull @wcd934x_slim_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wcd934x_slim_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @slim_driver_unregister(ptr noundef nonnull @wcd934x_slim_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @slim_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__slim_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd934x_slim_probe(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %sdev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %sdev, i32 noundef 80, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_irq_get(ptr noundef %1, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.wcd934x_ddata, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr inbounds %struct.wcd934x_ddata, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev5, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %call2, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %sdev, ptr noundef nonnull @.str.2) #6
  %extclk = getelementptr inbounds %struct.wcd934x_ddata, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %extclk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.3) #9
  %6 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extclk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.8, ptr %call.i, align 4
  %arrayidx17 = getelementptr [5 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.9, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr [5 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.10, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr [5 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.11, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr [5 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.12, ptr %arrayidx26, align 4
  %call29 = tail call i32 @regulator_bulk_get(ptr noundef %sdev, i32 noundef 5, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.14, i32 noundef %call29) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end15
  %call38 = tail call i32 @regulator_bulk_enable(i32 noundef 5, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.17, i32 noundef %call38) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 650, i32 noundef 2) #6
  %call45 = tail call ptr @devm_gpiod_get_optional(ptr noundef %sdev, ptr noundef nonnull @.str.19, i32 noundef 3) #6
  %cmp.i91 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call45 to i32
  %call50 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %sdev, i32 noundef %14, ptr noundef nonnull @.str.20, i32 noundef %14) #6
  br label %cleanup

if.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  tail call void @gpiod_set_value(ptr noundef %call45, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %dev52 = getelementptr inbounds %struct.wcd934x_ddata, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sdev, ptr %dev52, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sdev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then47, %do.end43, %do.end34, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then4 ], [ %8, %do.end ], [ %call29, %do.end34 ], [ %call38, %do.end43 ], [ %call50, %if.then47 ], [ 0, %if.end51 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd934x_slim_remove(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %sdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 5, ptr noundef %1) #6
  tail call void @mfd_remove_devices(ptr noundef %sdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd934x_slim_status(ptr noundef %sdev, i32 noundef %status) #2 align 64 {
entry:
  %id_minor.i.i = alloca i16, align 2
  %id_major.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %sdev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call ptr @__regmap_init_slimbus(ptr noundef %sdev, ptr noundef nonnull @wcd934x_regmap_config, ptr noundef nonnull @wcd934x_slim_status_up._key, ptr noundef nonnull @.str.21) #6
  %regmap.i = getelementptr inbounds %struct.wcd934x_ddata, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.22) #9
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id_minor.i.i) #6
  %7 = ptrtoint ptr %id_minor.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %id_minor.i.i, align 2, !annotation !111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %id_major.i.i) #6
  %8 = ptrtoint ptr %id_major.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %id_major.i.i, align 2, !annotation !111
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %call2.i, i32 noundef 33, ptr noundef nonnull %id_minor.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

if.end.i.i:                                       ; preds = %if.end.i
  %call2.i.i = call i32 @regmap_bulk_read(ptr noundef %call2.i, i32 noundef 35, ptr noundef nonnull %id_major.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end12.i, label %if.end.i.i.do.end11.i_crit_edge

if.end.i.i.do.end11.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i.i.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call2.i.i, %if.end.i.i.do.end11.i_crit_edge ], [ %call.i.i, %if.end.i.do.end11.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id_major.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id_minor.i.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i.ph.i) #9
  br label %return

if.end12.i:                                       ; preds = %if.end.i.i
  %dev.i.i = getelementptr inbounds %struct.wcd934x_ddata, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %11 = ptrtoint ptr %id_major.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id_major.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %id_minor.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id_minor.i.i, align 2
  %conv6.i.i = zext i16 %14 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.34, i32 noundef %conv.i.i, i32 noundef %conv6.i.i) #9
  %call7.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 9, i32 noundef 1) #6
  %call8.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 1819, i32 noundef 25) #6
  %call9.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 1820, i32 noundef 21) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %call10.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 17, i32 noundef 5) #6
  %call11.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 17, i32 noundef 7) #6
  %call12.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 9, i32 noundef 3) #6
  %call13.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 9, i32 noundef 7) #6
  %call14.i.i = call i32 @regmap_write(ptr noundef %call2.i, i32 noundef 17, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id_major.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %id_minor.i.i) #6
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %irq.i = getelementptr inbounds %struct.wcd934x_ddata, ptr %2, i32 0, i32 5
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i, align 4
  %irq_data.i = getelementptr inbounds %struct.wcd934x_ddata, ptr %2, i32 0, i32 1
  %call14.i = call i32 @devm_regmap_add_irq_chip(ptr noundef %sdev, ptr noundef %16, i32 noundef %18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @wcd934x_regmap_irq_chip, ptr noundef %irq_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end20.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.28, i32 noundef %call14.i) #9
  br label %return

if.end20.i:                                       ; preds = %if.end12.i
  %call21.i = call i32 @mfd_add_devices(ptr noundef %sdev, i32 noundef -2, ptr noundef nonnull @wcd934x_devices, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.return_crit_edge, label %do.end26.i

if.end20.i.return_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev, ptr noundef nonnull @.str.31, i32 noundef %call21.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mfd_remove_devices(ptr noundef %sdev) #6
  br label %return

return:                                           ; preds = %sw.bb1, %do.end26.i, %if.end20.i.return_crit_edge, %do.end19.i, %do.end11.i, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ -22, %entry.return_crit_edge ], [ %6, %do.end.i ], [ %retval.0.i.ph.i, %do.end11.i ], [ %call14.i, %do.end19.i ], [ %call21.i, %do.end26.i ], [ 0, %if.end20.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_slimbus(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wcd934x_is_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %reg, label %sw.default [
    i32 3217, label %entry.return_crit_edge
    i32 3218, label %entry.return_crit_edge2
    i32 3219, label %entry.return_crit_edge3
    i32 3220, label %entry.return_crit_edge4
    i32 3222, label %entry.return_crit_edge5
    i32 1561, label %entry.return_crit_edge6
    i32 1560, label %entry.return_crit_edge7
    i32 1559, label %entry.return_crit_edge8
    i32 1556, label %entry.return_crit_edge9
    i32 1557, label %entry.return_crit_edge10
    i32 1558, label %entry.return_crit_edge11
    i32 1571, label %entry.return_crit_edge12
    i32 1539, label %entry.return_crit_edge13
    i32 1537, label %entry.return_crit_edge14
    i32 1041, label %entry.return_crit_edge15
    i32 1042, label %entry.return_crit_edge16
    i32 1043, label %entry.return_crit_edge17
    i32 1044, label %entry.return_crit_edge18
    i32 1045, label %entry.return_crit_edge19
    i32 1046, label %entry.return_crit_edge20
    i32 1047, label %entry.return_crit_edge21
    i32 1048, label %entry.return_crit_edge22
    i32 1049, label %entry.return_crit_edge23
    i32 1050, label %entry.return_crit_edge24
    i32 1051, label %entry.return_crit_edge25
    i32 1052, label %entry.return_crit_edge26
    i32 1053, label %entry.return_crit_edge27
    i32 1054, label %entry.return_crit_edge28
    i32 1055, label %entry.return_crit_edge29
    i32 1056, label %entry.return_crit_edge30
    i32 1057, label %entry.return_crit_edge31
    i32 1058, label %entry.return_crit_edge32
    i32 1059, label %entry.return_crit_edge33
    i32 1060, label %entry.return_crit_edge34
    i32 1061, label %entry.return_crit_edge35
    i32 1062, label %entry.return_crit_edge36
    i32 1063, label %entry.return_crit_edge37
    i32 1064, label %entry.return_crit_edge38
    i32 1065, label %entry.return_crit_edge39
    i32 1066, label %entry.return_crit_edge40
    i32 1067, label %entry.return_crit_edge41
    i32 1068, label %entry.return_crit_edge42
    i32 1069, label %entry.return_crit_edge43
    i32 1070, label %entry.return_crit_edge44
    i32 1071, label %entry.return_crit_edge45
    i32 1072, label %entry.return_crit_edge46
    i32 1073, label %entry.return_crit_edge47
    i32 1074, label %entry.return_crit_edge48
    i32 1075, label %entry.return_crit_edge49
    i32 1076, label %entry.return_crit_edge50
  ]

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_wcd934x__288_293_wcd934x_slim_driver_init6, !1, !"__initcall__kmod_wcd934x__288_293_wcd934x_slim_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wcd934x.c", i32 293, i32 1}
!2 = !{ptr @__exitcall_wcd934x_slim_driver_exit, !1, !"__exitcall_wcd934x_slim_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/mfd/wcd934x.c", i32 294, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/mfd/wcd934x.c", i32 295, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias292, !9, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wcd934x.c", i32 296, i32 1}
!10 = !{ptr @__UNIQUE_ID_author293, !11, !"__UNIQUE_ID_author293", i1 false, i1 false}
!11 = !{!"../drivers/mfd/wcd934x.c", i32 297, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/wcd934x.c", i32 285, i32 11}
!14 = !{ptr @wcd934x_slim_driver, !15, !"wcd934x_slim_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/wcd934x.c", i32 283, i32 27}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/wcd934x.c", i32 222, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/wcd934x.c", i32 224, i32 36}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/wcd934x.c", i32 226, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wcd934x_slim_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @wcd934x_slim_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/wcd934x.c", i32 230, i32 30}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/wcd934x.c", i32 231, i32 30}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/wcd934x.c", i32 232, i32 30}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/wcd934x.c", i32 233, i32 30}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/wcd934x.c", i32 234, i32 30}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/wcd934x.c", i32 238, i32 3}
!40 = !{ptr @wcd934x_slim_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wcd934x_slim_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/wcd934x.c", i32 244, i32 3}
!44 = !{ptr @wcd934x_slim_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wcd934x_slim_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/wcd934x.c", i32 254, i32 44}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/wcd934x.c", i32 257, i32 5}
!50 = !{ptr @wcd934x_slim_status_up._key, !51, !"_key", i1 false, i1 false}
!51 = !{!"../drivers/mfd/wcd934x.c", i32 159, i32 18}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/wcd934x.c", i32 161, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @wcd934x_slim_status_up._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @wcd934x_slim_status_up._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/wcd934x.c", i32 167, i32 3}
!60 = !{ptr @wcd934x_slim_status_up._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @wcd934x_slim_status_up._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/wcd934x.c", i32 176, i32 3}
!64 = !{ptr @wcd934x_slim_status_up._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @wcd934x_slim_status_up._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/wcd934x.c", i32 183, i32 3}
!68 = !{ptr @wcd934x_slim_status_up._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @wcd934x_slim_status_up._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @wcd934x_regmap_config, !71, !"wcd934x_regmap_config", i1 false, i1 false}
!71 = !{!"../drivers/mfd/wcd934x.c", i32 107, i32 29}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/wcd934x.c", i32 96, i32 12}
!74 = !{ptr @wcd934x_ranges, !75, !"wcd934x_ranges", i1 false, i1 false}
!75 = !{!"../drivers/mfd/wcd934x.c", i32 95, i32 38}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/wcd934x.c", i32 134, i32 2}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @wcd934x_bring_up._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @wcd934x_bring_up._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mfd/wcd934x.c", i32 59, i32 10}
!84 = !{ptr @wcd934x_regmap_irq_chip, !85, !"wcd934x_regmap_irq_chip", i1 false, i1 false}
!85 = !{!"../drivers/mfd/wcd934x.c", i32 58, i32 37}
!86 = !{ptr @wcd934x_irqs, !87, !"wcd934x_irqs", i1 false, i1 false}
!87 = !{!"../drivers/mfd/wcd934x.c", i32 46, i32 32}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mfd/wcd934x.c", i32 36, i32 11}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/wcd934x.c", i32 38, i32 11}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mfd/wcd934x.c", i32 39, i32 20}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mfd/wcd934x.c", i32 41, i32 11}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/wcd934x.c", i32 42, i32 20}
!98 = !{ptr @wcd934x_devices, !99, !"wcd934x_devices", i1 false, i1 false}
!99 = !{!"../drivers/mfd/wcd934x.c", i32 34, i32 30}
!100 = !{ptr @wcd934x_slim_id, !101, !"wcd934x_slim_id", i1 false, i1 false}
!101 = !{!"../drivers/mfd/wcd934x.c", i32 277, i32 36}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"auto-init"}
