; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/sensors.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/sensors.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_events = type { i32, ptr, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scmi_event_ops = type { ptr, ptr, ptr }
%struct.scmi_event = type { i8, i32, i32 }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sensors_info = type { i32, i32, i32, i64, i32, ptr }
%struct.scmi_msg_resp_sensor_attributes = type { i16, i8, i8, i32, i32, i32 }
%struct.scmi_msg_resp_sensor_description = type { i16, i16, [0 x %struct.scmi_sensor_descriptor] }
%struct.scmi_sensor_descriptor = type { i32, i32, i32, [16 x i8], i32, i32, %struct.scmi_msg_resp_attrs }
%struct.scmi_msg_resp_attrs = type { i32, i32, i32, i32 }
%struct.scmi_sensor_info = type { i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, %struct.scmi_sensor_intervals_info, i32, [16 x i8], i8, i32, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_sensor_intervals_info = type { i8, i32, ptr, [16 x i32] }
%struct.scmi_range_attrs = type { i64, i64 }
%struct.scmi_msg_sensor_list_update_intervals = type { i32, i32 }
%struct.scmi_msg_resp_sensor_list_update_intervals = type { i32, [0 x i32] }
%struct.scmi_msg_resp_sensor_axis_description = type { i32, [0 x %struct.scmi_axis_descriptor] }
%struct.scmi_axis_descriptor = type { i32, i32, i32, [16 x i8], i32, %struct.scmi_msg_resp_attrs }
%struct.scmi_msg_sensor_axis_description_get = type { i32, i32 }
%struct.scmi_sensor_axis_info = type { i32, i32, i32, [16 x i8], i8, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_msg_set_sensor_trip_point = type { i32, i32, i32, i32 }
%struct.scmi_msg_sensor_reading_get = type { i32, i32 }
%struct.scmi_resp_sensor_reading_complete = type { i32, i32, i32 }
%struct.scmi_sensor_reading = type { i64, i64 }
%struct.scmi_resp_sensor_reading_complete_v3 = type { i32, [0 x %struct.scmi_sensor_reading_resp] }
%struct.scmi_sensor_reading_resp = type { i32, i32, i32, i32 }
%struct.scmi_msg_sensor_config_set = type { i32, i32 }
%struct.scmi_msg_sensor_request_notify = type { i32, i32 }
%struct.scmi_sensor_trip_point_report = type { i64, i32, i32, i32 }
%struct.scmi_sensor_trip_notify_payld = type { i32, i32, i32 }
%struct.scmi_sensor_update_notify_payld = type { i32, i32, [0 x %struct.scmi_sensor_reading_resp] }
%struct.scmi_sensor_update_report = type { i64, i32, i32, i32, [0 x %struct.scmi_sensor_reading] }

@scmi_sensors = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 21, ptr null, ptr @scmi_sensors_protocol_init, ptr null, ptr @sensor_proto_ops, ptr @sensor_protocol_events }, [40 x i8] zeroinitializer }, align 32
@sensor_proto_ops = internal constant { %struct.scmi_sensor_proto_ops, [36 x i8] } { %struct.scmi_sensor_proto_ops { ptr @scmi_sensor_count_get, ptr @scmi_sensor_info_get, ptr @scmi_sensor_trip_point_config, ptr @scmi_sensor_reading_get, ptr @scmi_sensor_reading_get_timestamped, ptr @scmi_sensor_config_get, ptr @scmi_sensor_config_set }, [36 x i8] zeroinitializer }, align 32
@sensor_protocol_events = internal constant { %struct.scmi_protocol_events, [44 x i8] } { %struct.scmi_protocol_events { i32 4096, ptr @sensor_event_ops, ptr @sensor_events, i32 2, i32 0 }, [44 x i8] zeroinitializer }, align 32
@scmi_sensors_protocol_init.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_sensors_protocol_init\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/firmware/arm_scmi/sensors.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sensor Version %d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@scmi_sensor_description_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No. of sensors can't exceed %d\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"scmi_sensor_description_get\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_sensor_description_get._entry_ptr = internal global ptr @scmi_sensor_description_get._entry, section ".printk_index", align 4
@scmi_sensor_description_get.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Update Intervals not available for sensor ID:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@scmi_sensor_update_intervals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 284, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Sensor ID:%d advertises an invalid segmented interval (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scmi_sensor_update_intervals\00", [35 x i8] zeroinitializer }, align 32
@scmi_sensor_update_intervals._entry_ptr = internal global ptr @scmi_sensor_update_intervals._entry, section ".printk_index", align 4
@scmi_sensor_update_intervals._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No. of update intervals can't exceed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@scmi_sensor_update_intervals._entry_ptr.13 = internal global ptr @scmi_sensor_update_intervals._entry.11, section ".printk_index", align 4
@scmi_sensor_axis_description._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 369, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No. of axis can't exceed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scmi_sensor_axis_description\00", [35 x i8] zeroinitializer }, align 32
@scmi_sensor_axis_description._entry_ptr = internal global ptr @scmi_sensor_axis_description._entry, section ".printk_index", align 4
@sensor_event_ops = internal constant { %struct.scmi_event_ops, [20 x i8] } { %struct.scmi_event_ops { ptr @scmi_sensor_get_num_sources, ptr @scmi_sensor_set_notify_enabled, ptr @scmi_sensor_fill_custom_report }, [20 x i8] zeroinitializer }, align 32
@sensor_events = internal constant { [2 x %struct.scmi_event], [40 x i8] } { [2 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 12, i32 24 }, %struct.scmi_event { i8 1, i32 1016, i32 1032 }], [40 x i8] zeroinitializer }, align 32
@scmi_sensor_set_notify_enabled.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scmi_sensor_set_notify_enabled\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"SCMI Notifications SENSOR - FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"scmi_sensors\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 994, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"sensor_proto_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 830, i32 43 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"sensor_protocol_events\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 956, i32 42 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 971, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 451, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 507, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 282, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 305, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 368, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"sensor_event_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 950, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"sensor_events\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 932, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [39 x i8] c"../drivers/firmware/arm_scmi/sensors.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 858, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @scmi_sensor_axis_description._entry, ptr @scmi_sensor_axis_description._entry_ptr, ptr @scmi_sensor_description_get._entry, ptr @scmi_sensor_description_get._entry_ptr, ptr @scmi_sensor_update_intervals._entry, ptr @scmi_sensor_update_intervals._entry.11, ptr @scmi_sensor_update_intervals._entry_ptr, ptr @scmi_sensor_update_intervals._entry_ptr.13, ptr @scmi_sensors_unregister, ptr @scmi_sensors, ptr @sensor_proto_ops, ptr @sensor_protocol_events, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @sensor_event_ops, ptr @sensor_events, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_sensors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_proto_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_protocol_events to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_sensor_description_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_sensor_update_intervals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_sensor_update_intervals._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_sensor_axis_description._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_event_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_sensors_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_sensors) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_sensors_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_sensors) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensors_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #7
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !56
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %ph, ptr noundef nonnull %version) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_sensors_protocol_init.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_sensors_protocol_init, %if.then)) #7
          to label %do.end40 [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ph, align 4
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %shr = lshr i32 %8, 16
  %conv38 = and i32 %8, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_sensors_protocol_init.__UNIQUE_ID_ddebug329, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv38) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 32, i32 noundef 3520) #7
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %do.end40.cleanup_crit_edge, label %if.end45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %do.end40
  %11 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %version, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #7
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !56
  %15 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i82 = call i32 %18(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i = icmp eq i32 %call.i82, 0
  br i1 %tobool.not.i, label %if.end.i, label %scmi_sensor_attributes_get.exit.thread

scmi_sensor_attributes_get.exit.thread:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end45
  %19 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx.i, align 4
  %23 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %do_xfer.i, align 4
  %call2.i = call i32 %26(ptr noundef %ph, ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %cleanup.critedge

if.then4.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %22, align 4
  %29 = call i16 @llvm.bswap.i16(i16 %28) #7
  %conv.i = zext i16 %29 to i32
  %num_sensors5.i = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %num_sensors5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %num_sensors5.i, align 4
  %max_requests.i = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %max_requests.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_requests.i, align 2
  %conv6.i = zext i8 %32 to i32
  %max_requests7.i = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %max_requests7.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv6.i, ptr %max_requests7.i, align 8
  %reg_addr_low.i = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %22, i32 0, i32 3
  %34 = ptrtoint ptr %reg_addr_low.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_addr_low.i, align 4
  %reg_addr_high.i = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %22, i32 0, i32 4
  %36 = ptrtoint ptr %reg_addr_high.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_addr_high.i, align 4
  %38 = zext i32 %37 to i64
  %39 = zext i32 %35 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = call i64 @llvm.bswap.i64(i64 %41) #7
  %reg_addr.i = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %reg_addr.i, align 8
  %reg_size.i = getelementptr inbounds %struct.scmi_msg_resp_sensor_attributes, ptr %22, i32 0, i32 5
  %44 = ptrtoint ptr %reg_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_size.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  %reg_size10.i = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %reg_size10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %reg_size10.i, align 8
  %48 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xops, align 4
  %xfer_put.i.c90 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %xfer_put.i.c90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfer_put.i.c90, align 4
  %52 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t.i, align 4
  call void %51(ptr noundef %ph, ptr noundef %53) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  %num_sensors = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_sensors, align 4
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 160) #7
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !58

devm_kcalloc.exit.thread:                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %sensors88 = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %sensors88 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %sensors88, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.then4.i
  %59 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ph, align 4
  %61 = extractvalue { i32, i1 } %56, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %60, i32 noundef %61, i32 noundef 3520) #7
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %sensors to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5.i.i, ptr %sensors, align 4
  %tobool54.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool54.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end56

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %devm_kcalloc.exit
  %call57 = call fastcc i32 @scmi_sensor_description_get(ptr noundef %ph, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %63 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_priv, align 4
  %call61 = call i32 %64(ptr noundef %ph, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xops, align 4
  %xfer_put.i.c = getelementptr inbounds %struct.scmi_xfer_ops, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %xfer_put.i.c to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xfer_put.i.c, align 4
  %69 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %t.i, align 4
  call void %68(ptr noundef %ph, ptr noundef %70) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end60, %if.end56.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %scmi_sensor_attributes_get.exit.thread, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.end60 ], [ -12, %do.end40.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call.i82, %scmi_sensor_attributes_get.exit.thread ], [ -12, %devm_kcalloc.exit.thread ], [ %call2.i, %cleanup.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scmi_sensor_description_get(ptr noundef %ph, ptr nocapture noundef readonly %si) unnamed_addr #2 align 64 {
entry:
  %te.i = alloca ptr, align 4
  %ti.i = alloca ptr, align 4
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !56
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup380_crit_edge

entry.cleanup380_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup380

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx, align 4
  %num_remaining9 = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, ptr %8, i32 0, i32 1
  %num_sensors = getelementptr inbounds %struct.sensors_info, ptr %si, i32 0, i32 1
  %desc = getelementptr inbounds %struct.scmi_msg_resp_sensor_description, ptr %8, i32 0, i32 2
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %si, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond373.do.body_crit_edge, %if.end
  %desc_index.0 = phi i32 [ 0, %if.end ], [ %add, %do.cond373.do.body_crit_edge ]
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %desc_index.0) #7
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %12, align 1
  %15 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %do_xfer, align 4
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t, align 4
  %call4 = call i32 %18(ptr noundef %ph, ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %do.body
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %8, align 4
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %num_remaining9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_remaining9, align 2
  %conv = zext i16 %23 to i32
  %add = add i32 %desc_index.0, %conv
  %26 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp = icmp ugt i32 %add, %27
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef %27) #10
  br label %out

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp16534.not = icmp eq i16 %22, 0
  br i1 %cmp16534.not, label %if.end14.do.cond373_crit_edge, label %for.body.preheader

if.end14.do.cond373_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond373

for.body.preheader:                               ; preds = %if.end14
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %cnt.0539 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sdesc.0535 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %desc, %for.body.preheader ]
  %30 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensors, align 4
  %add18 = add i32 %cnt.0539, %desc_index.0
  %arrayidx19 = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18
  %32 = ptrtoint ptr %sdesc.0535 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sdesc.0535, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx19, align 8
  %attributes_low = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 1
  %36 = ptrtoint ptr %attributes_low to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attributes_low, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %async = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 4
  %.lobit = lshr i32 %38, 31
  %39 = trunc i32 %.lobit to i8
  %40 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %async, align 8
  %and53 = and i32 %38, 255
  %num_trip_points = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 3
  %41 = ptrtoint ptr %num_trip_points to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and53, ptr %num_trip_points, align 4
  %update = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 5
  %42 = lshr i32 %38, 30
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = ptrtoint ptr %update to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %update, align 1
  %46 = and i32 %38, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool93.not = icmp eq i32 %46, 0
  %timestamped = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 6
  %.lobit473 = lshr exact i32 %46, 9
  %47 = trunc i32 %.lobit473 to i8
  %48 = ptrtoint ptr %timestamped to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %timestamped, align 2
  br i1 %tobool93.not, label %for.body.do.end136_crit_edge, label %if.then97

for.body.do.end136_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end136

if.then97:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %and114 = lshr i32 %38, 10
  %shr115 = and i32 %and114, 31
  %49 = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool117.not = icmp eq i32 %49, 0
  %masksel = select i1 %tobool117.not, i32 0, i32 -32
  %spec.select = or i32 %masksel, %shr115
  %tstamp_scale = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 7
  %50 = ptrtoint ptr %tstamp_scale to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select, ptr %tstamp_scale, align 4
  br label %do.end136

do.end136:                                        ; preds = %if.then97, %for.body.do.end136_crit_edge
  %extended_scalar_attrs = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 13
  %51 = lshr i32 %38, 8
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = ptrtoint ptr %extended_scalar_attrs to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %extended_scalar_attrs, align 8
  %attributes_high = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 2
  %55 = ptrtoint ptr %attributes_high to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %attributes_high, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %and159 = lshr i32 %57, 11
  %shr160 = and i32 %and159, 31
  %58 = and i32 %57, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool162.not = icmp eq i32 %58, 0
  %masksel518 = select i1 %tobool162.not, i32 0, i32 -32
  %spec.select475 = or i32 %masksel518, %shr160
  %scale = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 2
  %59 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select475, ptr %scale, align 8
  %and183 = and i32 %57, 255
  %type = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 1
  %60 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and183, ptr %type, align 4
  %prealloc_pool = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 10, i32 3
  %desc186 = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 10, i32 2
  %61 = ptrtoint ptr %desc186 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %prealloc_pool, ptr %desc186, align 8
  %62 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %si, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %63)
  %cmp187 = icmp eq i32 %63, 65536
  br i1 %cmp187, label %if.then189, label %if.else

if.then189:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  %intervals = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 10
  %64 = ptrtoint ptr %intervals to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %intervals, align 8
  %count = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 10, i32 1
  %65 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %count, align 4
  %66 = lshr i32 %57, 22
  %67 = ptrtoint ptr %prealloc_pool to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %prealloc_pool, align 4
  br label %if.end249

if.else:                                          ; preds = %do.end136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ti.i) #7
  %68 = ptrtoint ptr %ti.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %ti.i, align 4, !annotation !56
  %69 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %72(ptr noundef %ph, i8 noundef zeroext 8, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %ti.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %scmi_sensor_update_intervals.exit.thread

scmi_sensor_update_intervals.exit.thread:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ti.i) #7
  br label %do.body235

if.end.i:                                         ; preds = %if.else
  %73 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ti.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx.i, align 4
  %intervals.i = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 10
  %count.i = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 10, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end.i
  %desc_index.0.i = phi i32 [ 0, %if.end.i ], [ %add131.i, %cleanup.i.do.body.i_crit_edge ]
  %77 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ti.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx.i, align 4
  %81 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx19, align 8
  %83 = call i32 @llvm.bswap.i32(i32 %82) #7
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %80, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %desc_index.0.i) #7
  %index.i = getelementptr inbounds %struct.scmi_msg_sensor_list_update_intervals, ptr %80, i32 0, i32 1
  %86 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %index.i, align 4
  %87 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %do_xfer.i, align 4
  %91 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ti.i, align 4
  %call5.i = call i32 %90(ptr noundef %ph, ptr noundef %92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %do.body.i.scmi_sensor_update_intervals.exit_crit_edge

do.body.i.scmi_sensor_update_intervals.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_update_intervals.exit

if.end8.i:                                        ; preds = %do.body.i
  %93 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %76, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #7
  %96 = trunc i32 %95 to i16
  %conv.i = and i16 %96, 4095
  %97 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool41.not.i = icmp eq i32 %98, 0
  br i1 %tobool41.not.i, label %do.end57.i, label %if.else.i

do.end57.i:                                       ; preds = %if.end8.i
  %shr39.i = lshr i32 %95, 16
  %99 = lshr i32 %95, 12
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = ptrtoint ptr %intervals.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %intervals.i, align 8
  %conv63.i = zext i16 %conv.i to i32
  %add.i = add nuw nsw i32 %shr39.i, %conv63.i
  %103 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add.i, ptr %count.i, align 4
  %104 = and i32 %95, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool69.not.i = icmp eq i32 %104, 0
  br i1 %tobool69.not.i, label %do.end57.i.if.end86.i_crit_edge, label %land.lhs.true.i

do.end57.i.if.end86.i_crit_edge:                  ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

land.lhs.true.i:                                  ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %95)
  %tobool72.not.i = icmp ult i32 %95, 65536
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv.i)
  %cmp.not.i = icmp eq i16 %conv.i, 3
  %or.cond.i = select i1 %tobool72.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.end86.i_crit_edge, label %do.end78.i

land.lhs.true.i.if.end86.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

do.end78.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ph, align 4
  %107 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx19, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.9, i32 noundef %108, i32 noundef %add.i) #10
  %109 = ptrtoint ptr %intervals.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %intervals.i, align 8
  %110 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %count.i, align 4
  br label %scmi_sensor_update_intervals.exit

if.end86.i:                                       ; preds = %land.lhs.true.i.if.end86.i_crit_edge, %do.end57.i.if.end86.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add.i)
  %cmp89.i = icmp ugt i32 %add.i, 15
  br i1 %cmp89.i, label %devm_kcalloc.exit.i, label %if.end86.i.if.end121.i_crit_edge

if.end86.i.if.end121.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

devm_kcalloc.exit.i:                              ; preds = %if.end86.i
  %111 = shl nuw nsw i32 %add.i, 2
  %112 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ph, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %113, i32 noundef %111, i32 noundef 3520) #7
  %114 = ptrtoint ptr %desc186 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call5.i.i.i, ptr %desc186, align 8
  %tobool99.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool99.not.i, label %if.then100.i, label %devm_kcalloc.exit.i.if.end121.i_crit_edge

devm_kcalloc.exit.i.if.end121.i_crit_edge:        ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

if.then100.i:                                     ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %intervals.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %intervals.i, align 8
  %116 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %count.i, align 4
  br label %scmi_sensor_update_intervals.exit

if.else.i:                                        ; preds = %if.end8.i
  %conv107.i = zext i16 %conv.i to i32
  %add108.i = add i32 %desc_index.0.i, %conv107.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add108.i, i32 %98)
  %cmp111.i = icmp ugt i32 %add108.i, %98
  br i1 %cmp111.i, label %do.end116.i, label %if.else.i.if.end121.i_crit_edge

if.else.i.if.end121.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121.i

do.end116.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.12, i32 noundef %98) #10
  br label %scmi_sensor_update_intervals.exit

if.end121.i:                                      ; preds = %if.else.i.if.end121.i_crit_edge, %devm_kcalloc.exit.i.if.end121.i_crit_edge, %if.end86.i.if.end121.i_crit_edge
  %conv122.pre-phi.i = phi i32 [ %conv107.i, %if.else.i.if.end121.i_crit_edge ], [ %conv63.i, %if.end86.i.if.end121.i_crit_edge ], [ %conv63.i, %devm_kcalloc.exit.i.if.end121.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp123219.not.i = icmp eq i16 %conv.i, 0
  br i1 %cmp123219.not.i, label %if.end121.i.cleanup.i_crit_edge, label %if.end121.i.for.body.i_crit_edge

if.end121.i.for.body.i_crit_edge:                 ; preds = %if.end121.i
  br label %for.body.i

if.end121.i.cleanup.i_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end121.i.for.body.i_crit_edge
  %cnt.0220.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end121.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scmi_msg_resp_sensor_list_update_intervals, ptr %76, i32 0, i32 1, i32 %cnt.0220.i
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120) #7
  %122 = ptrtoint ptr %desc186 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc186, align 8
  %add128.i = add i32 %cnt.0220.i, %desc_index.0.i
  %arrayidx129.i = getelementptr i32, ptr %123, i32 %add128.i
  %124 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %121, ptr %arrayidx129.i, align 4
  %inc.i = add nuw nsw i32 %cnt.0220.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv122.pre-phi.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i.cleanup.i_crit_edge, %if.end121.i.cleanup.i_crit_edge
  %add131.i = add i32 %conv122.pre-phi.i, %desc_index.0.i
  %125 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %reset_rx_to_maxsz.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reset_rx_to_maxsz.i, align 4
  %129 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ti.i, align 4
  call void %128(ptr noundef %ph, ptr noundef %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %95)
  %tobool137.not.i = icmp ult i32 %95, 65536
  %or.cond197.i = select i1 %cmp123219.not.i, i1 true, i1 %tobool137.not.i
  br i1 %or.cond197.i, label %cleanup.i.scmi_sensor_update_intervals.exit_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

cleanup.i.scmi_sensor_update_intervals.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_update_intervals.exit

scmi_sensor_update_intervals.exit:                ; preds = %cleanup.i.scmi_sensor_update_intervals.exit_crit_edge, %do.end116.i, %if.then100.i, %do.end78.i, %do.body.i.scmi_sensor_update_intervals.exit_crit_edge
  %ret.0211.i = phi i32 [ -12, %if.then100.i ], [ -12, %do.end78.i ], [ -12, %do.end116.i ], [ 0, %cleanup.i.scmi_sensor_update_intervals.exit_crit_edge ], [ %call5.i, %do.body.i.scmi_sensor_update_intervals.exit_crit_edge ]
  %131 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %xops, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %xfer_put.i, align 4
  %135 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ti.i, align 4
  call void %134(ptr noundef %ph, ptr noundef %136) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ti.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0211.i)
  %tobool233.not = icmp eq i32 %ret.0211.i, 0
  br i1 %tobool233.not, label %scmi_sensor_update_intervals.exit.if.end249_crit_edge, label %scmi_sensor_update_intervals.exit.do.body235_crit_edge

scmi_sensor_update_intervals.exit.do.body235_crit_edge: ; preds = %scmi_sensor_update_intervals.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body235

scmi_sensor_update_intervals.exit.if.end249_crit_edge: ; preds = %scmi_sensor_update_intervals.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

do.body235:                                       ; preds = %scmi_sensor_update_intervals.exit.do.body235_crit_edge, %scmi_sensor_update_intervals.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_sensor_description_get.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_sensor_description_get, %if.then242)) #7
          to label %if.end249 [label %if.then242], !srcloc !57

if.then242:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ph, align 4
  %139 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx19, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_sensor_description_get.__UNIQUE_ID_ddebug305, ptr noundef %138, ptr noundef nonnull @.str.8, i32 noundef %140) #7
  br label %if.end249

if.end249:                                        ; preds = %if.then242, %do.body235, %scmi_sensor_update_intervals.exit.if.end249_crit_edge, %if.then189
  %141 = and i32 %57, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool268.not = icmp eq i32 %141, 0
  %and285 = lshr i32 %57, 16
  %shr286 = and i32 %and285, 63
  %cond = select i1 %tobool268.not, i32 0, i32 %shr286
  %num_axis = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 8
  %142 = ptrtoint ptr %num_axis to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %cond, ptr %num_axis, align 8
  %name = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 12
  %name295 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 3
  %call297 = call i32 @strlcpy(ptr noundef %name, ptr noundef %name295, i32 noundef 16) #7
  %143 = ptrtoint ptr %extended_scalar_attrs to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %extended_scalar_attrs, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool299.not = icmp eq i8 %144, 0
  br i1 %tobool299.not, label %if.end249.if.end354_crit_edge, label %if.then300

if.end249.if.end354_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end354

if.then300:                                       ; preds = %if.end249
  %power = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 4
  %145 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %power, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146)
  %sensor_power = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 14
  %148 = ptrtoint ptr %sensor_power to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %sensor_power, align 4
  %149 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp303 = icmp eq i32 %150, 0
  br i1 %cmp303, label %if.then305, label %if.then300.if.then358_crit_edge

if.then300.if.then358_crit_edge:                  ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then358

if.then305:                                       ; preds = %if.then300
  call void @__sanitizer_cov_trace_pc() #9
  %resolution = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 5
  %151 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %resolution, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152)
  %and322 = and i32 %153, 134217727
  %resolution324 = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 15
  %154 = ptrtoint ptr %resolution324 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %and322, ptr %resolution324, align 8
  %shr343 = lshr i32 %153, 27
  %or347 = or i32 %shr343, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool345.not519 = icmp slt i32 %153, 0
  %spec.select476 = select i1 %tobool345.not519, i32 %or347, i32 %shr343
  %exponent = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 16
  %155 = ptrtoint ptr %exponent to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %spec.select476, ptr %exponent, align 4
  %scalar_attrs = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 17
  %scalar_attrs351 = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 6
  %156 = ptrtoint ptr %scalar_attrs351 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 8)
  %157 = load i64, ptr %scalar_attrs351, align 1
  %158 = call i64 @llvm.bswap.i64(i64 %157) #7
  %159 = ptrtoint ptr %scalar_attrs to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %scalar_attrs, align 8
  %max_range_low.i = getelementptr inbounds %struct.scmi_sensor_descriptor, ptr %sdesc.0535, i32 0, i32 6, i32 2
  %160 = ptrtoint ptr %max_range_low.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 8)
  %161 = load i64, ptr %max_range_low.i, align 1
  %162 = call i64 @llvm.bswap.i64(i64 %161) #7
  %max_range.i = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 17, i32 1
  %163 = ptrtoint ptr %max_range.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %max_range.i, align 8
  br label %if.end354

if.end354:                                        ; preds = %if.then305, %if.end249.if.end354_crit_edge
  %dsize.0.ph = phi i32 [ 28, %if.end249.if.end354_crit_edge ], [ 52, %if.then305 ]
  %164 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %164)
  %.pr = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp356.not = icmp eq i32 %.pr, 0
  br i1 %cmp356.not, label %if.end354.for.inc_crit_edge, label %if.end354.if.then358_crit_edge

if.end354.if.then358_crit_edge:                   ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then358

if.end354.for.inc_crit_edge:                      ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then358:                                       ; preds = %if.end354.if.then358_crit_edge, %if.then300.if.then358_crit_edge
  %dsize.0504 = phi i32 [ %dsize.0.ph, %if.end354.if.then358_crit_edge ], [ 32, %if.then300.if.then358_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %te.i) #7
  %165 = ptrtoint ptr %te.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 -1 to ptr), ptr %te.i, align 4, !annotation !56
  %166 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %num_axis, align 8
  %168 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %167, i32 56) #7
  %169 = extractvalue { i32, i1 } %168, 1
  br i1 %169, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i480, !prof !58

devm_kcalloc.exit.thread.i:                       ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #9
  %axis251.i = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 9
  %170 = ptrtoint ptr %axis251.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %axis251.i, align 4
  br label %scmi_sensor_axis_description.exit.thread

devm_kcalloc.exit.i480:                           ; preds = %if.then358
  %171 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ph, align 4
  %173 = extractvalue { i32, i1 } %168, 0
  %call5.i.i.i478 = call noalias ptr @devm_kmalloc(ptr noundef %172, i32 noundef %173, i32 noundef 3520) #7
  %axis.i = getelementptr %struct.scmi_sensor_info, ptr %31, i32 %add18, i32 9
  %174 = ptrtoint ptr %axis.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call5.i.i.i478, ptr %axis.i, align 4
  %tobool.not.i479 = icmp eq ptr %call5.i.i.i478, null
  br i1 %tobool.not.i479, label %devm_kcalloc.exit.i480.scmi_sensor_axis_description.exit.thread_crit_edge, label %if.end.i483

devm_kcalloc.exit.i480.scmi_sensor_axis_description.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i480
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_axis_description.exit.thread

if.end.i483:                                      ; preds = %devm_kcalloc.exit.i480
  %175 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %xops, align 4
  %xfer_get_init.i482 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %xfer_get_init.i482 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %xfer_get_init.i482, align 4
  %call2.i = call i32 %178(ptr noundef %ph, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %te.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i483.scmi_sensor_axis_description.exit.thread_crit_edge

if.end.i483.scmi_sensor_axis_description.exit.thread_crit_edge: ; preds = %if.end.i483
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_axis_description.exit.thread

if.end5.i:                                        ; preds = %if.end.i483
  %179 = ptrtoint ptr %te.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %te.i, align 4
  %rx.i484 = getelementptr inbounds %struct.scmi_xfer, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %rx.i484 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rx.i484, align 4
  %desc.i485 = getelementptr inbounds %struct.scmi_msg_resp_sensor_axis_description, ptr %182, i32 0, i32 1
  br label %do.body.i489

do.body.i489:                                     ; preds = %cleanup.i496.do.body.i489_crit_edge, %if.end5.i
  %desc_index.0.i486 = phi i32 [ 0, %if.end5.i ], [ %add.i491, %cleanup.i496.do.body.i489_crit_edge ]
  %183 = ptrtoint ptr %te.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %te.i, align 4
  %tx.i487 = getelementptr inbounds %struct.scmi_xfer, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %tx.i487 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tx.i487, align 4
  %187 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx19, align 8
  %189 = call i32 @llvm.bswap.i32(i32 %188) #7
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %186, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %desc_index.0.i486) #7
  %axis_desc_index.i = getelementptr inbounds %struct.scmi_msg_sensor_axis_description_get, ptr %186, i32 0, i32 1
  %192 = ptrtoint ptr %axis_desc_index.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %axis_desc_index.i, align 4
  %193 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %xops, align 4
  %do_xfer.i488 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %do_xfer.i488 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %do_xfer.i488, align 4
  %197 = ptrtoint ptr %te.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %te.i, align 4
  %call10.i = call i32 %196(ptr noundef %ph, ptr noundef %198) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %do.body.i489.scmi_sensor_axis_description.exit_crit_edge

do.body.i489.scmi_sensor_axis_description.exit_crit_edge: ; preds = %do.body.i489
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_axis_description.exit

if.end13.i:                                       ; preds = %do.body.i489
  %199 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %182, align 4
  %201 = call i32 @llvm.bswap.i32(i32 %200) #7
  %202 = trunc i32 %201 to i16
  %conv.i490 = and i16 %202, 63
  %conv46.i = zext i16 %conv.i490 to i32
  %add.i491 = add i32 %desc_index.0.i486, %conv46.i
  %203 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i491, i32 %204)
  %cmp.i = icmp ugt i32 %add.i491, %204
  br i1 %cmp.i, label %do.end52.i, label %if.end55.i

do.end52.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.14, i32 noundef %204) #10
  br label %scmi_sensor_axis_description.exit

if.end55.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i490)
  %cmp57265.not.i = icmp eq i16 %conv.i490, 0
  br i1 %cmp57265.not.i, label %if.end55.i.cleanup.i496_crit_edge, label %if.end55.i.for.body.i492_crit_edge

if.end55.i.for.body.i492_crit_edge:               ; preds = %if.end55.i
  br label %for.body.i492

if.end55.i.cleanup.i496_crit_edge:                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i496

for.body.i492:                                    ; preds = %if.end177.i.for.body.i492_crit_edge, %if.end55.i.for.body.i492_crit_edge
  %cnt.0268.i = phi i32 [ %inc.i493, %if.end177.i.for.body.i492_crit_edge ], [ 0, %if.end55.i.for.body.i492_crit_edge ]
  %adesc.0266.i = phi ptr [ %add.ptr.i, %if.end177.i.for.body.i492_crit_edge ], [ %desc.i485, %if.end55.i.for.body.i492_crit_edge ]
  %attributes_low.i = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %adesc.0266.i, i32 0, i32 1
  %207 = ptrtoint ptr %attributes_low.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %attributes_low.i, align 4
  %209 = ptrtoint ptr %axis.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %axis.i, align 4
  %add60.i = add i32 %cnt.0268.i, %desc_index.0.i486
  %arrayidx61.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i
  %211 = ptrtoint ptr %adesc.0266.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %adesc.0266.i, align 4
  %213 = call i32 @llvm.bswap.i32(i32 %212) #7
  %214 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx61.i, align 8
  %extended_attrs.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 4
  %215 = lshr i32 %208, 16
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = ptrtoint ptr %extended_attrs.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %extended_attrs.i, align 4
  %attributes_high.i = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %adesc.0266.i, i32 0, i32 2
  %219 = ptrtoint ptr %attributes_high.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %attributes_high.i, align 4
  %221 = call i32 @llvm.bswap.i32(i32 %220) #7
  %and99.i = lshr i32 %221, 11
  %shr100.i = and i32 %and99.i, 31
  %222 = and i32 %221, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool102.not.i = icmp eq i32 %222, 0
  %masksel.i = select i1 %tobool102.not.i, i32 0, i32 -32
  %spec.select.i = or i32 %masksel.i, %shr100.i
  %scale.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 2
  %223 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %spec.select.i, ptr %scale.i, align 8
  %and122.i = and i32 %221, 255
  %type.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 1
  %224 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %and122.i, ptr %type.i, align 4
  %name.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 3
  %name124.i = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %adesc.0266.i, i32 0, i32 3
  %call126.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name124.i, i32 noundef 16) #7
  %225 = ptrtoint ptr %extended_attrs.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %extended_attrs.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool128.not.i = icmp eq i8 %226, 0
  br i1 %tobool128.not.i, label %for.body.i492.if.end177.i_crit_edge, label %if.then129.i

for.body.i492.if.end177.i_crit_edge:              ; preds = %for.body.i492
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177.i

if.then129.i:                                     ; preds = %for.body.i492
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %adesc.0266.i, i32 0, i32 4
  %227 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %resolution.i, align 4
  %229 = call i32 @llvm.bswap.i32(i32 %228) #7
  %and146.i = and i32 %229, 134217727
  %resolution148.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 5
  %230 = ptrtoint ptr %resolution148.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %and146.i, ptr %resolution148.i, align 8
  %shr167.i = lshr i32 %229, 27
  %or171.i = or i32 %shr167.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool169.not262.i = icmp slt i32 %229, 0
  %spec.select248.i = select i1 %tobool169.not262.i, i32 %or171.i, i32 %shr167.i
  %exponent.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 6
  %231 = ptrtoint ptr %exponent.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %spec.select248.i, ptr %exponent.i, align 4
  %attrs.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 7
  %attrs175.i = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %adesc.0266.i, i32 0, i32 5
  %232 = ptrtoint ptr %attrs175.i to i32
  call void @__asan_loadN_noabort(i32 %232, i32 8)
  %233 = load i64, ptr %attrs175.i, align 1
  %234 = call i64 @llvm.bswap.i64(i64 %233) #7
  %235 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %234, ptr %attrs.i, align 8
  %max_range_low.i.i = getelementptr inbounds %struct.scmi_axis_descriptor, ptr %adesc.0266.i, i32 0, i32 5, i32 2
  %236 = ptrtoint ptr %max_range_low.i.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 8)
  %237 = load i64, ptr %max_range_low.i.i, align 1
  %238 = call i64 @llvm.bswap.i64(i64 %237) #7
  %max_range.i.i = getelementptr %struct.scmi_sensor_axis_info, ptr %210, i32 %add60.i, i32 7, i32 1
  %239 = ptrtoint ptr %max_range.i.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %238, ptr %max_range.i.i, align 8
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.then129.i, %for.body.i492.if.end177.i_crit_edge
  %dsize.0.i = phi i32 [ 48, %if.then129.i ], [ 28, %for.body.i492.if.end177.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %adesc.0266.i, i32 %dsize.0.i
  %inc.i493 = add nuw nsw i32 %cnt.0268.i, 1
  %exitcond.not.i494 = icmp eq i32 %inc.i493, %conv46.i
  br i1 %exitcond.not.i494, label %if.end177.i.cleanup.i496_crit_edge, label %if.end177.i.for.body.i492_crit_edge

if.end177.i.for.body.i492_crit_edge:              ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i492

if.end177.i.cleanup.i496_crit_edge:               ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i496

cleanup.i496:                                     ; preds = %if.end177.i.cleanup.i496_crit_edge, %if.end55.i.cleanup.i496_crit_edge
  %240 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz.i495 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %reset_rx_to_maxsz.i495 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %reset_rx_to_maxsz.i495, align 4
  %244 = ptrtoint ptr %te.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %te.i, align 4
  call void %243(ptr noundef %ph, ptr noundef %245) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %201)
  %tobool186.not.i = icmp ult i32 %201, 67108864
  %or.cond249.i = select i1 %cmp57265.not.i, i1 true, i1 %tobool186.not.i
  br i1 %or.cond249.i, label %cleanup.i496.scmi_sensor_axis_description.exit_crit_edge, label %cleanup.i496.do.body.i489_crit_edge

cleanup.i496.do.body.i489_crit_edge:              ; preds = %cleanup.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i489

cleanup.i496.scmi_sensor_axis_description.exit_crit_edge: ; preds = %cleanup.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_axis_description.exit

scmi_sensor_axis_description.exit.thread:         ; preds = %if.end.i483.scmi_sensor_axis_description.exit.thread_crit_edge, %devm_kcalloc.exit.i480.scmi_sensor_axis_description.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i
  %retval.0.i498.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i480.scmi_sensor_axis_description.exit.thread_crit_edge ], [ %call2.i, %if.end.i483.scmi_sensor_axis_description.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %te.i) #7
  br label %out

scmi_sensor_axis_description.exit:                ; preds = %cleanup.i496.scmi_sensor_axis_description.exit_crit_edge, %do.end52.i, %do.body.i489.scmi_sensor_axis_description.exit_crit_edge
  %call10270.i = phi i32 [ 0, %do.end52.i ], [ 0, %cleanup.i496.scmi_sensor_axis_description.exit_crit_edge ], [ %call10.i, %do.body.i489.scmi_sensor_axis_description.exit_crit_edge ]
  %246 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %xops, align 4
  %xfer_put.i497 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %247, i32 0, i32 5
  %248 = ptrtoint ptr %xfer_put.i497 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %xfer_put.i497, align 4
  %250 = ptrtoint ptr %te.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %te.i, align 4
  call void %249(ptr noundef %ph, ptr noundef %251) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %te.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10270.i)
  %tobool360.not = icmp eq i32 %call10270.i, 0
  br i1 %tobool360.not, label %scmi_sensor_axis_description.exit.for.inc_crit_edge, label %scmi_sensor_axis_description.exit.out_crit_edge

scmi_sensor_axis_description.exit.out_crit_edge:  ; preds = %scmi_sensor_axis_description.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

scmi_sensor_axis_description.exit.for.inc_crit_edge: ; preds = %scmi_sensor_axis_description.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %scmi_sensor_axis_description.exit.for.inc_crit_edge, %if.end354.for.inc_crit_edge
  %dsize.0505 = phi i32 [ %dsize.0504, %scmi_sensor_axis_description.exit.for.inc_crit_edge ], [ %dsize.0.ph, %if.end354.for.inc_crit_edge ]
  %add.ptr = getelementptr i8, ptr %sdesc.0535, i32 %dsize.0505
  %inc = add nuw nsw i32 %cnt.0539, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.do.cond373_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.cond373_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond373

do.cond373:                                       ; preds = %for.inc.do.cond373_crit_edge, %if.end14.do.cond373_crit_edge
  %252 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz = getelementptr inbounds %struct.scmi_xfer_ops, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %reset_rx_to_maxsz to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %reset_rx_to_maxsz, align 4
  %256 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %t, align 4
  call void %255(ptr noundef %ph, ptr noundef %257) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool377.not = icmp eq i16 %25, 0
  %or.cond = select i1 %cmp16534.not, i1 true, i1 %tobool377.not
  br i1 %or.cond, label %do.cond373.out_crit_edge, label %do.cond373.do.body_crit_edge

do.cond373.do.body_crit_edge:                     ; preds = %do.cond373
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond373.out_crit_edge:                         ; preds = %do.cond373
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %do.cond373.out_crit_edge, %scmi_sensor_axis_description.exit.out_crit_edge, %scmi_sensor_axis_description.exit.thread, %do.end, %do.body.out_crit_edge
  %ret.3517 = phi i32 [ 0, %do.end ], [ %retval.0.i498.ph, %scmi_sensor_axis_description.exit.thread ], [ %call10270.i, %scmi_sensor_axis_description.exit.out_crit_edge ], [ %call4, %do.body.out_crit_edge ], [ 0, %do.cond373.out_crit_edge ]
  %258 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %259, i32 0, i32 5
  %260 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %xfer_put, align 4
  %262 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %t, align 4
  call void %261(ptr noundef %ph, ptr noundef %263) #7
  br label %cleanup380

cleanup380:                                       ; preds = %out, %entry.cleanup380_crit_edge
  %retval.0 = phi i32 [ %ret.3517, %out ], [ %call, %entry.cleanup380_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_count_get(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %num_sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sensors, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_sensor_info_get(ptr noundef %ph, i32 noundef %sensor_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensors, align 4
  %add.ptr = getelementptr %struct.scmi_sensor_info, ptr %3, i32 %sensor_id
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_trip_point_config(ptr noundef %ph, i32 noundef %sensor_id, i8 noundef zeroext %trip_id, i64 noundef %trip_value) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !56
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %sensor_id)
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %conv = zext i8 %trip_id to i32
  %shl = shl nuw nsw i32 %conv, 4
  %or = or i32 %shl, 3
  %11 = call i32 @llvm.bswap.i32(i32 %or)
  %event_control = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %event_control to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %event_control, align 4
  %conv2 = trunc i64 %trip_value to i32
  %13 = call i32 @llvm.bswap.i32(i32 %conv2)
  %value_low = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, ptr %8, i32 0, i32 2
  %14 = ptrtoint ptr %value_low to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value_low, align 4
  %shr = lshr i64 %trip_value, 32
  %conv3 = trunc i64 %shr to i32
  %15 = call i32 @llvm.bswap.i32(i32 %conv3)
  %value_high = getelementptr inbounds %struct.scmi_msg_set_sensor_trip_point, ptr %8, i32 0, i32 3
  %16 = ptrtoint ptr %value_high to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %value_high, align 4
  %17 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %do_xfer, align 4
  %21 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t, align 4
  %call5 = call i32 %20(ptr noundef %ph, ptr noundef %22) #7
  %23 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xfer_put, align 4
  %27 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t, align 4
  call void %26(ptr noundef %ph, ptr noundef %28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_reading_get(ptr noundef %ph, i32 noundef %sensor_id, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !56
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %2(ptr noundef %ph) #7
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensors, align 4
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %5 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfer_get_init, align 4
  %call1 = call i32 %8(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %sensor_id)
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %12, align 4
  %async = getelementptr %struct.scmi_sensor_info, ptr %4, i32 %sensor_id, i32 4
  %15 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %async, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not = icmp eq i8 %16, 0
  %flags15 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, ptr %12, i32 0, i32 1
  br i1 %tobool2.not, label %if.else14, label %if.then3

if.then3:                                         ; preds = %if.end
  %17 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16777216, ptr %flags15, align 4
  %18 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xops, align 4
  %do_xfer_with_response = getelementptr inbounds %struct.scmi_xfer_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %do_xfer_with_response to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %do_xfer_with_response, align 4
  %22 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %t, align 4
  %call5 = call i32 %21(ptr noundef %ph, ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.then3.if.end24_crit_edge

if.then3.if.end24_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then7:                                         ; preds = %if.then3
  %24 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %sensor_id)
  %cmp = icmp eq i32 %30, %sensor_id
  br i1 %cmp, label %if.then10, label %if.then7.if.end24_crit_edge

if.then7.if.end24_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %readings_low = getelementptr inbounds %struct.scmi_resp_sensor_reading_complete, ptr %27, i32 0, i32 1
  br label %if.end24.sink.split

if.else14:                                        ; preds = %if.end
  %31 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags15, align 4
  %32 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %do_xfer, align 4
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %t, align 4
  %call17 = call i32 %35(ptr noundef %ph, ptr noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else14.if.end24_crit_edge

if.else14.if.end24_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %t, align 4
  %rx20 = getelementptr inbounds %struct.scmi_xfer, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %rx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx20, align 4
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then19, %if.then10
  %readings_low.sink = phi ptr [ %readings_low, %if.then10 ], [ %41, %if.then19 ]
  %42 = ptrtoint ptr %readings_low.sink to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %readings_low.sink, align 1
  %44 = call i64 @llvm.bswap.i64(i64 %43) #7
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %value, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else14.if.end24_crit_edge, %if.then7.if.end24_crit_edge, %if.then3.if.end24_crit_edge
  %ret.1 = phi i32 [ %call5, %if.then3.if.end24_crit_edge ], [ %call17, %if.else14.if.end24_crit_edge ], [ -71, %if.then7.if.end24_crit_edge ], [ 0, %if.end24.sink.split ]
  %46 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xfer_put, align 4
  %50 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t, align 4
  call void %49(ptr noundef %ph, ptr noundef %51) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end24 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_reading_get_timestamped(ptr noundef %ph, i32 noundef %sensor_id, i8 noundef zeroext %count, ptr noundef writeonly %readings) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !56
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %1 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %2(ptr noundef %ph) #7
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sensors, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %count)
  %tobool.not = icmp eq i8 %count, 0
  %tobool1.not = icmp eq ptr %readings, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %num_axis = getelementptr %struct.scmi_sensor_info, ptr %4, i32 %sensor_id, i32 8
  %5 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %count)
  %cmp = icmp ugt i8 %count, 1
  %or.cond94 = and i1 %cmp, %tobool3.not
  br i1 %or.cond94, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp ne i32 %6, 0
  %conv9 = zext i8 %count to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv9)
  %cmp11 = icmp ult i32 %6, %conv9
  %or.cond95 = and i1 %tobool7.not, %cmp11
  br i1 %or.cond95, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %7 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xfer_get_init, align 4
  %call13 = call i32 %10(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %11 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %sensor_id)
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %14, align 4
  %async = getelementptr %struct.scmi_sensor_info, ptr %4, i32 %sensor_id, i32 4
  %17 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %async, align 8, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  %flags36 = getelementptr inbounds %struct.scmi_msg_sensor_reading_get, ptr %14, i32 0, i32 1
  br i1 %tobool17.not, label %if.else35, label %if.then18

if.then18:                                        ; preds = %if.end16
  %19 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16777216, ptr %flags36, align 4
  %20 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xops, align 4
  %do_xfer_with_response = getelementptr inbounds %struct.scmi_xfer_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %do_xfer_with_response to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %do_xfer_with_response, align 4
  %24 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t, align 4
  %call20 = call i32 %23(ptr noundef %ph, ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.then18.if.end55_crit_edge

if.then18.if.end55_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then22:                                        ; preds = %if.then18
  %26 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %sensor_id)
  %cmp25 = icmp eq i32 %32, %sensor_id
  br i1 %cmp25, label %if.then22.for.body_crit_edge, label %if.then22.if.end55_crit_edge

if.then22.if.end55_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then22.for.body_crit_edge:                     ; preds = %if.then22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then22.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then22.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scmi_sensor_reading, ptr %readings, i32 %i.0100
  %arrayidx32 = getelementptr %struct.scmi_resp_sensor_reading_complete_v3, ptr %29, i32 0, i32 1, i32 %i.0100
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %arrayidx32, align 1
  %35 = call i64 @llvm.bswap.i64(i64 %34) #7
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx, align 8
  %timestamp_low.i = getelementptr %struct.scmi_resp_sensor_reading_complete_v3, ptr %29, i32 0, i32 1, i32 %i.0100, i32 2
  %37 = ptrtoint ptr %timestamp_low.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %timestamp_low.i, align 1
  %39 = call i64 @llvm.bswap.i64(i64 %38) #7
  %timestamp.i = getelementptr %struct.scmi_sensor_reading, ptr %readings, i32 %i.0100, i32 1
  %40 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %timestamp.i, align 8
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %conv9
  br i1 %exitcond.not, label %for.body.if.end55_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else35:                                        ; preds = %if.end16
  %41 = ptrtoint ptr %flags36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %flags36, align 4
  %42 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %do_xfer, align 4
  %46 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %t, align 4
  %call38 = call i32 %45(ptr noundef %ph, ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.body48.preheader, label %if.else35.if.end55_crit_edge

if.else35.if.end55_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.body48.preheader:                             ; preds = %if.else35
  %48 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %t, align 4
  %rx42 = getelementptr inbounds %struct.scmi_xfer, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %rx42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx42, align 4
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body48.preheader
  %i41.0102 = phi i32 [ %inc52, %for.body48.for.body48_crit_edge ], [ 0, %for.body48.preheader ]
  %arrayidx49 = getelementptr %struct.scmi_sensor_reading, ptr %readings, i32 %i41.0102
  %arrayidx50 = getelementptr %struct.scmi_sensor_reading_resp, ptr %51, i32 %i41.0102
  %52 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %arrayidx50, align 1
  %54 = call i64 @llvm.bswap.i64(i64 %53) #7
  %55 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx49, align 8
  %timestamp_low.i96 = getelementptr %struct.scmi_sensor_reading_resp, ptr %51, i32 %i41.0102, i32 2
  %56 = ptrtoint ptr %timestamp_low.i96 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %timestamp_low.i96, align 1
  %58 = call i64 @llvm.bswap.i64(i64 %57) #7
  %timestamp.i97 = getelementptr %struct.scmi_sensor_reading, ptr %readings, i32 %i41.0102, i32 1
  %59 = ptrtoint ptr %timestamp.i97 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %timestamp.i97, align 8
  %inc52 = add nuw nsw i32 %i41.0102, 1
  %exitcond104.not = icmp eq i32 %inc52, %conv9
  br i1 %exitcond104.not, label %for.body48.if.end55_crit_edge, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.body48.if.end55_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55:                                         ; preds = %for.body48.if.end55_crit_edge, %if.else35.if.end55_crit_edge, %for.body.if.end55_crit_edge, %if.then22.if.end55_crit_edge, %if.then18.if.end55_crit_edge
  %ret.1 = phi i32 [ %call20, %if.then18.if.end55_crit_edge ], [ %call38, %if.else35.if.end55_crit_edge ], [ -71, %if.then22.if.end55_crit_edge ], [ 0, %for.body48.if.end55_crit_edge ], [ 0, %for.body.if.end55_crit_edge ]
  %60 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xfer_put, align 4
  %64 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %t, align 4
  call void %63(ptr noundef %ph, ptr noundef %65) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end55 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_config_get(ptr noundef %ph, i32 noundef %sensor_id, ptr nocapture noundef writeonly %sensor_config) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !56
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 9, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %sensor_id) #7
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %8, align 1
  %11 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %do_xfer, align 4
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t, align 4
  %call2 = call i32 %14(ptr noundef %ph, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %17 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_priv, align 4
  %call5 = call ptr %18(ptr noundef %ph) #7
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call5, i32 0, i32 5
  %19 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensors, align 4
  %21 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %24, align 1
  %27 = call i64 @llvm.bswap.i64(i64 %26) #7
  %conv = trunc i64 %27 to i32
  %28 = ptrtoint ptr %sensor_config to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %sensor_config, align 4
  %sensor_config8 = getelementptr %struct.scmi_sensor_info, ptr %20, i32 %sensor_id, i32 11
  %29 = ptrtoint ptr %sensor_config8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %sensor_config8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %30 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xfer_put, align 4
  %34 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %t, align 4
  call void %33(ptr noundef %ph, ptr noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end9 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_config_set(ptr noundef %ph, i32 noundef %sensor_id, i32 noundef %sensor_config) #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #7
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !56
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 10, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %sensor_id)
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %sensor_config)
  %sensor_config1 = getelementptr inbounds %struct.scmi_msg_sensor_config_set, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %sensor_config1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sensor_config1, align 4
  %13 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xops, align 4
  %do_xfer = getelementptr inbounds %struct.scmi_xfer_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %do_xfer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %do_xfer, align 4
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %t, align 4
  %call3 = call i32 %16(ptr noundef %ph, ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %19 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_priv, align 4
  %call6 = call ptr %20(ptr noundef %ph) #7
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call6, i32 0, i32 5
  %21 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sensors, align 4
  %sensor_config7 = getelementptr %struct.scmi_sensor_info, ptr %22, i32 %sensor_id, i32 11
  %23 = ptrtoint ptr %sensor_config7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sensor_config, ptr %sensor_config7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %24 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xfer_put, align 4
  %28 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t, align 4
  call void %27(ptr noundef %ph, ptr noundef %29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end8 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_get_num_sources(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #7
  %num_sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sensors, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_sensor_set_notify_enabled(ptr noundef %ph, i8 noundef zeroext %evt_id, i32 noundef %src_id, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %t.i.i20 = alloca ptr, align 4
  %t.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %evt_id to i32
  %0 = zext i8 %evt_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %evt_id, label %entry.do.body_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i.i) #7
  %1 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i.i, align 4, !annotation !56
  %xops.i.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %2 = ptrtoint ptr %xops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xops.i.i, align 4
  %xfer_get_init.i.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %xfer_get_init.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xfer_get_init.i.i, align 4
  %call.i.i = call i32 %5(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %sw.bb.scmi_sensor_trip_point_notify.exit_crit_edge

sw.bb.scmi_sensor_trip_point_notify.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_trip_point_notify.exit

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t.i.i, align 4
  %tx.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx.i.i, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %src_id) #7
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %9, align 4
  %12 = select i1 %enable, i32 16777216, i32 0
  %event_control.i.i = getelementptr inbounds %struct.scmi_msg_sensor_request_notify, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %event_control.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %event_control.i.i, align 4
  %14 = ptrtoint ptr %xops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xops.i.i, align 4
  %do_xfer.i.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %do_xfer.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %do_xfer.i.i, align 4
  %18 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.i.i, align 4
  %call3.i.i = call i32 %17(ptr noundef %ph, ptr noundef %19) #7
  %20 = ptrtoint ptr %xops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xops.i.i, align 4
  %xfer_put.i.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %xfer_put.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer_put.i.i, align 4
  %24 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t.i.i, align 4
  call void %23(ptr noundef %ph, ptr noundef %25) #7
  br label %scmi_sensor_trip_point_notify.exit

scmi_sensor_trip_point_notify.exit:               ; preds = %if.end.i.i, %sw.bb.scmi_sensor_trip_point_notify.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ %call.i.i, %sw.bb.scmi_sensor_trip_point_notify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i.i20) #7
  %26 = ptrtoint ptr %t.i.i20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i.i20, align 4, !annotation !56
  %xops.i.i21 = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %27 = ptrtoint ptr %xops.i.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xops.i.i21, align 4
  %xfer_get_init.i.i22 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %xfer_get_init.i.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xfer_get_init.i.i22, align 4
  %call.i.i23 = call i32 %30(ptr noundef %ph, i8 noundef zeroext 11, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i.i20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %tobool1.not.i.i24 = icmp eq i32 %call.i.i23, 0
  br i1 %tobool1.not.i.i24, label %if.end.i.i30, label %sw.bb1.scmi_sensor_continuous_update_notify.exit_crit_edge

sw.bb1.scmi_sensor_continuous_update_notify.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_sensor_continuous_update_notify.exit

if.end.i.i30:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %t.i.i20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t.i.i20, align 4
  %tx.i.i25 = getelementptr inbounds %struct.scmi_xfer, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %tx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx.i.i25, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %src_id) #7
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %34, align 4
  %37 = select i1 %enable, i32 16777216, i32 0
  %event_control.i.i26 = getelementptr inbounds %struct.scmi_msg_sensor_request_notify, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %event_control.i.i26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %event_control.i.i26, align 4
  %39 = ptrtoint ptr %xops.i.i21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xops.i.i21, align 4
  %do_xfer.i.i27 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %do_xfer.i.i27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %do_xfer.i.i27, align 4
  %43 = ptrtoint ptr %t.i.i20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t.i.i20, align 4
  %call3.i.i28 = call i32 %42(ptr noundef %ph, ptr noundef %44) #7
  %45 = ptrtoint ptr %xops.i.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xops.i.i21, align 4
  %xfer_put.i.i29 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %xfer_put.i.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xfer_put.i.i29, align 4
  %49 = ptrtoint ptr %t.i.i20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %t.i.i20, align 4
  call void %48(ptr noundef %ph, ptr noundef %50) #7
  br label %scmi_sensor_continuous_update_notify.exit

scmi_sensor_continuous_update_notify.exit:        ; preds = %if.end.i.i30, %sw.bb1.scmi_sensor_continuous_update_notify.exit_crit_edge
  %retval.0.i.i31 = phi i32 [ %call3.i.i28, %if.end.i.i30 ], [ %call.i.i23, %sw.bb1.scmi_sensor_continuous_update_notify.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i.i20) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %scmi_sensor_continuous_update_notify.exit, %scmi_sensor_trip_point_notify.exit
  %ret.0 = phi i32 [ %retval.0.i.i31, %scmi_sensor_continuous_update_notify.exit ], [ %retval.0.i.i, %scmi_sensor_trip_point_notify.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool4.not = icmp eq i32 %ret.0, 0
  br i1 %tobool4.not, label %sw.epilog.if.end12_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.epilog.if.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.034 = phi i32 [ %ret.0, %sw.epilog.do.body_crit_edge ], [ -22, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_sensor_set_notify_enabled.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_sensor_set_notify_enabled, %if.then10)) #7
          to label %if.end12 [label %if.then10], !srcloc !57

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_sensor_set_notify_enabled.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %src_id, i32 noundef %ret.034) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.body, %sw.epilog.if.end12_crit_edge
  %ret.035 = phi i32 [ %ret.034, %if.then10 ], [ 0, %sw.epilog.if.end12_crit_edge ], [ %ret.034, %do.body ]
  ret i32 %ret.035
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_sensor_fill_custom_report(ptr noundef %ph, i8 noundef zeroext %evt_id, i64 noundef %timestamp, ptr nocapture noundef readonly %payld, i32 noundef %payld_sz, ptr noundef %report, ptr nocapture noundef writeonly %src_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %evt_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %evt_id, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %payld_sz)
  %cmp.not = icmp eq i32 %payld_sz, 12
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %timestamp, ptr %report, align 8
  %2 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payld, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %agent_id3 = getelementptr inbounds %struct.scmi_sensor_trip_point_report, ptr %report, i32 0, i32 1
  %5 = ptrtoint ptr %agent_id3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %agent_id3, align 8
  %sensor_id = getelementptr inbounds %struct.scmi_sensor_trip_notify_payld, ptr %payld, i32 0, i32 1
  %6 = ptrtoint ptr %sensor_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_id, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sensor_id4 = getelementptr inbounds %struct.scmi_sensor_trip_point_report, ptr %report, i32 0, i32 2
  %9 = ptrtoint ptr %sensor_id4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sensor_id4, align 4
  %trip_point_desc = getelementptr inbounds %struct.scmi_sensor_trip_notify_payld, ptr %payld, i32 0, i32 2
  %10 = ptrtoint ptr %trip_point_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trip_point_desc, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %trip_point_desc5 = getelementptr inbounds %struct.scmi_sensor_trip_point_report, ptr %report, i32 0, i32 3
  %13 = ptrtoint ptr %trip_point_desc5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %trip_point_desc5, align 8
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %14 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %15(ptr noundef %ph) #7
  %sensor_id11 = getelementptr inbounds %struct.scmi_sensor_update_notify_payld, ptr %payld, i32 0, i32 1
  %16 = ptrtoint ptr %sensor_id11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sensor_id11, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %sensor_id12 = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %report, i32 0, i32 2
  %19 = ptrtoint ptr %sensor_id12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sensor_id12, align 4
  %num_sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_sensors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp14.not = icmp ult i32 %18, %21
  br i1 %cmp14.not, label %for.body.preheader, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.preheader:                               ; preds = %sw.bb8
  %22 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %timestamp, ptr %report, align 8
  %23 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %payld, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %agent_id20 = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %report, i32 0, i32 1
  %26 = ptrtoint ptr %agent_id20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %agent_id20, align 8
  %sensors = getelementptr inbounds %struct.sensors_info, ptr %call, i32 0, i32 5
  %27 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sensors, align 4
  %num_axis = getelementptr %struct.scmi_sensor_info, ptr %28, i32 %18, i32 8
  %29 = ptrtoint ptr %num_axis to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_axis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  %. = select i1 %tobool.not, i32 1, i32 %30
  %readings_count = getelementptr inbounds %struct.scmi_sensor_update_report, ptr %report, i32 0, i32 3
  %31 = ptrtoint ptr %readings_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %., ptr %readings_count, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.063 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx25 = getelementptr %struct.scmi_sensor_update_report, ptr %report, i32 0, i32 4, i32 %i.063
  %arrayidx27 = getelementptr %struct.scmi_sensor_update_notify_payld, ptr %payld, i32 0, i32 2, i32 %i.063
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %arrayidx27, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #7
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx25, align 8
  %timestamp_low.i = getelementptr %struct.scmi_sensor_update_notify_payld, ptr %payld, i32 0, i32 2, i32 %i.063, i32 2
  %36 = ptrtoint ptr %timestamp_low.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %timestamp_low.i, align 1
  %38 = tail call i64 @llvm.bswap.i64(i64 %37) #7
  %timestamp.i = getelementptr %struct.scmi_sensor_update_report, ptr %report, i32 0, i32 4, i32 %i.063, i32 1
  %39 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %timestamp.i, align 8
  %inc = add nuw i32 %i.063, 1
  %40 = ptrtoint ptr %readings_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %readings_count, align 8
  %cmp23 = icmp ult i32 %inc, %41
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %sensor_id12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sensor_id12, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %for.end, %if.end
  %.sink = phi i32 [ %43, %for.end ], [ %8, %if.end ]
  %44 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %src_id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb8.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rep.2 = phi ptr [ null, %entry.sw.epilog_crit_edge ], [ null, %sw.bb.sw.epilog_crit_edge ], [ null, %sw.bb8.sw.epilog_crit_edge ], [ %report, %sw.epilog.sink.split ]
  ret ptr %rep.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 1002, i32 1}
!2 = !{ptr @scmi_sensors, !3, !"scmi_sensors", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 994, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 971, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_sensors_protocol_init.__UNIQUE_ID_ddebug329, !5, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 451, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @scmi_sensor_description_get._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @scmi_sensor_description_get._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 507, i32 6}
!19 = !{ptr @scmi_sensor_description_get.__UNIQUE_ID_ddebug305, !18, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 282, i32 5}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @scmi_sensor_update_intervals._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @scmi_sensor_update_intervals._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 305, i32 4}
!27 = !{ptr @scmi_sensor_update_intervals._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @scmi_sensor_update_intervals._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 368, i32 4}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @scmi_sensor_axis_description._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @scmi_sensor_axis_description._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sensor_proto_ops, !35, !"sensor_proto_ops", i1 false, i1 false}
!35 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 830, i32 43}
!36 = !{ptr @sensor_protocol_events, !37, !"sensor_protocol_events", i1 false, i1 false}
!37 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 956, i32 42}
!38 = !{ptr @sensor_event_ops, !39, !"sensor_event_ops", i1 false, i1 false}
!39 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 950, i32 36}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 858, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @scmi_sensor_set_notify_enabled.__UNIQUE_ID_ddebug328, !41, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!44 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sensor_events, !46, !"sensor_events", i1 false, i1 false}
!46 = !{!"../drivers/firmware/arm_scmi/sensors.c", i32 932, i32 32}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2149009334, i64 2149009339, i64 2149009352, i64 2149009396, i64 2149009430, i64 2149009451}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i8 0, i8 2}
