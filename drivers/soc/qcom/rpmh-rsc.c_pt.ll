; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/rpmh-rsc.c_pt.bc'
source_filename = "../drivers/soc/qcom/rpmh-rsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.5, %struct.trace_event, ptr, ptr, %union.anon.6, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.5 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.6 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_rpmh_tx_done = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.tcs_request = type { i32, i32, i32, ptr }
%struct.tcs_cmd = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_rpmh_send_msg = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.rsc_drv = type { ptr, ptr, i32, i32, %struct.notifier_block, %struct.atomic_t, [4 x %struct.tcs_group], [1 x i32], %struct.spinlock, %struct.wait_queue_head, %struct.rpmh_ctrlr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tcs_group = type { ptr, i32, i32, i32, i32, i32, [3 x ptr], [2 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpmh_ctrlr = type { %struct.list_head, %struct.spinlock, i8, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.tcs_type_config = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__tpstrtab_rpmh_tx_done = internal constant [13 x i8] c"rpmh_tx_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpmh_tx_done = dso_local global %struct.static_call_key { ptr @__traceiter_rpmh_tx_done }, align 4
@__tracepoint_rpmh_tx_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpmh_tx_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpmh_tx_done, ptr null, ptr @__traceiter_rpmh_tx_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpmh_tx_done = internal constant ptr @__tracepoint_rpmh_tx_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_rpmh_send_msg = internal constant [14 x i8] c"rpmh_send_msg\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rpmh_send_msg = dso_local global %struct.static_call_key { ptr @__traceiter_rpmh_send_msg }, align 4
@__tracepoint_rpmh_send_msg = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_rpmh_send_msg, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_rpmh_send_msg, ptr null, ptr @__traceiter_rpmh_send_msg, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rpmh_send_msg = internal constant ptr @__tracepoint_rpmh_send_msg, section "__tracepoints_ptrs", align 4
@str__rpmh__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rpmh\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_rpmh_tx_done = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.3 { %struct.anon.4 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.3 { %struct.anon.4 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.3 { %struct.anon.4 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.3 { %struct.anon.4 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.3 { %struct.anon.4 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_rpmh_tx_done = internal global %struct.trace_event_class { ptr @str__rpmh__trace_system_name, ptr @trace_event_raw_event_rpmh_tx_done, ptr @perf_trace_rpmh_tx_done, ptr @trace_event_reg, ptr @trace_event_fields_rpmh_tx_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpmh_tx_done, i64 24), ptr getelementptr (i8, ptr @event_class_rpmh_tx_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpmh_tx_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpmh_tx_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpmh_tx_done = internal global { [108 x i8], [52 x i8] } { [108 x i8] c"\22%s: ack: tcs-m: %d addr: %#x data: %#x errno: %d\22, __get_str(name), REC->m, REC->addr, REC->data, REC->err\00", [52 x i8] zeroinitializer }, align 32
@event_rpmh_tx_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpmh_tx_done, %union.anon.5 { ptr @__tracepoint_rpmh_tx_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpmh_tx_done }, ptr @print_fmt_rpmh_tx_done, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpmh_tx_done = internal global ptr @event_rpmh_tx_done, section "_ftrace_events", align 4
@trace_event_fields_rpmh_send_msg = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.3 { %struct.anon.4 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.3 { %struct.anon.4 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.3 { %struct.anon.4 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.3 { %struct.anon.4 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.3 { %struct.anon.4 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.3 { %struct.anon.4 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.3 { %struct.anon.4 { ptr @.str.13, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_rpmh_send_msg = internal global %struct.trace_event_class { ptr @str__rpmh__trace_system_name, ptr @trace_event_raw_event_rpmh_send_msg, ptr @perf_trace_rpmh_send_msg, ptr @trace_event_reg, ptr @trace_event_fields_rpmh_send_msg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rpmh_send_msg, i64 24), ptr getelementptr (i8, ptr @event_class_rpmh_send_msg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rpmh_send_msg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_rpmh_send_msg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_rpmh_send_msg = internal global { [158 x i8], [34 x i8] } { [158 x i8] c"\22%s: send-msg: tcs(m): %d cmd(n): %d msgid: %#x addr: %#x data: %#x complete: %d\22, __get_str(name), REC->m, REC->n, REC->hdr, REC->addr, REC->data, REC->wait\00", [34 x i8] zeroinitializer }, align 32
@event_rpmh_send_msg = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rpmh_send_msg, %union.anon.5 { ptr @__tracepoint_rpmh_send_msg }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rpmh_send_msg }, ptr @print_fmt_rpmh_send_msg, ptr null, %union.anon.6 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_rpmh_send_msg = internal global ptr @event_rpmh_send_msg, section "_ftrace_events", align 4
@__bpf_trace_tp_map_rpmh_tx_done = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpmh_tx_done, ptr @__bpf_trace_rpmh_tx_done, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_rpmh_send_msg = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_rpmh_send_msg, ptr @__bpf_trace_rpmh_send_msg, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_qcom_rpmh__263_1010_rpmh_driver_init3 = internal global ptr @rpmh_driver_init, section ".initcall3.init", align 4
@__UNIQUE_ID_description264 = internal constant [62 x i8] c"qcom_rpmh.description=Qualcomm Technologies, Inc. RPMh Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file265 = internal constant [42 x i8] c"qcom_rpmh.file=drivers/soc/qcom/qcom_rpmh\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [25 x i8] c"qcom_rpmh.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"m\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"err\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ack: tcs-m: %d addr: %#x data: %#x errno: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hdr\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wait\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: send-msg: tcs(m): %d cmd(n): %d msgid: %#x addr: %#x data: %#x complete: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@write_tcs_reg_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s %s: error writing %#x to %d:%#x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_tcs_reg_sync\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/soc/qcom/rpmh-rsc.c\00", [36 x i8] zeroinitializer }, align 32
@write_tcs_reg_sync._entry_ptr = internal global ptr @write_tcs_reg_sync._entry, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_rpmh\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/soc/qcom/trace-rpmh.h\00", [34 x i8] zeroinitializer }, align 32
@trace_rpmh_send_msg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rpmh_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpmh_rsc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.22, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rpmh_drv_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rpmh\00", [27 x i8] zeroinitializer }, align 32
@rpmh_drv_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rpmh-rsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rpmh_rsc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.17, i32 926, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Command DB not available (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rpmh_rsc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmh_rsc_probe._entry_ptr = internal global ptr @rpmh_rsc_probe._entry, section ".printk_index", align 4
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,drv-id\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drv-%d\00", [25 x i8] zeroinitializer }, align 32
@rpmh_rsc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&drv->lock\00", [21 x i8] zeroinitializer }, align 32
@rpmh_rsc_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&drv->tcs_wait\00", [17 x i8] zeroinitializer }, align 32
@rpmh_rsc_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&drv->client.cache_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,tcs-offset\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,tcs-config\00", [16 x i8] zeroinitializer }, align 32
@tcs_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.17, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s Incomplete request: %s: addr=%#x data=%#x\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcs_tx_done\00", [20 x i8] zeroinitializer }, align 32
@tcs_tx_done._entry_ptr = internal global ptr @tcs_tx_done._entry, section ".printk_index", align 4
@trace_rpmh_tx_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"str__rpmh__trace_system_name\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 36, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [32 x i8] c"trace_event_fields_rpmh_tx_done\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_rpmh_tx_done\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [23 x i8] c"print_fmt_rpmh_tx_done\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"event_rpmh_tx_done\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"trace_event_fields_rpmh_send_msg\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_rpmh_send_msg\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"print_fmt_rpmh_send_msg\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"event_rpmh_send_msg\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 15, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 193, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [35 x i8] c"../drivers/soc/qcom/./trace-rpmh.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 42, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 108, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"rpmh_driver\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 997, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1000, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"rpmh_drv_match\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 991, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 925, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 934, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 938, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 942, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 951, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 952, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 982, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 849, i32 33 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 863, i32 38 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [31 x i8] c"../drivers/soc/qcom/rpmh-rsc.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 409, i32 5 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__bpf_trace_tp_map_rpmh_send_msg, ptr @__bpf_trace_tp_map_rpmh_tx_done, ptr @__event_rpmh_send_msg, ptr @__event_rpmh_tx_done, ptr @__initcall__kmod_qcom_rpmh__263_1010_rpmh_driver_init3, ptr @__tracepoint_ptr_rpmh_send_msg, ptr @__tracepoint_ptr_rpmh_tx_done, ptr @__tracepoint_rpmh_send_msg, ptr @__tracepoint_rpmh_tx_done, ptr @event_class_rpmh_send_msg, ptr @event_class_rpmh_tx_done, ptr @event_rpmh_send_msg, ptr @event_rpmh_tx_done, ptr @rpmh_rsc_probe._entry, ptr @rpmh_rsc_probe._entry_ptr, ptr @tcs_tx_done._entry, ptr @tcs_tx_done._entry_ptr, ptr @write_tcs_reg_sync._entry, ptr @write_tcs_reg_sync._entry_ptr, ptr @str__rpmh__trace_system_name, ptr @trace_event_fields_rpmh_tx_done, ptr @trace_event_type_funcs_rpmh_tx_done, ptr @print_fmt_rpmh_tx_done, ptr @trace_event_fields_rpmh_send_msg, ptr @trace_event_type_funcs_rpmh_send_msg, ptr @print_fmt_rpmh_send_msg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rpmh_driver, ptr @.str.22, ptr @rpmh_drv_match, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rpmh_rsc_probe.__key, ptr @.str.30, ptr @rpmh_rsc_probe.__key.31, ptr @.str.32, ptr @rpmh_rsc_probe.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__rpmh__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpmh_tx_done to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpmh_tx_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpmh_tx_done to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpmh_tx_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_rpmh_send_msg to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_rpmh_send_msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_rpmh_send_msg to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_rpmh_send_msg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tcs_reg_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_drv_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_rsc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_rsc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_rsc_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmh_rsc_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpmh_tx_done(ptr nocapture readnone %__data, ptr noundef %d, i32 noundef %m, ptr noundef %r, i32 noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_tx_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %d, i32 noundef %m, ptr noundef %r, i32 noundef %e) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rpmh_send_msg(ptr nocapture readnone %__data, ptr noundef %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_send_msg, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr noundef %c) #13
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpmh_tx_done(ptr noundef %__data, ptr nocapture noundef readonly %d, i32 noundef %m, ptr nocapture noundef readonly %r, i32 noundef %e) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !112

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #13
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %tobool.not.i34 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i34, ptr @.str, ptr %4
  %call.i35 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #16
  %add = add i32 %call.i35, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = shl i32 %call.i35, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %tobool8.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %7
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #17
  %m11 = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %m11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %m, ptr %m11, align 4
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %r, i32 0, i32 3
  %9 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmds, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %addr12 = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %addr12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %addr12, align 4
  %14 = load ptr, ptr %cmds, align 4
  %data = getelementptr inbounds %struct.tcs_cmd, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %data15 = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %data15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data15, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call3, i32 0, i32 5
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %e, ptr %err, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpmh_tx_done(ptr noundef %__data, ptr nocapture noundef readonly %d, i32 noundef %m, ptr nocapture noundef readonly %r, i32 noundef %e) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !113
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #16
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i59.not = icmp eq ptr %17, null
  br i1 %tobool.not.i59.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #13
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !101) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %30 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d, align 4
  %tobool20.not = icmp eq ptr %31, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %31
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #17
  %m23 = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %m23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %m, ptr %m23, align 4
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %r, i32 0, i32 3
  %33 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmds, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %addr25 = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %addr25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %addr25, align 4
  %38 = load ptr, ptr %cmds, align 4
  %data = getelementptr inbounds %struct.tcs_cmd, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %data28 = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %data28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %data28, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %call13, i32 0, i32 5
  %42 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %e, ptr %err, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %13, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rpmh_send_msg(ptr noundef %__data, ptr nocapture noundef readonly %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #13
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !111

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !112

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #13
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %tobool.not.i39 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i39, ptr @.str, ptr %4
  %call.i40 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #16
  %add = add i32 %call.i40, 37
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = shl i32 %call.i40, 16
  %or.i = add i32 %add.i, 65569
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 33
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %tobool8.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %7
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #17
  %m11 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %m11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %m, ptr %m11, align 4
  %n12 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %n12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %n, ptr %n12, align 4
  %hdr = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %h, ptr %hdr, align 4
  %11 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c, align 4
  %addr13 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %addr13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %addr13, align 4
  %data = getelementptr inbounds %struct.tcs_cmd, ptr %c, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %data14 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %data14, align 4
  %wait = getelementptr inbounds %struct.tcs_cmd, ptr %c, i32 0, i32 2
  %17 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15 = icmp ne i32 %18, 0
  %wait16 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call3, i32 0, i32 7
  %frombool = zext i1 %tobool15 to i8
  %19 = ptrtoint ptr %wait16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %wait16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_rpmh_send_msg(ptr noundef %__data, ptr nocapture noundef readonly %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #13
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #13
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !113
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #16
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65569
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i63.not = icmp eq ptr %17, null
  br i1 %tobool.not.i63.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 48
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #13
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #13
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !101) #13
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 33
  %30 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d, align 4
  %tobool20.not = icmp eq ptr %31, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %31
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #17
  %m23 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %m23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %m, ptr %m23, align 4
  %n24 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %n24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %n, ptr %n24, align 4
  %hdr = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %h, ptr %hdr, align 4
  %35 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %c, align 4
  %addr25 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %addr25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %addr25, align 4
  %data = getelementptr inbounds %struct.tcs_cmd, ptr %c, i32 0, i32 1
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data, align 4
  %data26 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %data26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %data26, align 4
  %wait = getelementptr inbounds %struct.tcs_cmd, ptr %c, i32 0, i32 2
  %41 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool27 = icmp ne i32 %42, 0
  %wait28 = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %call13, i32 0, i32 7
  %frombool = zext i1 %tobool27 to i8
  %43 = ptrtoint ptr %wait28 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool, ptr %wait28, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %13, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpmh_tx_done(ptr noundef %__data, ptr noundef %d, i32 noundef %m, ptr noundef %r, i32 noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %d to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %m to i64
  %1 = ptrtoint ptr %r to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %e to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_rpmh_send_msg(ptr noundef %__data, ptr noundef %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %d to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %m to i64
  %conv8 = zext i32 %n to i64
  %conv12 = zext i32 %h to i64
  %1 = ptrtoint ptr %c to i32
  %conv16 = zext i32 %1 to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpmh_rsc_invalidate(ptr noundef %drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tcs_invalidate(ptr noundef %drv, i32 noundef 0)
  tail call fastcc void @tcs_invalidate(ptr noundef %drv, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcs_invalidate(ptr noundef %drv, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 %type, i32 7
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %slots, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 48
  br i1 %cmp4.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 %type, i32 3
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %num_tcs = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 %type, i32 4
  %2 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tcs, align 4
  %add14 = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add14)
  %cmp15 = icmp ult i32 %1, %add14
  br i1 %cmp15, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tcs_base.i.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %write_tcs_reg_sync.exit.for.body_crit_edge, %for.body.lr.ph
  %m.016 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %write_tcs_reg_sync.exit.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcs_base.i.i, align 4
  %mul.i.i = mul i32 %m.016, 672
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 28
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #13, !srcloc !115
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.023.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr1.i22.i = getelementptr i8, ptr %add.ptr.i21.i, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i22.i) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.i13 = icmp eq i32 %8, 0
  br i1 %cmp4.i13, label %for.body.i.write_tcs_reg_sync.exit_crit_edge, label %if.end.i

for.body.i.write_tcs_reg_sync.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_tcs_reg_sync.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #13
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  br i1 %exitcond.not.i, label %do.end7.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %11, i32 noundef 0, i32 noundef %m.016, i32 noundef 28) #18
  br label %write_tcs_reg_sync.exit

write_tcs_reg_sync.exit:                          ; preds = %do.end7.i, %for.body.i.write_tcs_reg_sync.exit_crit_edge
  %inc = add nuw i32 %m.016, 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %14 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tcs, align 4
  %add = add i32 %15, %13
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %write_tcs_reg_sync.exit.for.body_crit_edge, label %write_tcs_reg_sync.exit.for.end_crit_edge

write_tcs_reg_sync.exit.for.end_crit_edge:        ; preds = %write_tcs_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

write_tcs_reg_sync.exit.for.body_crit_edge:       ; preds = %write_tcs_reg_sync.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %write_tcs_reg_sync.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %slots, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmh_rsc_send_data(ptr noundef %drv, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch.i = icmp ult i32 %1, 3
  br i1 %switch.i, label %sw.epilog.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sw.epilog.i:                                      ; preds = %entry
  %arrayidx.i = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i.get_tcs_for_msg.exit_crit_edge

sw.epilog.i.get_tcs_for_msg.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_tcs_for_msg.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %num_tcs.i = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 2, i32 4
  %2 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %arrayidx6.i = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr %arrayidx6.i, ptr %arrayidx.i
  br label %get_tcs_for_msg.exit

get_tcs_for_msg.exit:                             ; preds = %land.lhs.true.i, %sw.epilog.i.get_tcs_for_msg.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.epilog.i.get_tcs_for_msg.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %cmp.i65 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %get_tcs_for_msg.exit.if.then_crit_edge, label %do.body3

get_tcs_for_msg.exit.if.then_crit_edge:           ; preds = %get_tcs_for_msg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %get_tcs_for_msg.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i68 = phi ptr [ %retval.0.i, %get_tcs_for_msg.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i68 to i32
  br label %cleanup33

do.body3:                                         ; preds = %get_tcs_for_msg.exit
  %lock = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %call9 = tail call fastcc i32 @claim_tcs_for_req(ptr noundef %drv, ptr noundef %retval.0.i, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %do.body3.do.end25_crit_edge, label %if.end13

do.body3.do.end25_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end25

if.end13:                                         ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %tcs_wait = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 9
  %call1471 = call i32 @prepare_to_wait_event(ptr noundef %tcs_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call1572 = call fastcc i32 @claim_tcs_for_req(ptr noundef %drv, ptr noundef %retval.0.i, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1572)
  %cmp1673 = icmp sgt i32 %call1572, -1
  br i1 %cmp1673, label %if.end13.for.end_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  br label %cleanup

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  call void @schedule() #13
  call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %tcs_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call15 = call fastcc i32 @claim_tcs_for_req(ptr noundef %drv, ptr noundef %retval.0.i, ptr noundef %msg)
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end13.for.end_crit_edge
  %call15.lcssa = phi i32 [ %call1572, %if.end13.for.end_crit_edge ], [ %call15, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %tcs_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end25

do.end25:                                         ; preds = %for.end, %do.body3.do.end25_crit_edge
  %tcs_id.0 = phi i32 [ %call9, %do.body3.do.end25_crit_edge ], [ %call15.lcssa, %for.end ]
  %offset = getelementptr inbounds %struct.tcs_group, ptr %retval.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %sub = sub i32 %tcs_id.0, %7
  %arrayidx = getelementptr %struct.tcs_group, ptr %retval.0.i, i32 0, i32 6, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg, ptr %arrayidx, align 4
  %tcs_in_use = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 7
  call void @_set_bit(i32 noundef %tcs_id.0, ptr noundef %tcs_in_use) #13
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp26 = icmp eq i32 %10, 2
  br i1 %cmp26, label %land.lhs.true, label %do.end25.if.end31_crit_edge

do.end25.if.end31_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

land.lhs.true:                                    ; preds = %do.end25
  %type = getelementptr inbounds %struct.tcs_group, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp28.not = icmp eq i32 %12, 2
  br i1 %cmp28.not, label %land.lhs.true.if.end31_crit_edge, label %if.then30

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !114
  call void @arm_heavy_mb() #13
  %tcs_base.i.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 1
  %13 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tcs_base.i.i, align 4
  %mul.i.i = mul i32 %tcs_id.0, 672
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #13, !srcloc !115
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then30
  %i.023.i = phi i32 [ 0, %if.then30 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %16, i32 %mul.i.i
  %add.ptr1.i22.i = getelementptr i8, ptr %add.ptr.i21.i, i32 28
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i22.i) #13, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.i = icmp eq i32 %17, 0
  br i1 %cmp4.i, label %for.body.i.write_tcs_reg_sync.exit_crit_edge, label %if.end.i

for.body.i.write_tcs_reg_sync.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_tcs_reg_sync.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748) #13
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  br i1 %exitcond.not.i, label %do.end7.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv, align 4
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %20, i32 noundef 0, i32 noundef %tcs_id.0, i32 noundef 28) #18
  br label %write_tcs_reg_sync.exit

write_tcs_reg_sync.exit:                          ; preds = %do.end7.i, %for.body.i.write_tcs_reg_sync.exit_crit_edge
  %21 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcs_base.i.i, align 4
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !116
  %24 = call i32 @llvm.bswap.i32(i32 %23) #13
  %shl.i = shl nuw i32 1, %tcs_id.0
  %or.i = or i32 %24, %shl.i
  %25 = call i32 @llvm.bswap.i32(i32 %or.i) #13
  %26 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tcs_base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #13, !srcloc !115
  br label %if.end31

if.end31:                                         ; preds = %write_tcs_reg_sync.exit, %land.lhs.true.if.end31_crit_edge, %do.end25.if.end31_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #13
  call fastcc void @__tcs_buffer_write(ptr noundef %drv, i32 noundef %tcs_id.0, i32 noundef 0, ptr noundef %msg)
  call fastcc void @__tcs_set_trigger(ptr noundef %drv, i32 noundef %tcs_id.0, i1 noundef zeroext true)
  br label %cleanup33

cleanup33:                                        ; preds = %if.end31, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @claim_tcs_for_req(ptr noundef %drv, ptr nocapture noundef readonly %tcs, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  %curr_enabled.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_enabled.i) #13
  %0 = ptrtoint ptr %curr_enabled.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curr_enabled.i, align 4, !annotation !113
  %offset.i = getelementptr inbounds %struct.tcs_group, ptr %tcs, i32 0, i32 3
  %1 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset.i, align 4
  %tcs_in_use.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 7
  %num_tcs.i = getelementptr inbounds %struct.tcs_group, ptr %tcs, i32 0, i32 4
  %3 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tcs.i, align 4
  %add.i = add i32 %4, %2
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %tcs_in_use.i, i32 noundef %add.i, i32 noundef %2) #13
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %7 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tcs.i, align 4
  %add458.i = add i32 %8, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add458.i)
  %cmp59.i = icmp ult i32 %call.i, %add458.i
  br i1 %cmp59.i, label %for.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %tcs_base.i.i.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 1
  %num_cmds.i = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 2
  %cmds.i = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.060.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call27.i, %for.inc20.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %tcs_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcs_base.i.i.i, align 4
  %mul.i.i.i = mul i32 %i.060.i, 672
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 28
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #13, !srcloc !116
  %12 = call i32 @llvm.bswap.i32(i32 %11) #13
  %13 = ptrtoint ptr %curr_enabled.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %curr_enabled.i, align 4
  %call6.i = call i32 @_find_next_bit_be(ptr noundef nonnull %curr_enabled.i, i32 noundef 16, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call6.i)
  %cmp856.i = icmp slt i32 %call6.i, 16
  br i1 %cmp856.i, label %for.body.i.for.body9.i_crit_edge, label %for.body.i.for.inc20.i_crit_edge

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.i

for.body.i.for.body9.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc16.i.for.body9.i_crit_edge, %for.body.i.for.body9.i_crit_edge
  %j.057.i = phi i32 [ %call18.i, %for.inc16.i.for.body9.i_crit_edge ], [ %call6.i, %for.body.i.for.body9.i_crit_edge ]
  %14 = ptrtoint ptr %tcs_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcs_base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 %mul.i.i.i
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 52
  %mul.i.i51.i = mul i32 %j.057.i, 20
  %add.ptr.i.i52.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 %mul.i.i51.i
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52.i) #13, !srcloc !116
  %17 = call i32 @llvm.bswap.i32(i32 %16) #13
  %18 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1254.not.i = icmp eq i32 %19, 0
  br i1 %cmp1254.not.i, label %for.body9.i.for.inc16.i_crit_edge, label %for.body13.lr.ph.i

for.body9.i.for.inc16.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.i

for.body13.lr.ph.i:                               ; preds = %for.body9.i
  %20 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmds.i, align 4
  br label %for.body13.i

for.cond11.i:                                     ; preds = %for.body13.i
  %inc.i = add nuw i32 %k.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.cond11.i.for.inc16.i_crit_edge, label %for.cond11.i.for.body13.i_crit_edge

for.cond11.i.for.body13.i_crit_edge:              ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13.i

for.cond11.i.for.inc16.i_crit_edge:               ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.i

for.body13.i:                                     ; preds = %for.cond11.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %k.055.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc.i, %for.cond11.i.for.body13.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tcs_cmd, ptr %21, i32 %k.055.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %23)
  %cmp15.i = icmp eq i32 %17, %23
  br i1 %cmp15.i, label %check_for_req_inflight.exit, label %for.cond11.i

for.inc16.i:                                      ; preds = %for.cond11.i.for.inc16.i_crit_edge, %for.body9.i.for.inc16.i_crit_edge
  %add17.i = add i32 %j.057.i, 1
  %call18.i = call i32 @_find_next_bit_be(ptr noundef nonnull %curr_enabled.i, i32 noundef 16, i32 noundef %add17.i) #13
  %cmp8.i = icmp slt i32 %call18.i, 16
  br i1 %cmp8.i, label %for.inc16.i.for.body9.i_crit_edge, label %for.inc16.i.for.inc20.i_crit_edge

for.inc16.i.for.inc20.i_crit_edge:                ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.i

for.inc16.i.for.body9.i_crit_edge:                ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9.i

for.inc20.i:                                      ; preds = %for.inc16.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %26 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tcs.i, align 4
  %add25.i = add i32 %27, %25
  %add26.i = add i32 %i.060.i, 1
  %call27.i = call i32 @_find_next_bit_be(ptr noundef %tcs_in_use.i, i32 noundef %add25.i, i32 noundef %add26.i) #13
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %30 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tcs.i, align 4
  %add4.i = add i32 %31, %29
  %cmp.i = icmp ult i32 %call27.i, %add4.i
  br i1 %cmp.i, label %for.inc20.i.for.body.i_crit_edge, label %for.inc20.i.if.end_crit_edge

for.inc20.i.if.end_crit_edge:                     ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

check_for_req_inflight.exit:                      ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_enabled.i) #13
  br label %cleanup

if.end:                                           ; preds = %for.inc20.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_enabled.i) #13
  %32 = ptrtoint ptr %tcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tcs, align 4
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i, align 4
  %36 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_tcs.i, align 4
  %add.i6 = add i32 %37, %35
  %tcs_in_use.i7 = getelementptr inbounds %struct.rsc_drv, ptr %33, i32 0, i32 7
  %call.i8 = call i32 @_find_next_zero_bit_be(ptr noundef %tcs_in_use.i7, i32 noundef %add.i6, i32 noundef %35) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i8, i32 %add.i6)
  %cmp.not.i = icmp ult i32 %call.i8, %add.i6
  %call..i = select i1 %cmp.not.i, i32 %call.i8, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %check_for_req_inflight.exit
  %retval.0 = phi i32 [ %call..i, %if.end ], [ -16, %check_for_req_inflight.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tcs_buffer_write(ptr noundef %drv, i32 noundef %tcs_id, i32 noundef %cmd_id, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_for_compl = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %wait_for_compl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wait_for_compl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %num_cmds = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = mul i32 %tcs_id, 672
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 3
  %tcs_base.i.i.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 1
  %mul.i.i.i = mul i32 %tcs_id, 672
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %j.055 = phi i32 [ %cmd_id, %for.body.lr.ph ], [ %inc5, %for.body.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %cmd_enable.053 = phi i32 [ 0, %for.body.lr.ph ], [ %or1, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmds, align 4
  %arrayidx = getelementptr %struct.tcs_cmd, ptr %5, i32 %i.054
  %shl = shl nuw i32 1, %j.055
  %or1 = or i32 %shl, %cmd_enable.053
  %wait = getelementptr %struct.tcs_cmd, ptr %5, i32 %i.054, i32 2
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  %8 = select i1 %tobool2.not, i1 %tobool.not, i1 false
  %or4 = select i1 %8, i32 65544, i32 65800
  %9 = tail call i32 @llvm.bswap.i32(i32 %or4) #13
  %10 = ptrtoint ptr %tcs_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcs_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %mul.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 48
  %mul.i.i = mul i32 %j.055, 20
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #13, !srcloc !115
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  %15 = ptrtoint ptr %tcs_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcs_base.i.i.i, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %16, i32 %mul.i.i.i
  %add.ptr1.i.i.i37 = getelementptr i8, ptr %add.ptr.i.i.i36, i32 52
  %add.ptr.i.i39 = getelementptr i8, ptr %add.ptr1.i.i.i37, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %14) #13, !srcloc !115
  %data = getelementptr %struct.tcs_cmd, ptr %5, i32 %i.054, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  %20 = ptrtoint ptr %tcs_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tcs_base.i.i.i, align 4
  %add.ptr.i.i.i42 = getelementptr i8, ptr %21, i32 %mul.i.i.i
  %add.ptr1.i.i.i43 = getelementptr i8, ptr %add.ptr.i.i.i42, i32 56
  %add.ptr.i.i45 = getelementptr i8, ptr %add.ptr1.i.i.i43, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %19) #13, !srcloc !115
  tail call fastcc void @trace_rpmh_send_msg(ptr noundef %drv, i32 noundef %tcs_id, i32 noundef %j.055, i32 noundef %or4, ptr noundef %arrayidx)
  %inc = add nuw i32 %i.054, 1
  %inc5 = add i32 %j.055, 1
  %22 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_cmds, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mul.i.i46.pre-phi = phi i32 [ %.pre, %entry.for.end_crit_edge ], [ %mul.i.i.i, %for.body.for.end_crit_edge ]
  %cmd_enable.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or1, %for.body.for.end_crit_edge ]
  %tcs_base.i.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 1
  %24 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %25, i32 %mul.i.i46.pre-phi
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i47, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #13, !srcloc !116
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %or6 = or i32 %27, %cmd_enable.0.lcssa
  %28 = tail call i32 @llvm.bswap.i32(i32 %or6) #13
  %29 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %30, i32 %mul.i.i46.pre-phi
  %add.ptr1.i.i51 = getelementptr i8, ptr %add.ptr.i.i50, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i51, i32 %28) #13, !srcloc !115
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tcs_set_trigger(ptr nocapture noundef readonly %drv, i32 noundef %tcs_id, i1 noundef zeroext %trigger) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcs_base.i.i = getelementptr inbounds %struct.rsc_drv, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcs_base.i.i, align 4
  %mul.i.i = mul i32 %tcs_id, 672
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #13, !srcloc !116
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  %and = and i32 %3, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %5 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %6, i32 %mul.i.i
  %add.ptr1.i.i19 = getelementptr i8, ptr %add.ptr.i.i18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i19, i32 %4) #13, !srcloc !115
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %8, i32 %mul.i.i
  %add.ptr1.i22.i = getelementptr i8, ptr %add.ptr.i21.i, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i22.i) #13, !srcloc !116
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and)
  %cmp4.i = icmp eq i32 %10, %and
  br i1 %cmp4.i, label %for.body.i.write_tcs_reg_sync.exit_crit_edge, label %if.end.i

for.body.i.write_tcs_reg_sync.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_tcs_reg_sync.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #13
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  br i1 %exitcond.not.i, label %do.end7.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %13, i32 noundef %and, i32 noundef %tcs_id, i32 noundef 20) #18
  br label %write_tcs_reg_sync.exit

write_tcs_reg_sync.exit:                          ; preds = %do.end7.i, %for.body.i.write_tcs_reg_sync.exit_crit_edge
  %and1 = and i32 %3, -16842753
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %and1) #13
  %15 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %16, i32 %mul.i.i
  %add.ptr1.i.i23 = getelementptr i8, ptr %add.ptr.i.i22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i23, i32 %14) #13, !srcloc !115
  br label %for.body.i28

for.body.i28:                                     ; preds = %if.end.i31.for.body.i28_crit_edge, %write_tcs_reg_sync.exit
  %i.023.i24 = phi i32 [ 0, %write_tcs_reg_sync.exit ], [ %inc.i29, %if.end.i31.for.body.i28_crit_edge ]
  %17 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i21.i25 = getelementptr i8, ptr %18, i32 %mul.i.i
  %add.ptr1.i22.i26 = getelementptr i8, ptr %add.ptr.i21.i25, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i22.i26) #13, !srcloc !116
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %and1)
  %cmp4.i27 = icmp eq i32 %20, %and1
  br i1 %cmp4.i27, label %for.body.i28.write_tcs_reg_sync.exit34_crit_edge, label %if.end.i31

for.body.i28.write_tcs_reg_sync.exit34_crit_edge: ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_tcs_reg_sync.exit34

if.end.i31:                                       ; preds = %for.body.i28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #13
  %inc.i29 = add nuw nsw i32 %i.023.i24, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 1000000
  br i1 %exitcond.not.i30, label %do.end7.i33, label %if.end.i31.for.body.i28_crit_edge

if.end.i31.for.body.i28_crit_edge:                ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i28

do.end7.i33:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv, align 4
  %call9.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %23, i32 noundef %and1, i32 noundef %tcs_id, i32 noundef 20) #18
  br label %write_tcs_reg_sync.exit34

write_tcs_reg_sync.exit34:                        ; preds = %do.end7.i33, %for.body.i28.write_tcs_reg_sync.exit34_crit_edge
  br i1 %trigger, label %if.then, label %write_tcs_reg_sync.exit34.if.end_crit_edge

write_tcs_reg_sync.exit34.if.end_crit_edge:       ; preds = %write_tcs_reg_sync.exit34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %write_tcs_reg_sync.exit34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !114
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %25, i32 %mul.i.i
  %add.ptr1.i.i38 = getelementptr i8, ptr %add.ptr.i.i37, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i38, i32 256) #13, !srcloc !115
  br label %for.body.i43

for.body.i43:                                     ; preds = %if.end.i46.for.body.i43_crit_edge, %if.then
  %i.023.i39 = phi i32 [ 0, %if.then ], [ %inc.i44, %if.end.i46.for.body.i43_crit_edge ]
  %26 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i21.i40 = getelementptr i8, ptr %27, i32 %mul.i.i
  %add.ptr1.i22.i41 = getelementptr i8, ptr %add.ptr.i21.i40, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i22.i41) #13, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp4.i42 = icmp eq i32 %28, 256
  br i1 %cmp4.i42, label %for.body.i43.write_tcs_reg_sync.exit49_crit_edge, label %if.end.i46

for.body.i43.write_tcs_reg_sync.exit49_crit_edge: ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_tcs_reg_sync.exit49

if.end.i46:                                       ; preds = %for.body.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #13
  %inc.i44 = add nuw nsw i32 %i.023.i39, 1
  %exitcond.not.i45 = icmp eq i32 %inc.i44, 1000000
  br i1 %exitcond.not.i45, label %do.end7.i48, label %if.end.i46.for.body.i43_crit_edge

if.end.i46.for.body.i43_crit_edge:                ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i43

do.end7.i48:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv, align 4
  %call9.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, ptr noundef %31, i32 noundef 65536, i32 noundef %tcs_id, i32 noundef 20) #18
  br label %write_tcs_reg_sync.exit49

write_tcs_reg_sync.exit49:                        ; preds = %do.end7.i48, %for.body.i43.write_tcs_reg_sync.exit49_crit_edge
  %32 = ptrtoint ptr %tcs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tcs_base.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %33, i32 %mul.i.i
  %add.ptr1.i.i53 = getelementptr i8, ptr %add.ptr.i.i52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i53, i32 257) #13, !srcloc !115
  br label %if.end

if.end:                                           ; preds = %write_tcs_reg_sync.exit49, %write_tcs_reg_sync.exit34.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmh_rsc_write_ctrl_data(ptr noundef %drv, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch.i = icmp ult i32 %1, 3
  br i1 %switch.i, label %sw.epilog.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

sw.epilog.i:                                      ; preds = %entry
  %arrayidx.i = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i.get_tcs_for_msg.exit_crit_edge

sw.epilog.i.get_tcs_for_msg.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_tcs_for_msg.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %num_tcs.i = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 2, i32 4
  %2 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %arrayidx6.i = getelementptr %struct.rsc_drv, ptr %drv, i32 0, i32 6, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr %arrayidx6.i, ptr %arrayidx.i
  br label %get_tcs_for_msg.exit

get_tcs_for_msg.exit:                             ; preds = %land.lhs.true.i, %sw.epilog.i.get_tcs_for_msg.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %sw.epilog.i.get_tcs_for_msg.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %cmp.i15 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %get_tcs_for_msg.exit.if.then_crit_edge, label %if.end

get_tcs_for_msg.exit.if.then_crit_edge:           ; preds = %get_tcs_for_msg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %get_tcs_for_msg.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i20 = phi ptr [ %retval.0.i, %get_tcs_for_msg.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end:                                           ; preds = %get_tcs_for_msg.exit
  %slots.i = getelementptr inbounds %struct.tcs_group, ptr %retval.0.i, i32 0, i32 7
  %num_cmds.i = getelementptr inbounds %struct.tcs_request, ptr %msg, i32 0, i32 2
  %num_tcs.i16 = getelementptr inbounds %struct.tcs_group, ptr %retval.0.i, i32 0, i32 4
  %ncpt.i = getelementptr inbounds %struct.tcs_group, ptr %retval.0.i, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %i.0.i = phi i32 [ 0, %if.end ], [ %add.i, %if.end.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_cmds.i, align 4
  %call.i.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %slots.i, i32 noundef 48, i32 noundef %i.0.i, i32 noundef %6, i32 noundef 0, i32 noundef 0) #13
  %7 = ptrtoint ptr %num_tcs.i16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_tcs.i16, align 4
  %9 = ptrtoint ptr %ncpt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ncpt.i, align 4
  %mul.i = mul i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %mul.i)
  %cmp.not.i = icmp slt i32 %call.i.i, %mul.i
  br i1 %cmp.not.i, label %if.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %add.i = add i32 %10, %i.0.i
  %11 = ptrtoint ptr %num_cmds.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cmds.i, align 4
  %add3.i = add i32 %call.i.i, -1
  %sub.i = add i32 %add3.i, %12
  %cmp4.not.i = icmp ult i32 %sub.i, %add.i
  br i1 %cmp4.not.i, label %if.else11.i.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.else11.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__bitmap_set(ptr noundef %slots.i, i32 noundef %call.i.i, i32 noundef %12) #13
  %13 = ptrtoint ptr %ncpt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ncpt.i, align 4
  %call.i.i.frozen = freeze i32 %call.i.i
  %.frozen = freeze i32 %14
  %div.i = sdiv i32 %call.i.i.frozen, %.frozen
  %offset9.i = getelementptr inbounds %struct.tcs_group, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %offset9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset9.i, align 4
  %add10.i = add i32 %16, %div.i
  %17 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %call.i.i.frozen, %17
  tail call fastcc void @__tcs_buffer_write(ptr noundef %drv, i32 noundef %add10.i, i32 noundef %rem.i.decomposed, ptr noundef %msg)
  br label %cleanup

cleanup:                                          ; preds = %if.else11.i.i, %do.body.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.else11.i.i ], [ -12, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpmh_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpmh_tx_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %m = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %err = getelementptr inbounds %struct.trace_event_raw_rpmh_tx_done, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rpmh_send_msg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %m = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m, align 4
  %n = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  %hdr = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdr, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %wait = getelementptr inbounds %struct.trace_event_raw_rpmh_send_msg, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %wait to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wait, align 4, !range !118
  %16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %16) #13
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpmh_send_msg(ptr noundef %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr noundef %c) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_send_msg, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rpmh_send_msg, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !119

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !120
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_send_msg, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %d, i32 noundef %m, i32 noundef %n, i32 noundef %h, ptr noundef %c) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !121
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !121
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_send_msg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpmh_send_msg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_rpmh_send_msg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 72, ptr noundef nonnull @.str.20) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %38 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_rsc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %tcs_cfg.i = alloca [4 x %struct.tcs_type_config], align 4
  %offset.i = alloca i32, align 4
  %drv_id = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %drv_id) #13
  %2 = call ptr @memset(ptr %drv_id, i32 0, i32 10)
  %call = tail call i32 @cmd_db_ready() #13
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 0, label %if.end3
    i32 -517, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call) #18
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #13
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %id = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef %id, i32 noundef 1, i32 noundef 0) #13
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef null) #13
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %call.i, align 4
  %tobool15.not = icmp eq ptr %call13, null
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then16:                                        ; preds = %if.end12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.dev_name.exit_crit_edge

if.then16.dev_name.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then16.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.then16.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %call.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %dev_name.exit, %if.end12.if.end20_crit_edge
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %drv_id, i32 noundef 10, ptr noundef nonnull @.str.29, i32 noundef %12)
  %call24 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull %drv_id) #13
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tcs_cfg.i) #13
  %14 = call ptr @memset(ptr %tcs_cfg.i, i32 0, i32 32)
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #13
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %offset.i, align 4, !annotation !113
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.35, ptr noundef nonnull %offset.i, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i120 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i120, label %if.end.i122, label %rpmh_probe_tcs_config.exit

if.end.i122:                                      ; preds = %if.end28
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call24, i32 %19
  %tcs_base.i = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %tcs_base.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %tcs_base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %call24, i32 12
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #13, !srcloc !116
  %22 = call i32 @llvm.bswap.i32(i32 %21) #13
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %mul.i = mul i32 %24, 6
  %shl.i = shl i32 63, %mul.i
  %and.i = and i32 %shl.i, %22
  %shr.i = lshr i32 %and.i, %mul.i
  %shr6.i = lshr i32 %22, 27
  %call.i.i121 = call i32 @of_property_count_elems_of_size(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i121)
  %cmp.not.i = icmp eq i32 %call.i.i121, 8
  br i1 %cmp.not.i, label %for.body.preheader.i, label %if.end.i122.rpmh_probe_tcs_config.exit.thread_crit_edge

if.end.i122.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

for.body.preheader.i:                             ; preds = %if.end.i122
  %call12.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull %tcs_cfg.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %for.body.preheader.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.body.preheader.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

for.cond.i:                                       ; preds = %if.end27.i
  %arrayidx.1.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 1
  %call12.1.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 2, ptr noundef %arrayidx.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %tobool13.not.1.i = icmp eq i32 %call12.1.i, 0
  br i1 %tobool13.not.1.i, label %if.end15.1.i, label %for.cond.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.cond.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end15.1.i:                                     ; preds = %for.cond.i
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp18.1.i = icmp ugt i32 %26, 3
  br i1 %cmp18.1.i, label %if.end15.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end20.1.i

if.end15.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end20.1.i:                                     ; preds = %if.end15.1.i
  %n23.1.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 1, i32 1
  %call24.1.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 3, ptr noundef %n23.1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1.i)
  %tobool25.not.1.i = icmp eq i32 %call24.1.i, 0
  br i1 %tobool25.not.1.i, label %if.end27.1.i, label %if.end20.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge

if.end20.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end27.1.i:                                     ; preds = %if.end20.1.i
  %27 = ptrtoint ptr %n23.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n23.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp30.1.i = icmp ugt i32 %28, 3
  br i1 %cmp30.1.i, label %if.end27.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %for.cond.1.i

if.end27.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end27.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

for.cond.1.i:                                     ; preds = %if.end27.1.i
  %arrayidx.2.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 2
  %call12.2.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 4, ptr noundef %arrayidx.2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %tobool13.not.2.i = icmp eq i32 %call12.2.i, 0
  br i1 %tobool13.not.2.i, label %if.end15.2.i, label %for.cond.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.cond.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end15.2.i:                                     ; preds = %for.cond.1.i
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp18.2.i = icmp ugt i32 %30, 3
  br i1 %cmp18.2.i, label %if.end15.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end20.2.i

if.end15.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end20.2.i:                                     ; preds = %if.end15.2.i
  %n23.2.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 2, i32 1
  %call24.2.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 5, ptr noundef %n23.2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2.i)
  %tobool25.not.2.i = icmp eq i32 %call24.2.i, 0
  br i1 %tobool25.not.2.i, label %if.end27.2.i, label %if.end20.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge

if.end20.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end27.2.i:                                     ; preds = %if.end20.2.i
  %31 = ptrtoint ptr %n23.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n23.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp30.2.i = icmp ugt i32 %32, 3
  br i1 %cmp30.2.i, label %if.end27.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %for.cond.2.i

if.end27.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end27.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

for.cond.2.i:                                     ; preds = %if.end27.2.i
  %arrayidx.3.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 3
  %call12.3.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 6, ptr noundef %arrayidx.3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3.i)
  %tobool13.not.3.i = icmp eq i32 %call12.3.i, 0
  br i1 %tobool13.not.3.i, label %if.end15.3.i, label %for.cond.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.cond.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end15.3.i:                                     ; preds = %for.cond.2.i
  %33 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp18.3.i = icmp ugt i32 %34, 3
  br i1 %cmp18.3.i, label %if.end15.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end20.3.i

if.end15.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end15.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end20.3.i:                                     ; preds = %if.end15.3.i
  %n23.3.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 3, i32 1
  %call24.3.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 7, ptr noundef %n23.3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.3.i)
  %tobool25.not.3.i = icmp eq i32 %call24.3.i, 0
  br i1 %tobool25.not.3.i, label %if.end27.3.i, label %if.end20.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge

if.end20.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end27.3.i:                                     ; preds = %if.end20.3.i
  %35 = ptrtoint ptr %n23.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n23.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp30.3.i = icmp ugt i32 %36, 3
  br i1 %cmp30.3.i, label %if.end27.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %for.cond.3.i

if.end27.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end27.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

for.cond.3.i:                                     ; preds = %if.end27.3.i
  %37 = ptrtoint ptr %tcs_cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tcs_cfg.i, align 4
  %arrayidx39.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %38
  %39 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx39.i, align 4
  %tobool41.not.i = icmp eq ptr %40, null
  br i1 %tobool41.not.i, label %if.end43.i, label %for.cond.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.cond.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end15.i:                                       ; preds = %for.body.preheader.i
  %41 = ptrtoint ptr %tcs_cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tcs_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp18.i = icmp ugt i32 %42, 3
  br i1 %cmp18.i, label %if.end15.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end20.i

if.end15.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end20.i:                                       ; preds = %if.end15.i
  %n23.i = getelementptr inbounds [4 x %struct.tcs_type_config], ptr %tcs_cfg.i, i32 0, i32 0, i32 1
  %call24.i = call i32 @of_property_read_u32_index(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef %n23.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end20.i.rpmh_probe_tcs_config.exit.thread_crit_edge

if.end20.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end27.i:                                       ; preds = %if.end20.i
  %43 = ptrtoint ptr %n23.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp30.i = icmp ugt i32 %44, 3
  br i1 %cmp30.i, label %if.end27.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %for.cond.i

if.end27.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end43.i:                                       ; preds = %for.cond.3.i
  %45 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %arrayidx39.i, align 4
  %type47.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %38, i32 1
  %46 = ptrtoint ptr %type47.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %38, ptr %type47.i, align 4
  %47 = ptrtoint ptr %n23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n23.i, align 4
  %num_tcs.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %38, i32 4
  %49 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %num_tcs.i, align 4
  %ncpt50.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %38, i32 5
  %50 = ptrtoint ptr %ncpt50.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr6.i, ptr %ncpt50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool52.not.i = icmp eq i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp54.i = icmp eq i32 %38, 3
  %or.cond133.i = select i1 %tobool52.not.i, i1 true, i1 %cmp54.i
  br i1 %or.cond133.i, label %if.end43.i.for.inc72.i_crit_edge, label %if.end56.i

if.end43.i.for.inc72.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc72.i

if.end56.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %shr.i)
  %cmp59.i = icmp ugt i32 %48, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %48)
  %cmp63.i = icmp ugt i32 %48, 31
  %or.cond.i = or i1 %cmp59.i, %cmp63.i
  br i1 %or.cond.i, label %if.end56.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end65.i

if.end56.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end65.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  %notmask.i = shl nsw i32 -1, %48
  %sub.i = xor i32 %notmask.i, -1
  %mask.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %38, i32 2
  %51 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i, ptr %mask.i, align 4
  %offset69.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %38, i32 3
  %52 = ptrtoint ptr %offset69.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %offset69.i, align 4
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %if.end65.i, %if.end43.i.for.inc72.i_crit_edge
  %st.1.i = phi i32 [ %48, %if.end65.i ], [ 0, %if.end43.i.for.inc72.i_crit_edge ]
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx39.1.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %54
  %55 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx39.1.i, align 4
  %tobool41.not.1.i = icmp eq ptr %56, null
  br i1 %tobool41.not.1.i, label %if.end43.1.i, label %for.inc72.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.inc72.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end43.1.i:                                     ; preds = %for.inc72.i
  %57 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %arrayidx39.1.i, align 4
  %type47.1.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %54, i32 1
  %58 = ptrtoint ptr %type47.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %54, ptr %type47.1.i, align 4
  %59 = ptrtoint ptr %n23.1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n23.1.i, align 4
  %num_tcs.1.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %54, i32 4
  %61 = ptrtoint ptr %num_tcs.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %num_tcs.1.i, align 4
  %ncpt50.1.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %54, i32 5
  %62 = ptrtoint ptr %ncpt50.1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr6.i, ptr %ncpt50.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool52.not.1.i = icmp eq i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp54.1.i = icmp eq i32 %54, 3
  %or.cond133.1.i = select i1 %tobool52.not.1.i, i1 true, i1 %cmp54.1.i
  br i1 %or.cond133.1.i, label %if.end43.1.i.for.inc72.1.i_crit_edge, label %if.end56.1.i

if.end43.1.i.for.inc72.1.i_crit_edge:             ; preds = %if.end43.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc72.1.i

if.end56.1.i:                                     ; preds = %if.end43.1.i
  %add58.1.i = add i32 %60, %st.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.1.i, i32 %shr.i)
  %cmp59.1.i = icmp ugt i32 %add58.1.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add58.1.i)
  %cmp63.1.i = icmp ugt i32 %add58.1.i, 31
  %or.cond.1.i = or i1 %cmp59.1.i, %cmp63.1.i
  br i1 %or.cond.1.i, label %if.end56.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end65.1.i

if.end56.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end56.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end65.1.i:                                     ; preds = %if.end56.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %notmask.1.i = shl nsw i32 -1, %60
  %sub.1.i = xor i32 %notmask.1.i, -1
  %shl68.1.i = shl i32 %sub.1.i, %st.1.i
  %mask.1.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %54, i32 2
  %63 = ptrtoint ptr %mask.1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl68.1.i, ptr %mask.1.i, align 4
  %offset69.1.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %54, i32 3
  %64 = ptrtoint ptr %offset69.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %st.1.i, ptr %offset69.1.i, align 4
  br label %for.inc72.1.i

for.inc72.1.i:                                    ; preds = %if.end65.1.i, %if.end43.1.i.for.inc72.1.i_crit_edge
  %st.1.1.i = phi i32 [ %add58.1.i, %if.end65.1.i ], [ %st.1.i, %if.end43.1.i.for.inc72.1.i_crit_edge ]
  %65 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx39.2.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %66
  %67 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx39.2.i, align 4
  %tobool41.not.2.i = icmp eq ptr %68, null
  br i1 %tobool41.not.2.i, label %if.end43.2.i, label %for.inc72.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.inc72.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.inc72.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end43.2.i:                                     ; preds = %for.inc72.1.i
  %69 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %arrayidx39.2.i, align 4
  %type47.2.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %66, i32 1
  %70 = ptrtoint ptr %type47.2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %66, ptr %type47.2.i, align 4
  %71 = ptrtoint ptr %n23.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n23.2.i, align 4
  %num_tcs.2.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %66, i32 4
  %73 = ptrtoint ptr %num_tcs.2.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_tcs.2.i, align 4
  %ncpt50.2.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %66, i32 5
  %74 = ptrtoint ptr %ncpt50.2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr6.i, ptr %ncpt50.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool52.not.2.i = icmp eq i32 %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp54.2.i = icmp eq i32 %66, 3
  %or.cond133.2.i = select i1 %tobool52.not.2.i, i1 true, i1 %cmp54.2.i
  br i1 %or.cond133.2.i, label %if.end43.2.i.for.inc72.2.i_crit_edge, label %if.end56.2.i

if.end43.2.i.for.inc72.2.i_crit_edge:             ; preds = %if.end43.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc72.2.i

if.end56.2.i:                                     ; preds = %if.end43.2.i
  %add58.2.i = add i32 %72, %st.1.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.2.i, i32 %shr.i)
  %cmp59.2.i = icmp ugt i32 %add58.2.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add58.2.i)
  %cmp63.2.i = icmp ugt i32 %add58.2.i, 31
  %or.cond.2.i = or i1 %cmp59.2.i, %cmp63.2.i
  br i1 %or.cond.2.i, label %if.end56.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end65.2.i

if.end56.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end56.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end65.2.i:                                     ; preds = %if.end56.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %notmask.2.i = shl nsw i32 -1, %72
  %sub.2.i = xor i32 %notmask.2.i, -1
  %shl68.2.i = shl i32 %sub.2.i, %st.1.1.i
  %mask.2.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %66, i32 2
  %75 = ptrtoint ptr %mask.2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shl68.2.i, ptr %mask.2.i, align 4
  %offset69.2.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %66, i32 3
  %76 = ptrtoint ptr %offset69.2.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %st.1.1.i, ptr %offset69.2.i, align 4
  br label %for.inc72.2.i

for.inc72.2.i:                                    ; preds = %if.end65.2.i, %if.end43.2.i.for.inc72.2.i_crit_edge
  %st.1.2.i = phi i32 [ %add58.2.i, %if.end65.2.i ], [ %st.1.1.i, %if.end43.2.i.for.inc72.2.i_crit_edge ]
  %77 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx39.3.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %78
  %79 = ptrtoint ptr %arrayidx39.3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx39.3.i, align 4
  %tobool41.not.3.i = icmp eq ptr %80, null
  br i1 %tobool41.not.3.i, label %if.end43.3.i, label %for.inc72.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge

for.inc72.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %for.inc72.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end43.3.i:                                     ; preds = %for.inc72.2.i
  %81 = ptrtoint ptr %arrayidx39.3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %arrayidx39.3.i, align 4
  %type47.3.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %78, i32 1
  %82 = ptrtoint ptr %type47.3.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %78, ptr %type47.3.i, align 4
  %num_tcs.3.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %78, i32 4
  %83 = ptrtoint ptr %num_tcs.3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %36, ptr %num_tcs.3.i, align 4
  %ncpt50.3.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %78, i32 5
  %84 = ptrtoint ptr %ncpt50.3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %shr6.i, ptr %ncpt50.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool52.not.3.i = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp54.3.i = icmp eq i32 %78, 3
  %or.cond133.3.i = select i1 %tobool52.not.3.i, i1 true, i1 %cmp54.3.i
  br i1 %or.cond133.3.i, label %if.end43.3.i.rpmh_probe_tcs_config.exit.thread128_crit_edge, label %if.end56.3.i

if.end43.3.i.rpmh_probe_tcs_config.exit.thread128_crit_edge: ; preds = %if.end43.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread128

if.end56.3.i:                                     ; preds = %if.end43.3.i
  %add58.3.i = add nuw nsw i32 %st.1.2.i, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %add58.3.i, i32 %shr.i)
  %cmp59.3.i = icmp ugt i32 %add58.3.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add58.3.i)
  %cmp63.3.i = icmp ugt i32 %add58.3.i, 31
  %or.cond.3.i = or i1 %cmp59.3.i, %cmp63.3.i
  br i1 %or.cond.3.i, label %if.end56.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, label %if.end65.3.i

if.end56.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge: ; preds = %if.end56.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rpmh_probe_tcs_config.exit.thread

if.end65.3.i:                                     ; preds = %if.end56.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %notmask.3.i = shl nsw i32 -1, %36
  %sub.3.i = xor i32 %notmask.3.i, -1
  %shl68.3.i = shl i32 %sub.3.i, %st.1.2.i
  %mask.3.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %78, i32 2
  %85 = ptrtoint ptr %mask.3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %shl68.3.i, ptr %mask.3.i, align 4
  %offset69.3.i = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 %78, i32 3
  %86 = ptrtoint ptr %offset69.3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %st.1.2.i, ptr %offset69.3.i, align 4
  br label %rpmh_probe_tcs_config.exit.thread128

rpmh_probe_tcs_config.exit.thread128:             ; preds = %if.end65.3.i, %if.end43.3.i.rpmh_probe_tcs_config.exit.thread128_crit_edge
  %st.1.3.i = phi i32 [ %add58.3.i, %if.end65.3.i ], [ %st.1.2.i, %if.end43.3.i.rpmh_probe_tcs_config.exit.thread128_crit_edge ]
  %num_tcs75.i = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 3
  %87 = ptrtoint ptr %num_tcs75.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %st.1.3.i, ptr %num_tcs75.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tcs_cfg.i) #13
  %lock = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @rpmh_rsc_probe.__key, i16 noundef signext 3) #13
  %tcs_wait = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 9
  call void @__init_waitqueue_head(ptr noundef %tcs_wait, ptr noundef nonnull @.str.32, ptr noundef nonnull @rpmh_rsc_probe.__key.31) #13
  %tcs_in_use = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 7
  %88 = ptrtoint ptr %tcs_in_use to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tcs_in_use, align 4
  %89 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id, align 4
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %90) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %rpmh_probe_tcs_config.exit.thread128.cleanup_crit_edge, label %if.end45

rpmh_probe_tcs_config.exit.thread128.cleanup_crit_edge: ; preds = %rpmh_probe_tcs_config.exit.thread128
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

rpmh_probe_tcs_config.exit.thread:                ; preds = %if.end56.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.inc72.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end56.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.inc72.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end56.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.inc72.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end56.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end27.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end20.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end15.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.cond.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end27.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end20.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end15.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.cond.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end27.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end20.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end15.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.cond.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end27.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end20.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end15.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.cond.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %for.body.preheader.i.rpmh_probe_tcs_config.exit.thread_crit_edge, %if.end.i122.rpmh_probe_tcs_config.exit.thread_crit_edge
  %retval.0.i123.ph = phi i32 [ -22, %if.end27.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call24.3.i, %if.end20.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end15.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call12.3.i, %for.cond.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end27.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call24.2.i, %if.end20.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end15.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call12.2.i, %for.cond.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end27.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call24.1.i, %if.end20.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end15.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call12.1.i, %for.cond.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end27.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call24.i, %if.end20.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end15.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ %call12.i, %for.body.preheader.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end56.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %for.cond.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %for.inc72.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end56.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %for.inc72.1.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end56.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %for.inc72.2.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end56.3.i.rpmh_probe_tcs_config.exit.thread_crit_edge ], [ -22, %if.end.i122.rpmh_probe_tcs_config.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tcs_cfg.i) #13
  br label %cleanup

rpmh_probe_tcs_config.exit:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tcs_cfg.i) #13
  br label %cleanup

if.end45:                                         ; preds = %rpmh_probe_tcs_config.exit.thread128
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i, align 4
  %call.i124 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call42, ptr noundef nonnull @tcs_tx_done, ptr noundef null, i32 noundef 16388, ptr noundef %92, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool49.not = icmp eq i32 %call.i124, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %add.ptr = getelementptr i8, ptr %call24, i32 4
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  %and = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.then54, label %if.end51.if.end57_crit_edge

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %rsc_pm = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 4
  %94 = ptrtoint ptr %rsc_pm to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @rpmh_rsc_cpu_pm_callback, ptr %rsc_pm, align 4
  %call56 = call i32 @cpu_pm_register_notifier(ptr noundef %rsc_pm) #13
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end51.if.end57_crit_edge
  %mask = getelementptr %struct.rsc_drv, ptr %call.i, i32 0, i32 6, i32 2, i32 2
  %95 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mask, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %tcs_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tcs_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #13, !srcloc !115
  %client = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 10
  %cache_lock = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 10, i32 1
  call void @__raw_spin_lock_init(ptr noundef %cache_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @rpmh_rsc_probe.__key.33, i16 noundef signext 3) #13
  %100 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %client, ptr %client, align 4
  %prev.i = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %client, ptr %prev.i, align 4
  %batch_cache = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 10, i32 3
  %102 = ptrtoint ptr %batch_cache to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %batch_cache, ptr %batch_cache, align 4
  %prev.i125 = getelementptr inbounds %struct.rsc_drv, ptr %call.i, i32 0, i32 10, i32 3, i32 1
  %103 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %batch_cache, ptr %prev.i125, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %104 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call67 = call i32 @devm_of_platform_populate(ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end45.cleanup_crit_edge, %rpmh_probe_tcs_config.exit, %rpmh_probe_tcs_config.exit.thread, %rpmh_probe_tcs_config.exit.thread128.cleanup_crit_edge, %if.then26, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then26 ], [ %call67, %if.end57 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ -12, %if.end3.cleanup_crit_edge ], [ %4, %if.end8.cleanup_crit_edge ], [ %call.i.i.i, %rpmh_probe_tcs_config.exit ], [ %call42, %rpmh_probe_tcs_config.exit.thread128.cleanup_crit_edge ], [ %call.i124, %if.end45.cleanup_crit_edge ], [ %retval.0.i123.ph, %rpmh_probe_tcs_config.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %drv_id) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmd_db_ready() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs_tx_done(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  %irq_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status) #13
  %tcs_base = getelementptr inbounds %struct.rsc_drv, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tcs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcs_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq_status, align 4
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_status, i32 noundef 32, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1)
  %cmp115 = icmp ult i32 %call1, 32
  br i1 %cmp115, label %for.body.lr.ph, label %entry.for.end62_crit_edge

entry.for.end62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end62

for.body.lr.ph:                                   ; preds = %entry
  %mask.i = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 0, i32 2
  %mask.1.i = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 1, i32 2
  %mask.2.i = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 2, i32 2
  %mask.3.i = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 3, i32 2
  %num_tcs = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 2, i32 4
  %lock = getelementptr inbounds %struct.rsc_drv, ptr %p, i32 0, i32 8
  %tcs_in_use = getelementptr inbounds %struct.rsc_drv, ptr %p, i32 0, i32 7
  %tcs_wait = getelementptr inbounds %struct.rsc_drv, ptr %p, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc60.for.body_crit_edge, %for.body.lr.ph
  %i.0117 = phi i32 [ %call1, %for.body.lr.ph ], [ %call61, %for.inc60.for.body_crit_edge ]
  %err.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %err.3, %for.inc60.for.body_crit_edge ]
  %shl.i = shl nuw i32 1, %i.0117
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %6, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.get_req_from_tcs.exit_crit_edge

for.body.get_req_from_tcs.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_req_from_tcs.exit

for.inc.i:                                        ; preds = %for.body
  %7 = ptrtoint ptr %mask.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.1.i, align 4
  %and.1.i = and i32 %8, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.get_req_from_tcs.exit_crit_edge

for.inc.i.get_req_from_tcs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_req_from_tcs.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %9 = ptrtoint ptr %mask.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask.2.i, align 4
  %and.2.i = and i32 %10, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.2.i, label %for.inc.1.i.get_req_from_tcs.exit_crit_edge

for.inc.1.i.get_req_from_tcs.exit_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_req_from_tcs.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %11 = ptrtoint ptr %mask.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask.3.i, align 4
  %and.3.i = and i32 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.do.end_crit_edge, label %for.inc.2.i.get_req_from_tcs.exit_crit_edge

for.inc.2.i.get_req_from_tcs.exit_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_req_from_tcs.exit

for.inc.2.i.do.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

get_req_from_tcs.exit:                            ; preds = %for.inc.2.i.get_req_from_tcs.exit_crit_edge, %for.inc.1.i.get_req_from_tcs.exit_crit_edge, %for.inc.i.get_req_from_tcs.exit_crit_edge, %for.body.get_req_from_tcs.exit_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %for.body.get_req_from_tcs.exit_crit_edge ], [ 1, %for.inc.i.get_req_from_tcs.exit_crit_edge ], [ 2, %for.inc.1.i.get_req_from_tcs.exit_crit_edge ], [ 3, %for.inc.2.i.get_req_from_tcs.exit_crit_edge ]
  %offset.i = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 %i.010.lcssa.i, i32 3
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %i.0117, %14
  %arrayidx2.i = getelementptr %struct.rsc_drv, ptr %p, i32 0, i32 6, i32 %i.010.lcssa.i, i32 6, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %get_req_from_tcs.exit.do.end_crit_edge, label %for.cond27.preheader, !prof !112

get_req_from_tcs.exit.do.end_crit_edge:           ; preds = %get_req_from_tcs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.cond27.preheader:                             ; preds = %get_req_from_tcs.exit
  %num_cmds = getelementptr inbounds %struct.tcs_request, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp28110.not = icmp eq i32 %18, 0
  br i1 %cmp28110.not, label %for.cond27.preheader.for.end_crit_edge, label %for.body29.lr.ph

for.cond27.preheader.for.end_crit_edge:           ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body29.lr.ph:                                 ; preds = %for.cond27.preheader
  %cmds = getelementptr inbounds %struct.tcs_request, ptr %16, i32 0, i32 3
  %mul.i.i.i = mul nuw nsw i32 %i.0117, 672
  %wait_for_compl = getelementptr inbounds %struct.tcs_request, ptr %16, i32 0, i32 1
  br label %for.body29

do.end:                                           ; preds = %get_req_from_tcs.exit.do.end_crit_edge, %for.inc.2.i.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 397, i32 noundef 9, ptr noundef null) #13
  br label %skip

for.body29:                                       ; preds = %if.end43.for.body29_crit_edge, %for.body29.lr.ph
  %j.0112 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc, %if.end43.for.body29_crit_edge ]
  %err.1111 = phi i32 [ 0, %for.body29.lr.ph ], [ %err.2, %if.end43.for.body29_crit_edge ]
  %19 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmds, align 4
  %arrayidx = getelementptr %struct.tcs_cmd, ptr %20, i32 %j.0112
  %21 = ptrtoint ptr %tcs_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcs_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %mul.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 60
  %mul.i.i = mul i32 %j.0112, 20
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !116
  %24 = call i32 @llvm.bswap.i32(i32 %23) #13
  %and = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %for.body29.do.end40_crit_edge, label %lor.lhs.false

for.body29.do.end40_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40

lor.lhs.false:                                    ; preds = %for.body29
  %25 = ptrtoint ptr %wait_for_compl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wait_for_compl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %land.lhs.true

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %wait = getelementptr %struct.tcs_cmd, ptr %20, i32 %j.0112, i32 2
  %27 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool34.not = icmp ne i32 %28, 0
  %and35 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %or.cond = select i1 %tobool34.not, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %lor.lhs.false33.do.end40_crit_edge, label %lor.lhs.false33.if.end43_crit_edge

lor.lhs.false33.if.end43_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

lor.lhs.false33.do.end40_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40

land.lhs.true:                                    ; preds = %lor.lhs.false
  %and35.old = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.old)
  %tobool36.not.old = icmp eq i32 %and35.old, 0
  br i1 %tobool36.not.old, label %land.lhs.true.do.end40_crit_edge, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end40

do.end40:                                         ; preds = %land.lhs.true.do.end40_crit_edge, %lor.lhs.false33.do.end40_crit_edge, %for.body29.do.end40_crit_edge
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %data = getelementptr %struct.tcs_cmd, ptr %20, i32 %j.0112, i32 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.18, ptr noundef %30, i32 noundef %32, i32 noundef %34) #18
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %land.lhs.true.if.end43_crit_edge, %lor.lhs.false33.if.end43_crit_edge
  %err.2 = phi i32 [ %err.1111, %land.lhs.true.if.end43_crit_edge ], [ -5, %do.end40 ], [ %err.1111, %lor.lhs.false33.if.end43_crit_edge ]
  %inc = add nuw i32 %j.0112, 1
  %35 = ptrtoint ptr %num_cmds to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_cmds, align 4
  %cmp28 = icmp ult i32 %inc, %36
  br i1 %cmp28, label %if.end43.for.body29_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end43.for.body29_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body29

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %for.cond27.preheader.for.end_crit_edge
  %err.1.lcssa = phi i32 [ 0, %for.cond27.preheader.for.end_crit_edge ], [ %err.2, %if.end43.for.end_crit_edge ]
  call fastcc void @trace_rpmh_tx_done(ptr noundef %p, i32 noundef %i.0117, ptr noundef nonnull %16, i32 noundef %err.1.lcssa)
  %37 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool45.not = icmp eq i32 %38, 0
  br i1 %tobool45.not, label %if.then46, label %for.end.skip_crit_edge

for.end.skip_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @__tcs_set_trigger(ptr noundef %p, i32 noundef %i.0117, i1 noundef zeroext false)
  br label %skip

skip:                                             ; preds = %if.then46, %for.end.skip_crit_edge, %do.end
  %tobool.not108 = phi i1 [ false, %for.end.skip_crit_edge ], [ false, %if.then46 ], [ true, %do.end ]
  %retval.0.i106 = phi ptr [ %16, %for.end.skip_crit_edge ], [ %16, %if.then46 ], [ null, %do.end ]
  %err.3 = phi i32 [ %err.1.lcssa, %for.end.skip_crit_edge ], [ %err.1.lcssa, %if.then46 ], [ %err.0116, %do.end ]
  %39 = ptrtoint ptr %tcs_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tcs_base, align 4
  %mul.i.i100 = mul i32 %i.0117, 672
  %add.ptr.i.i101 = getelementptr i8, ptr %40, i32 28
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i101, i32 %mul.i.i100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #13, !srcloc !115
  %41 = call i32 @llvm.bswap.i32(i32 %shl.i)
  %42 = ptrtoint ptr %tcs_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tcs_base, align 4
  %add.ptr49 = getelementptr i8, ptr %43, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %41) #13, !srcloc !115
  call void @_raw_spin_lock(ptr noundef %lock) #13
  call void @_clear_bit(i32 noundef %i.0117, ptr noundef %tcs_in_use) #13
  %44 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool53.not = icmp eq i32 %45, 0
  br i1 %tobool53.not, label %if.then54, label %skip.if.end55_crit_edge

skip.if.end55_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %tcs_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tcs_base, align 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #13, !srcloc !116
  %49 = call i32 @llvm.bswap.i32(i32 %48) #13
  %neg.i = xor i32 %shl.i, -1
  %and.i103 = and i32 %49, %neg.i
  %50 = call i32 @llvm.bswap.i32(i32 %and.i103) #13
  %51 = ptrtoint ptr %tcs_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tcs_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #13, !srcloc !115
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %skip.if.end55_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @__wake_up(ptr noundef %tcs_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br i1 %tobool.not108, label %if.end55.for.inc60_crit_edge, label %if.then58

if.end55.for.inc60_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  call void @rpmh_tx_done(ptr noundef nonnull %retval.0.i106, i32 noundef %err.3) #13
  br label %for.inc60

for.inc60:                                        ; preds = %if.then58, %if.end55.for.inc60_crit_edge
  %add = add i32 %i.0117, 1
  %call61 = call i32 @_find_next_bit_be(ptr noundef nonnull %irq_status, i32 noundef 32, i32 noundef %add) #13
  %cmp = icmp ult i32 %call61, 32
  br i1 %cmp, label %for.inc60.for.body_crit_edge, label %for.inc60.for.end62_crit_edge

for.inc60.for.end62_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end62

for.inc60.for.body_crit_edge:                     ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end62:                                        ; preds = %for.inc60.for.end62_crit_edge, %entry.for.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status) #13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmh_rsc_cpu_pm_callback(ptr noundef %nfb, i32 noundef %action, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge39
  ]

entry.sw.bb3_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cpus_in_pm1 = getelementptr i8, ptr %nfb, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cpus_in_pm1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %cpus_in_pm1, i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cpus_in_pm1, ptr %cpus_in_pm1, i32 1, ptr elementtype(i32) %cpus_in_pm1) #13, !srcloc !125
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %2)
  %cmp = icmp ult i32 %asmresult.i.i.i.i, %2
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge39
  %cpus_in_pm4 = getelementptr i8, ptr %nfb, i32 12
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cpus_in_pm4, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %cpus_in_pm4, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cpus_in_pm4, ptr %cpus_in_pm4, i32 1, ptr elementtype(i32) %cpus_in_pm4) #13, !srcloc !127
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %lock = getelementptr i8, ptr %nfb, i32 196
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %sw.epilog
  %num_tcs.i = getelementptr i8, ptr %nfb, i32 120
  %4 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %spec.select.i.v = select i1 %tobool.not.i, i32 60, i32 104
  %spec.select.i = getelementptr i8, ptr %nfb, i32 %spec.select.i.v
  %offset.i = getelementptr inbounds %struct.tcs_group, ptr %spec.select.i, i32 0, i32 3
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i, align 4
  %num_tcs4.i = getelementptr inbounds %struct.tcs_group, ptr %spec.select.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_tcs4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tcs4.i, align 4
  %add.i = add i32 %9, %7
  %tcs_in_use.i = getelementptr i8, ptr %nfb, i32 192
  %call.i35 = tail call i32 @_find_next_bit_be(ptr noundef %tcs_in_use.i, i32 noundef %add.i, i32 noundef %7) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i35, i32 %add.i)
  %cmp.i = icmp ult i32 %call.i35, %add.i
  br i1 %cmp.i, label %if.then6.if.then15_crit_edge, label %lor.lhs.false

if.then6.if.then15_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.then6
  %client = getelementptr i8, ptr %nfb, i32 292
  %call8 = tail call i32 @rpmh_flush(ptr noundef %client) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %cleanup

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.then6.if.then15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %10)
  %cmp17 = icmp ult i32 %asmresult.i.i.i.i, %10
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.else19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cpus_in_pm1, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %cpus_in_pm1, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cpus_in_pm1, ptr %cpus_in_pm1, i32 1, ptr elementtype(i32) %cpus_in_pm1) #13, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.then15.cleanup_crit_edge, %if.end11, %sw.epilog.cleanup_crit_edge, %sw.bb3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb3 ], [ 1, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.cleanup_crit_edge ], [ 32770, %if.else19 ], [ 1, %if.end11 ], [ 1, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpmh_tx_done(ptr noundef %d, i32 noundef %m, ptr noundef %r, i32 noundef %e) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_tx_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_rpmh_tx_done, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !119

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !111

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !128
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_tx_done, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %d, i32 noundef %m, ptr noundef %r, i32 noundef %e) #13
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !129
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !129
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !111

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_rpmh_tx_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_rpmh_tx_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_rpmh_tx_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 40, ptr noundef nonnull @.str.20) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %38 = tail call i32 @llvm.read_register.i32(metadata !101) #13
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmh_tx_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !64, !66, !68, !69, !70, !71, !72, !73, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !95, !96, !97, !98, !99}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__tracepoint_rpmh_tx_done, !1, !"__tracepoint_rpmh_tx_done", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/./trace-rpmh.h", i32 15, i32 1}
!2 = !{ptr @__tracepoint_ptr_rpmh_tx_done, !1, !"__tracepoint_ptr_rpmh_tx_done", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_rpmh_tx_done, !1, !"__SCK__tp_func_rpmh_tx_done", i1 false, i1 false}
!4 = !{ptr @__tracepoint_rpmh_send_msg, !5, !"__tracepoint_rpmh_send_msg", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/./trace-rpmh.h", i32 42, i32 1}
!6 = !{ptr @__tracepoint_ptr_rpmh_send_msg, !5, !"__tracepoint_ptr_rpmh_send_msg", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_rpmh_send_msg, !5, !"__SCK__tp_func_rpmh_send_msg", i1 false, i1 false}
!8 = !{ptr @event_class_rpmh_tx_done, !1, !"event_class_rpmh_tx_done", i1 false, i1 false}
!9 = !{ptr @event_rpmh_tx_done, !1, !"event_rpmh_tx_done", i1 false, i1 false}
!10 = !{ptr @__event_rpmh_tx_done, !1, !"__event_rpmh_tx_done", i1 false, i1 false}
!11 = !{ptr @event_class_rpmh_send_msg, !5, !"event_class_rpmh_send_msg", i1 false, i1 false}
!12 = !{ptr @event_rpmh_send_msg, !5, !"event_rpmh_send_msg", i1 false, i1 false}
!13 = !{ptr @__event_rpmh_send_msg, !5, !"__event_rpmh_send_msg", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_rpmh_tx_done, !1, !"__bpf_trace_tp_map_rpmh_tx_done", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_rpmh_send_msg, !5, !"__bpf_trace_tp_map_rpmh_send_msg", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_qcom_rpmh__263_1010_rpmh_driver_init3, !17, !"__initcall__kmod_qcom_rpmh__263_1010_rpmh_driver_init3", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 1010, i32 1}
!18 = !{ptr @__UNIQUE_ID_description264, !19, !"__UNIQUE_ID_description264", i1 false, i1 false}
!19 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 1012, i32 1}
!20 = !{ptr @__UNIQUE_ID_file265, !21, !"__UNIQUE_ID_file265", i1 false, i1 false}
!21 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 1013, i32 1}
!22 = !{ptr @__UNIQUE_ID_license266, !21, !"__UNIQUE_ID_license266", i1 false, i1 false}
!23 = !{ptr @__tpstrtab_rpmh_tx_done, !1, !"__tpstrtab_rpmh_tx_done", i1 false, i1 false}
!24 = !{ptr @__tpstrtab_rpmh_send_msg, !5, !"__tpstrtab_rpmh_send_msg", i1 false, i1 false}
!25 = !{ptr @str__rpmh__trace_system_name, !26, !"str__rpmh__trace_system_name", i1 false, i1 false}
!26 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!27 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @trace_event_fields_rpmh_tx_done, !1, !"trace_event_fields_rpmh_tx_done", i1 false, i1 false}
!37 = !{ptr @trace_event_type_funcs_rpmh_tx_done, !1, !"trace_event_type_funcs_rpmh_tx_done", i1 false, i1 false}
!38 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @print_fmt_rpmh_tx_done, !1, !"print_fmt_rpmh_tx_done", i1 false, i1 false}
!40 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @trace_event_fields_rpmh_send_msg, !5, !"trace_event_fields_rpmh_send_msg", i1 false, i1 false}
!45 = !{ptr @trace_event_type_funcs_rpmh_send_msg, !5, !"trace_event_type_funcs_rpmh_send_msg", i1 false, i1 false}
!46 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @print_fmt_rpmh_send_msg, !5, !"print_fmt_rpmh_send_msg", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 193, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @write_tcs_reg_sync._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @write_tcs_reg_sync._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!56 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!58 = !{ptr @.str.20, !5, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 1000, i32 13}
!64 = !{ptr @rpmh_driver, !65, !"rpmh_driver", i1 false, i1 false}
!65 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 997, i32 31}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 925, i32 4}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rpmh_rsc_probe._entry, !67, !"_entry", i1 false, i1 false}
!72 = !{ptr @rpmh_rsc_probe._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 934, i32 33}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 938, i32 34}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 942, i32 39}
!79 = !{ptr @rpmh_rsc_probe.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 951, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @rpmh_rsc_probe.__key.31, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 952, i32 2}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rpmh_rsc_probe.__key.33, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 982, i32 2}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 849, i32 33}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 863, i32 38}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 409, i32 5}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tcs_tx_done._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @tcs_tx_done._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!98 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!99 = !{ptr @rpmh_drv_match, !100, !"rpmh_drv_match", i1 false, i1 false}
!100 = !{!"../drivers/soc/qcom/rpmh-rsc.c", i32 991, i32 34}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"auto-init"}
!114 = !{i64 2155440830}
!115 = !{i64 4237502}
!116 = !{i64 4237920}
!117 = !{i64 2155441568}
!118 = !{i8 0, i8 2}
!119 = !{i64 2148723260, i64 2148723265, i64 2148723278, i64 2148723322, i64 2148723356, i64 2148723377}
!120 = !{i64 2153268930}
!121 = !{i64 2153269145}
!122 = !{i64 2149299346}
!123 = !{i64 2149300382}
!124 = !{i64 2148233098}
!125 = !{i64 2148148407, i64 2148148439, i64 2148148468, i64 2148148502, i64 2148148533, i64 2148148556}
!126 = !{i64 2148233327}
!127 = !{i64 2148150152, i64 2148150178, i64 2148150207, i64 2148150241, i64 2148150272, i64 2148150295}
!128 = !{i64 2153252295}
!129 = !{i64 2153252502}
