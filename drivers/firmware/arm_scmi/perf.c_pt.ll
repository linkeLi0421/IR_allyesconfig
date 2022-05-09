; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/perf.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_perf_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.scmi_msg_resp_perf_attributes = type { i16, i16, i32, i32, i32 }
%struct.scmi_perf_info = type { i32, i32, i8, i64, i32, ptr }
%struct.perf_dom_info = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, [16 x i8], [16 x %struct.scmi_opp], ptr }
%struct.scmi_opp = type { i32, i32, i32 }
%struct.scmi_msg_resp_perf_domain_attributes = type { i32, i32, i32, i32, [16 x i8] }
%struct.scmi_fc_info = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_msg_perf_describe_levels = type { i32, i32 }
%struct.scmi_msg_resp_perf_describe_levels = type { i16, i16, [0 x %struct.anon.45] }
%struct.anon.45 = type { i32, i32, i16, i16 }
%struct.scmi_perf_get_fc_info = type { i32, i32 }
%struct.scmi_msg_resp_perf_desc_fc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scmi_fc_db_info = type { i32, i64, i64, ptr }
%struct.scmi_perf_set_limits = type { i32, i32, i32 }
%struct.scmi_perf_get_limits = type { i32, i32 }
%struct.scmi_perf_set_level = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scmi_perf_notify_level_or_limits = type { i32, i32 }
%struct.scmi_perf_limits_report = type { i64, i32, i32, i32, i32 }
%struct.scmi_perf_limits_notify_payld = type { i32, i32, i32, i32 }
%struct.scmi_perf_level_report = type { i64, i32, i32, i32 }
%struct.scmi_perf_level_notify_payld = type { i32, i32, i32 }

@scmi_perf = internal constant { %struct.scmi_protocol, [40 x i8] } { %struct.scmi_protocol { i8 19, ptr null, ptr @scmi_perf_protocol_init, ptr null, ptr @perf_proto_ops, ptr @perf_protocol_events }, [40 x i8] zeroinitializer }, align 32
@perf_proto_ops = internal constant { %struct.scmi_perf_proto_ops, [48 x i8] } { %struct.scmi_perf_proto_ops { ptr @scmi_perf_limits_set, ptr @scmi_perf_limits_get, ptr @scmi_perf_level_set, ptr @scmi_perf_level_get, ptr @scmi_dev_domain_id, ptr @scmi_dvfs_transition_latency_get, ptr @scmi_dvfs_device_opps_add, ptr @scmi_dvfs_freq_set, ptr @scmi_dvfs_freq_get, ptr @scmi_dvfs_est_power_get, ptr @scmi_fast_switch_possible, ptr @scmi_power_scale_mw_get }, [48 x i8] zeroinitializer }, align 32
@perf_protocol_events = internal constant { %struct.scmi_protocol_events, [44 x i8] } { %struct.scmi_protocol_events { i32 4096, ptr @perf_event_ops, ptr @perf_events, i32 2, i32 0 }, [44 x i8] zeroinitializer }, align 32
@scmi_perf_protocol_init.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"scmi_perf_protocol_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/firmware/arm_scmi/perf.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Performance Version %d.%d\0A\00", [37 x i8] zeroinitializer }, align 32
@scmi_perf_describe_levels_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 291, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No. of OPPs exceeded MAX_OPPS\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"scmi_perf_describe_levels_get\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_perf_describe_levels_get._entry_ptr = internal global ptr @scmi_perf_describe_levels_get._entry, section ".printk_index", align 4
@scmi_perf_describe_levels_get.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Level %d Power %d Latency %dus\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@scmi_dvfs_device_opps_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 660, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add opp %luHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scmi_dvfs_device_opps_add\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scmi_dvfs_device_opps_add._entry_ptr = internal global ptr @scmi_dvfs_device_opps_add._entry, section ".printk_index", align 4
@perf_event_ops = internal constant { %struct.scmi_event_ops, [20 x i8] } { %struct.scmi_event_ops { ptr @scmi_perf_get_num_sources, ptr @scmi_perf_set_notify_enabled, ptr @scmi_perf_fill_custom_report }, [20 x i8] zeroinitializer }, align 32
@perf_events = internal constant { [2 x %struct.scmi_event], [40 x i8] } { [2 x %struct.scmi_event] [%struct.scmi_event { i8 0, i32 16, i32 24 }, %struct.scmi_event { i8 1, i32 12, i32 24 }], [40 x i8] zeroinitializer }, align 32
@evt_2_cmd = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 9, i32 10], [24 x i8] zeroinitializer }, align 32
@scmi_perf_set_notify_enabled.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scmi_perf_set_notify_enabled\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SCMI Notifications PERF - FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"scmi_perf\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 911, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"perf_proto_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 758, i32 41 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"perf_protocol_events\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 867, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 882, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 291, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 302, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 633, i32 47 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 633, i32 57 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 660, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"perf_event_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 861, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"perf_events\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 848, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"evt_2_cmd\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 174, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [36 x i8] c"../drivers/firmware/arm_scmi/perf.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 784, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @scmi_dvfs_device_opps_add._entry, ptr @scmi_dvfs_device_opps_add._entry_ptr, ptr @scmi_perf_describe_levels_get._entry, ptr @scmi_perf_describe_levels_get._entry_ptr, ptr @scmi_perf_unregister, ptr @scmi_perf, ptr @perf_proto_ops, ptr @perf_protocol_events, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @perf_event_ops, ptr @perf_events, ptr @evt_2_cmd, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_perf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_proto_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_protocol_events to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_perf_describe_levels_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_dvfs_device_opps_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_event_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evt_2_cmd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_perf_register() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_protocol_register(ptr noundef nonnull @scmi_perf) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_protocol_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_perf_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @scmi_protocol_unregister(ptr noundef nonnull @scmi_perf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_protocol_init(ptr noundef %ph) #2 align 64 {
entry:
  %t.i92 = alloca ptr, align 4
  %t.i = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #9
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !54
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %ph, ptr noundef nonnull %version) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_perf_protocol_init.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_perf_protocol_init, %if.then)) #9
          to label %do.end40 [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ph, align 4
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %shr = lshr i32 %8, 16
  %conv38 = and i32 %8, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_perf_protocol_init.__UNIQUE_ID_ddebug212, ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %conv38) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then, %entry
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 32, i32 noundef 3520) #9
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %do.end40.cleanup_crit_edge, label %if.end45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !54
  %12 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xops, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i91 = call i32 %15(ptr noundef %ph, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.scmi_perf_attributes_get.exit_crit_edge

if.end45.scmi_perf_attributes_get.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_attributes_get.exit

if.end.i:                                         ; preds = %if.end45
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx.i, align 4
  %20 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xops, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %do_xfer.i, align 4
  %call2.i = call i32 %23(ptr noundef %ph, ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags5.i = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags5.i, align 2
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %19, align 4
  %28 = call i16 @llvm.bswap.i16(i16 %27) #9
  %conv.i = zext i16 %28 to i32
  %num_domains6.i = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %num_domains6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %num_domains6.i, align 4
  %power_scale_mw.i = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 2
  %30 = lshr i16 %25, 8
  %31 = trunc i16 %30 to i8
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %power_scale_mw.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %power_scale_mw.i, align 8
  %stats_addr_low.i = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %19, i32 0, i32 2
  %34 = ptrtoint ptr %stats_addr_low.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stats_addr_low.i, align 4
  %stats_addr_high.i = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %19, i32 0, i32 3
  %36 = ptrtoint ptr %stats_addr_high.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stats_addr_high.i, align 4
  %38 = zext i32 %37 to i64
  %39 = zext i32 %35 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = call i64 @llvm.bswap.i64(i64 %41) #9
  %stats_addr.i = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %stats_addr.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %stats_addr.i, align 8
  %stats_size.i = getelementptr inbounds %struct.scmi_msg_resp_perf_attributes, ptr %19, i32 0, i32 4
  %44 = ptrtoint ptr %stats_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stats_size.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %stats_size11.i = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %stats_size11.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %stats_size11.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then4.i, %if.end.i.if.end12.i_crit_edge
  %48 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xops, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xfer_put.i, align 4
  %52 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t.i, align 4
  call void %51(ptr noundef %ph, ptr noundef %53) #9
  br label %scmi_perf_attributes_get.exit

scmi_perf_attributes_get.exit:                    ; preds = %if.end12.i, %if.end45.scmi_perf_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  %num_domains = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_domains, align 4
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 236) #9
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !56

devm_kcalloc.exit.thread:                         ; preds = %scmi_perf_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dom_info105 = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %dom_info105 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %dom_info105, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %scmi_perf_attributes_get.exit
  %59 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ph, align 4
  %61 = extractvalue { i32, i1 } %56, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %60, i32 noundef %61, i32 noundef 3520) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %dom_info to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5.i.i, ptr %dom_info, align 4
  %tobool50.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool50.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %63 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp107 = icmp sgt i32 %64, 0
  br i1 %cmp107, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %domain.0108 = phi i32 [ %inc, %if.end60.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %65 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dom_info, align 4
  %add.ptr = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i92) #9
  %67 = ptrtoint ptr %t.i92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i92, align 4, !annotation !54
  %68 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xops, align 4
  %xfer_get_init.i94 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %xfer_get_init.i94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xfer_get_init.i94, align 4
  %call.i95 = call i32 %71(ptr noundef %ph, i8 noundef zeroext 3, i32 noundef 4, i32 noundef 32, ptr noundef nonnull %t.i92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.end.i99, label %for.body.scmi_perf_domain_attributes_get.exit_crit_edge

for.body.scmi_perf_domain_attributes_get.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_domain_attributes_get.exit

if.end.i99:                                       ; preds = %for.body
  %72 = ptrtoint ptr %t.i92 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %t.i92, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %domain.0108) #9
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %75, align 1
  %78 = ptrtoint ptr %t.i92 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %t.i92, align 4
  %rx.i97 = getelementptr inbounds %struct.scmi_xfer, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %rx.i97 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rx.i97, align 4
  %82 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %xops, align 4
  %do_xfer.i98 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %do_xfer.i98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %do_xfer.i98, align 4
  %call3.i = call i32 %85(ptr noundef %ph, ptr noundef %79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i99.if.end34.i_crit_edge

if.end.i99.if.end34.i_crit_edge:                  ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.then5.i:                                       ; preds = %if.end.i99
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %81, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #9
  %.lobit.i = lshr i32 %88, 31
  %89 = trunc i32 %.lobit.i to i8
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %add.ptr, align 4
  %set_perf.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 1
  %and8.i = lshr i32 %88, 30
  %91 = trunc i32 %and8.i to i8
  %92 = and i8 %91, 1
  %93 = ptrtoint ptr %set_perf.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %set_perf.i, align 1
  %perf_limit_notify.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 2
  %and11.i = lshr i32 %88, 29
  %94 = trunc i32 %and11.i to i8
  %95 = and i8 %94, 1
  %96 = ptrtoint ptr %perf_limit_notify.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %perf_limit_notify.i, align 2
  %perf_level_notify.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 3
  %and14.i = lshr i32 %88, 28
  %97 = trunc i32 %and14.i to i8
  %98 = and i8 %97, 1
  %99 = ptrtoint ptr %perf_level_notify.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %perf_level_notify.i, align 1
  %perf_fastchannels.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 4
  %and17.i = lshr i32 %88, 27
  %100 = trunc i32 %and17.i to i8
  %101 = and i8 %100, 1
  %102 = ptrtoint ptr %perf_fastchannels.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %perf_fastchannels.i, align 4
  %sustained_freq_khz.i = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, ptr %81, i32 0, i32 2
  %103 = ptrtoint ptr %sustained_freq_khz.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sustained_freq_khz.i, align 4
  %105 = call i32 @llvm.bswap.i32(i32 %104) #9
  %sustained_freq_khz20.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 6
  %106 = ptrtoint ptr %sustained_freq_khz20.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %sustained_freq_khz20.i, align 4
  %sustained_perf_level.i = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, ptr %81, i32 0, i32 3
  %107 = ptrtoint ptr %sustained_perf_level.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sustained_perf_level.i, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #9
  %sustained_perf_level21.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 7
  %110 = ptrtoint ptr %sustained_perf_level21.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %sustained_perf_level21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool23.not.i = icmp eq i32 %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool25.not.i = icmp eq i32 %108, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond.i, label %if.then5.i.if.end30.i_crit_edge, label %if.else.i

if.then5.i.if.end30.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %105, 1000
  %div.i = udiv i32 %mul.i, %109
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then5.i.if.end30.i_crit_edge
  %div.sink.i = phi i32 [ %div.i, %if.else.i ], [ 1000, %if.then5.i.if.end30.i_crit_edge ]
  %111 = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div.sink.i, ptr %111, align 4
  %name.i = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 9
  %name31.i = getelementptr inbounds %struct.scmi_msg_resp_perf_domain_attributes, ptr %81, i32 0, i32 4
  %call33.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name31.i, i32 noundef 16) #9
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end30.i, %if.end.i99.if.end34.i_crit_edge
  %113 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %xops, align 4
  %xfer_put.i100 = getelementptr inbounds %struct.scmi_xfer_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %xfer_put.i100 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xfer_put.i100, align 4
  %117 = ptrtoint ptr %t.i92 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %t.i92, align 4
  call void %116(ptr noundef %ph, ptr noundef %118) #9
  br label %scmi_perf_domain_attributes_get.exit

scmi_perf_domain_attributes_get.exit:             ; preds = %if.end34.i, %for.body.scmi_perf_domain_attributes_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i92) #9
  call fastcc void @scmi_perf_describe_levels_get(ptr noundef %ph, i32 noundef %domain.0108, ptr noundef %add.ptr)
  %perf_fastchannels = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 4
  %119 = ptrtoint ptr %perf_fastchannels to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %perf_fastchannels, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool58.not = icmp eq i8 %120, 0
  br i1 %tobool58.not, label %scmi_perf_domain_attributes_get.exit.if.end60_crit_edge, label %if.then59

scmi_perf_domain_attributes_get.exit.if.end60_crit_edge: ; preds = %scmi_perf_domain_attributes_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then59:                                        ; preds = %scmi_perf_domain_attributes_get.exit
  %121 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ph, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %122, i32 noundef 24, i32 noundef 3520) #9
  %tobool.not.i101 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i101, label %if.then59.if.end60_crit_edge, label %if.end.i102

if.then59.if.end60_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end.i102:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %fc_info = getelementptr %struct.perf_dom_info, ptr %66, i32 %domain.0108, i32 11
  %level_set_db.i = getelementptr inbounds %struct.scmi_fc_info, ptr %call.i.i, i32 0, i32 4
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %ph, i32 noundef %domain.0108, i32 noundef 7, ptr noundef nonnull %call.i.i, ptr noundef %level_set_db.i) #9
  %level_get_addr.i = getelementptr inbounds %struct.scmi_fc_info, ptr %call.i.i, i32 0, i32 2
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %ph, i32 noundef %domain.0108, i32 noundef 8, ptr noundef %level_get_addr.i, ptr noundef null) #9
  %limit_set_addr.i = getelementptr inbounds %struct.scmi_fc_info, ptr %call.i.i, i32 0, i32 1
  %limit_set_db.i = getelementptr inbounds %struct.scmi_fc_info, ptr %call.i.i, i32 0, i32 5
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %ph, i32 noundef %domain.0108, i32 noundef 5, ptr noundef %limit_set_addr.i, ptr noundef %limit_set_db.i) #9
  %limit_get_addr.i = getelementptr inbounds %struct.scmi_fc_info, ptr %call.i.i, i32 0, i32 3
  call fastcc void @scmi_perf_domain_desc_fc(ptr noundef %ph, i32 noundef %domain.0108, i32 noundef 6, ptr noundef %limit_get_addr.i, ptr noundef null) #9
  %123 = ptrtoint ptr %fc_info to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i.i, ptr %fc_info, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end.i102, %if.then59.if.end60_crit_edge, %scmi_perf_domain_attributes_get.exit.if.end60_crit_edge
  %inc = add nuw nsw i32 %domain.0108, 1
  %124 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_domains, align 4
  %cmp = icmp slt i32 %inc, %125
  br i1 %cmp, label %if.end60.for.body_crit_edge, label %if.end60.for.end_crit_edge

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end60.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %126 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %version, align 4
  %128 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %call.i, align 8
  %set_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 2
  %129 = ptrtoint ptr %set_priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %set_priv, align 4
  %call62 = call i32 %130(ptr noundef %ph, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %for.end ], [ -12, %do.end40.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_perf_describe_levels_get(ptr noundef %ph, i32 noundef %domain, ptr noundef %perf_dom) unnamed_addr #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #9
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !54
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 4, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %domain)
  %level_index = getelementptr inbounds %struct.scmi_msg_perf_describe_levels, ptr %8, i32 0, i32 1
  %num_remaining9 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, ptr %10, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %if.end
  %tot_opp_cnt.0 = phi i32 [ 0, %if.end ], [ %add, %for.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %8, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %tot_opp_cnt.0)
  %14 = ptrtoint ptr %level_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %level_index, align 4
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
  %call4 = call i32 %18(ptr noundef %ph, ptr noundef %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.body.do.end47_crit_edge

do.body.do.end47_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.end7:                                          ; preds = %do.body
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %10, align 4
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %num_remaining9 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_remaining9, align 2
  %conv = zext i16 %23 to i32
  %add = add i32 %tot_opp_cnt.0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp = icmp ugt i32 %add, 16
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ph, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4) #12
  br label %do.end47

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp163.not = icmp eq i16 %22, 0
  br i1 %cmp163.not, label %if.end13.for.end_crit_edge, label %for.body.preheader

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end13
  %arrayidx = getelementptr %struct.perf_dom_info, ptr %perf_dom, i32 0, i32 10, i32 %tot_opp_cnt.0
  %umax = call i32 @llvm.umax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %opp.05 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %arrayidx, %for.body.preheader ]
  %cnt.04 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx19 = getelementptr %struct.scmi_msg_resp_perf_describe_levels, ptr %10, i32 0, i32 2, i32 %cnt.04
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx19, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %opp.05 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %opp.05, align 4
  %power = getelementptr %struct.scmi_msg_resp_perf_describe_levels, ptr %10, i32 0, i32 2, i32 %cnt.04, i32 1
  %32 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %power, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %power22 = getelementptr inbounds %struct.scmi_opp, ptr %opp.05, i32 0, i32 1
  %35 = ptrtoint ptr %power22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %power22, align 4
  %transition_latency_us = getelementptr %struct.scmi_msg_resp_perf_describe_levels, ptr %10, i32 0, i32 2, i32 %cnt.04, i32 2
  %36 = ptrtoint ptr %transition_latency_us to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transition_latency_us, align 4
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %conv25 = zext i16 %38 to i32
  %trans_latency_us = getelementptr inbounds %struct.scmi_opp, ptr %opp.05, i32 0, i32 2
  %39 = ptrtoint ptr %trans_latency_us to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv25, ptr %trans_latency_us, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_perf_describe_levels_get.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_perf_describe_levels_get, %if.then31)) #9
          to label %for.inc [label %if.then31], !srcloc !55

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ph, align 4
  %42 = ptrtoint ptr %opp.05 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %opp.05, align 4
  %44 = ptrtoint ptr %power22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %power22, align 4
  %46 = ptrtoint ptr %trans_latency_us to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %trans_latency_us, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_perf_describe_levels_get.__UNIQUE_ID_ddebug205, ptr noundef %41, ptr noundef nonnull @.str.8, i32 noundef %43, i32 noundef %45, i32 noundef %47) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body
  %inc = add nuw nsw i32 %cnt.04, 1
  %incdec.ptr = getelementptr %struct.scmi_opp, ptr %opp.05, i32 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %48 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xops, align 4
  %reset_rx_to_maxsz = getelementptr inbounds %struct.scmi_xfer_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %reset_rx_to_maxsz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reset_rx_to_maxsz, align 4
  %52 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t, align 4
  call void %51(ptr noundef %ph, ptr noundef %53) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool46.not = icmp eq i16 %25, 0
  %or.cond = select i1 %cmp163.not, i1 true, i1 %tobool46.not
  br i1 %or.cond, label %for.end.do.end47_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end.do.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end47:                                         ; preds = %for.end.do.end47_crit_edge, %do.end, %do.body.do.end47_crit_edge
  %tot_opp_cnt.1 = phi i32 [ %tot_opp_cnt.0, %do.end ], [ %add, %for.end.do.end47_crit_edge ], [ %tot_opp_cnt.0, %do.body.do.end47_crit_edge ]
  %opp_count = getelementptr inbounds %struct.perf_dom_info, ptr %perf_dom, i32 0, i32 5
  %54 = ptrtoint ptr %opp_count to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %tot_opp_cnt.1, ptr %opp_count, align 4
  %55 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xfer_put, align 4
  %59 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %t, align 4
  call void %58(ptr noundef %ph, ptr noundef %60) #9
  %opp49 = getelementptr inbounds %struct.perf_dom_info, ptr %perf_dom, i32 0, i32 10
  call void @sort(ptr noundef %opp49, i32 noundef %tot_opp_cnt.1, i32 noundef 12, ptr noundef nonnull @opp_cmp_func, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @opp_cmp_func(ptr nocapture noundef readonly %opp1, ptr nocapture noundef readonly %opp2) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opp1, align 4
  %2 = ptrtoint ptr %opp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opp2, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_perf_domain_desc_fc(ptr noundef %ph, i32 noundef %domain, i32 noundef %message_id, ptr noundef writeonly %p_addr, ptr noundef writeonly %p_db) unnamed_addr #2 align 64 {
entry:
  %t = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #9
  %0 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %t, align 4, !annotation !54
  %tobool.not = icmp eq ptr %p_addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xops = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %1 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xops, align 4
  %xfer_get_init = getelementptr inbounds %struct.scmi_xfer_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xfer_get_init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xfer_get_init, align 4
  %call = call i32 %4(ptr noundef %ph, i8 noundef zeroext 11, i32 noundef 8, i32 noundef 44, ptr noundef nonnull %t) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t, align 4
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %domain)
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %8, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %message_id)
  %message_id5 = getelementptr inbounds %struct.scmi_perf_get_fc_info, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %message_id5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %message_id5, align 4
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
  %call7 = call i32 %16(ptr noundef %ph, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end3.err_xfer_crit_edge

if.end3.err_xfer_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

if.end10:                                         ; preds = %if.end3
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t, align 4
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %chan_size = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 4
  %26 = ptrtoint ptr %chan_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan_size, align 4
  %28 = lshr i32 %27, 24
  %29 = zext i32 %message_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %message_id, label %if.end10.err_xfer_crit_edge [
    i32 8, label %if.end10.land.lhs.true.i_crit_edge
    i32 7, label %if.end10.land.lhs.true.i_crit_edge120
    i32 6, label %if.end10.land.lhs.true6.i_crit_edge
    i32 5, label %if.end10.land.lhs.true6.i_crit_edge121
  ]

if.end10.land.lhs.true6.i_crit_edge121:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true6.i

if.end10.land.lhs.true6.i_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true6.i

if.end10.land.lhs.true.i_crit_edge120:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end10.land.lhs.true.i_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

if.end10.err_xfer_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

land.lhs.true.i:                                  ; preds = %if.end10.land.lhs.true.i_crit_edge, %if.end10.land.lhs.true.i_crit_edge120
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp2.i = icmp eq i32 %28, 4
  br i1 %cmp2.i, label %land.lhs.true.i.if.end15_crit_edge, label %land.lhs.true.i.err_xfer_crit_edge

land.lhs.true.i.err_xfer_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

land.lhs.true.i.if.end15_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true6.i:                                 ; preds = %if.end10.land.lhs.true6.i_crit_edge, %if.end10.land.lhs.true6.i_crit_edge121
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp7.old.i = icmp eq i32 %28, 8
  br i1 %cmp7.old.i, label %land.lhs.true6.i.if.end15_crit_edge, label %land.lhs.true6.i.err_xfer_crit_edge

land.lhs.true6.i.err_xfer_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

land.lhs.true6.i.if.end15_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true6.i.if.end15_crit_edge, %land.lhs.true.i.if.end15_crit_edge
  %chan_addr_low = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 2
  %30 = ptrtoint ptr %chan_addr_low to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan_addr_low, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ph, align 4
  %call20 = call ptr @devm_ioremap(ptr noundef %34, i32 noundef %32, i32 noundef %28) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end15.err_xfer_crit_edge, label %if.end23

if.end15.err_xfer_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

if.end23:                                         ; preds = %if.end15
  %35 = ptrtoint ptr %p_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call20, ptr %p_addr, align 4
  %tobool24.not = icmp eq ptr %p_db, null
  %and = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %if.end23.err_xfer_crit_edge, label %if.then26

if.end23.err_xfer_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

if.then26:                                        ; preds = %if.end23
  %36 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ph, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 32, i32 noundef 3520) #9
  %tobool29.not = icmp eq ptr %call.i, null
  br i1 %tobool29.not, label %if.then26.err_xfer_crit_edge, label %do.end43

if.then26.err_xfer_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

do.end43:                                         ; preds = %if.then26
  %and44 = lshr i32 %25, 1
  %shr = and i32 %and44, 3
  %shl45 = shl nuw nsw i32 1, %shr
  %db_addr_low = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 5
  %38 = ptrtoint ptr %db_addr_low to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %db_addr_low, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ph, align 4
  %call54 = call ptr @devm_ioremap(ptr noundef %42, i32 noundef %40, i32 noundef %shl45) #9
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.end43.err_xfer_crit_edge, label %if.end57

do.end43.err_xfer_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_xfer

if.end57:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  %addr58 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %addr58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call54, ptr %addr58, align 8
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl45, ptr %call.i, align 8
  %db_set_lmask = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 7
  %45 = ptrtoint ptr %db_set_lmask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %db_set_lmask, align 4
  %set = getelementptr inbounds %struct.scmi_fc_db_info, ptr %call.i, i32 0, i32 1
  %db_set_hmask = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 8
  %47 = ptrtoint ptr %db_set_hmask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %db_set_hmask, align 4
  %49 = zext i32 %48 to i64
  %50 = zext i32 %46 to i64
  %51 = shl nuw i64 %50, 32
  %52 = or i64 %51, %49
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %54 = ptrtoint ptr %set to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %set, align 8
  %db_preserve_lmask = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 9
  %55 = ptrtoint ptr %db_preserve_lmask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %db_preserve_lmask, align 4
  %mask = getelementptr inbounds %struct.scmi_fc_db_info, ptr %call.i, i32 0, i32 2
  %db_preserve_hmask = getelementptr inbounds %struct.scmi_msg_resp_perf_desc_fc, ptr %22, i32 0, i32 10
  %57 = ptrtoint ptr %db_preserve_hmask to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %db_preserve_hmask, align 4
  %59 = zext i32 %58 to i64
  %60 = zext i32 %56 to i64
  %61 = shl nuw i64 %60, 32
  %62 = or i64 %61, %59
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  %64 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %mask, align 8
  %65 = ptrtoint ptr %p_db to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %p_db, align 4
  br label %err_xfer

err_xfer:                                         ; preds = %if.end57, %do.end43.err_xfer_crit_edge, %if.then26.err_xfer_crit_edge, %if.end23.err_xfer_crit_edge, %if.end15.err_xfer_crit_edge, %land.lhs.true6.i.err_xfer_crit_edge, %land.lhs.true.i.err_xfer_crit_edge, %if.end10.err_xfer_crit_edge, %if.end3.err_xfer_crit_edge
  %66 = ptrtoint ptr %xops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xops, align 4
  %xfer_put = getelementptr inbounds %struct.scmi_xfer_ops, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %xfer_put to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xfer_put, align 4
  %70 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %t, align 4
  call void %69(ptr noundef %ph, ptr noundef %71) #9
  br label %cleanup

cleanup:                                          ; preds = %err_xfer, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_limits_set(ptr noundef %ph, i32 noundef %domain, i32 noundef %max_perf, i32 noundef %min_perf) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %fc_info = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 11
  %4 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fc_info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %limit_set_addr = getelementptr inbounds %struct.scmi_fc_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %limit_set_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %limit_set_addr, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %max_perf) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %8) #9, !srcloc !59
  %9 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fc_info, align 4
  %limit_set_addr6 = getelementptr inbounds %struct.scmi_fc_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %limit_set_addr6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %limit_set_addr6, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %min_perf) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %13) #9, !srcloc !59
  %14 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fc_info, align 4
  %limit_set_db = getelementptr inbounds %struct.scmi_fc_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %limit_set_db to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %limit_set_db, align 4
  tail call fastcc void @scmi_perf_fc_ring_db(ptr noundef %17)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !54
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %19 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %22(ptr noundef %ph, i8 noundef zeroext 5, i32 noundef 12, i32 noundef 0, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.scmi_perf_mb_limits_set.exit_crit_edge

if.end.scmi_perf_mb_limits_set.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_mb_limits_set.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx.i, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %domain) #9
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %26, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %max_perf) #9
  %max_level.i = getelementptr inbounds %struct.scmi_perf_set_limits, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %max_level.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_level.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %min_perf) #9
  %min_level.i = getelementptr inbounds %struct.scmi_perf_set_limits, ptr %26, i32 0, i32 2
  %32 = ptrtoint ptr %min_level.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %min_level.i, align 4
  %33 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %do_xfer.i, align 4
  %37 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t.i, align 4
  %call3.i = call i32 %36(ptr noundef %ph, ptr noundef %38) #9
  %39 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xfer_put.i, align 4
  %43 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t.i, align 4
  call void %42(ptr noundef %ph, ptr noundef %44) #9
  br label %scmi_perf_mb_limits_set.exit

scmi_perf_mb_limits_set.exit:                     ; preds = %if.end.i, %if.end.scmi_perf_mb_limits_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.end.scmi_perf_mb_limits_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  br label %cleanup

cleanup:                                          ; preds = %scmi_perf_mb_limits_set.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %scmi_perf_mb_limits_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_limits_get(ptr noundef %ph, i32 noundef %domain, ptr nocapture noundef writeonly %max_perf, ptr nocapture noundef writeonly %min_perf) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %fc_info = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 11
  %4 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fc_info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %limit_get_addr = getelementptr inbounds %struct.scmi_fc_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %limit_get_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %limit_get_addr, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #9, !srcloc !60
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %10 = ptrtoint ptr %max_perf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %max_perf, align 4
  %11 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fc_info, align 4
  %limit_get_addr7 = getelementptr inbounds %struct.scmi_fc_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %limit_get_addr7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %limit_get_addr7, align 4
  %add.ptr8 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !60
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %17 = ptrtoint ptr %min_perf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %min_perf, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !54
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %19 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %22(ptr noundef %ph, i8 noundef zeroext 6, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.scmi_perf_mb_limits_get.exit_crit_edge

if.end.scmi_perf_mb_limits_get.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_mb_limits_get.exit

if.end.i:                                         ; preds = %if.end
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx.i, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %domain) #9
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %26, align 1
  %29 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %do_xfer.i, align 4
  %33 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %t.i, align 4
  %call2.i = call i32 %32(ptr noundef %ph, ptr noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #9
  %42 = ptrtoint ptr %max_perf to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %max_perf, align 4
  %min_level.i = getelementptr inbounds %struct.scmi_perf_get_limits, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %min_level.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %min_level.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #9
  %46 = ptrtoint ptr %min_perf to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %min_perf, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %47 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xfer_put.i, align 4
  %51 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %t.i, align 4
  call void %50(ptr noundef %ph, ptr noundef %52) #9
  br label %scmi_perf_mb_limits_get.exit

scmi_perf_mb_limits_get.exit:                     ; preds = %if.end6.i, %if.end.scmi_perf_mb_limits_get.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end6.i ], [ %call.i, %if.end.scmi_perf_mb_limits_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  br label %cleanup

cleanup:                                          ; preds = %scmi_perf_mb_limits_get.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %scmi_perf_mb_limits_get.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_level_set(ptr noundef %ph, i32 noundef %domain, i32 noundef %level, i1 noundef zeroext %poll) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %fc_info = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 11
  %4 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fc_info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %level) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %8) #9, !srcloc !59
  %9 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fc_info, align 4
  %level_set_db = getelementptr inbounds %struct.scmi_fc_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %level_set_db to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %level_set_db, align 4
  tail call fastcc void @scmi_perf_fc_ring_db(ptr noundef %12)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %13 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !54
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %14 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %17(ptr noundef %ph, i8 noundef zeroext 7, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.scmi_perf_mb_level_set.exit_crit_edge

if.end.scmi_perf_mb_level_set.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_mb_level_set.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %frombool.i = zext i1 %poll to i8
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.i, align 4
  %poll_completion.i = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %poll_completion.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %poll_completion.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %domain) #9
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %22, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %level) #9
  %level4.i = getelementptr inbounds %struct.scmi_perf_set_level, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %level4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %level4.i, align 4
  %27 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %do_xfer.i, align 4
  %31 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t.i, align 4
  %call6.i = call i32 %30(ptr noundef %ph, ptr noundef %32) #9
  %33 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xfer_put.i, align 4
  %37 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t.i, align 4
  call void %36(ptr noundef %ph, ptr noundef %38) #9
  br label %scmi_perf_mb_level_set.exit

scmi_perf_mb_level_set.exit:                      ; preds = %if.end.i, %if.end.scmi_perf_mb_level_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end.i ], [ %call.i, %if.end.scmi_perf_mb_level_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  br label %cleanup

cleanup:                                          ; preds = %scmi_perf_mb_level_set.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %scmi_perf_mb_level_set.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_level_get(ptr noundef %ph, i32 noundef %domain, ptr nocapture noundef writeonly %level, i1 noundef zeroext %poll) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %fc_info = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 11
  %4 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fc_info, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %level_get_addr = getelementptr inbounds %struct.scmi_fc_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %level_get_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %level_get_addr, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #9, !srcloc !60
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %10 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %level, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !54
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %12 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xfer_get_init.i, align 4
  %call.i = call i32 %15(ptr noundef %ph, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.scmi_perf_mb_level_get.exit_crit_edge

if.end.scmi_perf_mb_level_get.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_mb_level_get.exit

if.end.i:                                         ; preds = %if.end
  %frombool.i = zext i1 %poll to i8
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t.i, align 4
  %poll_completion.i = getelementptr inbounds %struct.scmi_xfer, ptr %17, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %poll_completion.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool.i, ptr %poll_completion.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %domain) #9
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %20, align 1
  %23 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %do_xfer.i, align 4
  %27 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t.i, align 4
  %call4.i = call i32 %26(ptr noundef %ph, ptr noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %t.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %32, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %level, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %37 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xfer_put.i, align 4
  %41 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %t.i, align 4
  call void %40(ptr noundef %ph, ptr noundef %42) #9
  br label %scmi_perf_mb_level_get.exit

scmi_perf_mb_level_get.exit:                      ; preds = %if.end9.i, %if.end.scmi_perf_mb_level_get.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end9.i ], [ %call.i, %if.end.scmi_perf_mb_level_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  br label %cleanup

cleanup:                                          ; preds = %scmi_perf_mb_level_get.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %scmi_perf_mb_level_get.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dev_domain_id(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #9
  %0 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_transition_latency_get(ptr noundef %ph, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #9
  %2 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %scmi_dev_domain_id.exit, label %scmi_dev_domain_id.exit.thread

scmi_dev_domain_id.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #9
  br label %cleanup

scmi_dev_domain_id.exit:                          ; preds = %entry
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i, i32 0, i32 2
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %scmi_dev_domain_id.exit.cleanup_crit_edge, label %if.end

scmi_dev_domain_id.exit.cleanup_crit_edge:        ; preds = %scmi_dev_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %scmi_dev_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dom_info, align 4
  %opp_count = getelementptr %struct.perf_dom_info, ptr %8, i32 %6, i32 5
  %9 = ptrtoint ptr %opp_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opp_count, align 4
  %sub = add i32 %10, -1
  %trans_latency_us = getelementptr %struct.perf_dom_info, ptr %8, i32 %6, i32 10, i32 %sub, i32 2
  %11 = ptrtoint ptr %trans_latency_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trans_latency_us, align 4
  %mul = mul i32 %12, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %scmi_dev_domain_id.exit.cleanup_crit_edge, %scmi_dev_domain_id.exit.thread
  %retval.0 = phi i32 [ %mul, %if.end ], [ %6, %scmi_dev_domain_id.exit.cleanup_crit_edge ], [ -22, %scmi_dev_domain_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_device_opps_add(ptr noundef %ph, ptr noundef %dev) #2 align 64 {
entry:
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #9
  %2 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %scmi_dev_domain_id.exit, label %scmi_dev_domain_id.exit.thread

scmi_dev_domain_id.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #9
  br label %cleanup

scmi_dev_domain_id.exit:                          ; preds = %entry
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i, i32 0, i32 2
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %scmi_dev_domain_id.exit.cleanup_crit_edge, label %if.end

scmi_dev_domain_id.exit.cleanup_crit_edge:        ; preds = %scmi_dev_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %scmi_dev_domain_id.exit
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dom_info, align 4
  %opp_count = getelementptr %struct.perf_dom_info, ptr %8, i32 %6, i32 5
  %9 = ptrtoint ptr %opp_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp339.not = icmp eq i32 %10, 0
  br i1 %cmp339.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %opp2 = getelementptr %struct.perf_dom_info, ptr %8, i32 %6, i32 10
  %mult_factor = getelementptr %struct.perf_dom_info, ptr %8, i32 %6, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %opp.041 = phi ptr [ %opp2, %for.body.lr.ph ], [ %incdec.ptr11, %for.inc.for.body_crit_edge ]
  %idx.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %opp.041 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opp.041, align 4
  %13 = ptrtoint ptr %mult_factor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mult_factor, align 4
  %mul = mul i32 %14, %12
  %call4 = call i32 @dev_pm_opp_add(ptr noundef %dev, i32 noundef %mul, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %mul) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.040)
  %cmp642 = icmp sgt i32 %idx.040, 0
  br i1 %cmp642, label %do.end.while.body_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %opp.144 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %opp.041, %do.end.while.body_crit_edge ]
  %idx.143 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %idx.040, %do.end.while.body_crit_edge ]
  %dec = add nsw i32 %idx.143, -1
  %incdec.ptr = getelementptr %struct.scmi_opp, ptr %opp.144, i32 -1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr, align 4
  %17 = ptrtoint ptr %mult_factor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mult_factor, align 4
  %mul9 = mul i32 %18, %16
  call void @dev_pm_opp_remove(ptr noundef %dev, i32 noundef %mul9) #9
  %cmp6 = icmp ugt i32 %idx.143, 1
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.040, 1
  %incdec.ptr11 = getelementptr %struct.scmi_opp, ptr %opp.041, i32 1
  %19 = ptrtoint ptr %opp_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opp_count, align 4
  %cmp3 = icmp ult i32 %inc, %20
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %scmi_dev_domain_id.exit.cleanup_crit_edge, %scmi_dev_domain_id.exit.thread
  %retval.0 = phi i32 [ %6, %scmi_dev_domain_id.exit.cleanup_crit_edge ], [ -22, %scmi_dev_domain_id.exit.thread ], [ %call4, %do.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_freq_set(ptr noundef %ph, i32 noundef %domain, i32 noundef %freq, i1 noundef zeroext %poll) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %mult_factor = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 8
  %4 = ptrtoint ptr %mult_factor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mult_factor, align 4
  %div = udiv i32 %freq, %5
  %call1 = tail call i32 @scmi_perf_level_set(ptr noundef %ph, i32 noundef %domain, i32 noundef %div, i1 noundef zeroext %poll)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_freq_get(ptr noundef %ph, i32 noundef %domain, ptr nocapture noundef writeonly %freq, i1 noundef zeroext %poll) #2 align 64 {
entry:
  %t.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %4 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_priv, align 4
  %call.i = tail call ptr %5(ptr noundef %ph) #9
  %dom_info.i = getelementptr inbounds %struct.scmi_perf_info, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %dom_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dom_info.i, align 4
  %fc_info.i = getelementptr %struct.perf_dom_info, ptr %7, i32 %domain, i32 11
  %8 = ptrtoint ptr %fc_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fc_info.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %level_get_addr.i = getelementptr inbounds %struct.scmi_fc_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %level_get_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %level_get_addr.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %scmi_perf_level_get.exit.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

scmi_perf_level_get.exit.thread:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #9, !srcloc !60
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i.i) #9
  %14 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i.i, align 4, !annotation !54
  %xops.i.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %15 = ptrtoint ptr %xops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xops.i.i, align 4
  %xfer_get_init.i.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %xfer_get_init.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfer_get_init.i.i, align 4
  %call.i.i = call i32 %18(ptr noundef %ph, i8 noundef zeroext 8, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %t.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %scmi_perf_level_get.exit.thread13

scmi_perf_level_get.exit.thread13:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i.i) #9
  br label %if.end

if.end.i.i:                                       ; preds = %if.end.i
  %frombool.i.i = zext i1 %poll to i8
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t.i.i, align 4
  %poll_completion.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %poll_completion.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool.i.i, ptr %poll_completion.i.i, align 4
  %tx.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx.i.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %domain) #9
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %23, align 1
  %26 = ptrtoint ptr %xops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xops.i.i, align 4
  %do_xfer.i.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %do_xfer.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %do_xfer.i.i, align 4
  %30 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %t.i.i, align 4
  %call4.i.i = call i32 %29(ptr noundef %ph, ptr noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end.i.i.scmi_perf_level_get.exit_crit_edge

if.end.i.i.scmi_perf_level_get.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_perf_level_get.exit

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t.i.i, align 4
  %rx.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %35, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37) #9
  br label %scmi_perf_level_get.exit

scmi_perf_level_get.exit:                         ; preds = %if.then6.i.i, %if.end.i.i.scmi_perf_level_get.exit_crit_edge
  %level.0 = phi i32 [ %38, %if.then6.i.i ], [ -1, %if.end.i.i.scmi_perf_level_get.exit_crit_edge ]
  %39 = ptrtoint ptr %xops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xops.i.i, align 4
  %xfer_put.i.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %xfer_put.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xfer_put.i.i, align 4
  %43 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %t.i.i, align 4
  call void %42(ptr noundef %ph, ptr noundef %44) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i.i) #9
  br i1 %tobool5.not.i.i, label %scmi_perf_level_get.exit.if.then_crit_edge, label %scmi_perf_level_get.exit.if.end_crit_edge

scmi_perf_level_get.exit.if.end_crit_edge:        ; preds = %scmi_perf_level_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

scmi_perf_level_get.exit.if.then_crit_edge:       ; preds = %scmi_perf_level_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %scmi_perf_level_get.exit.if.then_crit_edge, %scmi_perf_level_get.exit.thread
  %level.210 = phi i32 [ %13, %scmi_perf_level_get.exit.thread ], [ %level.0, %scmi_perf_level_get.exit.if.then_crit_edge ]
  %mult_factor = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 8
  %45 = ptrtoint ptr %mult_factor to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mult_factor, align 4
  %mul = mul i32 %46, %level.210
  %47 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul, ptr %freq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %scmi_perf_level_get.exit.if.end_crit_edge, %scmi_perf_level_get.exit.thread13
  %retval.0.i11 = phi i32 [ 0, %if.then ], [ %call4.i.i, %scmi_perf_level_get.exit.if.end_crit_edge ], [ %call.i.i, %scmi_perf_level_get.exit.thread13 ]
  ret i32 %retval.0.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_dvfs_est_power_get(ptr noundef %ph, i32 noundef %domain, ptr nocapture noundef %freq, ptr nocapture noundef writeonly %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  %add.ptr = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %opp_count = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 5
  %4 = ptrtoint ptr %opp_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21.not = icmp eq i32 %5, 0
  br i1 %cmp21.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %opp1 = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 10
  %mult_factor = getelementptr %struct.perf_dom_info, ptr %3, i32 %domain, i32 8
  %6 = ptrtoint ptr %mult_factor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mult_factor, align 4
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %opp.023 = phi ptr [ %opp1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %opp.023 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opp.023, align 4
  %mul = mul i32 %7, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %9)
  %cmp2 = icmp ult i32 %mul, %9
  br i1 %cmp2, label %for.inc, label %if.end4

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %freq, align 4
  %power5 = getelementptr inbounds %struct.scmi_opp, ptr %opp.023, i32 0, i32 1
  %13 = ptrtoint ptr %power5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power5, align 4
  %15 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %power, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.022, 1
  %incdec.ptr = getelementptr %struct.scmi_opp, ptr %opp.023, i32 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end4 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @scmi_fast_switch_possible(ptr noundef %ph, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %dom_info = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dom_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dom_info, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #9
  %4 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.scmi_dev_domain_id.exit_crit_edge

entry.scmi_dev_domain_id.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %scmi_dev_domain_id.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec.i, i32 0, i32 2
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args.i, align 4
  br label %scmi_dev_domain_id.exit

scmi_dev_domain_id.exit:                          ; preds = %if.end.i, %entry.scmi_dev_domain_id.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ -22, %entry.scmi_dev_domain_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #9
  %fc_info = getelementptr %struct.perf_dom_info, ptr %3, i32 %retval.0.i, i32 11
  %9 = ptrtoint ptr %fc_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fc_info, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %scmi_dev_domain_id.exit.land.end_crit_edge, label %land.rhs

scmi_dev_domain_id.exit.land.end_crit_edge:       ; preds = %scmi_dev_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %scmi_dev_domain_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool3 = icmp ne ptr %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %scmi_dev_domain_id.exit.land.end_crit_edge
  %13 = phi i1 [ false, %scmi_dev_domain_id.exit.land.end_crit_edge ], [ %tobool3, %land.rhs ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @scmi_power_scale_mw_get(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %power_scale_mw = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %power_scale_mw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_scale_mw, align 8, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @scmi_perf_fc_ring_db(ptr noundef readonly %db) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %db, null
  br i1 %tobool.not, label %entry.if.end75_crit_edge, label %lor.lhs.false

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

lor.lhs.false:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 3
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.if.end75_crit_edge, label %if.end

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %db, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %if.else60 [
    i32 1, label %do.body
    i32 2, label %do.body18
    i32 4, label %do.body43
  ]

do.body:                                          ; preds = %if.end
  %mask = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 2
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool3.not = icmp eq i64 %6, 0
  br i1 %tobool3.not, label %do.body.if.end8_crit_edge, label %if.then4

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mask, align 8
  %10 = trunc i64 %9 to i8
  %conv7 = and i8 %7, %10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.body.if.end8_crit_edge
  %val.0 = phi i8 [ %conv7, %if.then4 ], [ 0, %do.body.if.end8_crit_edge ]
  %set = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 1
  %11 = ptrtoint ptr %set to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %set, align 8
  %conv9 = trunc i64 %12 to i8
  %or = or i8 %val.0, %conv9
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %or) #9, !srcloc !65
  br label %if.end75

do.body18:                                        ; preds = %if.end
  %mask20 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 2
  %15 = ptrtoint ptr %mask20 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mask20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool21.not = icmp eq i64 %16, 0
  br i1 %tobool21.not, label %do.body18.if.end29_crit_edge, label %if.then22

do.body18.if.end29_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %1) #9, !srcloc !66
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %19 = ptrtoint ptr %mask20 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mask20, align 8
  %21 = trunc i64 %20 to i16
  %conv28 = and i16 %18, %21
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %do.body18.if.end29_crit_edge
  %val19.0 = phi i16 [ %conv28, %if.then22 ], [ 0, %do.body18.if.end29_crit_edge ]
  %set30 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 1
  %22 = ptrtoint ptr %set30 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %set30, align 8
  %conv31 = trunc i64 %23 to i16
  %or34 = or i16 %val19.0, %conv31
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %26 = tail call i16 @llvm.bswap.i16(i16 %or34) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %26) #9, !srcloc !69
  br label %if.end75

do.body43:                                        ; preds = %if.end
  %mask45 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 2
  %27 = ptrtoint ptr %mask45 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %mask45, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool46.not = icmp eq i64 %28, 0
  br i1 %tobool46.not, label %do.body43.if.end54_crit_edge, label %if.then47

do.body43.if.end54_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #9, !srcloc !60
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %31 = ptrtoint ptr %mask45 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mask45, align 8
  %33 = trunc i64 %32 to i32
  %conv53 = and i32 %30, %33
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %do.body43.if.end54_crit_edge
  %val44.0 = phi i32 [ %conv53, %if.then47 ], [ 0, %do.body43.if.end54_crit_edge ]
  %set55 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 1
  %34 = ptrtoint ptr %set55 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %set55, align 8
  %conv56 = trunc i64 %35 to i32
  %or57 = or i32 %val44.0, %conv56
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or57) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %38) #9, !srcloc !59
  br label %if.end75

if.else60:                                        ; preds = %if.end
  %mask62 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 2
  %39 = ptrtoint ptr %mask62 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mask62, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool63.not = icmp eq i64 %40, 0
  br i1 %tobool63.not, label %if.else60.if.end69_crit_edge, label %if.then64

if.else60.if.end69_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #9, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !61
  %43 = zext i32 %41 to i64
  %44 = zext i32 %42 to i64
  %45 = shl nuw i64 %44, 32
  %46 = or i64 %45, %43
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #9
  %48 = ptrtoint ptr %mask62 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mask62, align 8
  %and68 = and i64 %47, %49
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.else60.if.end69_crit_edge
  %val61.0 = phi i64 [ %and68, %if.then64 ], [ 0, %if.else60.if.end69_crit_edge ]
  %set70 = getelementptr inbounds %struct.scmi_fc_db_info, ptr %db, i32 0, i32 1
  %50 = ptrtoint ptr %set70 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %set70, align 8
  %or71 = or i64 %51, %val61.0
  %52 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr, align 8
  %shr.i = lshr i64 %or71, 32
  %conv.i = trunc i64 %shr.i to i32
  %add.ptr.i101 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %54) #9, !srcloc !59
  %conv1.i = trunc i64 %or71 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %55) #9, !srcloc !59
  br label %if.end75

if.end75:                                         ; preds = %if.end69, %if.end54, %if.end29, %if.end8, %lor.lhs.false.if.end75_crit_edge, %entry.if.end75_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_get_num_sources(ptr noundef %ph) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_priv = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 3
  %0 = ptrtoint ptr %get_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_priv, align 4
  %call = tail call ptr %1(ptr noundef %ph) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num_domains = getelementptr inbounds %struct.scmi_perf_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_domains, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_perf_set_notify_enabled(ptr noundef %ph, i8 noundef zeroext %evt_id, i32 noundef %src_id, i1 noundef zeroext %enable) #2 align 64 {
entry:
  %t.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %evt_id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %evt_id)
  %cmp = icmp ugt i8 %evt_id, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x i32], ptr @evt_2_cmd, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i) #9
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %t.i, align 4, !annotation !54
  %xops.i = getelementptr inbounds %struct.scmi_protocol_handle, ptr %ph, i32 0, i32 1
  %3 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xops.i, align 4
  %xfer_get_init.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %xfer_get_init.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xfer_get_init.i, align 4
  %conv.i = trunc i32 %1 to i8
  %call.i = call i32 %6(ptr noundef %ph, i8 noundef zeroext %conv.i, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %scmi_perf_level_limits_notify.exit, label %scmi_perf_level_limits_notify.exit.thread

scmi_perf_level_limits_notify.exit.thread:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  br label %do.body

scmi_perf_level_limits_notify.exit:               ; preds = %if.end
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t.i, align 4
  %tx.i = getelementptr inbounds %struct.scmi_xfer, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %src_id) #9
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %10, align 4
  %cond.i = select i1 %enable, i32 16777216, i32 0
  %notify_enable.i = getelementptr inbounds %struct.scmi_perf_notify_level_or_limits, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %notify_enable.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %notify_enable.i, align 4
  %14 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xops.i, align 4
  %do_xfer.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %do_xfer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %do_xfer.i, align 4
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t.i, align 4
  %call5.i = call i32 %17(ptr noundef %ph, ptr noundef %19) #9
  %20 = ptrtoint ptr %xops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xops.i, align 4
  %xfer_put.i = getelementptr inbounds %struct.scmi_xfer_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %xfer_put.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xfer_put.i, align 4
  %24 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %t.i, align 4
  call void %23(ptr noundef %ph, ptr noundef %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool2.not = icmp eq i32 %call5.i, 0
  br i1 %tobool2.not, label %scmi_perf_level_limits_notify.exit.cleanup_crit_edge, label %scmi_perf_level_limits_notify.exit.do.body_crit_edge

scmi_perf_level_limits_notify.exit.do.body_crit_edge: ; preds = %scmi_perf_level_limits_notify.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

scmi_perf_level_limits_notify.exit.cleanup_crit_edge: ; preds = %scmi_perf_level_limits_notify.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %scmi_perf_level_limits_notify.exit.do.body_crit_edge, %scmi_perf_level_limits_notify.exit.thread
  %retval.0.i1922 = phi i32 [ %call.i, %scmi_perf_level_limits_notify.exit.thread ], [ %call5.i, %scmi_perf_level_limits_notify.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_perf_set_notify_enabled.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_perf_set_notify_enabled, %if.then9)) #9
          to label %cleanup [label %if.then9], !srcloc !55

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_perf_set_notify_enabled.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %src_id, i32 noundef %retval.0.i1922) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %scmi_perf_level_limits_notify.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i1922, %if.then9 ], [ 0, %scmi_perf_level_limits_notify.exit.cleanup_crit_edge ], [ %retval.0.i1922, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @scmi_perf_fill_custom_report(ptr nocapture noundef readnone %ph, i8 noundef zeroext %evt_id, i64 noundef %timestamp, ptr nocapture noundef readonly %payld, i32 noundef %payld_sz, ptr noundef %report, ptr nocapture noundef writeonly %src_id) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %evt_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %evt_id, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %payld_sz)
  %cmp.not = icmp eq i32 %payld_sz, 16
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %timestamp, ptr %report, align 8
  %2 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payld, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %agent_id3 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %report, i32 0, i32 1
  %5 = ptrtoint ptr %agent_id3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %agent_id3, align 8
  %domain_id = getelementptr inbounds %struct.scmi_perf_limits_notify_payld, ptr %payld, i32 0, i32 1
  %6 = ptrtoint ptr %domain_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %domain_id, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %domain_id4 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %report, i32 0, i32 2
  %9 = ptrtoint ptr %domain_id4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %domain_id4, align 4
  %range_max = getelementptr inbounds %struct.scmi_perf_limits_notify_payld, ptr %payld, i32 0, i32 2
  %10 = ptrtoint ptr %range_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %range_max, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %range_max5 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %report, i32 0, i32 3
  %13 = ptrtoint ptr %range_max5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %range_max5, align 8
  %range_min = getelementptr inbounds %struct.scmi_perf_limits_notify_payld, ptr %payld, i32 0, i32 3
  %14 = ptrtoint ptr %range_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %range_min, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %range_min6 = getelementptr inbounds %struct.scmi_perf_limits_report, ptr %report, i32 0, i32 4
  %17 = ptrtoint ptr %range_min6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %range_min6, align 4
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %payld_sz)
  %cmp12.not = icmp eq i32 %payld_sz, 12
  br i1 %cmp12.not, label %if.end15, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end15:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %report to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %timestamp, ptr %report, align 8
  %19 = ptrtoint ptr %payld to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %payld, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %agent_id18 = getelementptr inbounds %struct.scmi_perf_level_report, ptr %report, i32 0, i32 1
  %22 = ptrtoint ptr %agent_id18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %agent_id18, align 8
  %domain_id19 = getelementptr inbounds %struct.scmi_perf_level_notify_payld, ptr %payld, i32 0, i32 1
  %23 = ptrtoint ptr %domain_id19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %domain_id19, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %domain_id20 = getelementptr inbounds %struct.scmi_perf_level_report, ptr %report, i32 0, i32 2
  %26 = ptrtoint ptr %domain_id20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %domain_id20, align 4
  %performance_level = getelementptr inbounds %struct.scmi_perf_level_notify_payld, ptr %payld, i32 0, i32 2
  %27 = ptrtoint ptr %performance_level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %performance_level, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %performance_level21 = getelementptr inbounds %struct.scmi_perf_level_report, ptr %report, i32 0, i32 3
  %30 = ptrtoint ptr %performance_level21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %performance_level21, align 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end15, %if.end
  %.sink = phi i32 [ %25, %if.end15 ], [ %8, %if.end ]
  %31 = ptrtoint ptr %src_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %src_id, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rep.2 = phi ptr [ null, %entry.sw.epilog_crit_edge ], [ null, %sw.bb.sw.epilog_crit_edge ], [ null, %sw.bb9.sw.epilog_crit_edge ], [ %report, %sw.epilog.sink.split ]
  ret ptr %rep.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !{null, !1, !"__this_proto", i1 false, i1 false}
!1 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 919, i32 1}
!2 = !{ptr @scmi_perf, !3, !"scmi_perf", i1 false, i1 false}
!3 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 911, i32 35}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 882, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @scmi_perf_protocol_init.__UNIQUE_ID_ddebug212, !5, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 291, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @scmi_perf_describe_levels_get._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @scmi_perf_describe_levels_get._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 302, i32 4}
!19 = !{ptr @scmi_perf_describe_levels_get.__UNIQUE_ID_ddebug205, !18, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!20 = !{ptr @perf_proto_ops, !21, !"perf_proto_ops", i1 false, i1 false}
!21 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 758, i32 41}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 633, i32 47}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 633, i32 57}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 660, i32 4}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @scmi_dvfs_device_opps_add._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @scmi_dvfs_device_opps_add._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @perf_protocol_events, !33, !"perf_protocol_events", i1 false, i1 false}
!33 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 867, i32 42}
!34 = !{ptr @perf_event_ops, !35, !"perf_event_ops", i1 false, i1 false}
!35 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 861, i32 36}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 784, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @scmi_perf_set_notify_enabled.__UNIQUE_ID_ddebug211, !37, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @evt_2_cmd, !42, !"evt_2_cmd", i1 false, i1 false}
!42 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 174, i32 43}
!43 = !{ptr @perf_events, !44, !"perf_events", i1 false, i1 false}
!44 = !{!"../drivers/firmware/arm_scmi/perf.c", i32 848, i32 32}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i64 2148878604, i64 2148878609, i64 2148878622, i64 2148878666, i64 2148878700, i64 2148878721}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i8 0, i8 2}
!58 = !{i64 2151521592}
!59 = !{i64 3986960}
!60 = !{i64 3987378}
!61 = !{i64 2151520237}
!62 = !{i64 3987158}
!63 = !{i64 2151519013}
!64 = !{i64 2151520618}
!65 = !{i64 3986763}
!66 = !{i64 3986540}
!67 = !{i64 2151519625}
!68 = !{i64 2151521042}
!69 = !{i64 3986340}
