; ModuleID = '/llk/IR_all_yes/drivers/hwmon/scpi-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/scpi-hwmon.c"
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
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.scpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scpi_sensors = type { ptr, ptr, %struct.list_head, ptr, %struct.attribute_group, [2 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_data = type { i32, %struct.scpi_sensor_info, %struct.device_attribute, %struct.device_attribute, [20 x i8], [20 x i8] }
%struct.scpi_sensor_info = type { i16, i8, i8, [20 x i8] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.scpi_thermal_zone = type { i32, ptr }

@__initcall__kmod_scpi_hwmon__183_304_scpi_hwmon_platdrv_init6 = internal global ptr @scpi_hwmon_platdrv_init, section ".initcall6.init", align 4
@scpi_hwmon_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpi_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scpi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_scpi_hwmon_platdrv_exit = internal global ptr @scpi_hwmon_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [56 x i8] c"scpi_hwmon.author=Punit Agrawal <punit.agrawal@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [55 x i8] c"scpi_hwmon.description=ARM SCPI HWMON interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [41 x i8] c"scpi_hwmon.file=drivers/hwmon/scpi-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"scpi_hwmon.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scpi-hwmon\00", [21 x i8] zeroinitializer }, align 32
@scpi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scpi-sensors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scpi_scale }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-scpi-sensors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gxbb_scpi_scale }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@scpi_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to initialize scpi-hwmon data\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scpi_hwmon_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hwmon/scpi-hwmon.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpi_hwmon_probe._entry_ptr = internal global ptr @scpi_hwmon_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_input\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_label\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in%d_input\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in%d_label\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"curr%d_input\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"curr%d_label\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power%d_input\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power%d_label\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"energy%d_input\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"energy%d_label\00", [17 x i8] zeroinitializer }, align 32
@scpi_hwmon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@scpi_hwmon_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpi_sensors\00", [19 x i8] zeroinitializer }, align 32
@scpi_sensor_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @scpi_read_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@scpi_scale = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1000, i32 1000, i32 1000, i32 1000000, i32 1000000], [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@gxbb_scpi_scale = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 1000, i32 1000, i32 1000000, i32 1000000], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"scpi_hwmon_platdrv\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 297, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 299, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"scpi_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 128, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 176, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 191, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 193, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 198, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 200, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 205, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 207, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 212, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 214, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 219, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 221, i32 6 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 241, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 242, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 252, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"scpi_sensor_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 124, i32 48 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 109, i32 23 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 111, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"scpi_scale\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 49, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 121, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"gxbb_scpi_scale\00", align 1
@___asan_gen_.103 = private constant [30 x i8] c"../drivers/hwmon/scpi-hwmon.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 41, i32 18 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_scpi_hwmon_platdrv_exit, ptr @__initcall__kmod_scpi_hwmon__183_304_scpi_hwmon_platdrv_init6, ptr @scpi_hwmon_platdrv_exit, ptr @scpi_hwmon_probe._entry, ptr @scpi_hwmon_probe._entry_ptr, ptr @scpi_hwmon_platdrv, ptr @.str, ptr @scpi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @scpi_hwmon_probe.__key, ptr @scpi_hwmon_probe.__key.16, ptr @.str.17, ptr @scpi_sensor_ops, ptr @.str.18, ptr @.str.19, ptr @scpi_scale, ptr @.str.20, ptr @gxbb_scpi_scale], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_hwmon_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_hwmon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_hwmon_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_sensor_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_scale to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gxbb_scpi_scale to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_hwmon_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpi_hwmon_platdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scpi_hwmon_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @scpi_hwmon_platdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %nr_sensors = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nr_sensors) #7
  %0 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %nr_sensors, align 2, !annotation !71
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @get_scpi_ops() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup178_crit_edge, label %if.end

entry.cleanup178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end:                                           ; preds = %entry
  %sensor_get_capability = getelementptr inbounds %struct.scpi_ops, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %sensor_get_capability to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor_get_capability, align 4
  %call2 = call i32 %2(ptr noundef nonnull %nr_sensors) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup178_crit_edge

if.end.cleanup178_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nr_sensors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool6.not = icmp eq i16 %4, 0
  br i1 %tobool6.not, label %if.end5.cleanup178_crit_edge, label %if.end8

if.end5.cleanup178_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end8:                                          ; preds = %if.end5
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup178_crit_edge, label %devm_kcalloc.exit

if.end8.cleanup178_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

devm_kcalloc.exit:                                ; preds = %if.end8
  %5 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nr_sensors, align 2
  %conv = zext i16 %6 to i32
  %7 = mul nuw nsw i32 %conv, 124
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3520) #7
  %data = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %data, align 4
  %tobool15.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool15.not, label %devm_kcalloc.exit.cleanup178_crit_edge, label %devm_kcalloc.exit283

devm_kcalloc.exit.cleanup178_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

devm_kcalloc.exit283:                             ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nr_sensors, align 2
  %conv18 = zext i16 %10 to i32
  %mul = shl nuw nsw i32 %conv18, 3
  %add = or i32 %mul, 4
  %call5.i.i280 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %add, i32 noundef 3520) #7
  %attrs = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i280, ptr %attrs, align 4
  %tobool21.not = icmp eq ptr %call5.i.i280, null
  br i1 %tobool21.not, label %devm_kcalloc.exit283.cleanup178_crit_edge, label %if.end23

devm_kcalloc.exit283.cleanup178_crit_edge:        ; preds = %devm_kcalloc.exit283
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end23:                                         ; preds = %devm_kcalloc.exit283
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %call.i, align 4
  %call26 = call ptr @of_match_device(ptr noundef nonnull @scpi_of_match, ptr noundef %dev1) #7
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup178

if.end30:                                         ; preds = %if.end23
  %data31 = getelementptr inbounds %struct.of_device_id, ptr %call26, i32 0, i32 3
  %13 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data31, align 4
  %15 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nr_sensors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp311.not = icmp eq i16 %16, 0
  br i1 %cmp311.not, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %sensor_get_info = getelementptr inbounds %struct.scpi_ops, ptr %call, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0318 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1.ph, %for.inc.for.body_crit_edge ]
  %num_energy.0317 = phi i32 [ 0, %for.body.lr.ph ], [ %num_energy.2.ph, %for.inc.for.body_crit_edge ]
  %num_power.0316 = phi i32 [ 0, %for.body.lr.ph ], [ %num_power.2.ph, %for.inc.for.body_crit_edge ]
  %num_current.0315 = phi i32 [ 0, %for.body.lr.ph ], [ %num_current.2.ph, %for.inc.for.body_crit_edge ]
  %num_volt.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %num_volt.2.ph, %for.inc.for.body_crit_edge ]
  %num_temp.0313 = phi i32 [ 0, %for.body.lr.ph ], [ %num_temp.2.ph, %for.inc.for.body_crit_edge ]
  %i.0312 = phi i16 [ 0, %for.body.lr.ph ], [ %inc128, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318
  %19 = ptrtoint ptr %sensor_get_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensor_get_info, align 4
  %info = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 1
  %call36 = call i32 %20(i16 noundef zeroext %i.0312, ptr noundef %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.body.cleanup178_crit_edge

for.body.cleanup178_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end39:                                         ; preds = %for.body
  %class = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 1, i32 1
  %21 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %class, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %if.end39.for.inc_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb47
    i8 2, label %sw.bb55
    i8 3, label %sw.bb65
    i8 4, label %sw.bb75
  ]

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %input = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 4
  %add42 = add i32 %num_temp.0313, 1
  %call43 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input, i32 noundef 20, ptr noundef nonnull @.str.6, i32 noundef %add42)
  %label = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 5
  %call46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %label, i32 noundef 20, ptr noundef nonnull @.str.7, i32 noundef %add42)
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %input48 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 4
  %call50 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input48, i32 noundef 20, ptr noundef nonnull @.str.8, i32 noundef %num_volt.0314)
  %label51 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 5
  %call53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %label51, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef %num_volt.0314)
  %inc54 = add i32 %num_volt.0314, 1
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %input56 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 4
  %add58 = add i32 %num_current.0315, 1
  %call59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input56, i32 noundef 20, ptr noundef nonnull @.str.10, i32 noundef %add58)
  %label60 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 5
  %call63 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %label60, i32 noundef 20, ptr noundef nonnull @.str.11, i32 noundef %add58)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %input66 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 4
  %add68 = add i32 %num_power.0316, 1
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input66, i32 noundef 20, ptr noundef nonnull @.str.12, i32 noundef %add68)
  %label70 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 5
  %call73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %label70, i32 noundef 20, ptr noundef nonnull @.str.13, i32 noundef %add68)
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %input76 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 4
  %add78 = add i32 %num_energy.0317, 1
  %call79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input76, i32 noundef 20, ptr noundef nonnull @.str.14, i32 noundef %add78)
  %label80 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 5
  %call83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %label80, i32 noundef 20, ptr noundef nonnull @.str.15, i32 noundef %add78)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb75, %sw.bb65, %sw.bb55, %sw.bb47, %sw.bb
  %num_temp.1 = phi i32 [ %num_temp.0313, %sw.bb75 ], [ %num_temp.0313, %sw.bb65 ], [ %num_temp.0313, %sw.bb55 ], [ %num_temp.0313, %sw.bb47 ], [ %add42, %sw.bb ]
  %num_volt.1 = phi i32 [ %num_volt.0314, %sw.bb75 ], [ %num_volt.0314, %sw.bb65 ], [ %num_volt.0314, %sw.bb55 ], [ %inc54, %sw.bb47 ], [ %num_volt.0314, %sw.bb ]
  %num_current.1 = phi i32 [ %num_current.0315, %sw.bb75 ], [ %num_current.0315, %sw.bb65 ], [ %add58, %sw.bb55 ], [ %num_current.0315, %sw.bb47 ], [ %num_current.0315, %sw.bb ]
  %num_power.1 = phi i32 [ %num_power.0316, %sw.bb75 ], [ %add68, %sw.bb65 ], [ %num_power.0316, %sw.bb55 ], [ %num_power.0316, %sw.bb47 ], [ %num_power.0316, %sw.bb ]
  %num_energy.1 = phi i32 [ %add78, %sw.bb75 ], [ %num_energy.0317, %sw.bb65 ], [ %num_energy.0317, %sw.bb55 ], [ %num_energy.0317, %sw.bb47 ], [ %num_energy.0317, %sw.bb ]
  %24 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %class, align 2
  %idxprom = zext i8 %25 to i32
  %arrayidx87 = getelementptr i32, ptr %14, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx87, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx, align 4
  %dev_attr_input = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 2
  %mode = getelementptr inbounds %struct.attribute, ptr %dev_attr_input, i32 0, i32 1
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 292, ptr %mode, align 4
  %show = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 2, i32 1
  %30 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @scpi_show_sensor, ptr %show, align 4
  %input90 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 4
  %31 = ptrtoint ptr %dev_attr_input to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %input90, ptr %dev_attr_input, align 4
  %dev_attr_label = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 3
  %mode95 = getelementptr inbounds %struct.attribute, ptr %dev_attr_label, i32 0, i32 1
  %32 = ptrtoint ptr %mode95 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 292, ptr %mode95, align 4
  %show97 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 3, i32 1
  %33 = ptrtoint ptr %show97 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @scpi_show_label, ptr %show97, align 4
  %label98 = getelementptr %struct.sensor_data, ptr %18, i32 %idx.0318, i32 5
  %34 = ptrtoint ptr %dev_attr_label to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %label98, ptr %dev_attr_label, align 4
  %35 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attrs, align 4
  %shl = shl i32 %idx.0318, 1
  %arrayidx106 = getelementptr ptr, ptr %36, i32 %shl
  %37 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev_attr_input, ptr %arrayidx106, align 4
  %38 = load ptr, ptr %attrs, align 4
  %add111 = or i32 %shl, 1
  %arrayidx112 = getelementptr ptr, ptr %38, i32 %add111
  %39 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev_attr_label, ptr %arrayidx112, align 4
  %40 = load ptr, ptr %attrs, align 4
  %arrayidx116 = getelementptr ptr, ptr %40, i32 %shl
  %41 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx116, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @scpi_hwmon_probe.__key, ptr %key, align 4
  %44 = load ptr, ptr %attrs, align 4
  %arrayidx123 = getelementptr ptr, ptr %44, i32 %add111
  %45 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx123, align 4
  %key124 = getelementptr inbounds %struct.attribute, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %key124 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @scpi_hwmon_probe.__key.16, ptr %key124, align 4
  %inc127 = add i32 %idx.0318, 1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.end39.for.inc_crit_edge
  %num_temp.2.ph = phi i32 [ %num_temp.0313, %if.end39.for.inc_crit_edge ], [ %num_temp.1, %sw.epilog ]
  %num_volt.2.ph = phi i32 [ %num_volt.0314, %if.end39.for.inc_crit_edge ], [ %num_volt.1, %sw.epilog ]
  %num_current.2.ph = phi i32 [ %num_current.0315, %if.end39.for.inc_crit_edge ], [ %num_current.1, %sw.epilog ]
  %num_power.2.ph = phi i32 [ %num_power.0316, %if.end39.for.inc_crit_edge ], [ %num_power.1, %sw.epilog ]
  %num_energy.2.ph = phi i32 [ %num_energy.0317, %if.end39.for.inc_crit_edge ], [ %num_energy.1, %sw.epilog ]
  %idx.1.ph = phi i32 [ %idx.0318, %if.end39.for.inc_crit_edge ], [ %inc127, %sw.epilog ]
  %inc128 = add nuw i16 %i.0312, 1
  %48 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %nr_sensors, align 2
  %cmp = icmp ult i16 %inc128, %49
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %50 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %attrs, align 4
  %group = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 4
  %attrs130 = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 4, i32 3
  %52 = ptrtoint ptr %attrs130 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %attrs130, align 4
  %groups = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 5
  %53 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %group, ptr %groups, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call135 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i, ptr noundef %groups) #7
  %cmp.i = icmp ugt ptr %call135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then137, label %if.end139

if.then137:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %call135 to i32
  br label %cleanup178

if.end139:                                        ; preds = %for.end
  %thermal_zones = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %thermal_zones to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %thermal_zones, ptr %thermal_zones, align 4
  %prev.i = getelementptr inbounds %struct.scpi_sensors, ptr %call.i, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %thermal_zones, ptr %prev.i, align 4
  %58 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nr_sensors, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp143320.not = icmp eq i16 %59, 0
  br i1 %cmp143320.not, label %if.end139.cleanup178_crit_edge, label %if.end139.for.body145_crit_edge

if.end139.for.body145_crit_edge:                  ; preds = %if.end139
  br label %for.body145

if.end139.cleanup178_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

for.body145:                                      ; preds = %for.inc175.for.body145_crit_edge, %if.end139.for.body145_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc175.for.body145_crit_edge ], [ 0, %if.end139.for.body145_crit_edge ]
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %info150 = getelementptr %struct.sensor_data, ptr %61, i32 %indvars.iv, i32 1
  %class151 = getelementptr %struct.sensor_data, ptr %61, i32 %indvars.iv, i32 1, i32 1
  %62 = ptrtoint ptr %class151 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %class151, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp153.not = icmp eq i8 %63, 0
  br i1 %cmp153.not, label %if.end156, label %for.body145.for.inc175_crit_edge

for.body145.for.inc175_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc175

if.end156:                                        ; preds = %for.body145
  %call.i284 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #7
  %tobool158.not = icmp eq ptr %call.i284, null
  br i1 %tobool158.not, label %if.end156.cleanup178_crit_edge, label %if.end160

if.end156.cleanup178_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

if.end160:                                        ; preds = %if.end156
  %64 = ptrtoint ptr %call.i284 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %indvars.iv, ptr %call.i284, align 4
  %scpi_sensors162 = getelementptr inbounds %struct.scpi_thermal_zone, ptr %call.i284, i32 0, i32 1
  %65 = ptrtoint ptr %scpi_sensors162 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %scpi_sensors162, align 4
  %66 = ptrtoint ptr %info150 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %info150, align 4
  %conv165 = zext i16 %67 to i32
  %call166 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev1, i32 noundef %conv165, ptr noundef nonnull %call.i284, ptr noundef nonnull @scpi_sensor_ops) #7
  %cmp.i285 = icmp ugt ptr %call166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %if.then168, label %if.end160.for.inc175_crit_edge

if.end160.for.inc175_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc175

if.then168:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i284) #7
  br label %for.inc175

for.inc175:                                       ; preds = %if.then168, %if.end160.for.inc175_crit_edge, %for.body145.for.inc175_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %68 = ptrtoint ptr %nr_sensors to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %nr_sensors, align 2
  %70 = zext i16 %69 to i32
  %cmp143 = icmp ult i32 %indvars.iv.next, %70
  br i1 %cmp143, label %for.inc175.for.body145_crit_edge, label %for.inc175.cleanup178_crit_edge

for.inc175.cleanup178_crit_edge:                  ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

for.inc175.for.body145_crit_edge:                 ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145

cleanup178:                                       ; preds = %for.inc175.cleanup178_crit_edge, %if.end156.cleanup178_crit_edge, %if.end139.cleanup178_crit_edge, %if.then137, %for.body.cleanup178_crit_edge, %do.end, %devm_kcalloc.exit283.cleanup178_crit_edge, %devm_kcalloc.exit.cleanup178_crit_edge, %if.end8.cleanup178_crit_edge, %if.end5.cleanup178_crit_edge, %if.end.cleanup178_crit_edge, %entry.cleanup178_crit_edge
  %retval.4 = phi i32 [ %55, %if.then137 ], [ -19, %do.end ], [ -517, %entry.cleanup178_crit_edge ], [ %call2, %if.end.cleanup178_crit_edge ], [ -19, %if.end5.cleanup178_crit_edge ], [ -12, %if.end8.cleanup178_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup178_crit_edge ], [ -12, %devm_kcalloc.exit283.cleanup178_crit_edge ], [ 0, %if.end139.cleanup178_crit_edge ], [ 0, %for.inc175.cleanup178_crit_edge ], [ -12, %if.end156.cleanup178_crit_edge ], [ %call36, %for.body.cleanup178_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nr_sensors) #7
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_scpi_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_show_sensor(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #7
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %value, align 8, !annotation !71
  %sensor_get_value = getelementptr inbounds %struct.scpi_ops, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %sensor_get_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sensor_get_value, align 4
  %info = getelementptr i8, ptr %attr, i32 -24
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %info, align 4
  %call2 = call i32 %6(i16 noundef zeroext %8, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %attr, i32 -28
  %class.i = getelementptr i8, ptr %attr, i32 -22
  %9 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %class.i, align 2
  %idxprom.i = zext i8 %10 to i32
  %arrayidx.i = getelementptr [5 x i32], ptr @scpi_scale, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i, label %if.end.scpi_scale_reading.exit_crit_edge, label %if.then.i

if.end.scpi_scale_reading.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %scpi_scale_reading.exit

if.then.i:                                        ; preds = %if.end
  %conv.i = zext i32 %12 to i64
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %value, align 8
  %mul.i = mul i64 %16, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp174.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !72

if.then178.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv179.i = trunc i64 %mul.i to i32
  %div182.i = udiv i32 %conv179.i, %14
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end190.sink.split.i

if.else184.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %mul.i) #11, !srcloc !73
  %asmresult1.i.i = extractvalue { i64, i64 } %17, 1
  br label %if.end190.sink.split.i

if.end190.sink.split.i:                           ; preds = %if.else184.i, %if.then178.i
  %shr.sink.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shr.sink.i, ptr %value, align 8
  br label %scpi_scale_reading.exit

scpi_scale_reading.exit:                          ; preds = %if.end190.sink.split.i, %if.end.scpi_scale_reading.exit_crit_edge
  %19 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %class.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %value, align 8
  %.str.18..str.19 = select i1 %cmp, ptr @.str.18, ptr @.str.19
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.18..str.19, i64 noundef %22)
  br label %cleanup

cleanup:                                          ; preds = %scpi_scale_reading.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call8, %scpi_scale_reading.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_show_label(ptr nocapture noundef readnone %dev, ptr noundef %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %attr, i32 -48
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, ptr noundef %name)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_read_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scpi_sensors1 = getelementptr inbounds %struct.scpi_thermal_zone, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %scpi_sensors1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scpi_sensors1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %data = getelementptr inbounds %struct.scpi_sensors, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #7
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %value, align 8, !annotation !71
  %sensor_get_value = getelementptr inbounds %struct.scpi_ops, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %sensor_get_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor_get_value, align 4
  %info = getelementptr %struct.sensor_data, ptr %5, i32 %7, i32 1
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %info, align 4
  %call = call i32 %10(i16 noundef zeroext %12, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.sensor_data, ptr %5, i32 %7
  %class.i = getelementptr %struct.sensor_data, ptr %5, i32 %7, i32 1, i32 1
  %13 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %class.i, align 2
  %idxprom.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr [5 x i32], ptr @scpi_scale, i32 0, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp eq i32 %16, %18
  br i1 %cmp.not.i, label %if.end.scpi_scale_reading.exit_crit_edge, label %if.then.i

if.end.scpi_scale_reading.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %scpi_scale_reading.exit

if.then.i:                                        ; preds = %if.end
  %conv.i = zext i32 %16 to i64
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %value, align 8
  %mul.i = mul i64 %20, %conv.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp174.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !72

if.then178.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv179.i = trunc i64 %mul.i to i32
  %div182.i = udiv i32 %conv179.i, %22
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end190.sink.split.i

if.else184.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %mul.i) #11, !srcloc !73
  %asmresult1.i.i = extractvalue { i64, i64 } %23, 1
  br label %if.end190.sink.split.i

if.end190.sink.split.i:                           ; preds = %if.else184.i, %if.then178.i
  %shr.sink.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shr.sink.i, ptr %value, align 8
  br label %scpi_scale_reading.exit

scpi_scale_reading.exit:                          ; preds = %if.end190.sink.split.i, %if.end.scpi_scale_reading.exit_crit_edge
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %value, align 8
  %conv = trunc i64 %26 to i32
  %27 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %scpi_scale_reading.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #7
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_scpi_hwmon__183_304_scpi_hwmon_platdrv_init6, !1, !"__initcall__kmod_scpi_hwmon__183_304_scpi_hwmon_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_scpi_hwmon_platdrv_exit, !1, !"__exitcall_scpi_hwmon_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 308, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 299, i32 11}
!12 = !{ptr @scpi_hwmon_platdrv, !13, !"scpi_hwmon_platdrv", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 297, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 176, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @scpi_hwmon_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @scpi_hwmon_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 191, i32 6}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 193, i32 6}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 198, i32 6}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 200, i32 6}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 205, i32 6}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 207, i32 6}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 212, i32 6}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 214, i32 6}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 219, i32 6}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 221, i32 6}
!42 = !{ptr @scpi_hwmon_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 241, i32 3}
!44 = !{ptr @scpi_hwmon_probe.__key.16, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 242, i32 3}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 252, i32 4}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 109, i32 23}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 111, i32 22}
!52 = !{ptr @scpi_scale, !53, !"scpi_scale", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 49, i32 18}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 121, i32 22}
!56 = !{ptr @scpi_sensor_ops, !57, !"scpi_sensor_ops", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 124, i32 48}
!58 = !{ptr @scpi_of_match, !59, !"scpi_of_match", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 128, i32 34}
!60 = !{ptr @gxbb_scpi_scale, !61, !"gxbb_scpi_scale", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/scpi-hwmon.c", i32 41, i32 18}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2148710010, i64 2148710290, i64 2148710624, i64 2148710958}
