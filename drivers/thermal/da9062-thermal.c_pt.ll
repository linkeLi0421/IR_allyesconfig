; ModuleID = '/llk/IR_all_yes/drivers/thermal/da9062-thermal.c_pt.bc'
source_filename = "../drivers/thermal/da9062-thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.da9062_thermal_config = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.da9062_thermal = type { ptr, %struct.delayed_work, ptr, %struct.mutex, i32, i32, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.da9062 = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_da9062_thermal__188_295_da9062_thermal_driver_init6 = internal global ptr @da9062_thermal_driver_init, section ".initcall6.init", align 4
@da9062_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9062_thermal_probe, ptr @da9062_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9062_compatible_reg_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9062_thermal_driver_exit = internal global ptr @da9062_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [34 x i8] c"da9062_thermal.author=Steve Twiss\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [84 x i8] c"da9062_thermal.description=Thermal TJUNC device driver for Dialog DA9062 and DA9061\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [51 x i8] c"da9062_thermal.file=drivers/thermal/da9062-thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [27 x i8] c"da9062_thermal.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [45 x i8] c"da9062_thermal.alias=platform:da9062-thermal\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9062-thermal\00", [17 x i8] zeroinitializer }, align 32
@da9062_compatible_reg_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9062-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9062_config }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"polling-delay-passive\00", [42 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Out-of-range polling period %d ms\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"da9062_thermal_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/thermal/da9062-thermal.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry_ptr = internal global ptr @da9062_thermal_probe._entry, section ".printk_index", align 4
@da9062_thermal_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&thermal->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@da9062_thermal_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&thermal->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@da9062_thermal_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&thermal->lock\00", [17 x i8] zeroinitializer }, align 32
@da9062_thermal_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @da9062_thermal_get_temp, ptr null, ptr null, ptr @da9062_thermal_get_trip_type, ptr @da9062_thermal_get_trip_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 236, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot register thermal zone device\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry_ptr.15 = internal global ptr @da9062_thermal_probe._entry.12, section ".printk_index", align 4
@da9062_thermal_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 242, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot enable thermal zone device\0A\00", [61 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry_ptr.18 = internal global ptr @da9062_thermal_probe._entry.16, section ".printk_index", align 4
@da9062_thermal_probe.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.3, ptr @.str.4, ptr @.str.20, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da9062_thermal\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TJUNC temperature polling period set at %d ms\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"THERMAL\00", [24 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 252, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get platform IRQ.\0A\00", [35 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry_ptr.24 = internal global ptr @da9062_thermal_probe._entry.22, section ".printk_index", align 4
@da9062_thermal_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 263, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request thermal device IRQ.\0A\00", [57 x i8] zeroinitializer }, align 32
@da9062_thermal_probe._entry_ptr.27 = internal global ptr @da9062_thermal_probe._entry.25, section ".printk_index", align 4
@da9062_thermal_poll_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 74, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot clear the TJUNC temperature status\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9062_thermal_poll_on\00", [41 x i8] zeroinitializer }, align 32
@da9062_thermal_poll_on._entry_ptr = internal global ptr @da9062_thermal_poll_on._entry, section ".printk_index", align 4
@da9062_thermal_poll_on._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 87, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Cannot check the TJUNC temperature status\0A\00", [53 x i8] zeroinitializer }, align 32
@da9062_thermal_poll_on._entry_ptr.32 = internal global ptr @da9062_thermal_poll_on._entry.30, section ".printk_index", align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@da9062_thermal_get_trip_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 135, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Driver does not support more than 1 trip-wire\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"da9062_thermal_get_trip_type\00", [35 x i8] zeroinitializer }, align 32
@da9062_thermal_get_trip_type._entry_ptr = internal global ptr @da9062_thermal_get_trip_type._entry, section ".printk_index", align 4
@da9062_thermal_get_trip_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.4, i32 154, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"da9062_thermal_get_trip_temp\00", [35 x i8] zeroinitializer }, align 32
@da9062_thermal_get_trip_temp._entry_ptr = internal global ptr @da9062_thermal_get_trip_temp._entry, section ".printk_index", align 4
@da9062_config = internal constant { %struct.da9062_thermal_config, [28 x i8] } { %struct.da9062_thermal_config { ptr @.str }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"da9062_thermal_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 286, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 290, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"da9062_compatible_reg_id_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 183, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 205, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 209, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 228, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 229, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"da9062_thermal_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 173, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 236, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 242, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 246, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 250, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 252, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 262, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 73, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 86, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 134, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 153, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"da9062_config\00", align 1
@___asan_gen_.154 = private constant [36 x i8] c"../drivers/thermal/da9062-thermal.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 179, i32 43 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_da9062_thermal_driver_exit, ptr @__initcall__kmod_da9062_thermal__188_295_da9062_thermal_driver_init6, ptr @da9062_thermal_driver_exit, ptr @da9062_thermal_get_trip_temp._entry, ptr @da9062_thermal_get_trip_temp._entry_ptr, ptr @da9062_thermal_get_trip_type._entry, ptr @da9062_thermal_get_trip_type._entry_ptr, ptr @da9062_thermal_poll_on._entry, ptr @da9062_thermal_poll_on._entry.30, ptr @da9062_thermal_poll_on._entry_ptr, ptr @da9062_thermal_poll_on._entry_ptr.32, ptr @da9062_thermal_probe._entry, ptr @da9062_thermal_probe._entry.12, ptr @da9062_thermal_probe._entry.16, ptr @da9062_thermal_probe._entry.22, ptr @da9062_thermal_probe._entry.25, ptr @da9062_thermal_probe._entry_ptr, ptr @da9062_thermal_probe._entry_ptr.15, ptr @da9062_thermal_probe._entry_ptr.18, ptr @da9062_thermal_probe._entry_ptr.24, ptr @da9062_thermal_probe._entry_ptr.27, ptr @da9062_thermal_driver, ptr @.str, ptr @da9062_compatible_reg_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @da9062_thermal_probe.__key, ptr @.str.7, ptr @da9062_thermal_probe.__key.8, ptr @.str.9, ptr @da9062_thermal_probe.__key.10, ptr @.str.11, ptr @da9062_thermal_ops, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @da9062_config], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_compatible_reg_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_poll_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_poll_on._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_get_trip_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_thermal_get_trip_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9062_thermal_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9062_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9062_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pp_tmp = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pp_tmp) #5
  %4 = ptrtoint ptr %pp_tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3000, ptr %pp_tmp, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @da9062_compatible_reg_id_table, ptr noundef %6) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %pp_tmp, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.then11, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then11:                                        ; preds = %if.then6
  %9 = ptrtoint ptr %pp_tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pp_tmp, align 4
  %11 = add i32 %10, -10001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9001, i32 %11)
  %12 = icmp ult i32 %11, -9001
  br i1 %12, label %do.end, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %10) #8
  %13 = ptrtoint ptr %pp_tmp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3000, ptr %pp_tmp, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then11.if.end17_crit_edge, %if.then6.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 216, i32 noundef 3520) #5
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %config = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %config, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %call.i, align 4
  %dev24 = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev24, align 4
  %work = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 1
  call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %19 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @da9062_thermal_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry35 = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry35, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @da9062_thermal_poll_on, ptr %func, align 4
  %timer = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @da9062_thermal_probe.__key.8) #5
  %lock = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @da9062_thermal_probe.__key.10) #5
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %pp_tmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pp_tmp, align 4
  %call50 = call ptr @thermal_zone_device_register(ptr noundef %26, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @da9062_thermal_ops, ptr noundef null, i32 noundef %28, i32 noundef 0) #5
  %zone = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call50, ptr %zone, align 4
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %30 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %zone, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end22
  %call62 = call i32 @thermal_zone_device_enable(ptr noundef %call50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body70, label %if.end60.err_zone_crit_edge

if.end60.err_zone_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_zone

do.body70:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da9062_thermal_probe.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da9062_thermal_probe, %if.then75)) #5
          to label %do.end81 [label %if.then75], !srcloc !90

if.then75:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %zone, align 4
  %passive_delay_jiffies = getelementptr inbounds %struct.thermal_zone_device, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %passive_delay_jiffies to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %passive_delay_jiffies, align 8
  %call78 = call i32 @jiffies_to_msecs(i32 noundef %36) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da9062_thermal_probe.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call78) #5
  br label %do.end81

do.end81:                                         ; preds = %if.then75, %do.body70
  %call82 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end81.err_zone_crit_edge, label %if.end89

do.end81.err_zone_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_zone

if.end89:                                         ; preds = %do.end81
  %irq = getelementptr inbounds %struct.da9062_thermal, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call82, ptr %irq, align 4
  %call91 = call i32 @request_threaded_irq(i32 noundef %call82, ptr noundef null, ptr noundef nonnull @da9062_thermal_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end98, label %if.end89.err_zone_crit_edge

if.end89.err_zone_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_zone

if.end98:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_zone:                                         ; preds = %if.end89.err_zone_crit_edge, %do.end81.err_zone_crit_edge, %if.end60.err_zone_crit_edge
  %.str.26.sink = phi ptr [ @.str.17, %if.end60.err_zone_crit_edge ], [ @.str.23, %do.end81.err_zone_crit_edge ], [ @.str.26, %if.end89.err_zone_crit_edge ]
  %ret.0 = phi i32 [ %call62, %if.end60.err_zone_crit_edge ], [ %call82, %do.end81.err_zone_crit_edge ], [ %call91, %if.end89.err_zone_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.26.sink) #8
  %39 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %zone, align 4
  call void @thermal_zone_device_unregister(ptr noundef %40) #5
  br label %cleanup

cleanup:                                          ; preds = %err_zone, %if.end98, %do.end56, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end98 ], [ -6, %entry.cleanup_crit_edge ], [ %32, %do.end56 ], [ %ret.0, %err_zone ], [ -12, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pp_tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.da9062_thermal, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %work = getelementptr inbounds %struct.da9062_thermal, ptr %1, i32 0, i32 1
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #5
  %zone = getelementptr inbounds %struct.da9062_thermal, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zone, align 4
  tail call void @thermal_zone_device_unregister(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9062_thermal_poll_on(ptr noundef %work) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !91
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.da9062, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 7, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %work, i32 208
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #8
  br label %err_enable_irq

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %regmap2 = getelementptr inbounds %struct.da9062, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap2, align 4
  %call3 = call i32 @regmap_read(ptr noundef %10, i32 noundef 7, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr i8, ptr %work, i32 208
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.31) #8
  br label %err_enable_irq

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lock17 = getelementptr i8, ptr %work, i32 104
  call void @mutex_lock_nested(ptr noundef %lock17, i32 noundef 0) #5
  %temperature18 = getelementptr i8, ptr %work, i32 196
  br i1 %tobool.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %temperature18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 125000, ptr %temperature18, align 4
  call void @mutex_unlock(ptr noundef %lock17) #5
  %zone = getelementptr i8, ptr %work, i32 100
  %16 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %zone, align 4
  call void @thermal_zone_device_update(ptr noundef %17, i32 noundef 0) #5
  %18 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zone, align 4
  %passive_delay_jiffies = getelementptr inbounds %struct.thermal_zone_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %passive_delay_jiffies to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %passive_delay_jiffies, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %22 = load ptr, ptr @system_freezable_wq, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef %21) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %temperature18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %temperature18, align 4
  call void @mutex_unlock(ptr noundef %lock17) #5
  %zone20 = getelementptr i8, ptr %work, i32 100
  %24 = ptrtoint ptr %zone20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %zone20, align 4
  call void @thermal_zone_device_update(ptr noundef %25, i32 noundef 0) #5
  br label %err_enable_irq

err_enable_irq:                                   ; preds = %if.end16, %do.end8, %do.end
  %irq = getelementptr i8, ptr %work, i32 200
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %27) #5
  br label %cleanup

cleanup:                                          ; preds = %err_enable_irq, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.da9062_thermal, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  tail call void @disable_irq_nosync(i32 noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %2 = load ptr, ptr @system_freezable_wq, align 4
  %work = getelementptr inbounds %struct.da9062_thermal, ptr %data, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_get_temp(ptr nocapture noundef readonly %z, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %z, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %lock = getelementptr inbounds %struct.da9062_thermal, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %temperature = getelementptr inbounds %struct.da9062_thermal, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temperature, align 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %temp, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_get_trip_type(ptr nocapture noundef readonly %z, i32 noundef %trip, ptr nocapture noundef writeonly %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cond = icmp eq i32 %trip, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %z, i32 0, i32 8
  %1 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata, align 4
  %dev = getelementptr inbounds %struct.da9062_thermal, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_thermal_get_trip_temp(ptr nocapture noundef readonly %z, i32 noundef %trip, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trip)
  %cond = icmp eq i32 %trip, 0
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 125000, ptr %temp, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %z, i32 0, i32 8
  %1 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata, align 4
  %dev = getelementptr inbounds %struct.da9062_thermal, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_da9062_thermal__188_295_da9062_thermal_driver_init6, !1, !"__initcall__kmod_da9062_thermal__188_295_da9062_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/da9062-thermal.c", i32 295, i32 1}
!2 = !{ptr @__exitcall_da9062_thermal_driver_exit, !1, !"__exitcall_da9062_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author189, !4, !"__UNIQUE_ID_author189", i1 false, i1 false}
!4 = !{!"../drivers/thermal/da9062-thermal.c", i32 297, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/thermal/da9062-thermal.c", i32 298, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/thermal/da9062-thermal.c", i32 299, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias193, !11, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!11 = !{!"../drivers/thermal/da9062-thermal.c", i32 300, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thermal/da9062-thermal.c", i32 290, i32 11}
!14 = !{ptr @da9062_thermal_driver, !15, !"da9062_thermal_driver", i1 false, i1 false}
!15 = !{!"../drivers/thermal/da9062-thermal.c", i32 286, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/thermal/da9062-thermal.c", i32 205, i32 8}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/da9062-thermal.c", i32 209, i32 5}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @da9062_thermal_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @da9062_thermal_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @da9062_thermal_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/thermal/da9062-thermal.c", i32 228, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @da9062_thermal_probe.__key.8, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @da9062_thermal_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/thermal/da9062-thermal.c", i32 229, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thermal/da9062-thermal.c", i32 236, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @da9062_thermal_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @da9062_thermal_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/da9062-thermal.c", i32 242, i32 3}
!41 = !{ptr @da9062_thermal_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @da9062_thermal_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/da9062-thermal.c", i32 246, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @da9062_thermal_probe.__UNIQUE_ID_ddebug187, !44, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/thermal/da9062-thermal.c", i32 250, i32 38}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thermal/da9062-thermal.c", i32 252, i32 3}
!51 = !{ptr @da9062_thermal_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @da9062_thermal_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/thermal/da9062-thermal.c", i32 262, i32 3}
!55 = !{ptr @da9062_thermal_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @da9062_thermal_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thermal/da9062-thermal.c", i32 73, i32 3}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @da9062_thermal_poll_on._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @da9062_thermal_poll_on._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/thermal/da9062-thermal.c", i32 86, i32 3}
!64 = !{ptr @da9062_thermal_poll_on._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @da9062_thermal_poll_on._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @da9062_thermal_ops, !67, !"da9062_thermal_ops", i1 false, i1 false}
!67 = !{!"../drivers/thermal/da9062-thermal.c", i32 173, i32 39}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thermal/da9062-thermal.c", i32 134, i32 3}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @da9062_thermal_get_trip_type._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @da9062_thermal_get_trip_type._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/thermal/da9062-thermal.c", i32 153, i32 3}
!75 = !{ptr @da9062_thermal_get_trip_temp._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @da9062_thermal_get_trip_temp._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @da9062_compatible_reg_id_table, !78, !"da9062_compatible_reg_id_table", i1 false, i1 false}
!78 = !{!"../drivers/thermal/da9062-thermal.c", i32 183, i32 34}
!79 = !{ptr @da9062_config, !80, !"da9062_config", i1 false, i1 false}
!80 = !{!"../drivers/thermal/da9062-thermal.c", i32 179, i32 43}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148724726, i64 2148724731, i64 2148724744, i64 2148724788, i64 2148724822, i64 2148724843}
!91 = !{!"auto-init"}
