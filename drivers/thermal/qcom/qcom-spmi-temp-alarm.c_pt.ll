; ModuleID = '/llk/IR_all_yes/drivers/thermal/qcom/qcom-spmi-temp-alarm.c_pt.bc'
source_filename = "../drivers/thermal/qcom/qcom-spmi-temp-alarm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.qpnp_tm_chip = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.mutex, i8, ptr, ptr }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_qcom_spmi_temp_alarm__187_484_qpnp_tm_driver_init6 = internal global ptr @qpnp_tm_driver_init, section ".initcall6.init", align 4
@qpnp_tm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qpnp_tm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qpnp_tm_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qpnp_tm_driver_exit = internal global ptr @qpnp_tm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias188 = internal constant [52 x i8] c"qcom_spmi_temp_alarm.alias=platform:spmi-temp-alarm\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [68 x i8] c"qcom_spmi_temp_alarm.description=QPNP PMIC Temperature Alarm driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [68 x i8] c"qcom_spmi_temp_alarm.file=drivers/thermal/qcom/qcom-spmi-temp-alarm\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [36 x i8] c"qcom_spmi_temp_alarm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spmi-temp-alarm\00", [16 x i8] zeroinitializer }, align 32
@qpnp_tm_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-temp-alarm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qpnp_tm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"thermal\00", [24 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 414, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not read type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qpnp_tm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/thermal/qcom/qcom-spmi-temp-alarm.c\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry_ptr = internal global ptr @qpnp_tm_probe._entry, section ".printk_index", align 4
@qpnp_tm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not read subtype\0A\00", [40 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry_ptr.11 = internal global ptr @qpnp_tm_probe._entry.9, section ".printk_index", align 4
@qpnp_tm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 426, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not read dig_major\0A\00", [38 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry_ptr.14 = internal global ptr @qpnp_tm_probe._entry.12, section ".printk_index", align 4
@qpnp_tm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 433, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid type 0x%02x or subtype 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry_ptr.17 = internal global ptr @qpnp_tm_probe._entry.15, section ".printk_index", align 4
@temp_map_gen2_v1 = internal constant { [4 x [3 x i32]], [48 x i8] } { [4 x [3 x i32]] [[3 x i32] [i32 90000, i32 110000, i32 140000], [3 x i32] [i32 95000, i32 115000, i32 145000], [3 x i32] [i32 100000, i32 120000, i32 150000], [3 x i32] [i32 105000, i32 125000, i32 155000]], [48 x i8] zeroinitializer }, align 32
@temp_map_gen1 = internal constant { [4 x [3 x i32]], [48 x i8] } { [4 x [3 x i32]] [[3 x i32] [i32 105000, i32 125000, i32 145000], [3 x i32] [i32 110000, i32 130000, i32 150000], [3 x i32] [i32 115000, i32 135000, i32 155000], [3 x i32] [i32 120000, i32 140000, i32 160000]], [48 x i8] zeroinitializer }, align 32
@qpnp_tm_sensor_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @qpnp_tm_get_temp, ptr null, ptr null, ptr null, ptr @qpnp_tm_set_trip_temp }, [44 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 451, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register sensor\0A\00", [37 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry_ptr.20 = internal global ptr @qpnp_tm_probe._entry.18, section ".printk_index", align 4
@qpnp_tm_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 457, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init failed\0A\00", [19 x i8] zeroinitializer }, align 32
@qpnp_tm_probe._entry_ptr.23 = internal global ptr @qpnp_tm_probe._entry.21, section ".printk_index", align 4
@alarm_state_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3], [32 x i8] zeroinitializer }, align 32
@qpnp_tm_update_critical_trip_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 254, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"No ADC is configured and critical temperature is above the maximum stage 2 threshold of 140 C! Configuring stage 2 shutdown at 140 C.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qpnp_tm_update_critical_trip_temp\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@qpnp_tm_update_critical_trip_temp._entry_ptr = internal global ptr @qpnp_tm_update_critical_trip_temp._entry, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"qpnp_tm_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 477, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 479, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"qpnp_tm_match_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 471, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 387, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 393, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 402, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 414, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 420, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 426, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 432, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"temp_map_gen2_v1\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 53, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"temp_map_gen1\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 46, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"qpnp_tm_sensor_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 285, i32 48 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 451, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 457, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [16 x i8] c"alarm_state_map\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 89, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [47 x i8] c"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 253, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_qpnp_tm_driver_exit, ptr @__initcall__kmod_qcom_spmi_temp_alarm__187_484_qpnp_tm_driver_init6, ptr @qpnp_tm_driver_exit, ptr @qpnp_tm_probe._entry, ptr @qpnp_tm_probe._entry.12, ptr @qpnp_tm_probe._entry.15, ptr @qpnp_tm_probe._entry.18, ptr @qpnp_tm_probe._entry.21, ptr @qpnp_tm_probe._entry.9, ptr @qpnp_tm_probe._entry_ptr, ptr @qpnp_tm_probe._entry_ptr.11, ptr @qpnp_tm_probe._entry_ptr.14, ptr @qpnp_tm_probe._entry_ptr.17, ptr @qpnp_tm_probe._entry_ptr.20, ptr @qpnp_tm_probe._entry_ptr.23, ptr @qpnp_tm_update_critical_trip_temp._entry, ptr @qpnp_tm_update_critical_trip_temp._entry_ptr, ptr @qpnp_tm_driver, ptr @.str, ptr @qpnp_tm_match_table, ptr @qpnp_tm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @temp_map_gen2_v1, ptr @temp_map_gen1, ptr @qpnp_tm_sensor_ops, ptr @.str.19, ptr @.str.22, ptr @alarm_state_map, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_map_gen2_v1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_map_gen1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_sensor_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alarm_state_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnp_tm_update_critical_trip_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnp_tm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qpnp_tm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qpnp_tm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @qpnp_tm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnp_tm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i181 = alloca i32, align 4
  %val.i172 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !74
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev4 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev4, align 4
  %lock = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @qpnp_tm_probe.__key) #6
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call6 = tail call ptr @dev_get_regmap(ptr noundef %6, ptr noundef null) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %call.i, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %res, i32 noundef 1, i32 noundef 0) #6
  %8 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call19 = call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %adc = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 11
  %9 = ptrtoint ptr %adc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call19, ptr %adc, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then22:                                        ; preds = %if.end17
  %10 = ptrtoint ptr %adc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %adc, align 4
  %cmp26 = icmp eq ptr %call19, inttoptr (i32 -517 to ptr)
  br i1 %cmp26, label %if.then22.cleanup_crit_edge, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  %base = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !74
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %add.i = add i32 %12, 4
  %call.i170 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %cmp.i171 = icmp slt i32 %call.i170, 0
  br i1 %cmp.i171, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %18 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i172) #6
  %19 = ptrtoint ptr %val.i172 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i172, align 4, !annotation !74
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base, align 4
  %add.i174 = add i32 %23, 5
  %call.i175 = call i32 @regmap_read(ptr noundef %21, i32 noundef %add.i174, ptr noundef nonnull %val.i172) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp.i176 = icmp slt i32 %call.i175, 0
  br i1 %cmp.i176, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i172) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %24 = ptrtoint ptr %val.i172 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i172, align 4
  %conv2.i177 = trunc i32 %25 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i172) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i181) #6
  %26 = ptrtoint ptr %val.i181 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i181, align 4, !annotation !74
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base, align 4
  %add.i183 = add i32 %30, 1
  %call.i184 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add.i183, ptr noundef nonnull %val.i181) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %cmp.i185 = icmp slt i32 %call.i184, 0
  br i1 %cmp.i185, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i181) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %31 = ptrtoint ptr %val.i181 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i181, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i181) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv2.i)
  %cmp54.not = icmp eq i8 %conv2.i, 9
  %33 = and i8 %conv2.i177, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %switch = icmp eq i8 %33, 8
  %or.cond = select i1 %cmp54.not, i1 %switch, i1 false
  br i1 %or.cond, label %if.end69, label %do.end65

do.end65:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %conv67 = and i32 %18, 255
  %conv68 = and i32 %25, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv67, i32 noundef %conv68) #9
  br label %cleanup

if.end69:                                         ; preds = %if.end53
  %conv2.i186 = trunc i32 %32 to i8
  %conv70 = and i32 %25, 255
  %subtype71 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %subtype71 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv70, ptr %subtype71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv2.i177)
  %cmp73 = icmp ne i8 %conv2.i177, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i186)
  %cmp77.not = icmp eq i8 %conv2.i186, 0
  %or.cond212 = select i1 %cmp73, i1 true, i1 %cmp77.not
  %spec.select = select i1 %or.cond212, ptr @temp_map_gen1, ptr @temp_map_gen2_v1
  %35 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.select, ptr %35, align 4
  %call83 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @qpnp_tm_sensor_ops) #6
  %tz_dev = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %tz_dev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call83, ptr %tz_dev, align 4
  %cmp.i190 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %do.end89, label %if.end93

do.end89:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  %38 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tz_dev, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end93:                                         ; preds = %if.end69
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %41 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %val.i.i, align 4, !annotation !74
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base, align 4
  %add.i.i = add i32 %45, 64
  %call.i.i191 = call i32 @regmap_read(ptr noundef %43, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i191)
  %cmp.i.i = icmp slt i32 %call.i.i191, 0
  br i1 %cmp.i.i, label %qpnp_tm_read.exit.thread.i, label %if.end.i192

qpnp_tm_read.exit.thread.i:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %qpnp_tm_init.exit.thread

if.end.i192:                                      ; preds = %if.end93
  %46 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %48 = and i32 %47, 3
  %thresh.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %thresh.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %thresh.i, align 4
  %temp.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 37000, ptr %temp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %51 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !74
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base, align 4
  %add.i.i.i = add i32 %55, 8
  %call.i.i.i = call i32 @regmap_read(ptr noundef %53, i32 noundef %add.i.i.i, ptr noundef nonnull %val.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %qpnp_tm_get_temp_stage.exit.thread.i, label %qpnp_tm_get_temp_stage.exit.i

qpnp_tm_get_temp_stage.exit.thread.i:             ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  br label %qpnp_tm_init.exit.thread

qpnp_tm_get_temp_stage.exit.i:                    ; preds = %if.end.i192
  %56 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %58 = ptrtoint ptr %subtype71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %subtype71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %59)
  %cmp1.i.i = icmp eq i32 %59, 8
  %60 = and i32 %57, 3
  %61 = lshr i32 %57, 4
  %62 = and i32 %61, 7
  %ret.0.in.i.i = select i1 %cmp1.i.i, i32 %60, i32 %62
  %stage6.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 6
  %63 = ptrtoint ptr %stage6.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %ret.0.in.i.i, ptr %stage6.i, align 4
  br i1 %cmp1.i.i, label %qpnp_tm_get_temp_stage.exit.i.cond.end.i_crit_edge, label %cond.false.i

qpnp_tm_get_temp_stage.exit.i.cond.end.i_crit_edge: ; preds = %qpnp_tm_get_temp_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %qpnp_tm_get_temp_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [8 x i32], ptr @alarm_state_map, i32 0, i32 %ret.0.in.i.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %qpnp_tm_get_temp_stage.exit.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %65, %cond.false.i ], [ %60, %qpnp_tm_get_temp_stage.exit.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool.not.i, label %cond.end.i.if.end14.i_crit_edge, label %if.then11.i

cond.end.i.if.end14.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then11.i:                                      ; preds = %cond.end.i
  %66 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %35, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %if.then11.i.qpnp_tm_decode_temp.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then11.i.qpnp_tm_decode_temp.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_decode_temp.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then11.i
  %68 = ptrtoint ptr %thresh.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %thresh.i, align 4
  %70 = or i32 %69, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %71 = icmp ugt i32 %70, 3
  br i1 %71, label %lor.lhs.false.i.i.qpnp_tm_decode_temp.exit.i_crit_edge, label %if.end.i45.i

lor.lhs.false.i.i.qpnp_tm_decode_temp.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_decode_temp.exit.i

if.end.i45.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add nsw i32 %cond.i, -1
  %arrayidx7.i.i = getelementptr [4 x [3 x i32]], ptr %67, i32 0, i32 %69, i32 %sub.i.i
  %72 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx7.i.i, align 4
  br label %qpnp_tm_decode_temp.exit.i

qpnp_tm_decode_temp.exit.i:                       ; preds = %if.end.i45.i, %lor.lhs.false.i.i.qpnp_tm_decode_temp.exit.i_crit_edge, %if.then11.i.qpnp_tm_decode_temp.exit.i_crit_edge
  %retval.0.i46.i = phi i32 [ %73, %if.end.i45.i ], [ 0, %lor.lhs.false.i.i.qpnp_tm_decode_temp.exit.i_crit_edge ], [ 0, %if.then11.i.qpnp_tm_decode_temp.exit.i_crit_edge ]
  %74 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i46.i, ptr %temp.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %qpnp_tm_decode_temp.exit.i, %cond.end.i.if.end14.i_crit_edge
  %75 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tz_dev, align 4
  %call.i47.i = call i32 @of_thermal_get_ntrips(ptr noundef %76) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47.i)
  %cmp.i48.i = icmp slt i32 %call.i47.i, 1
  br i1 %cmp.i48.i, label %if.end14.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge, label %if.end.i49.i

if.end14.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_get_critical_trip_temp.exit.i

if.end.i49.i:                                     ; preds = %if.end14.i
  %77 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tz_dev, align 4
  %call2.i.i = call ptr @of_thermal_get_trip_points(ptr noundef %78) #6
  %tobool.not.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.not.i.i, label %if.end.i49.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge, label %if.end.i49.i.for.body.i.i_crit_edge

if.end.i49.i.for.body.i.i_crit_edge:              ; preds = %if.end.i49.i
  br label %for.body.i.i

if.end.i49.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge: ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_get_critical_trip_temp.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i49.i.for.body.i.i_crit_edge
  %i.025.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i49.i.for.body.i.i_crit_edge ]
  %79 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tz_dev, align 4
  %call7.i.i = call zeroext i1 @of_thermal_is_trip_valid(ptr noundef %80, i32 noundef %i.025.i.i) #6
  br i1 %call7.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %type.i.i = getelementptr %struct.thermal_trip, ptr %call2.i.i, i32 %i.025.i.i, i32 3
  %81 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp8.i.i = icmp eq i32 %82, 3
  br i1 %cmp8.i.i, label %if.then9.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %temperature.i.i = getelementptr %struct.thermal_trip, ptr %call2.i.i, i32 %i.025.i.i, i32 1
  %83 = ptrtoint ptr %temperature.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %temperature.i.i, align 4
  br label %qpnp_tm_get_critical_trip_temp.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i47.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_get_critical_trip_temp.exit.i

qpnp_tm_get_critical_trip_temp.exit.i:            ; preds = %for.inc.i.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge, %if.then9.i.i, %if.end.i49.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge, %if.end14.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge
  %retval.0.i50.i = phi i32 [ %84, %if.then9.i.i ], [ -274000, %if.end14.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge ], [ -274000, %if.end.i49.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge ], [ -274000, %for.inc.i.i.qpnp_tm_get_critical_trip_temp.exit.i_crit_edge ]
  %call16.i = call fastcc i32 @qpnp_tm_update_critical_trip_temp(ptr noundef %call.i, i32 noundef %retval.0.i50.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %qpnp_tm_get_critical_trip_temp.exit.i.qpnp_tm_init.exit.thread_crit_edge, label %qpnp_tm_init.exit

qpnp_tm_get_critical_trip_temp.exit.i.qpnp_tm_init.exit.thread_crit_edge: ; preds = %qpnp_tm_get_critical_trip_temp.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_init.exit.thread

qpnp_tm_init.exit.thread:                         ; preds = %qpnp_tm_get_critical_trip_temp.exit.i.qpnp_tm_init.exit.thread_crit_edge, %qpnp_tm_get_temp_stage.exit.thread.i, %qpnp_tm_read.exit.thread.i
  %ret.0.i.ph = phi i32 [ %call.i.i.i, %qpnp_tm_get_temp_stage.exit.thread.i ], [ %call.i.i191, %qpnp_tm_read.exit.thread.i ], [ %call16.i, %qpnp_tm_get_critical_trip_temp.exit.i.qpnp_tm_init.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %do.end100

qpnp_tm_init.exit:                                ; preds = %qpnp_tm_get_critical_trip_temp.exit.i
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 4
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base, align 4
  %add.i52.i = add i32 %88, 70
  %call.i53.i = call i32 @regmap_write(ptr noundef %86, i32 noundef %add.i52.i, i32 noundef 128) #6
  %initialized.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %initialized.i, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %cmp95 = icmp slt i32 %call.i53.i, 0
  br i1 %cmp95, label %qpnp_tm_init.exit.do.end100_crit_edge, label %if.end102

qpnp_tm_init.exit.do.end100_crit_edge:            ; preds = %qpnp_tm_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end100

do.end100:                                        ; preds = %qpnp_tm_init.exit.do.end100_crit_edge, %qpnp_tm_init.exit.thread
  %ret.0.i211 = phi i32 [ %ret.0.i.ph, %qpnp_tm_init.exit.thread ], [ %call.i53.i, %qpnp_tm_init.exit.do.end100_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end102:                                        ; preds = %qpnp_tm_init.exit
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %2, align 4
  %call104 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef null, ptr noundef nonnull @qpnp_tm_isr, i32 noundef 8192, ptr noundef %91, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.end102.cleanup_crit_edge, label %if.end108

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %tz_dev, align 4
  call void @thermal_zone_device_update(ptr noundef %93, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end102.cleanup_crit_edge, %do.end100, %do.end89, %do.end65, %do.end51, %do.end43, %do.end35, %if.then22.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i170, %do.end35 ], [ %call.i175, %do.end43 ], [ %call.i184, %do.end51 ], [ -19, %do.end65 ], [ %40, %do.end89 ], [ %ret.0.i211, %do.end100 ], [ 0, %if.end108 ], [ -12, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ %8, %if.end10.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -517, %if.then22.cleanup_crit_edge ], [ %call104, %if.end102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnp_tm_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tz_dev = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz_dev, align 4
  tail call void @thermal_zone_device_update(ptr noundef %1, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnp_tm_get_temp(ptr noundef %data, ptr noundef writeonly %temp) #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %mili_celsius = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mili_celsius) #6
  %0 = ptrtoint ptr %mili_celsius to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mili_celsius, align 4, !annotation !74
  %tobool.not = icmp eq ptr %temp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 10
  %1 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %initialized, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 37000, ptr %temp, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %adc = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %lock = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #6
  br i1 %call.i, label %if.then5.if.end.i_crit_edge, label %do.end.i, !prof !76

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 158, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then5.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !74
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %base.i.i.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 8
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 4
  %add.i.i.i = add i32 %10, 8
  %call.i.i.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add.i.i.i, ptr noundef nonnull %val.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %qpnp_tm_update_temp_no_adc.exit.thread, label %qpnp_tm_get_temp_stage.exit.i

qpnp_tm_update_temp_no_adc.exit.thread:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

qpnp_tm_get_temp_stage.exit.i:                    ; preds = %if.end.i
  %11 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #6
  %subtype.i.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %subtype.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp1.i.i = icmp eq i32 %14, 8
  %15 = and i32 %12, 3
  %16 = lshr i32 %12, 4
  %17 = and i32 %16, 7
  %ret.0.in.i.i = select i1 %cmp1.i.i, i32 %15, i32 %17
  br i1 %cmp1.i.i, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %qpnp_tm_get_temp_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %stage25.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 6
  br label %if.end28.i

if.else.i:                                        ; preds = %qpnp_tm_get_temp_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [8 x i32], ptr @alarm_state_map, i32 0, i32 %ret.0.in.i.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %stage26.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %stage26.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stage26.i, align 4
  %arrayidx27.i = getelementptr [8 x i32], ptr @alarm_state_map, i32 0, i32 %21
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then24.i
  %stage_new.0.i = phi i32 [ %15, %if.then24.i ], [ %19, %if.else.i ]
  %stage_old.0.in.i = phi ptr [ %stage25.i, %if.then24.i ], [ %arrayidx27.i, %if.else.i ]
  %22 = ptrtoint ptr %stage_old.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %stage_old.0.i = load i32, ptr %stage_old.0.in.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stage_new.0.i, i32 %stage_old.0.i)
  %cmp29.i = icmp ugt i32 %stage_new.0.i, %stage_old.0.i
  br i1 %cmp29.i, label %if.then30.i, label %if.else32.i

if.then30.i:                                      ; preds = %if.end28.i
  %temp_map.i.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 12
  %23 = ptrtoint ptr %temp_map.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %temp_map.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then30.i.if.end39.sink.split.i_crit_edge, label %lor.lhs.false.i.i

if.then30.i.if.end39.sink.split.i_crit_edge:      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split.i

lor.lhs.false.i.i:                                ; preds = %if.then30.i
  %thresh.i.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 5
  %25 = ptrtoint ptr %thresh.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %thresh.i.i, align 4
  %27 = or i32 %26, %stage_new.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %lor.lhs.false.i.i.if.end39.sink.split.i_crit_edge, label %if.end.i62.i

lor.lhs.false.i.i.if.end39.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split.i

if.end.i62.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add nsw i32 %stage_new.0.i, -1
  %arrayidx7.i.i = getelementptr [4 x [3 x i32]], ptr %24, i32 0, i32 %26, i32 %sub.i.i
  br label %if.end39.sink.split.sink.split.i

if.else32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_cmp4(i32 %stage_new.0.i, i32 %stage_old.0.i)
  %cmp33.i = icmp ult i32 %stage_new.0.i, %stage_old.0.i
  br i1 %cmp33.i, label %if.then34.i, label %if.else32.i.qpnp_tm_update_temp_no_adc.exit_crit_edge

if.else32.i.qpnp_tm_update_temp_no_adc.exit_crit_edge: ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qpnp_tm_update_temp_no_adc.exit

if.then34.i:                                      ; preds = %if.else32.i
  %temp_map.i64.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 12
  %29 = ptrtoint ptr %temp_map.i64.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %temp_map.i64.i, align 4
  %tobool.not.i65.i = icmp eq ptr %30, null
  br i1 %tobool.not.i65.i, label %if.then34.i.if.end39.sink.split.i_crit_edge, label %lor.lhs.false.i68.i

if.then34.i.if.end39.sink.split.i_crit_edge:      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split.i

lor.lhs.false.i68.i:                              ; preds = %if.then34.i
  %add35.i = add nuw i32 %stage_new.0.i, 1
  %thresh.i66.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 5
  %31 = ptrtoint ptr %thresh.i66.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %thresh.i66.i, align 4
  %33 = or i32 %32, %add35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %34 = icmp ugt i32 %33, 3
  br i1 %34, label %lor.lhs.false.i68.i.if.end39.sink.split.i_crit_edge, label %if.end.i70.i

lor.lhs.false.i68.i.if.end39.sink.split.i_crit_edge: ; preds = %lor.lhs.false.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.sink.split.i

if.end.i70.i:                                     ; preds = %lor.lhs.false.i68.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7.i69.i = getelementptr [4 x [3 x i32]], ptr %30, i32 0, i32 %32, i32 %stage_new.0.i
  br label %if.end39.sink.split.sink.split.i

if.end39.sink.split.sink.split.i:                 ; preds = %if.end.i70.i, %if.end.i62.i
  %arrayidx7.i69.sink.i = phi ptr [ %arrayidx7.i69.i, %if.end.i70.i ], [ %arrayidx7.i.i, %if.end.i62.i ]
  %.sink77.i = phi i32 [ -2000, %if.end.i70.i ], [ 2000, %if.end.i62.i ]
  %35 = ptrtoint ptr %arrayidx7.i69.sink.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7.i69.sink.i, align 4
  %phi.bo.i = add i32 %36, %.sink77.i
  br label %if.end39.sink.split.i

if.end39.sink.split.i:                            ; preds = %if.end39.sink.split.sink.split.i, %lor.lhs.false.i68.i.if.end39.sink.split.i_crit_edge, %if.then34.i.if.end39.sink.split.i_crit_edge, %lor.lhs.false.i.i.if.end39.sink.split.i_crit_edge, %if.then30.i.if.end39.sink.split.i_crit_edge
  %retval.0.i71.sink.i = phi i32 [ 2000, %lor.lhs.false.i.i.if.end39.sink.split.i_crit_edge ], [ 2000, %if.then30.i.if.end39.sink.split.i_crit_edge ], [ -2000, %lor.lhs.false.i68.i.if.end39.sink.split.i_crit_edge ], [ -2000, %if.then34.i.if.end39.sink.split.i_crit_edge ], [ %phi.bo.i, %if.end39.sink.split.sink.split.i ]
  %temp37.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %temp37.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i71.sink.i, ptr %temp37.i, align 4
  br label %qpnp_tm_update_temp_no_adc.exit

qpnp_tm_update_temp_no_adc.exit:                  ; preds = %if.end39.sink.split.i, %if.else32.i.qpnp_tm_update_temp_no_adc.exit_crit_edge
  %stage40.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 6
  %38 = ptrtoint ptr %stage40.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %ret.0.in.i.i, ptr %stage40.i, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end15

if.else:                                          ; preds = %if.end3
  %call10 = call i32 @iio_read_channel_processed(ptr noundef nonnull %5, ptr noundef nonnull %mili_celsius) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.else.cleanup_crit_edge, label %if.end13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mili_celsius to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mili_celsius, align 4
  %temp14 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 4
  %41 = ptrtoint ptr %temp14 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %temp14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %qpnp_tm_update_temp_no_adc.exit
  %temp16 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 4
  %42 = ptrtoint ptr %temp16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %temp16, align 4
  %44 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else.cleanup_crit_edge, %qpnp_tm_update_temp_no_adc.exit.thread, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.else.cleanup_crit_edge ], [ %call.i.i.i, %qpnp_tm_update_temp_no_adc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mili_celsius) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnp_tm_set_trip_temp(ptr noundef %data, i32 noundef %trip, i32 noundef %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tz_dev = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %tz_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tz_dev, align 4
  %call = tail call ptr @of_thermal_get_trip_points(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr %struct.thermal_trip, ptr %call, i32 %trip, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.qpnp_tm_chip, ptr %data, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call3 = tail call fastcc i32 @qpnp_tm_update_critical_trip_temp(ptr noundef %data, i32 noundef %temp)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qpnp_tm_update_critical_trip_temp(ptr noundef %chip, i32 noundef %temp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %temp_map = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %temp_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %temp_map, align 4
  %arrayidx1 = getelementptr [3 x i32], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %arrayidx4 = getelementptr [4 x [3 x i32]], ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %lock = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 9
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #6
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !76

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -274000, i32 %temp)
  %cmp = icmp eq i32 %temp, -274000
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %temp)
  %cmp24 = icmp sgt i32 %3, %temp
  %or.cond = select i1 %cmp, i1 true, i1 %cmp24
  br i1 %or.cond, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %thresh = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %thresh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %thresh, align 4
  br label %skip

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %temp)
  %cmp27.not = icmp slt i32 %5, %temp
  br i1 %cmp27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %5, %temp
  %div.neg = sdiv i32 %sub, -5000
  %sub29 = add nsw i32 %div.neg, 3
  %thresh30 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 5
  %7 = ptrtoint ptr %thresh30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub29, ptr %thresh30, align 4
  br label %skip

if.else:                                          ; preds = %if.end26
  %thresh31 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 5
  %8 = ptrtoint ptr %thresh31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %thresh31, align 4
  %adc = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc, align 4
  %tobool32.not = icmp eq ptr %10, null
  br i1 %tobool32.not, label %do.end37, label %if.else.skip_crit_edge

if.else.skip_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

do.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.24) #9
  br label %skip

skip:                                             ; preds = %do.end37, %if.else.skip_crit_edge, %if.then28, %if.then25
  %.sink68 = phi i32 [ 8, %do.end37 ], [ 8, %if.then25 ], [ 72, %if.then28 ], [ 72, %if.else.skip_crit_edge ]
  %thresh40 = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 5
  %13 = ptrtoint ptr %thresh40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %thresh40, align 4
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %base.i = getelementptr inbounds %struct.qpnp_tm_chip, ptr %chip, i32 0, i32 8
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base.i, align 4
  %add.i = add i32 %18, 64
  %.masked = and i32 %14, 247
  %conv1.i = or i32 %.masked, %.sink68
  %call.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %add.i, i32 noundef %conv1.i) #6
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_thermal_is_trip_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_qcom_spmi_temp_alarm__187_484_qpnp_tm_driver_init6, !1, !"__initcall__kmod_qcom_spmi_temp_alarm__187_484_qpnp_tm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 484, i32 1}
!2 = !{ptr @__exitcall_qpnp_tm_driver_exit, !1, !"__exitcall_qpnp_tm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias188, !4, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!4 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 486, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 487, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 488, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 479, i32 11}
!12 = !{ptr @qpnp_tm_driver, !13, !"qpnp_tm_driver", i1 false, i1 false}
!13 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 477, i32 31}
!14 = !{ptr @qpnp_tm_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 387, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 393, i32 35}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 402, i32 47}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 414, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qpnp_tm_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @qpnp_tm_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 420, i32 3}
!31 = !{ptr @qpnp_tm_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qpnp_tm_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 426, i32 3}
!35 = !{ptr @qpnp_tm_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qpnp_tm_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 432, i32 3}
!39 = !{ptr @qpnp_tm_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qpnp_tm_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 451, i32 3}
!43 = !{ptr @qpnp_tm_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @qpnp_tm_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 457, i32 3}
!47 = !{ptr @qpnp_tm_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qpnp_tm_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @temp_map_gen2_v1, !50, !"temp_map_gen2_v1", i1 false, i1 false}
!50 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 53, i32 19}
!51 = !{ptr @temp_map_gen1, !52, !"temp_map_gen1", i1 false, i1 false}
!52 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 46, i32 19}
!53 = !{ptr @qpnp_tm_sensor_ops, !54, !"qpnp_tm_sensor_ops", i1 false, i1 false}
!54 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 285, i32 48}
!55 = !{ptr @alarm_state_map, !56, !"alarm_state_map", i1 false, i1 false}
!56 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 89, i32 27}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 253, i32 4}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qpnp_tm_update_critical_trip_temp._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @qpnp_tm_update_critical_trip_temp._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @qpnp_tm_match_table, !64, !"qpnp_tm_match_table", i1 false, i1 false}
!64 = !{!"../drivers/thermal/qcom/qcom-spmi-temp-alarm.c", i32 471, i32 34}
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
!76 = !{!"branch_weights", i32 2000, i32 1}
