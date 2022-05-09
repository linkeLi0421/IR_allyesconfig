; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_sensorhub.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_sensorhub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.cros_ec_sensor_platform = type { i8 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_sensorhub = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, %struct.notifier_block, ptr, [2 x i64], ptr, i32, ptr, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ts_filter_state, i32, i32, i64, ptr }
%struct.cros_ec_sensors_ec_overflow_state = type { i64, i64 }
%struct.cros_ec_sensors_ts_filter_state = type { i64, i64, [64 x i64], [64 x i64], [64 x i64], i32, [64 x i64], i64, i64 }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.44 }>
%union.anon.44 = type { %struct.anon.48, [4 x i8] }
%struct.anon.48 = type { i8, i8, i16, i32 }

@__initcall__kmod_cros_ec_sensorhub__185_258_cros_ec_sensorhub_driver_init6 = internal global ptr @cros_ec_sensorhub_driver_init, section ".initcall6.init", align 4
@cros_ec_sensorhub_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_sensorhub_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_sensorhub_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_sensorhub_driver_exit = internal global ptr @cros_ec_sensorhub_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias186 = internal constant [51 x i8] c"cros_ec_sensorhub.alias=platform:cros-ec-sensorhub\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [64 x i8] c"cros_ec_sensorhub.author=Gwendal Grignou <gwendal@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [65 x i8] c"cros_ec_sensorhub.description=ChromeOS EC MEMS Sensor Hub Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [65 x i8] c"cros_ec_sensorhub.file=drivers/platform/chrome/cros-ec-sensorhub\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [30 x i8] c"cros_ec_sensorhub.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-ec-sensorhub\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_sensorhub_suspend, ptr @cros_ec_sensorhub_resume, ptr @cros_ec_sensorhub_suspend, ptr @cros_ec_sensorhub_resume, ptr @cros_ec_sensorhub_suspend, ptr @cros_ec_sensorhub_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to retrieve sensor information (err:%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cros_ec_sensorhub_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/platform/chrome/cros_ec_sensorhub.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_probe._entry_ptr = internal global ptr @cros_ec_sensorhub_probe._entry, section ".printk_index", align 4
@cros_ec_sensorhub_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Zero sensors reported.\0A\00", [40 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_probe._entry_ptr.9 = internal global ptr @cros_ec_sensorhub_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros-ec-accel-legacy\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 70, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no info for EC sensor %d : %d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cros_ec_sensorhub_register\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_register._entry_ptr = internal global ptr @cros_ec_sensorhub_register._entry, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-accel\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-baro\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-gyro\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-mag\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-prox\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-light\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cros-ec-activity\00", [47 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.4, i32 98, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown type %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_register._entry_ptr.23 = internal global ptr @cros_ec_sensorhub_register._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-ec-lid-angle\00", [46 x i8] zeroinitializer }, align 32
@switch.table.cros_ec_sensorhub_probe = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.15], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"cros_ec_sensorhub_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 250, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 252, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"cros_ec_sensorhub_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 246, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 144, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 158, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 164, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 209, i32 7 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 69, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 76, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 79, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 82, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 85, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 88, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 91, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 94, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 97, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [47 x i8] c"../drivers/platform/chrome/cros_ec_sensorhub.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 115, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant [37 x i8] c"switch.table.cros_ec_sensorhub_probe\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias186, ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_cros_ec_sensorhub_driver_exit, ptr @__initcall__kmod_cros_ec_sensorhub__185_258_cros_ec_sensorhub_driver_init6, ptr @cros_ec_sensorhub_driver_exit, ptr @cros_ec_sensorhub_probe._entry, ptr @cros_ec_sensorhub_probe._entry.7, ptr @cros_ec_sensorhub_probe._entry_ptr, ptr @cros_ec_sensorhub_probe._entry_ptr.9, ptr @cros_ec_sensorhub_register._entry, ptr @cros_ec_sensorhub_register._entry.21, ptr @cros_ec_sensorhub_register._entry_ptr, ptr @cros_ec_sensorhub_register._entry_ptr.23, ptr @cros_ec_sensorhub_driver, ptr @.str, ptr @cros_ec_sensorhub_pm_ops, ptr @cros_ec_sensorhub_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @switch.table.cros_ec_sensorhub_probe], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cros_ec_sensorhub_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_sensorhub_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_sensorhub_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_sensorhub_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i.i = alloca %struct.platform_device_info, align 8
  %sensor_platforms.i = alloca %struct.cros_ec_sensor_platform, align 1
  %pdevinfo.i.i.i68.i = alloca %struct.platform_device_info, align 8
  %sensor_platforms.i69.i = alloca %struct.cros_ec_sensor_platform, align 1
  %pdevinfo.i.i.i.i = alloca %struct.platform_device_info, align 8
  %sensor_platforms.i.i = alloca %struct.cros_ec_sensor_platform, align 1
  %sensor_type.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev, align 8
  %max_response = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %max_response to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_response, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %7)
  %cmp = icmp ult i16 %7, 13
  %conv2 = zext i16 %7 to i32
  %phi.bo = add nuw nsw i32 %conv2, 20
  %cond = select i1 %cmp, i32 33, i32 %phi.bo
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %cond, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_offset = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %cmd_offset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd_offset, align 2
  %conv7 = zext i16 %9 to i32
  %add8 = add nuw nsw i32 %conv7, 43
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add8, ptr %command, align 4
  %call.i119 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2312, i32 noundef 3520) #5
  %tobool10.not = icmp eq ptr %call.i119, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cros_ec_sensorhub_probe.__key) #5
  %11 = ptrtoint ptr %call.i119 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %call.i119, align 8
  %ec14 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 1
  %12 = ptrtoint ptr %ec14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %ec14, align 4
  %msg15 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 3
  %13 = ptrtoint ptr %msg15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %msg15, align 4
  %data16 = getelementptr inbounds %struct.cros_ec_command, ptr %call.i, i32 0, i32 5
  %params = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 4
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data16, ptr %params, align 8
  %resp = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 5
  %15 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data16, ptr %resp, align 4
  %driver_data.i120 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i120 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i119, ptr %driver_data.i120, align 4
  %call19 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %3, i32 noundef 6) #5
  br i1 %call19, label %if.then20, label %for.body.lr.ph

if.then20:                                        ; preds = %do.body
  %call21 = tail call i32 @cros_ec_get_sensor_count(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call21) #8
  br label %cleanup

if.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp29 = icmp eq i32 %call21, 0
  br i1 %cmp29, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %sensor_num36 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 2
  %17 = ptrtoint ptr %sensor_num36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call21, ptr %sensor_num36, align 8
  %call37 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %3, i32 noundef 24) #5
  br i1 %call37, label %if.then38, label %if.end35.if.end43_crit_edge

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then38:                                        ; preds = %if.end35
  %call39 = tail call i32 @cros_ec_sensorhub_ring_allocate(ptr noundef nonnull %call.i119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %if.end35.if.end43_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sensor_type.i) #5
  %18 = call ptr @memset(ptr %sensor_type.i, i32 0, i32 32)
  %19 = ptrtoint ptr %msg15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg15, align 4
  %21 = ptrtoint ptr %ec14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ec14, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %20, align 4
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %20, i32 0, i32 3
  %24 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %insize.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 13, ptr %outsize.i, align 4
  %26 = ptrtoint ptr %sensor_num36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sensor_num36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp99.i = icmp sgt i32 %27, 0
  br i1 %cmp99.i, label %for.body.lr.ph.i, label %if.end43.for.end.i_crit_edge

if.end43.for.end.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end43
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %22, i32 0, i32 1
  %28 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i.i, i32 8
  %fwnode.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 1
  %name2.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 3
  %id3.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 4
  %res4.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 5
  %num_res.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 6
  %data5.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 7
  %size_data.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 8
  %dma_mask.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 9
  %properties.i.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i.i, i32 0, i32 10
  %result.i = getelementptr inbounds %struct.cros_ec_command, ptr %20, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0100.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc25.i, %for.inc.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %params, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %30, align 1
  %conv.i = trunc i32 %i.0100.i to i8
  %32 = load ptr, ptr %params, align 8
  %33 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %33, align 1
  %35 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ec_dev.i, align 8
  %call.i121 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %36, ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp5.i = icmp slt i32 %call.i121, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %i.0100.i, i32 noundef %call.i121, i32 noundef %38) #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %39 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resp, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %42)
  %43 = icmp ult i8 %42, 7
  br i1 %43, label %switch.lookup, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %conv7.i) #8
  br label %for.inc.i

switch.lookup:                                    ; preds = %if.end.i
  %44 = sext i8 %42 to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.cros_ec_sensorhub_probe, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load ptr, ptr %switch.gep, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sensor_platforms.i.i) #5
  %46 = ptrtoint ptr %sensor_platforms.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %sensor_platforms.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i.i) #5
  %47 = call ptr @memset(ptr %28, i32 255, i32 48)
  %48 = ptrtoint ptr %pdevinfo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev1, ptr %pdevinfo.i.i.i.i, align 8
  %49 = ptrtoint ptr %fwnode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %fwnode.i.i.i.i, align 4
  %50 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %28, align 8
  %51 = ptrtoint ptr %name2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %switch.load, ptr %name2.i.i.i.i, align 4
  %52 = ptrtoint ptr %id3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -2, ptr %id3.i.i.i.i, align 8
  %53 = ptrtoint ptr %res4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %res4.i.i.i.i, align 4
  %54 = ptrtoint ptr %num_res.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_res.i.i.i.i, align 8
  %55 = ptrtoint ptr %data5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sensor_platforms.i.i, ptr %data5.i.i.i.i, align 4
  %56 = ptrtoint ptr %size_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %size_data.i.i.i.i, align 8
  %57 = ptrtoint ptr %dma_mask.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %dma_mask.i.i.i.i, align 8
  %58 = ptrtoint ptr %properties.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %properties.i.i.i.i, align 8
  %call.i.i.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i.i) #5
  %cmp.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %cros_ec_sensorhub_allocate_sensor.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %switch.lookup
  %call.i.i.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cros_ec_sensorhub_free_sensor, ptr noundef %call.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cros_ec_sensorhub_allocate_sensor.exit.thread.i, label %cros_ec_sensorhub_allocate_sensor.exit.thread90.i

cros_ec_sensorhub_allocate_sensor.exit.thread.i:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i.i) #5
  %59 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %resp, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %idxprom.i = zext i8 %62 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr %sensor_type.i, i32 0, i32 %idxprom.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

cros_ec_sensorhub_allocate_sensor.exit.thread90.i: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_unregister(ptr noundef %call.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i.i) #5
  br label %cros_ec_sensorhub_register.exit.thread132

cros_ec_sensorhub_allocate_sensor.exit.i:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i.i) #5
  br label %cros_ec_sensorhub_register.exit

for.inc.i:                                        ; preds = %cros_ec_sensorhub_allocate_sensor.exit.thread.i, %do.end16.i, %do.end.i
  %inc25.i = add nuw nsw i32 %i.0100.i, 1
  %65 = ptrtoint ptr %sensor_num36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sensor_num36, align 8
  %cmp.i = icmp slt i32 %inc25.i, %66
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end43.for.end.i_crit_edge
  %67 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sensor_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp27.i = icmp sgt i32 %68, 1
  br i1 %cmp27.i, label %if.then29.i, label %for.end.i.if.end30.i_crit_edge

for.end.i.if.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %has_kb_wake_angle.i = getelementptr inbounds %struct.cros_ec_dev, ptr %22, i32 0, i32 4
  %69 = ptrtoint ptr %has_kb_wake_angle.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %has_kb_wake_angle.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %for.end.i.if.end30.i_crit_edge
  %call31.i = call zeroext i1 @cros_ec_check_features(ptr noundef %22, i32 noundef 37) #5
  br i1 %call31.i, label %if.then32.i, label %if.end30.i.cros_ec_sensorhub_register.exit.thread_crit_edge

if.end30.i.cros_ec_sensorhub_register.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cros_ec_sensorhub_register.exit.thread

if.then32.i:                                      ; preds = %if.end30.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sensor_platforms.i69.i) #5
  %70 = ptrtoint ptr %sensor_platforms.i69.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %sensor_platforms.i69.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i68.i) #5
  %71 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i68.i, i32 8
  %72 = call ptr @memset(ptr %71, i32 255, i32 48)
  %73 = ptrtoint ptr %pdevinfo.i.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev1, ptr %pdevinfo.i.i.i68.i, align 8
  %fwnode.i.i.i70.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 1
  %74 = ptrtoint ptr %fwnode.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %fwnode.i.i.i70.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %71, align 8
  %name2.i.i.i71.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 3
  %76 = ptrtoint ptr %name2.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.24, ptr %name2.i.i.i71.i, align 4
  %id3.i.i.i72.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 4
  %77 = ptrtoint ptr %id3.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -2, ptr %id3.i.i.i72.i, align 8
  %res4.i.i.i73.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 5
  %78 = ptrtoint ptr %res4.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %res4.i.i.i73.i, align 4
  %num_res.i.i.i74.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 6
  %79 = ptrtoint ptr %num_res.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %num_res.i.i.i74.i, align 8
  %data5.i.i.i75.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 7
  %80 = ptrtoint ptr %data5.i.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %sensor_platforms.i69.i, ptr %data5.i.i.i75.i, align 4
  %size_data.i.i.i76.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 8
  %81 = ptrtoint ptr %size_data.i.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %size_data.i.i.i76.i, align 8
  %dma_mask.i.i.i77.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 9
  %82 = ptrtoint ptr %dma_mask.i.i.i77.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 0, ptr %dma_mask.i.i.i77.i, align 8
  %properties.i.i.i78.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i68.i, i32 0, i32 10
  %83 = ptrtoint ptr %properties.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %properties.i.i.i78.i, align 8
  %call.i.i.i79.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i68.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i68.i) #5
  %cmp.i.i80.i = icmp ugt ptr %call.i.i.i79.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i80.i, label %cros_ec_sensorhub_allocate_sensor.exit87.i, label %if.end.i84.i

if.end.i84.i:                                     ; preds = %if.then32.i
  %call.i.i82.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cros_ec_sensorhub_free_sensor, ptr noundef %call.i.i.i79.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i)
  %tobool.not.i.i83.i = icmp eq i32 %call.i.i82.i, 0
  br i1 %tobool.not.i.i83.i, label %cros_ec_sensorhub_allocate_sensor.exit87.thread.i, label %cros_ec_sensorhub_allocate_sensor.exit87.thread95.i

cros_ec_sensorhub_allocate_sensor.exit87.thread.i: ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i69.i) #5
  br label %cros_ec_sensorhub_register.exit.thread

cros_ec_sensorhub_allocate_sensor.exit87.thread95.i: ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_unregister(ptr noundef %call.i.i.i79.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i69.i) #5
  br label %cros_ec_sensorhub_register.exit.thread132

cros_ec_sensorhub_allocate_sensor.exit87.i:       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i69.i) #5
  br label %cros_ec_sensorhub_register.exit

cros_ec_sensorhub_register.exit.thread:           ; preds = %cros_ec_sensorhub_allocate_sensor.exit87.thread.i, %if.end30.i.cros_ec_sensorhub_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sensor_type.i) #5
  %call48 = call zeroext i1 @cros_ec_check_features(ptr noundef %3, i32 noundef 24) #5
  br i1 %call48, label %if.then49, label %cros_ec_sensorhub_register.exit.thread.cleanup_crit_edge

cros_ec_sensorhub_register.exit.thread.cleanup_crit_edge: ; preds = %cros_ec_sensorhub_register.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cros_ec_sensorhub_register.exit.thread132:        ; preds = %cros_ec_sensorhub_allocate_sensor.exit87.thread95.i, %cros_ec_sensorhub_allocate_sensor.exit.thread90.i
  %retval.0.i.ph = phi i32 [ %call.i.i82.i, %cros_ec_sensorhub_allocate_sensor.exit87.thread95.i ], [ %call.i.i.i, %cros_ec_sensorhub_allocate_sensor.exit.thread90.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sensor_type.i) #5
  br label %cleanup

cros_ec_sensorhub_register.exit:                  ; preds = %cros_ec_sensorhub_allocate_sensor.exit87.i, %cros_ec_sensorhub_allocate_sensor.exit.i
  %retval.0.i.in = phi ptr [ %call.i.i.i.i, %cros_ec_sensorhub_allocate_sensor.exit.i ], [ %call.i.i.i79.i, %cros_ec_sensorhub_allocate_sensor.exit87.i ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sensor_type.i) #5
  br label %cleanup

if.then49:                                        ; preds = %cros_ec_sensorhub_register.exit.thread
  %call50 = call i32 @cros_ec_sensorhub_ring_add(ptr noundef nonnull %call.i119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.then49
  %call.i122 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cros_ec_sensorhub_ring_remove, ptr noundef nonnull %call.i119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i, label %if.end53.cleanup_crit_edge, label %if.then.i

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void @cros_ec_sensorhub_ring_remove(ptr noundef nonnull %call.i119) #5, !callees !70
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.body
  %sensor_num56 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %call.i119, i32 0, i32 2
  %84 = ptrtoint ptr %sensor_num56 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %sensor_num56, align 8
  %85 = getelementptr inbounds i8, ptr %pdevinfo.i.i.i, i32 8
  %fwnode.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 1
  %name2.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 3
  %id3.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 4
  %res4.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 5
  %num_res.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 6
  %data5.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 7
  %size_data.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 8
  %dma_mask.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 9
  %properties.i.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cros_ec_sensorhub_allocate_sensor.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cros_ec_sensorhub_allocate_sensor.exit.thread.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sensor_platforms.i) #5
  %conv.i124 = trunc i32 %i.0143 to i8
  %86 = ptrtoint ptr %sensor_platforms.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.i124, ptr %sensor_platforms.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %87 = call ptr @memset(ptr %85, i32 255, i32 48)
  %88 = ptrtoint ptr %pdevinfo.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev1, ptr %pdevinfo.i.i.i, align 8
  %89 = ptrtoint ptr %fwnode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %fwnode.i.i.i, align 4
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %85, align 8
  %91 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.10, ptr %name2.i.i.i, align 4
  %92 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -2, ptr %id3.i.i.i, align 8
  %93 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %res4.i.i.i, align 4
  %94 = ptrtoint ptr %num_res.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %num_res.i.i.i, align 8
  %95 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %sensor_platforms.i, ptr %data5.i.i.i, align 4
  %96 = ptrtoint ptr %size_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %size_data.i.i.i, align 8
  %97 = ptrtoint ptr %dma_mask.i.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 0, ptr %dma_mask.i.i.i, align 8
  %98 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %properties.i.i.i, align 8
  %call.i.i.i125 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i.i) #5
  %cmp.i.i = icmp ugt ptr %call.i.i.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cros_ec_sensorhub_allocate_sensor.exit, label %if.end.i127

if.end.i127:                                      ; preds = %for.body
  %call.i.i = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @cros_ec_sensorhub_free_sensor, ptr noundef %call.i.i.i125) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cros_ec_sensorhub_allocate_sensor.exit.thread, label %cros_ec_sensorhub_allocate_sensor.exit.thread137

cros_ec_sensorhub_allocate_sensor.exit.thread:    ; preds = %if.end.i127
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i) #5
  %inc = add nuw nsw i32 %i.0143, 1
  %99 = ptrtoint ptr %sensor_num56 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sensor_num56, align 8
  %cmp58 = icmp slt i32 %inc, %100
  br i1 %cmp58, label %cros_ec_sensorhub_allocate_sensor.exit.thread.for.body_crit_edge, label %cros_ec_sensorhub_allocate_sensor.exit.thread.cleanup_crit_edge

cros_ec_sensorhub_allocate_sensor.exit.thread.cleanup_crit_edge: ; preds = %cros_ec_sensorhub_allocate_sensor.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cros_ec_sensorhub_allocate_sensor.exit.thread.for.body_crit_edge: ; preds = %cros_ec_sensorhub_allocate_sensor.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cros_ec_sensorhub_allocate_sensor.exit.thread137: ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_unregister(ptr noundef %call.i.i.i125) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i) #5
  br label %cleanup

cros_ec_sensorhub_allocate_sensor.exit:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %call.i.i.i125 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sensor_platforms.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cros_ec_sensorhub_allocate_sensor.exit, %cros_ec_sensorhub_allocate_sensor.exit.thread137, %cros_ec_sensorhub_allocate_sensor.exit.thread.cleanup_crit_edge, %if.then.i, %if.end53.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %cros_ec_sensorhub_register.exit, %cros_ec_sensorhub_register.exit.thread132, %cros_ec_sensorhub_register.exit.thread.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %do.end34, %do.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %do.end27 ], [ -22, %do.end34 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call39, %if.then38.cleanup_crit_edge ], [ %retval.0.i, %cros_ec_sensorhub_register.exit ], [ %call50, %if.then49.cleanup_crit_edge ], [ %101, %cros_ec_sensorhub_allocate_sensor.exit ], [ 0, %cros_ec_sensorhub_register.exit.thread.cleanup_crit_edge ], [ %retval.0.i.ph, %cros_ec_sensorhub_register.exit.thread132 ], [ 0, %if.end53.cleanup_crit_edge ], [ %call.i122, %if.then.i ], [ %call.i.i, %cros_ec_sensorhub_allocate_sensor.exit.thread137 ], [ 0, %cros_ec_sensorhub_allocate_sensor.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_sensor_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensorhub_ring_allocate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensorhub_ring_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cros_ec_sensorhub_ring_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_sensorhub_free_sensor(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_device_unregister(ptr noundef %arg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ec1 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec1, align 4
  %call2 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %3, i32 noundef 24) #5
  br i1 %call2, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef %1, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ec1 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec1, align 4
  %call2 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %3, i32 noundef 24) #5
  br i1 %call2, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef %1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_cros_ec_sensorhub__185_258_cros_ec_sensorhub_driver_init6, !1, !"__initcall__kmod_cros_ec_sensorhub__185_258_cros_ec_sensorhub_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_cros_ec_sensorhub_driver_exit, !1, !"__exitcall_cros_ec_sensorhub_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias186, !4, !"__UNIQUE_ID_alias186", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_author187, !6, !"__UNIQUE_ID_author187", i1 false, i1 false}
!6 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_description188, !8, !"__UNIQUE_ID_description188", i1 false, i1 false}
!8 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_file189, !10, !"__UNIQUE_ID_file189", i1 false, i1 false}
!10 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 263, i32 1}
!11 = !{ptr @__UNIQUE_ID_license190, !10, !"__UNIQUE_ID_license190", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 252, i32 11}
!14 = !{ptr @cros_ec_sensorhub_driver, !15, !"cros_ec_sensorhub_driver", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 250, i32 31}
!16 = !{ptr @cros_ec_sensorhub_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 144, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 158, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cros_ec_sensorhub_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @cros_ec_sensorhub_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 164, i32 4}
!29 = !{ptr @cros_ec_sensorhub_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cros_ec_sensorhub_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 209, i32 7}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 69, i32 4}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cros_ec_sensorhub_register._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @cros_ec_sensorhub_register._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 76, i32 11}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 79, i32 11}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 82, i32 11}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 85, i32 11}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 88, i32 11}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 91, i32 11}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 94, i32 11}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 97, i32 4}
!55 = !{ptr @cros_ec_sensorhub_register._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cros_ec_sensorhub_register._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 115, i32 8}
!59 = !{ptr @cros_ec_sensorhub_pm_ops, !60, !"cros_ec_sensorhub_pm_ops", i1 false, i1 false}
!60 = !{!"../drivers/platform/chrome/cros_ec_sensorhub.c", i32 246, i32 8}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{ptr @cros_ec_sensorhub_free_sensor, ptr @cros_ec_sensorhub_ring_remove}
