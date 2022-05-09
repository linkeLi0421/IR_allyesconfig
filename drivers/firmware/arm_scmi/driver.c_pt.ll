; ModuleID = '/llk/IR_all_yes/drivers/firmware/arm_scmi/driver.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_scmi_xfer_begin = type { %struct.trace_entry, i32, i8, i8, i16, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_scmi_xfer_end = type { %struct.trace_entry, i32, i8, i8, i16, i32, [0 x i8] }
%struct.trace_event_raw_scmi_rx_done = type { %struct.trace_entry, i32, i8, i8, i16, i8, [0 x i8] }
%struct.scmi_chan_info = type { ptr, ptr, ptr }
%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.scmi_xfers_info = type { ptr, %struct.spinlock, i32, %struct.hlist_head, [512 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_instance = type { ptr, ptr, ptr, %struct.refcount_struct, ptr, %struct.scmi_protocol_handle }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scmi_device_id = type { i8, ptr }
%struct.scmi_requested_dev = type { ptr, %struct.list_head }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.scmi_info = type { ptr, ptr, %struct.scmi_revision_info, %struct.scmi_handle, %struct.scmi_xfers_info, %struct.scmi_xfers_info, %struct.idr, %struct.idr, %struct.idr, %struct.mutex, ptr, %struct.idr, ptr, %struct.list_head, i32 }
%struct.scmi_revision_info = type { i16, i16, i8, i8, i32, [16 x i8], [16 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.scmi_protocol_devres = type { ptr, i8 }

@__tpstrtab_scmi_xfer_begin = internal constant [16 x i8] c"scmi_xfer_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scmi_xfer_begin = dso_local global %struct.static_call_key { ptr @__traceiter_scmi_xfer_begin }, align 4
@__tracepoint_scmi_xfer_begin = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scmi_xfer_begin, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scmi_xfer_begin, ptr null, ptr @__traceiter_scmi_xfer_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scmi_xfer_begin = internal constant ptr @__tracepoint_scmi_xfer_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_scmi_xfer_end = internal constant [14 x i8] c"scmi_xfer_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scmi_xfer_end = dso_local global %struct.static_call_key { ptr @__traceiter_scmi_xfer_end }, align 4
@__tracepoint_scmi_xfer_end = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scmi_xfer_end, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scmi_xfer_end, ptr null, ptr @__traceiter_scmi_xfer_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scmi_xfer_end = internal constant ptr @__tracepoint_scmi_xfer_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_scmi_rx_done = internal constant [13 x i8] c"scmi_rx_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scmi_rx_done = dso_local global %struct.static_call_key { ptr @__traceiter_scmi_rx_done }, align 4
@__tracepoint_scmi_rx_done = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_scmi_rx_done, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_scmi_rx_done, ptr null, ptr @__traceiter_scmi_rx_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scmi_rx_done = internal constant ptr @__tracepoint_scmi_rx_done, section "__tracepoints_ptrs", align 4
@str__scmi__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scmi\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_scmi_xfer_begin = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.0 { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.0 { %struct.anon { ptr @.str.24, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.0 { %struct.anon { ptr @.str.26, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_scmi_xfer_begin = internal global %struct.trace_event_class { ptr @str__scmi__trace_system_name, ptr @trace_event_raw_event_scmi_xfer_begin, ptr @perf_trace_scmi_xfer_begin, ptr @trace_event_reg, ptr @trace_event_fields_scmi_xfer_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scmi_xfer_begin, i64 24), ptr getelementptr (i8, ptr @event_class_scmi_xfer_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scmi_xfer_begin = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scmi_xfer_begin, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scmi_xfer_begin = internal global { [127 x i8], [33 x i8] } { [127 x i8] c"\22transfer_id=%d msg_id=%u protocol_id=%u seq=%u poll=%u\22, REC->transfer_id, REC->msg_id, REC->protocol_id, REC->seq, REC->poll\00", [33 x i8] zeroinitializer }, align 32
@event_scmi_xfer_begin = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scmi_xfer_begin, %union.anon.1 { ptr @__tracepoint_scmi_xfer_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scmi_xfer_begin }, ptr @print_fmt_scmi_xfer_begin, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scmi_xfer_begin = internal global ptr @event_scmi_xfer_begin, section "_ftrace_events", align 4
@trace_event_fields_scmi_xfer_end = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.0 { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.0 { %struct.anon { ptr @.str.24, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.0 { %struct.anon { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_scmi_xfer_end = internal global %struct.trace_event_class { ptr @str__scmi__trace_system_name, ptr @trace_event_raw_event_scmi_xfer_end, ptr @perf_trace_scmi_xfer_end, ptr @trace_event_reg, ptr @trace_event_fields_scmi_xfer_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scmi_xfer_end, i64 24), ptr getelementptr (i8, ptr @event_class_scmi_xfer_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scmi_xfer_end = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scmi_xfer_end, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scmi_xfer_end = internal global { [131 x i8], [61 x i8] } { [131 x i8] c"\22transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%d\22, REC->transfer_id, REC->msg_id, REC->protocol_id, REC->seq, REC->status\00", [61 x i8] zeroinitializer }, align 32
@event_scmi_xfer_end = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scmi_xfer_end, %union.anon.1 { ptr @__tracepoint_scmi_xfer_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scmi_xfer_end }, ptr @print_fmt_scmi_xfer_end, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scmi_xfer_end = internal global ptr @event_scmi_xfer_end, section "_ftrace_events", align 4
@trace_event_fields_scmi_rx_done = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.0 { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.22, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.0 { %struct.anon { ptr @.str.24, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.0 { %struct.anon { ptr @.str.30, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_scmi_rx_done = internal global %struct.trace_event_class { ptr @str__scmi__trace_system_name, ptr @trace_event_raw_event_scmi_rx_done, ptr @perf_trace_scmi_rx_done, ptr @trace_event_reg, ptr @trace_event_fields_scmi_rx_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scmi_rx_done, i64 24), ptr getelementptr (i8, ptr @event_class_scmi_rx_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scmi_rx_done = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_scmi_rx_done, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_scmi_rx_done = internal global { [135 x i8], [57 x i8] } { [135 x i8] c"\22transfer_id=%d msg_id=%u protocol_id=%u seq=%u msg_type=%u\22, REC->transfer_id, REC->msg_id, REC->protocol_id, REC->seq, REC->msg_type\00", [57 x i8] zeroinitializer }, align 32
@event_scmi_rx_done = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scmi_rx_done, %union.anon.1 { ptr @__tracepoint_scmi_rx_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scmi_rx_done }, ptr @print_fmt_scmi_rx_done, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_scmi_rx_done = internal global ptr @event_scmi_rx_done, section "_ftrace_events", align 4
@__bpf_trace_tp_map_scmi_xfer_begin = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_scmi_xfer_begin, ptr @__bpf_trace_scmi_xfer_begin, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_scmi_xfer_end = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_scmi_xfer_end, ptr @__bpf_trace_scmi_xfer_end, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_scmi_rx_done = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_scmi_rx_done, ptr @__bpf_trace_scmi_rx_done, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@scmi_rx_callback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/arm_scmi/driver.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"received unknown msg_type:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@scmi_protocol_release.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scmi_module\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scmi_protocol_release\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"De-Initialized protocol: 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@scmi_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scmi_list_mutex, i64 52), ptr getelementptr (i8, ptr @scmi_list_mutex, i64 52) }, ptr @scmi_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.63, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@scmi_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @scmi_list, ptr @scmi_list }, [24 x i8] zeroinitializer }, align 32
@scmi_protocol_device_request.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.5, ptr @.str, ptr @.str.6, i8 1, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"scmi_protocol_device_request\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Requesting SCMI device (%s) for protocol %x\0A\00", [51 x i8] zeroinitializer }, align 32
@scmi_requested_devices_mtx = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scmi_requested_devices_mtx, i64 52), ptr getelementptr (i8, ptr @scmi_requested_devices_mtx, i64 52) }, ptr @scmi_requested_devices_mtx, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@scmi_requested_devices = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.66, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@scmi_protocol_device_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Ignoring duplicate request [%d] %s\0A\00", [58 x i8] zeroinitializer }, align 32
@scmi_protocol_device_request._entry_ptr = internal global ptr @scmi_protocol_device_request._entry, section ".printk_index", align 4
@scmi_protocol_device_request._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to save SCMI device - ret:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@scmi_protocol_device_request._entry_ptr.10 = internal global ptr @scmi_protocol_device_request._entry.8, section ".printk_index", align 4
@scmi_protocol_device_request._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str, i32 1736, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed. SCMI protocol %d not active.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_protocol_device_request._entry_ptr.15 = internal global ptr @scmi_protocol_device_request._entry.11, section ".printk_index", align 4
@scmi_protocol_device_unrequest.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.16, ptr @.str, ptr @.str.17, i8 1, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scmi_protocol_device_unrequest\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unrequesting SCMI device (%s) for protocol %x\0A\00", [49 x i8] zeroinitializer }, align 32
@__initcall__kmod_scmi_module__369_2093_scmi_driver_init4 = internal global ptr @scmi_driver_init, section ".initcall4.init", align 4
@scmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scmi_probe, ptr @scmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.77, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @versions_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_scmi_driver_exit = internal global ptr @scmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias370 = internal constant [36 x i8] c"scmi_module.alias=platform:arm-scmi\00", section ".modinfo", align 1
@__UNIQUE_ID_author371 = internal constant [55 x i8] c"scmi_module.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description372 = internal constant [49 x i8] c"scmi_module.description=ARM SCMI protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [55 x i8] c"scmi_module.file=drivers/firmware/arm_scmi/scmi-module\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [27 x i8] c"scmi_module.license=GPL v2\00", section ".modinfo", align 1
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transfer_id\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msg_id\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"protocol_id\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"seq\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"poll\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"transfer_id=%d msg_id=%u protocol_id=%u seq=%u poll=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msg_type\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"transfer_id=%d msg_id=%u protocol_id=%u seq=%u msg_type=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@scmi_handle_notification._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 625, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get free message slot (%ld)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_handle_notification\00", [39 x i8] zeroinitializer }, align 32
@scmi_handle_notification._entry_ptr = internal global ptr @scmi_handle_notification._entry, section ".printk_index", align 4
@transfer_last_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@scmi_xfer_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 374, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get monotonic token %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"scmi_xfer_get\00", [18 x i8] zeroinitializer }, align 32
@scmi_xfer_get._entry_ptr = internal global ptr @scmi_xfer_get._entry, section ".printk_index", align 4
@scmi_xfer_token_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/scmi.h\00", [36 x i8] zeroinitializer }, align 32
@trace_scmi_rx_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@scmi_xfer_command_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 564, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Message for %d type %d is not expected!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scmi_xfer_command_acquire\00", [38 x i8] zeroinitializer }, align 32
@scmi_xfer_command_acquire._entry_ptr = internal global ptr @scmi_xfer_command_acquire._entry, section ".printk_index", align 4
@scmi_xfer_command_acquire._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str, i32 589, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid message type:%d for %d - HDR:0x%X  state:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@scmi_xfer_command_acquire._entry_ptr.43 = internal global ptr @scmi_xfer_command_acquire._entry.41, section ".printk_index", align 4
@scmi_msg_response_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 472, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Delayed Response for %d not expected! Buggy F/W ?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_msg_response_validate\00", [37 x i8] zeroinitializer }, align 32
@scmi_msg_response_validate._entry_ptr = internal global ptr @scmi_msg_response_validate._entry, section ".printk_index", align 4
@scmi_msg_response_validate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str, i32 488, ptr @.str.48, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Received valid OoO Delayed Response for %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scmi_msg_response_validate._entry_ptr.49 = internal global ptr @scmi_msg_response_validate._entry.46, section ".printk_index", align 4
@xfer_ops = internal constant { %struct.scmi_xfer_ops, [40 x i8] } { %struct.scmi_xfer_ops { ptr @version_get, ptr @xfer_get_init, ptr @reset_rx_to_maxsz, ptr @do_xfer, ptr @do_xfer_with_response, ptr @xfer_put }, [40 x i8] zeroinitializer }, align 32
@scmi_alloc_init_protocol_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 1088, ptr @.str.48, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Protocol:%X - Events Registration Failed - err:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"scmi_alloc_init_protocol_instance\00", [62 x i8] zeroinitializer }, align 32
@scmi_alloc_init_protocol_instance._entry_ptr = internal global ptr @scmi_alloc_init_protocol_instance._entry, section ".printk_index", align 4
@scmi_alloc_init_protocol_instance.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.51, ptr @.str, ptr @.str.52, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Initialized protocol: 0x%X\0A\00", [36 x i8] zeroinitializer }, align 32
@xfer_get_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 918, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get free message slot(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xfer_get_init\00", [18 x i8] zeroinitializer }, align 32
@xfer_get_init._entry_ptr = internal global ptr @xfer_get_init._entry, section ".printk_index", align 4
@do_xfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@do_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 765, ptr @.str.48, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Polling mode is not supported by transport.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_xfer\00", [24 x i8] zeroinitializer }, align 32
@do_xfer._entry_ptr = internal global ptr @do_xfer._entry, section ".printk_index", align 4
@do_xfer.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.56, ptr @.str, ptr @.str.57, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to send message %d\0A\00", [37 x i8] zeroinitializer }, align 32
@do_xfer._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.56, ptr @.str, i32 826, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timed out in resp(caller: %pS)\0A\00", [32 x i8] zeroinitializer }, align 32
@do_xfer._entry_ptr.60 = internal global ptr @do_xfer._entry.58, section ".printk_index", align 4
@trace_scmi_xfer_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@scmi_linux_errmap = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 -95, i32 -22, i32 -13, i32 -2, i32 -34, i32 -16, i32 -70, i32 -5, i32 -121, i32 -71], [52 x i8] zeroinitializer }, align 32
@trace_scmi_xfer_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scmi_list_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scmi_list_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scmi_requested_devices_mtx.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_requested_devices_mtx\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"scmi_requested_devices.xa_lock\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@scmi_get_protocol_device.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.67, ptr @.str, ptr @.str.68, i8 1, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"scmi_get_protocol_device\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Creating SCMI device (%s) for protocol %x\0A\00", [53 x i8] zeroinitializer }, align 32
@scmi_get_protocol_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str, i32 1558, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to create %d protocol device\0A\00", [59 x i8] zeroinitializer }, align 32
@scmi_get_protocol_device._entry_ptr = internal global ptr @scmi_get_protocol_device._entry, section ".printk_index", align 4
@scmi_get_protocol_device._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.67, ptr @.str, i32 1563, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to setup transport\0A\00", [37 x i8] zeroinitializer }, align 32
@scmi_get_protocol_device._entry_ptr.72 = internal global ptr @scmi_get_protocol_device._entry.70, section ".printk_index", align 4
@scmi_chan_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 1505, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to allocate SCMI idr slot err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scmi_chan_setup\00", [16 x i8] zeroinitializer }, align 32
@scmi_chan_setup._entry_ptr = internal global ptr @scmi_chan_setup._entry, section ".printk_index", align 4
@scmi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scmi_mailbox_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scmi-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scmi_smc_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scmi-virtio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scmi_virtio_desc }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@__scmi_transports_setup._entry = internal constant %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str, i32 2048, ptr null, ptr null }, align 1
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SCMI transport %s FAILED initialization!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__scmi_transports_setup\00", [40 x i8] zeroinitializer }, align 32
@__scmi_transports_setup._entry_ptr = internal global ptr @__scmi_transports_setup._entry, section ".printk_index", align 4
@scmi_mailbox_desc = external dso_local constant %struct.scmi_desc, align 4
@scmi_smc_desc = external dso_local constant %struct.scmi_desc, align 4
@scmi_virtio_desc = external dso_local constant %struct.scmi_desc, align 4
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arm-scmi\00", [23 x i8] zeroinitializer }, align 32
@versions_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @versions_group, ptr null], [24 x i8] zeroinitializer }, align 32
@scmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&info->protocols_mtx\00", [43 x i8] zeroinitializer }, align 32
@scmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str, i32 1854, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SCMI Notifications NOT available.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scmi_probe\00", [21 x i8] zeroinitializer }, align 32
@scmi_probe._entry_ptr = internal global ptr @scmi_probe._entry, section ".printk_index", align 4
@scmi_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str, i32 1863, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to communicate with SCMI\0A\00", [63 x i8] zeroinitializer }, align 32
@scmi_probe._entry_ptr.83 = internal global ptr @scmi_probe._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@scmi_probe._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str, i32 1878, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Out of range protocol %d\0A\00", [38 x i8] zeroinitializer }, align 32
@scmi_probe._entry_ptr.87 = internal global ptr @scmi_probe._entry.85, section ".printk_index", align 4
@scmi_probe._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.80, ptr @.str, i32 1882, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SCMI protocol %d not implemented\0A\00", [62 x i8] zeroinitializer }, align 32
@scmi_probe._entry_ptr.90 = internal global ptr @scmi_probe._entry.88, section ".printk_index", align 4
@scmi_probe._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.80, ptr @.str, i32 1894, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SCMI protocol %d already activated. Skip\0A\00", [54 x i8] zeroinitializer }, align 32
@scmi_probe._entry_ptr.93 = internal global ptr @scmi_probe._entry.91, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_devm_release_protocol\00", [37 x i8] zeroinitializer }, align 32
@__scmi_xfer_info_init._entry = internal constant %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str, i32 1388, ptr @.str.13, ptr @.str.14 }, align 1
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid maximum messages %d, not in range [1 - %lu]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__scmi_xfer_info_init\00", [42 x i8] zeroinitializer }, align 32
@__scmi_xfer_info_init._entry_ptr = internal global ptr @__scmi_xfer_info_init._entry, section ".printk_index", align 4
@__scmi_xfer_info_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&xfer->lock\00", [20 x i8] zeroinitializer }, align 32
@__scmi_xfer_info_init.__key.99 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&info->xfer_lock\00", [47 x i8] zeroinitializer }, align 32
@versions_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @versions_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@versions_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_protocol_version, ptr @dev_attr_vendor_id, ptr @dev_attr_sub_vendor_id, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @firmware_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protocol_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protocol_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sub_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sub_vendor_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"protocol_version\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u.%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor_id\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sub_vendor_id\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.109 = private unnamed_addr constant [29 x i8] c"str__scmi__trace_system_name\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 36, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [35 x i8] c"trace_event_fields_scmi_xfer_begin\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_scmi_xfer_begin\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"print_fmt_scmi_xfer_begin\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"event_scmi_xfer_begin\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [33 x i8] c"trace_event_fields_scmi_xfer_end\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_scmi_xfer_end\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"print_fmt_scmi_xfer_end\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"event_scmi_xfer_end\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [32 x i8] c"trace_event_fields_scmi_rx_done\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_scmi_rx_done\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"print_fmt_scmi_rx_done\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"event_scmi_rx_done\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 707, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1190, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"scmi_list_mutex\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"scmi_list\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 54, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1644, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [27 x i8] c"scmi_requested_devices_mtx\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [23 x i8] c"scmi_requested_devices\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1663, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1701, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1734, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1765, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"scmi_driver\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2008, i32 31 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 10, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 36, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 624, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"transfer_last_id\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 58, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 373, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [31 x i8] c"../include/trace/events/scmi.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 62, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 108, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 562, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 587, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 470, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 486, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant [9 x i8] c"xfer_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 995, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1086, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1092, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 918, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 764, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 797, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 825, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [18 x i8] c"scmi_linux_errmap\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 159, i32 18 }
@___asan_gen_.368 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 87, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 56, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 61, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 60, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1553, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1557, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1563, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1505, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant [14 x i8] c"scmi_of_match\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1993, i32 34 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2047, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 2010, i32 14 }
@___asan_gen_.424 = private unnamed_addr constant [16 x i8] c"versions_groups\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1826, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1854, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1863, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1874, i32 35 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1878, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1881, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1893, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 378, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1263, i32 9 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1386, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1418, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1424, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [15 x i8] c"versions_group\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1990, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant [15 x i8] c"versions_attrs\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1983, i32 26 }
@___asan_gen_.496 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [26 x i8] c"dev_attr_protocol_version\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [19 x i8] c"dev_attr_vendor_id\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [23 x i8] c"dev_attr_sub_vendor_id\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1963, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1961, i32 22 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1954, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1951, i32 22 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1972, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1970, i32 22 }
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.527 = private constant [38 x i8] c"../drivers/firmware/arm_scmi/driver.c\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 1981, i32 8 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__UNIQUE_ID_alias370, ptr @__UNIQUE_ID_author371, ptr @__UNIQUE_ID_description372, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_license374, ptr @__bpf_trace_tp_map_scmi_rx_done, ptr @__bpf_trace_tp_map_scmi_xfer_begin, ptr @__bpf_trace_tp_map_scmi_xfer_end, ptr @__event_scmi_rx_done, ptr @__event_scmi_xfer_begin, ptr @__event_scmi_xfer_end, ptr @__exitcall_scmi_driver_exit, ptr @__initcall__kmod_scmi_module__369_2093_scmi_driver_init4, ptr @__scmi_transports_setup._entry, ptr @__scmi_transports_setup._entry_ptr, ptr @__scmi_xfer_info_init._entry, ptr @__scmi_xfer_info_init._entry_ptr, ptr @__tracepoint_ptr_scmi_rx_done, ptr @__tracepoint_ptr_scmi_xfer_begin, ptr @__tracepoint_ptr_scmi_xfer_end, ptr @__tracepoint_scmi_rx_done, ptr @__tracepoint_scmi_xfer_begin, ptr @__tracepoint_scmi_xfer_end, ptr @do_xfer._entry, ptr @do_xfer._entry.58, ptr @do_xfer._entry_ptr, ptr @do_xfer._entry_ptr.60, ptr @event_class_scmi_rx_done, ptr @event_class_scmi_xfer_begin, ptr @event_class_scmi_xfer_end, ptr @event_scmi_rx_done, ptr @event_scmi_xfer_begin, ptr @event_scmi_xfer_end, ptr @scmi_alloc_init_protocol_instance._entry, ptr @scmi_alloc_init_protocol_instance._entry_ptr, ptr @scmi_chan_setup._entry, ptr @scmi_chan_setup._entry_ptr, ptr @scmi_driver_exit, ptr @scmi_get_protocol_device._entry, ptr @scmi_get_protocol_device._entry.70, ptr @scmi_get_protocol_device._entry_ptr, ptr @scmi_get_protocol_device._entry_ptr.72, ptr @scmi_handle_notification._entry, ptr @scmi_handle_notification._entry_ptr, ptr @scmi_msg_response_validate._entry, ptr @scmi_msg_response_validate._entry.46, ptr @scmi_msg_response_validate._entry_ptr, ptr @scmi_msg_response_validate._entry_ptr.49, ptr @scmi_probe._entry, ptr @scmi_probe._entry.81, ptr @scmi_probe._entry.85, ptr @scmi_probe._entry.88, ptr @scmi_probe._entry.91, ptr @scmi_probe._entry_ptr, ptr @scmi_probe._entry_ptr.83, ptr @scmi_probe._entry_ptr.87, ptr @scmi_probe._entry_ptr.90, ptr @scmi_probe._entry_ptr.93, ptr @scmi_protocol_device_request._entry, ptr @scmi_protocol_device_request._entry.11, ptr @scmi_protocol_device_request._entry.8, ptr @scmi_protocol_device_request._entry_ptr, ptr @scmi_protocol_device_request._entry_ptr.10, ptr @scmi_protocol_device_request._entry_ptr.15, ptr @scmi_transports_exit, ptr @scmi_xfer_command_acquire._entry, ptr @scmi_xfer_command_acquire._entry.41, ptr @scmi_xfer_command_acquire._entry_ptr, ptr @scmi_xfer_command_acquire._entry_ptr.43, ptr @scmi_xfer_get._entry, ptr @scmi_xfer_get._entry_ptr, ptr @xfer_get_init._entry, ptr @xfer_get_init._entry_ptr, ptr @str__scmi__trace_system_name, ptr @trace_event_fields_scmi_xfer_begin, ptr @trace_event_type_funcs_scmi_xfer_begin, ptr @print_fmt_scmi_xfer_begin, ptr @trace_event_fields_scmi_xfer_end, ptr @trace_event_type_funcs_scmi_xfer_end, ptr @print_fmt_scmi_xfer_end, ptr @trace_event_fields_scmi_rx_done, ptr @trace_event_type_funcs_scmi_rx_done, ptr @print_fmt_scmi_rx_done, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @scmi_list_mutex, ptr @scmi_list, ptr @.str.5, ptr @.str.6, ptr @scmi_requested_devices_mtx, ptr @scmi_requested_devices, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @scmi_driver, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @transfer_last_id, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @xfer_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @scmi_linux_errmap, ptr @init_completion.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @scmi_of_match, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @versions_groups, ptr @scmi_probe.__key, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @xa_init_flags.__key, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @versions_group, ptr @versions_attrs, ptr @dev_attr_firmware_version, ptr @dev_attr_protocol_version, ptr @dev_attr_vendor_id, ptr @dev_attr_sub_vendor_id, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__scmi__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scmi_xfer_begin to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scmi_xfer_begin to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scmi_xfer_begin to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scmi_xfer_begin to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scmi_xfer_end to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scmi_xfer_end to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scmi_xfer_end to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scmi_xfer_end to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_scmi_rx_done to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_scmi_rx_done to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_scmi_rx_done to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_scmi_rx_done to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_requested_devices_mtx to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_requested_devices to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_device_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_device_request._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_protocol_device_request._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_handle_notification._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transfer_last_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_xfer_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_xfer_command_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_xfer_command_acquire._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_msg_response_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_msg_response_validate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfer_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_alloc_init_protocol_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfer_get_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_xfer._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_linux_errmap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_get_protocol_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_get_protocol_device._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_chan_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versions_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_probe._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_probe._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_probe._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versions_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versions_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protocol_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sub_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scmi_xfer_begin(ptr nocapture readnone %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void %2(ptr noundef %4, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scmi_xfer_end(ptr nocapture readnone %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void %2(ptr noundef %4, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scmi_rx_done(ptr nocapture readnone %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_rx_done, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
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
  tail call void %2(ptr noundef %4, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) #18
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scmi_xfer_begin(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  %frombool = zext i1 %poll to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !289

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !290

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #18
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %transfer_id7 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %transfer_id7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %transfer_id, ptr %transfer_id7, align 4
  %msg_id8 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %msg_id, ptr %msg_id8, align 4
  %protocol_id9 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %protocol_id9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %protocol_id, ptr %protocol_id9, align 1
  %seq10 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %seq10 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %seq, ptr %seq10, align 2
  %poll12 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %poll12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %poll12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scmi_xfer_begin(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  %frombool = zext i1 %poll to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !291
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #18
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !279) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %transfer_id18 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call14, i32 0, i32 1
  %27 = ptrtoint ptr %transfer_id18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %transfer_id, ptr %transfer_id18, align 4
  %msg_id19 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call14, i32 0, i32 2
  %28 = ptrtoint ptr %msg_id19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %msg_id, ptr %msg_id19, align 4
  %protocol_id20 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call14, i32 0, i32 3
  %29 = ptrtoint ptr %protocol_id20 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %protocol_id, ptr %protocol_id20, align 1
  %seq21 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call14, i32 0, i32 4
  %30 = ptrtoint ptr %seq21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %seq, ptr %seq21, align 2
  %poll23 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %call14, i32 0, i32 5
  %31 = ptrtoint ptr %poll23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %poll23, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scmi_xfer_end(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !289

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !290

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %transfer_id6 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %transfer_id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %transfer_id, ptr %transfer_id6, align 4
  %msg_id7 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %msg_id, ptr %msg_id7, align 4
  %protocol_id8 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %protocol_id8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %protocol_id, ptr %protocol_id8, align 1
  %seq9 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %seq9 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %seq, ptr %seq9, align 2
  %status10 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %status, ptr %status10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scmi_xfer_end(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !291
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #18
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !279) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %transfer_id17 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %transfer_id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %transfer_id, ptr %transfer_id17, align 4
  %msg_id18 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %msg_id18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %msg_id, ptr %msg_id18, align 4
  %protocol_id19 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %protocol_id19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %protocol_id, ptr %protocol_id19, align 1
  %seq20 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %seq20 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %seq, ptr %seq20, align 2
  %status21 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %status, ptr %status21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scmi_rx_done(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #18
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !289

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !290

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #18
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %transfer_id6 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %transfer_id6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %transfer_id, ptr %transfer_id6, align 4
  %msg_id7 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %msg_id, ptr %msg_id7, align 4
  %protocol_id8 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %protocol_id8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %protocol_id, ptr %protocol_id8, align 1
  %seq9 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %seq9 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %seq, ptr %seq9, align 2
  %msg_type10 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %msg_type10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %msg_type, ptr %msg_type10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_scmi_rx_done(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #18
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #18
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !291
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #18
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !279) #18
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %transfer_id17 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %transfer_id17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %transfer_id, ptr %transfer_id17, align 4
  %msg_id18 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %msg_id18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %msg_id, ptr %msg_id18, align 4
  %protocol_id19 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %protocol_id19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %protocol_id, ptr %protocol_id19, align 1
  %seq20 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %seq20 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %seq, ptr %seq20, align 2
  %msg_type21 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %msg_type21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %msg_type, ptr %msg_type21, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scmi_xfer_begin(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %transfer_id to i64
  %conv4 = zext i8 %msg_id to i64
  %conv8 = zext i8 %protocol_id to i64
  %conv12 = zext i16 %seq to i64
  %conv17 = zext i1 %poll to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv17) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scmi_xfer_end(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %transfer_id to i64
  %conv4 = zext i8 %msg_id to i64
  %conv8 = zext i8 %protocol_id to i64
  %conv12 = zext i16 %seq to i64
  %conv16 = zext i32 %status to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_scmi_rx_done(ptr noundef %__data, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i32 %transfer_id to i64
  %conv4 = zext i8 %msg_id to i64
  %conv8 = zext i8 %protocol_id to i64
  %conv12 = zext i16 %seq to i64
  %conv16 = zext i8 %msg_type to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_notification_instance_data_set(ptr nocapture noundef writeonly %handle, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_priv = getelementptr i8, ptr %handle, i32 4564
  %0 = ptrtoint ptr %notify_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %notify_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !292
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scmi_notification_instance_data_get(ptr nocapture noundef readonly %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !293
  %notify_priv = getelementptr i8, ptr %handle, i32 4564
  %0 = ptrtoint ptr %notify_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_priv, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_rx_callback(ptr noundef %cinfo, i32 noundef %msg_hdr, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %msg_hdr, 8
  %conv = and i32 %and, 3
  %0 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %land.end [
    i32 3, label %sw.bb
    i32 0, label %entry.sw.bb14_crit_edge
    i32 2, label %entry.sw.bb14_crit_edge99
  ]

entry.sw.bb14_crit_edge99:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb14

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cinfo, align 4
  %handle.i = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 1
  %3 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handle.i, align 4
  %rx_minfo.i = getelementptr i8, ptr %4, i32 2124
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #18
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %handle.i, align 4
  %call3.i = tail call fastcc ptr @scmi_xfer_get(ptr noundef %6, ptr noundef %rx_minfo.i, i1 noundef zeroext false) #18
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  %7 = ptrtoint ptr %call3.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %7) #21
  %desc.i.i = getelementptr i8, ptr %4, i32 -48
  %8 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.scmi_desc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %clear_channel.i.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %clear_channel.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clear_channel.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %do.end.i.sw.epilog_crit_edge, label %do.end.i.cleanup.sink.split.i_crit_edge

do.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %hdr.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 1
  %conv.i.i = trunc i32 %msg_hdr to i8
  %14 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i.i, ptr %hdr.i, align 4
  %and20.i.i = lshr i32 %msg_hdr, 10
  %conv22.i.i = trunc i32 %and20.i.i to i8
  %protocol_id.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %protocol_id.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv22.i.i, ptr %protocol_id.i.i, align 1
  %16 = trunc i32 %and to i8
  %conv36.i.i = and i8 %16, 3
  %type.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv36.i.i, ptr %type.i.i, align 2
  %tobool.not.i = icmp eq ptr %priv, null
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %priv7.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 12
  %18 = ptrtoint ptr %priv7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %priv, ptr %priv7.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %desc.i = getelementptr i8, ptr %4, i32 -48
  %19 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.scmi_desc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %fetch_notification.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %fetch_notification.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fetch_notification.i, align 4
  %max_msg_size.i = getelementptr inbounds %struct.scmi_desc, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %max_msg_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_msg_size.i, align 4
  tail call void %24(ptr noundef %cinfo, i32 noundef %26, ptr noundef %call3.i) #18
  %27 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle.i, align 4
  %29 = ptrtoint ptr %protocol_id.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol_id.i.i, align 1
  %31 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hdr.i, align 4
  %rx.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 3
  %33 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx.i, align 4
  %len.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %call14.i = tail call i32 @scmi_notify(ptr noundef %28, i8 noundef zeroext %30, i8 noundef zeroext %32, ptr noundef %34, i32 noundef %36, i64 noundef %call.i.i) #18
  %37 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call3.i, align 4
  %39 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hdr.i, align 4
  %41 = ptrtoint ptr %protocol_id.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %protocol_id.i.i, align 1
  %seq.i = getelementptr inbounds %struct.scmi_xfer, ptr %call3.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %seq.i, align 4
  tail call fastcc void @trace_scmi_rx_done(i32 noundef %38, i8 noundef zeroext %40, i8 noundef zeroext %42, i16 noundef zeroext %44, i8 noundef zeroext 3) #18
  tail call fastcc void @__scmi_xfer_put(ptr noundef %rx_minfo.i, ptr noundef %call3.i) #18
  %45 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc.i, align 4
  %ops.i50.i = getelementptr inbounds %struct.scmi_desc, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ops.i50.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i50.i, align 4
  %clear_channel.i51.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %clear_channel.i51.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clear_channel.i51.i, align 4
  %tobool.not.i52.i = icmp eq ptr %50, null
  br i1 %tobool.not.i52.i, label %if.end8.i.sw.epilog_crit_edge, label %if.end8.i.cleanup.sink.split.i_crit_edge

if.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

cleanup.sink.split.i:                             ; preds = %if.end8.i.cleanup.sink.split.i_crit_edge, %do.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %13, %do.end.i.cleanup.sink.split.i_crit_edge ], [ %50, %if.end8.i.cleanup.sink.split.i_crit_edge ]
  tail call void %.sink.i(ptr noundef %cinfo) #18
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge99
  %handle.i61 = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 1
  %51 = ptrtoint ptr %handle.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %handle.i61, align 4
  %tx_minfo.i.i = getelementptr i8, ptr %52, i32 20
  %53 = trunc i32 %and to i8
  %conv.i.i62 = and i8 %53, 3
  %and30.i.i = lshr i32 %msg_hdr, 18
  %54 = trunc i32 %and30.i.i to i16
  %conv32.i.i = and i16 %54, 1023
  %xfer_lock.i.i = getelementptr i8, ptr %52, i32 24
  %call37.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xfer_lock.i.i) #18
  %conv.i.i.i = zext i16 %conv32.i.i to i32
  %55 = ptrtoint ptr %tx_minfo.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_minfo.i.i, align 4
  %div3.i.i.i.i = lshr i32 %conv.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %56, i32 %div3.i.i.i.i
  %57 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %conv.i.i.i, 31
  %59 = shl nuw i32 1, %and.i.i.i.i
  %60 = and i32 %58, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i.i, label %sw.bb14.do.end46.i.i_crit_edge, label %if.then.i.i.i

sw.bb14.do.end46.i.i_crit_edge:                   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end46.i.i

if.then.i.i.i:                                    ; preds = %sw.bb14
  %mul.i.i.i.i.i = mul i32 %conv.i.i.i, 1640531527
  %shr.i38.i.i.i = lshr i32 %mul.i.i.i.i.i, 23
  %arrayidx.i.i.i = getelementptr %struct.scmi_xfers_info, ptr %tx_minfo.i.i, i32 0, i32 4, i32 %shr.i38.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %62, null
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 -100
  %tobool5.not4346.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool5.not43.i.i.i = or i1 %tobool3.not.i.i.i, %tobool5.not4346.i.i.i
  br i1 %tobool5.not43.i.i.i, label %if.then.i.i.i.do.end46.i.i_crit_edge, label %if.then.i.i.i.for.body.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %for.body.i.i.i

if.then.i.i.i.do.end46.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end46.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i_crit_edge
  %xfer_.044.i.i.i = phi ptr [ %add.ptr16.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.then.i.i.i.for.body.i.i.i_crit_edge ]
  %seq.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %seq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %seq.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %conv32.i.i)
  %cmp.i.i.i = icmp eq i16 %64, %conv32.i.i
  br i1 %cmp.i.i.i, label %scmi_xfer_lookup_unlocked.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %node.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %node.i.i.i, align 4
  %tobool12.not.i.i.i = icmp eq ptr %66, null
  %add.ptr16.i.i.i = getelementptr i8, ptr %66, i32 -100
  %tobool5.not47.i.i.i = icmp eq ptr %add.ptr16.i.i.i, null
  %tobool5.not.i.i.i = or i1 %tobool12.not.i.i.i, %tobool5.not47.i.i.i
  br i1 %tobool5.not.i.i.i, label %for.inc.i.i.i.do.end46.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i.i

for.inc.i.i.i.do.end46.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end46.i.i

scmi_xfer_lookup_unlocked.exit.i.i:               ; preds = %for.body.i.i.i
  %seq.i.i.i.le = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 1, i32 3
  %cmp.i136.i.i = icmp ugt ptr %xfer_.044.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136.i.i, label %scmi_xfer_lookup_unlocked.exit.i.i.do.end46.i.i_crit_edge, label %if.end.i.i

scmi_xfer_lookup_unlocked.exit.i.i.do.end46.i.i_crit_edge: ; preds = %scmi_xfer_lookup_unlocked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end46.i.i

do.end46.i.i:                                     ; preds = %scmi_xfer_lookup_unlocked.exit.i.i.do.end46.i.i_crit_edge, %for.inc.i.i.i.do.end46.i.i_crit_edge, %if.then.i.i.i.do.end46.i.i_crit_edge, %sw.bb14.do.end46.i.i_crit_edge
  %cond27.i147.i.i = phi ptr [ %xfer_.044.i.i.i, %scmi_xfer_lookup_unlocked.exit.i.i.do.end46.i.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb14.do.end46.i.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.i.do.end46.i.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.i.i.i.do.end46.i.i_crit_edge ]
  %67 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cinfo, align 4
  %conv48.i.i = zext i8 %conv.i.i62 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.39, i32 noundef %conv.i.i.i, i32 noundef %conv48.i.i) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xfer_lock.i.i, i32 noundef %call37.i.i) #18
  br label %scmi_xfer_command_acquire.exit.i

if.end.i.i:                                       ; preds = %scmi_xfer_lookup_unlocked.exit.i.i
  %users.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #18
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #18, !srcloc !294
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !290

if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %70 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %.not.i.i.i.i.i = icmp sgt i32 %70, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !289

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #18
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xfer_lock.i.i, i32 noundef %call37.i.i) #18
  %lock.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 11
  %call59.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv.i.i62)
  %cmp.i137.i.i = icmp eq i8 %conv.i.i62, 2
  br i1 %cmp.i137.i.i, label %land.lhs.true.i.i.i, label %refcount_inc.exit.i.i.if.end.i.i.i_crit_edge

refcount_inc.exit.i.i.if.end.i.i.i_crit_edge:     ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %refcount_inc.exit.i.i
  %async_done.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 5
  %71 = ptrtoint ptr %async_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %async_done.i.i.i, align 4
  %tobool.not.i138.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i138.i.i, label %do.end.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %73 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cinfo, align 4
  %75 = ptrtoint ptr %seq.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %seq.i.i.i.le, align 4
  %conv2.i.i.i = zext i16 %76 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.44, i32 noundef %conv2.i.i.i) #21
  br label %scmi_xfer_command_acquire.exit.thread.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %refcount_inc.exit.i.i.if.end.i.i.i_crit_edge
  %state.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 10
  %77 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state.i.i.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %78, label %if.end.i.i.i.do.body66.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb16.i.i.i
    i32 2, label %if.end.i.i.i.scmi_xfer_command_acquire.exit.thread.i_crit_edge
  ]

if.end.i.i.i.scmi_xfer_command_acquire.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_xfer_command_acquire.exit.thread.i

if.end.i.i.i.do.body66.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body66.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i.i.i
  br i1 %cmp.i137.i.i, label %if.then6.i.i.i, label %sw.bb.i.i.i.do.body66.i.i_crit_edge

sw.bb.i.i.i.do.body66.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body66.i.i

if.then6.i.i.i:                                   ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %status.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %status.i.i.i, align 4
  %81 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %state.i.i.i, align 4
  %done.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 4
  tail call void @complete(ptr noundef %done.i.i.i) #18
  %82 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cinfo, align 4
  %84 = ptrtoint ptr %seq.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %seq.i.i.i.le, align 4
  %conv14.i.i.i = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.47, i32 noundef %conv14.i.i.i) #21
  br label %do.body66.i.i

sw.bb16.i.i.i:                                    ; preds = %if.end.i.i.i
  br i1 %cmp.i137.i.i, label %sw.bb16.i.i.i.do.body66.i.i_crit_edge, label %sw.bb16.i.i.i.scmi_xfer_command_acquire.exit.thread.i_crit_edge

sw.bb16.i.i.i.scmi_xfer_command_acquire.exit.thread.i_crit_edge: ; preds = %sw.bb16.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_xfer_command_acquire.exit.thread.i

sw.bb16.i.i.i.do.body66.i.i_crit_edge:            ; preds = %sw.bb16.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body66.i.i

do.body66.i.i:                                    ; preds = %sw.bb16.i.i.i.do.body66.i.i_crit_edge, %if.then6.i.i.i, %sw.bb.i.i.i.do.body66.i.i_crit_edge, %if.end.i.i.i.do.body66.i.i_crit_edge
  %busy.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !295
  tail call void @llvm.prefetch.p0(ptr %busy.i.i.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.body66.i.i
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %busy.i.i.i, ptr %busy.i.i.i, i32 0, i32 1, ptr elementtype(i32) %busy.i.i.i) #18, !srcloc !296
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %scmi_xfer_acquired.exit.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i.i.i.i

scmi_xfer_acquired.exit.i.i:                      ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !297
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i.i.i)
  %cmp.i140.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, 0
  br i1 %cmp.i140.i.i, label %cleanup.critedge.i.i, label %scmi_xfer_acquired.exit.i.i.do.body72.i.i_crit_edge, !prof !289

scmi_xfer_acquired.exit.i.i.do.body72.i.i_crit_edge: ; preds = %scmi_xfer_acquired.exit.i.i
  br label %do.body72.i.i

do.body72.i.i:                                    ; preds = %scmi_xfer_acquired.exit.i.do.body72.i.i_crit_edge, %scmi_xfer_acquired.exit.i.i.do.body72.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !298
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !299
  %call.i.i.i54.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !295
  tail call void @llvm.prefetch.p0(ptr %busy.i.i.i, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body72.i.i
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %busy.i.i.i, ptr %busy.i.i.i, i32 0, i32 1, ptr elementtype(i32) %busy.i.i.i) #18, !srcloc !296
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %87, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %scmi_xfer_acquired.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i.i.i

scmi_xfer_acquired.exit.i:                        ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %87, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !297
  %cmp.i55.i = icmp eq i32 %asmresult3.i.i.i.i.i, 0
  br i1 %cmp.i55.i, label %do.end89.i.i, label %scmi_xfer_acquired.exit.i.do.body72.i.i_crit_edge

scmi_xfer_acquired.exit.i.do.body72.i.i_crit_edge: ; preds = %scmi_xfer_acquired.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body72.i.i

do.end89.i.i:                                     ; preds = %scmi_xfer_acquired.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %type.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 1, i32 2
  %88 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv.i.i62, ptr %type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i62)
  %cmp.i141.i.i = icmp eq i8 %conv.i.i62, 0
  %spec.select.i.i.i = select i1 %cmp.i141.i.i, i32 1, i32 2
  %89 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select.i.i.i, ptr %state.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call59.i.i) #18
  br label %scmi_xfer_command_acquire.exit.i

scmi_xfer_command_acquire.exit.thread.i:          ; preds = %sw.bb16.i.i.i.scmi_xfer_command_acquire.exit.thread.i_crit_edge, %if.end.i.i.i.scmi_xfer_command_acquire.exit.thread.i_crit_edge, %do.end.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call59.i.i) #18
  %90 = ptrtoint ptr %cinfo to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cinfo, align 4
  %conv98.i.i = zext i8 %conv.i.i62 to i32
  %state.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 10
  %92 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.42, i32 noundef %conv98.i.i, i32 noundef %conv.i.i.i, i32 noundef %msg_hdr, i32 noundef %93) #21
  tail call fastcc void @__scmi_xfer_put(ptr noundef %tx_minfo.i.i, ptr noundef nonnull %xfer_.044.i.i.i) #18
  br label %if.then.i

cleanup.critedge.i.i:                             ; preds = %scmi_xfer_acquired.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %type.i142.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer_.044.i.i.i, i32 0, i32 1, i32 2
  %94 = ptrtoint ptr %type.i142.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i.i62, ptr %type.i142.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i.i62)
  %cmp.i143.i.i = icmp eq i8 %conv.i.i62, 0
  %spec.select.i144.i.i = select i1 %cmp.i143.i.i, i32 1, i32 2
  %95 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.select.i144.i.i, ptr %state.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call59.i.i) #18
  br label %scmi_xfer_command_acquire.exit.i

scmi_xfer_command_acquire.exit.i:                 ; preds = %cleanup.critedge.i.i, %do.end89.i.i, %do.end46.i.i
  %retval.0.i.i = phi ptr [ %cond27.i147.i.i, %do.end46.i.i ], [ %xfer_.044.i.i.i, %do.end89.i.i ], [ %xfer_.044.i.i.i, %cleanup.critedge.i.i ]
  %cmp.i.i63 = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i63, label %scmi_xfer_command_acquire.exit.i.if.then.i_crit_edge, label %if.end.i69

scmi_xfer_command_acquire.exit.i.if.then.i_crit_edge: ; preds = %scmi_xfer_command_acquire.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %scmi_xfer_command_acquire.exit.i.if.then.i_crit_edge, %scmi_xfer_command_acquire.exit.thread.i
  %desc.i.i64 = getelementptr i8, ptr %52, i32 -48
  %96 = ptrtoint ptr %desc.i.i64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc.i.i64, align 4
  %ops.i.i65 = getelementptr inbounds %struct.scmi_desc, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %ops.i.i65 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i.i65, align 4
  %clear_channel.i.i66 = getelementptr inbounds %struct.scmi_transport_ops, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %clear_channel.i.i66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clear_channel.i.i66, align 4
  %tobool.not.i.i67 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i67, label %if.then.i.sw.epilog_crit_edge, label %if.then.i.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %101(ptr noundef %cinfo) #18
  br label %sw.epilog

if.end.i69:                                       ; preds = %scmi_xfer_command_acquire.exit.i
  %hdr.i68 = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 1, i32 2
  %102 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %103)
  %cmp.i = icmp eq i8 %103, 2
  br i1 %cmp.i, label %if.then3.i, label %if.end.i69.if.end4.i_crit_edge

if.end.i69.if.end4.i_crit_edge:                   ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #20
  %desc.i70 = getelementptr i8, ptr %52, i32 -48
  %104 = ptrtoint ptr %desc.i70 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %desc.i70, align 4
  %max_msg_size.i71 = getelementptr inbounds %struct.scmi_desc, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %max_msg_size.i71 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %max_msg_size.i71, align 4
  %len.i72 = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %108 = ptrtoint ptr %len.i72 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %len.i72, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i69.if.end4.i_crit_edge
  %tobool.not.i73 = icmp eq ptr %priv, null
  br i1 %tobool.not.i73, label %if.end4.i.if.end7.i_crit_edge, label %if.then5.i

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  %priv6.i = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 12
  %109 = ptrtoint ptr %priv6.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %priv, ptr %priv6.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end4.i.if.end7.i_crit_edge
  %desc8.i = getelementptr i8, ptr %52, i32 -48
  %110 = ptrtoint ptr %desc8.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc8.i, align 4
  %ops.i74 = getelementptr inbounds %struct.scmi_desc, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i74, align 4
  %fetch_response.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %fetch_response.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fetch_response.i, align 4
  tail call void %115(ptr noundef %cinfo, ptr noundef %retval.0.i.i) #18
  %116 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %retval.0.i.i, align 4
  %118 = ptrtoint ptr %hdr.i68 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %hdr.i68, align 4
  %protocol_id.i = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %protocol_id.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %protocol_id.i, align 1
  %seq.i75 = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 1, i32 3
  %122 = ptrtoint ptr %seq.i75 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %seq.i75, align 4
  %124 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %type.i, align 2
  tail call fastcc void @trace_scmi_rx_done(i32 noundef %117, i8 noundef zeroext %119, i8 noundef zeroext %121, i16 noundef zeroext %123, i8 noundef zeroext %125) #18
  %126 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %127)
  %cmp17.i = icmp eq i8 %127, 2
  br i1 %cmp17.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.end7.i
  %128 = ptrtoint ptr %desc8.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %desc8.i, align 4
  %ops.i46.i = getelementptr inbounds %struct.scmi_desc, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %ops.i46.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops.i46.i, align 4
  %clear_channel.i47.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %131, i32 0, i32 9
  %132 = ptrtoint ptr %clear_channel.i47.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %clear_channel.i47.i, align 4
  %tobool.not.i48.i = icmp eq ptr %133, null
  br i1 %tobool.not.i48.i, label %if.then19.i.scmi_clear_channel.exit51.i_crit_edge, label %if.then.i49.i

if.then19.i.scmi_clear_channel.exit51.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_clear_channel.exit51.i

if.then.i49.i:                                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %133(ptr noundef %cinfo) #18
  br label %scmi_clear_channel.exit51.i

scmi_clear_channel.exit51.i:                      ; preds = %if.then.i49.i, %if.then19.i.scmi_clear_channel.exit51.i_crit_edge
  %async_done.i = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 5
  %134 = ptrtoint ptr %async_done.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %async_done.i, align 4
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  %done.i = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %scmi_clear_channel.exit51.i
  %done.sink.i = phi ptr [ %done.i, %if.else.i ], [ %135, %scmi_clear_channel.exit51.i ]
  tail call void @complete(ptr noundef %done.sink.i) #18
  %busy.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %retval.0.i.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy.i.i, i32 noundef 4) #18
  %136 = ptrtoint ptr %busy.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 0, ptr %busy.i.i, align 4
  tail call fastcc void @__scmi_xfer_put(ptr noundef %tx_minfo.i.i, ptr noundef %retval.0.i.i) #18
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b60 = load i1, ptr @scmi_rx_callback.__already_done, align 1
  br i1 %.b60, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !289

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @scmi_rx_callback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 707, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %conv) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.end20.i, %if.then.i.i, %if.then.i.sw.epilog_crit_edge, %cleanup.sink.split.i, %if.end8.i.sw.epilog_crit_edge, %do.end.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @scmi_revision_area_get(ptr nocapture noundef readonly %ph) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %version = getelementptr inbounds %struct.scmi_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %version, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_protocol_acquire(ptr noundef %handle, i8 noundef zeroext %protocol_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @scmi_get_protocol_instance(ptr noundef %handle, i8 noundef zeroext %protocol_id)
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scmi_get_protocol_instance(ptr noundef %handle, i8 noundef zeroext %protocol_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %handle, i32 -52
  %protocols_mtx = getelementptr i8, ptr %handle, i32 4408
  tail call void @mutex_lock_nested(ptr noundef %protocols_mtx, i32 noundef 0) #18
  %protocols = getelementptr i8, ptr %handle, i32 4348
  %conv = zext i8 %protocol_id to i32
  %call = tail call ptr @idr_find(ptr noundef %protocols, i32 noundef %conv) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %users = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #18, !srcloc !294
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !290

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end8_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !289

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end8_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #18
  br label %if.end8

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @scmi_protocol_get(i32 noundef %conv) #18
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else.if.end8_crit_edge, label %if.then4

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call fastcc ptr @scmi_alloc_init_protocol_instance(ptr noundef %add.ptr, ptr noundef nonnull %call2)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.else.if.end8_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end8_crit_edge
  %pi.1 = phi ptr [ %call5, %if.then4 ], [ %call, %if.else.i.i.i.if.end8_crit_edge ], [ %call, %if.end15.sink.split.i.i.i ], [ inttoptr (i32 -517 to ptr), %if.else.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %protocols_mtx) #18
  ret ptr %pi.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_protocol_release(ptr noundef %handle, i8 noundef zeroext %protocol_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %protocols_mtx = getelementptr i8, ptr %handle, i32 4408
  tail call void @mutex_lock_nested(ptr noundef %protocols_mtx, i32 noundef 0) #18
  %protocols = getelementptr i8, ptr %handle, i32 4348
  %conv = zext i8 %protocol_id to i32
  %call = tail call ptr @idr_find(ptr noundef %protocols, i32 noundef %conv) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24.critedge, !prof !290

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1173, i32 noundef 9, ptr noundef null) #18
  br label %out

if.end24.critedge:                                ; preds = %entry
  %users = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #18, !srcloc !301
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then26, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_crit_edge, label %if.then10.i.i.i, !prof !289

if.end5.i.i.i.out_crit_edge:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 3) #18
  br label %out

if.then26:                                        ; preds = %if.end24.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !302
  %gid27 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %gid27 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gid27, align 4
  %proto = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proto, align 4
  %events = getelementptr inbounds %struct.scmi_protocol, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %events, align 4
  %tobool28.not = icmp eq ptr %6, null
  br i1 %tobool28.not, label %if.then26.if.end30_crit_edge, label %if.then29

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @scmi_deregister_protocol_events(ptr noundef %handle, i8 noundef zeroext %protocol_id) #18
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then26.if.end30_crit_edge
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proto, align 4
  %instance_deinit = getelementptr inbounds %struct.scmi_protocol, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %instance_deinit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instance_deinit, align 4
  %tobool32.not = icmp eq ptr %10, null
  br i1 %tobool32.not, label %if.end30.if.end37_crit_edge, label %if.then33

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  %ph = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call, i32 0, i32 5
  %call36 = tail call i32 %10(ptr noundef %ph) #18
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30.if.end37_crit_edge
  %call40 = tail call ptr @idr_remove(ptr noundef %protocols, i32 noundef %conv) #18
  tail call void @scmi_protocol_put(i32 noundef %conv) #18
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 4
  %call42 = tail call i32 @devres_release_group(ptr noundef %12, ptr noundef %2) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocol_release.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocol_release, %if.then53)) #18
          to label %out [label %if.then53], !srcloc !303

if.then53:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_protocol_release.__UNIQUE_ID_ddebug345, ptr noundef %14, ptr noundef nonnull @.str.4, i32 noundef %conv) #18
  br label %out

out:                                              ; preds = %if.then53, %if.end37, %if.then10.i.i.i, %if.end5.i.i.i.out_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %protocols_mtx) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_deregister_protocol_events(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_put(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @scmi_setup_protocol_implemented(ptr nocapture noundef readonly %ph, ptr noundef %prot_imp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %protocols_imp = getelementptr i8, ptr %1, i32 4500
  %2 = ptrtoint ptr %protocols_imp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %prot_imp, ptr %protocols_imp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scmi_handle_get(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @scmi_list_mutex, i32 noundef 0) #18
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %p.0.in = phi ptr [ @scmi_list, %entry ], [ %p.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.i.not = icmp eq ptr %p.0, @scmi_list
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %p.0, i32 -4620
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %cmp = icmp eq ptr %2, %4
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %users.i = getelementptr i8, ptr %p.0, i32 8
  %5 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %users.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %users.i, align 4
  %handle.i = getelementptr i8, ptr %p.0, i32 -4568
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %handle.0 = phi ptr [ %handle.i, %if.then ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #18
  ret ptr %handle.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_handle_put(ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %handle, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @scmi_list_mutex, i32 noundef 0) #18
  %users = getelementptr i8, ptr %handle, i32 4576
  %0 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %do.end, label %if.then26.critedge, !prof !290

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1369, i32 noundef 9, ptr noundef null) #18
  br label %if.end28

if.then26.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %users, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26.critedge, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scmi_protocol_device_request(ptr noundef %id_table) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocol_device_request.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocol_device_request, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.scmi_device_id, ptr %id_table, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id_table, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_protocol_device_request.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %conv) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @scmi_requested_devices_mtx, i32 noundef 0) #18
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %id, align 4
  %call3165 = call ptr @idr_get_next(ptr noundef nonnull @scmi_requested_devices, ptr noundef nonnull %id) #18
  %cmp.not166 = icmp eq ptr %call3165, null
  br i1 %cmp.not166, label %do.end.for.end51_crit_edge, label %for.body.lr.ph

do.end.for.end51_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end51

for.body.lr.ph:                                   ; preds = %do.end
  %name30 = getelementptr inbounds %struct.scmi_device_id, ptr %id_table, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %for.body.lr.ph
  %call3168 = phi ptr [ %call3165, %for.body.lr.ph ], [ %call3, %for.inc50.for.body_crit_edge ]
  %phead.0167 = phi ptr [ null, %for.body.lr.ph ], [ %phead.1, %for.inc50.for.body_crit_edge ]
  %tobool5.not = icmp eq ptr %phead.0167, null
  br i1 %tobool5.not, label %if.then6, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %call3168 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call3168, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %11 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id_table, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp13 = icmp eq i8 %10, %12
  %spec.select = select i1 %cmp13, ptr %call3168, ptr null
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %for.body.if.end17_crit_edge
  %phead.1 = phi ptr [ %phead.0167, %for.body.if.end17_crit_edge ], [ %spec.select, %if.then6 ]
  br label %for.cond22

for.cond22:                                       ; preds = %for.body27.for.cond22_crit_edge, %if.end17
  %.pn160.in = phi ptr [ %call3168, %if.end17 ], [ %.pn160, %for.body27.for.cond22_crit_edge ]
  %13 = ptrtoint ptr %.pn160.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn160 = load ptr, ptr %.pn160.in, align 4
  %cmp23.not = icmp eq ptr %.pn160, %call3168
  br i1 %cmp23.not, label %for.inc50, label %for.body27

for.body27:                                       ; preds = %for.cond22
  %rdev.0 = getelementptr i8, ptr %.pn160, i32 -4
  %14 = ptrtoint ptr %rdev.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev.0, align 4
  %name29 = getelementptr inbounds %struct.scmi_device_id, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name29, align 4
  %18 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name30, align 4
  %call31 = call i32 @strcmp(ptr noundef %17, ptr noundef %19) #22
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end36, label %for.body27.for.cond22_crit_edge

for.body27.for.cond22_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond22

do.end36:                                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %15, align 4
  %conv40 = zext i8 %21 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv40, ptr noundef %17) #21
  br label %out

for.inc50:                                        ; preds = %for.cond22
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %add = add i32 %23, 1
  store i32 %add, ptr %id, align 4
  %call3 = call ptr @idr_get_next(ptr noundef nonnull @scmi_requested_devices, ptr noundef nonnull %id) #18
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc50.for.end51_crit_edge, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc50.for.end51_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end51

for.end51:                                        ; preds = %for.inc50.for.end51_crit_edge, %do.end.for.end51_crit_edge
  %phead.0.lcssa = phi ptr [ null, %do.end.for.end51_crit_edge ], [ %phead.1, %for.inc50.for.end51_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 12) #23
  %tobool53.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool53.not, label %for.end51.out_crit_edge, label %if.end55

for.end51.out_crit_edge:                          ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end55:                                         ; preds = %for.end51
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %id_table, ptr %call7.i.i, align 8
  %tobool57.not = icmp eq ptr %phead.0.lcssa, null
  br i1 %tobool57.not, label %if.then58, label %if.end55.if.end80_crit_edge

if.end55.if.end80_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

if.then58:                                        ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i161 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 8) #23
  %tobool60.not = icmp eq ptr %call7.i.i161, null
  br i1 %tobool60.not, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %out

if.end62:                                         ; preds = %if.then58
  %27 = ptrtoint ptr %call7.i.i161 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i161, ptr %call7.i.i161, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i161, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i161, ptr %prev.i, align 4
  %29 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id_table, align 4
  %conv64 = zext i8 %30 to i32
  %add67 = add nuw nsw i32 %conv64, 1
  %call68 = call i32 @idr_alloc(ptr noundef nonnull @scmi_requested_devices, ptr noundef nonnull %call7.i.i161, i32 noundef %conv64, i32 noundef %add67, i32 noundef 3264) #18
  %31 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %id_table, align 4
  %conv70 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call68, i32 %conv70)
  %cmp71.not = icmp eq i32 %call68, %conv70
  br i1 %cmp71.not, label %if.end62.if.end80_crit_edge, label %do.end76

if.end62.if.end80_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end80

do.end76:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call68) #21
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  call void @kfree(ptr noundef nonnull %call7.i.i161) #18
  br label %out

if.end80:                                         ; preds = %if.end62.if.end80_crit_edge, %if.end55.if.end80_crit_edge
  %phead.2 = phi ptr [ %phead.0.lcssa, %if.end55.if.end80_crit_edge ], [ %call7.i.i161, %if.end62.if.end80_crit_edge ]
  %node81 = getelementptr inbounds %struct.scmi_requested_dev, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %phead.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phead.2, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node81, ptr noundef nonnull %phead.2, ptr noundef %34) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.end80.list_add.exit_crit_edge

if.end80.list_add.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #20
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %node81, ptr %prev1.i.i, align 4
  %36 = ptrtoint ptr %node81 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %node81, align 4
  %prev3.i.i = getelementptr inbounds %struct.scmi_requested_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %phead.2, ptr %prev3.i.i, align 8
  %38 = ptrtoint ptr %phead.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node81, ptr %phead.2, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end80.list_add.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @scmi_list_mutex, i32 noundef 0) #18
  %.pn170 = load ptr, ptr @scmi_list, align 4
  %cmp87.not172 = icmp eq ptr %.pn170, @scmi_list
  br i1 %cmp87.not172, label %list_add.exit.for.end119_crit_edge, label %for.body91.lr.ph

list_add.exit.for.end119_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end119

for.body91.lr.ph:                                 ; preds = %list_add.exit
  %name99 = getelementptr inbounds %struct.scmi_device_id, ptr %id_table, i32 0, i32 1
  br label %for.body91

for.body91:                                       ; preds = %if.end112.for.body91_crit_edge, %for.body91.lr.ph
  %.pn173 = phi ptr [ %.pn170, %for.body91.lr.ph ], [ %.pn, %if.end112.for.body91_crit_edge ]
  %info.0174 = getelementptr i8, ptr %.pn173, i32 -4620
  %active_protocols = getelementptr i8, ptr %.pn173, i32 -64
  %39 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id_table, align 4
  %conv93 = zext i8 %40 to i32
  %call94 = call ptr @idr_find(ptr noundef %active_protocols, i32 noundef %conv93) #18
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %do.end109, label %if.then96

if.then96:                                        ; preds = %for.body91
  %41 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %id_table, align 4
  %conv98 = zext i8 %42 to i32
  %43 = ptrtoint ptr %name99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name99, align 4
  %call100 = call fastcc ptr @scmi_get_protocol_device(ptr noundef nonnull %call94, ptr noundef %info.0174, i32 noundef %conv98, ptr noundef %44)
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.then96.if.end112_crit_edge, label %land.lhs.true

if.then96.if.end112_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

land.lhs.true:                                    ; preds = %if.then96
  %handle = getelementptr inbounds %struct.scmi_device, ptr %call100, i32 0, i32 4
  %45 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle, align 8
  %tobool102.not = icmp eq ptr %46, null
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true.if.end112_crit_edge

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

if.then103:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %users.i = getelementptr i8, ptr %.pn173, i32 8
  %47 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %users.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %users.i, align 4
  %handle.i = getelementptr i8, ptr %.pn173, i32 -4568
  %49 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %handle.i, ptr %handle, align 8
  br label %if.end112

do.end109:                                        ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %info.0174 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info.0174, align 4
  %52 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %id_table, align 4
  %conv111 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.12, i32 noundef %conv111) #21
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.then103, %land.lhs.true.if.end112_crit_edge, %if.then96.if.end112_crit_edge
  %54 = ptrtoint ptr %.pn173 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn173, align 4
  %cmp87.not = icmp eq ptr %.pn, @scmi_list
  br i1 %cmp87.not, label %if.end112.for.end119_crit_edge, label %if.end112.for.body91_crit_edge

if.end112.for.body91_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body91

if.end112.for.end119_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end119

for.end119:                                       ; preds = %if.end112.for.end119_crit_edge, %list_add.exit.for.end119_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #18
  br label %out

out:                                              ; preds = %for.end119, %do.end76, %if.then61, %for.end51.out_crit_edge, %do.end36
  %ret.1 = phi i32 [ -22, %do.end36 ], [ 0, %for.end119 ], [ -22, %do.end76 ], [ -12, %if.then61 ], [ -12, %for.end51.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @scmi_requested_devices_mtx) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #18
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scmi_get_protocol_device(ptr noundef %np, ptr noundef %info, i32 noundef %prot_id, ptr noundef %name) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call ptr @scmi_child_dev_find(ptr noundef %1, i32 noundef %prot_id, ptr noundef %name) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_get_protocol_device.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_get_protocol_device, %if.then5)) #18
          to label %do.end [label %if.then5], !srcloc !303

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_get_protocol_device.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %prot_id) #18
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %call8 = tail call ptr @scmi_device_create(ptr noundef %np, ptr noundef %3, i32 noundef %prot_id, ptr noundef %name) #18
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.69, i32 noundef %prot_id) #21
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %dev16 = getelementptr inbounds %struct.scmi_device, ptr %call8, i32 0, i32 3
  %call.i = tail call fastcc i32 @scmi_chan_setup(ptr noundef %info, ptr noundef %dev16, i32 noundef %prot_id, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %scmi_txrx_setup.exit.thread, label %do.end22

scmi_txrx_setup.exit.thread:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = tail call fastcc i32 @scmi_chan_setup(ptr noundef %info, ptr noundef %dev16, i32 noundef %prot_id, i1 noundef zeroext false) #18
  br label %cleanup

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.71) #21
  tail call void @scmi_device_destroy(ptr noundef nonnull %call8) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %scmi_txrx_setup.exit.thread, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end22 ], [ null, %do.end13 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %scmi_txrx_setup.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_protocol_device_unrequest(ptr nocapture noundef readonly %id_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_protocol_device_unrequest.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_protocol_device_unrequest, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !303

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %name = getelementptr inbounds %struct.scmi_device_id, ptr %id_table, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id_table, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @scmi_protocol_device_unrequest.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.17, ptr noundef %1, i32 noundef %conv) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @scmi_requested_devices_mtx, i32 noundef 0) #18
  %4 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id_table, align 4
  %conv4 = zext i8 %5 to i32
  %call5 = tail call ptr @idr_find(ptr noundef nonnull @scmi_requested_devices, i32 noundef %conv4) #18
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.if.end38_crit_edge, label %for.cond.preheader

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

for.cond.preheader:                               ; preds = %do.end
  %name20 = getelementptr inbounds %struct.scmi_device_id, ptr %id_table, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in.in = phi ptr [ %.pn.in, %for.body.for.cond_crit_edge ], [ %call5, %for.cond.preheader ]
  %6 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %call5
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.cond
  %victim.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %7 = ptrtoint ptr %victim.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %victim.0, align 4
  %name19 = getelementptr inbounds %struct.scmi_device_id, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name19, align 4
  %11 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name20, align 4
  %call21 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %12) #22
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then23:                                        ; preds = %for.body
  %victim.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_del.exit_crit_edge

if.then23.list_del.exit_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then23.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %victim.0.le) #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %21 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %call5, align 4
  %cmp.i.not = icmp eq ptr %22, %call5
  br i1 %cmp.i.not, label %if.then33, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %id_table to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id_table, align 4
  %conv35 = zext i8 %24 to i32
  %call36 = tail call ptr @idr_remove(ptr noundef nonnull @scmi_requested_devices, i32 noundef %conv35) #18
  tail call void @kfree(ptr noundef nonnull %call5) #18
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %for.end.if.end38_crit_edge, %do.end.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_requested_devices_mtx) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scmi_free_channel(ptr nocapture noundef readnone %cinfo, ptr noundef %idr, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @idr_remove(ptr noundef %idr, i32 noundef %id) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_transports_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_mailbox_desc, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_mailbox_desc, i32 0, i32 1), align 4
  %tobool6.not.i = icmp eq ptr %0, null
  br i1 %tobool6.not.i, label %entry.land.lhs.true5.critedge.1.i_crit_edge, label %if.end11.thread.i

entry.land.lhs.true5.critedge.1.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true5.critedge.1.i

if.end11.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %0() #18
  br label %land.lhs.true5.critedge.1.i

land.lhs.true5.critedge.1.i:                      ; preds = %if.end11.thread.i, %entry.land.lhs.true5.critedge.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_smc_desc, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_smc_desc, i32 0, i32 1), align 4
  %tobool6.not.1.i = icmp eq ptr %1, null
  br i1 %tobool6.not.1.i, label %land.lhs.true5.critedge.1.i.land.lhs.true5.critedge.2.i_crit_edge, label %if.end11.1.thread.i

land.lhs.true5.critedge.1.i.land.lhs.true5.critedge.2.i_crit_edge: ; preds = %land.lhs.true5.critedge.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true5.critedge.2.i

if.end11.1.thread.i:                              ; preds = %land.lhs.true5.critedge.1.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %1() #18
  br label %land.lhs.true5.critedge.2.i

land.lhs.true5.critedge.2.i:                      ; preds = %if.end11.1.thread.i, %land.lhs.true5.critedge.1.i.land.lhs.true5.critedge.2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_virtio_desc, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_virtio_desc, i32 0, i32 1), align 4
  %tobool6.not.2.i = icmp eq ptr %2, null
  br i1 %tobool6.not.2.i, label %land.lhs.true5.critedge.2.i.__scmi_transports_setup.exit_crit_edge, label %if.end11.2.thread.i

land.lhs.true5.critedge.2.i.__scmi_transports_setup.exit_crit_edge: ; preds = %land.lhs.true5.critedge.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__scmi_transports_setup.exit

if.end11.2.thread.i:                              ; preds = %land.lhs.true5.critedge.2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %2() #18
  br label %__scmi_transports_setup.exit

__scmi_transports_setup.exit:                     ; preds = %if.end11.2.thread.i, %land.lhs.true5.critedge.2.i.__scmi_transports_setup.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_driver_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_bus_init() #21
  %call18 = tail call fastcc i32 @scmi_transports_init() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call22 = tail call i32 @scmi_base_register() #21
  %call23 = tail call i32 @scmi_clock_register() #21
  %call24 = tail call i32 @scmi_perf_register() #21
  %call25 = tail call i32 @scmi_power_register() #21
  %call26 = tail call i32 @scmi_reset_register() #21
  %call27 = tail call i32 @scmi_sensors_register() #21
  %call28 = tail call i32 @scmi_voltage_register() #21
  %call29 = tail call i32 @scmi_system_register() #21
  %call30 = tail call i32 @__platform_driver_register(ptr noundef nonnull @scmi_driver, ptr noundef null) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end21 ], [ %call18, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_driver_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @scmi_base_unregister() #21
  tail call void @scmi_clock_unregister() #21
  tail call void @scmi_perf_unregister() #21
  tail call void @scmi_power_unregister() #21
  tail call void @scmi_reset_unregister() #21
  tail call void @scmi_sensors_unregister() #21
  tail call void @scmi_voltage_unregister() #21
  tail call void @scmi_system_unregister() #21
  tail call void @scmi_bus_exit() #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_mailbox_desc, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_mailbox_desc, i32 0, i32 1), align 4
  %tobool6.not.i.i = icmp eq ptr %0, null
  br i1 %tobool6.not.i.i, label %entry.land.lhs.true5.critedge.1.i.i_crit_edge, label %if.end11.thread.i.i

entry.land.lhs.true5.critedge.1.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true5.critedge.1.i.i

if.end11.thread.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %0() #18
  br label %land.lhs.true5.critedge.1.i.i

land.lhs.true5.critedge.1.i.i:                    ; preds = %if.end11.thread.i.i, %entry.land.lhs.true5.critedge.1.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_smc_desc, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_smc_desc, i32 0, i32 1), align 4
  %tobool6.not.1.i.i = icmp eq ptr %1, null
  br i1 %tobool6.not.1.i.i, label %land.lhs.true5.critedge.1.i.i.land.lhs.true5.critedge.2.i.i_crit_edge, label %if.end11.1.thread.i.i

land.lhs.true5.critedge.1.i.i.land.lhs.true5.critedge.2.i.i_crit_edge: ; preds = %land.lhs.true5.critedge.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true5.critedge.2.i.i

if.end11.1.thread.i.i:                            ; preds = %land.lhs.true5.critedge.1.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %1() #18
  br label %land.lhs.true5.critedge.2.i.i

land.lhs.true5.critedge.2.i.i:                    ; preds = %if.end11.1.thread.i.i, %land.lhs.true5.critedge.1.i.i.land.lhs.true5.critedge.2.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_virtio_desc, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_virtio_desc, i32 0, i32 1), align 4
  %tobool6.not.2.i.i = icmp eq ptr %2, null
  br i1 %tobool6.not.2.i.i, label %land.lhs.true5.critedge.2.i.i.scmi_transports_exit.exit_crit_edge, label %if.end11.2.thread.i.i

land.lhs.true5.critedge.2.i.i.scmi_transports_exit.exit_crit_edge: ; preds = %land.lhs.true5.critedge.2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_transports_exit.exit

if.end11.2.thread.i.i:                            ; preds = %land.lhs.true5.critedge.2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %2() #18
  br label %scmi_transports_exit.exit

scmi_transports_exit.exit:                        ; preds = %if.end11.2.thread.i.i, %land.lhs.true5.critedge.2.i.i.scmi_transports_exit.exit_crit_edge
  tail call void @platform_driver_unregister(ptr noundef nonnull @scmi_driver) #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_base_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_clock_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_perf_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_power_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_reset_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_sensors_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_voltage_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_system_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_bus_exit() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scmi_xfer_begin(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %transfer_id = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %transfer_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_id, align 4
  %msg_id = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_id, align 4
  %conv = zext i8 %5 to i32
  %protocol_id = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol_id, align 1
  %conv1 = zext i8 %7 to i32
  %seq2 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seq2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq2, align 2
  %conv3 = zext i16 %9 to i32
  %poll = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %poll to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %poll, align 4, !range !304
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv3, i32 noundef %12) #18
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scmi_xfer_end(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %transfer_id = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %transfer_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_id, align 4
  %msg_id = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_id, align 4
  %conv = zext i8 %5 to i32
  %protocol_id = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol_id, align 1
  %conv1 = zext i8 %7 to i32
  %seq2 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seq2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq2, align 2
  %conv3 = zext i16 %9 to i32
  %status = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, i32 noundef %3, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv3, i32 noundef %11) #18
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scmi_rx_done(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %transfer_id = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %transfer_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_id, align 4
  %msg_id = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msg_id, align 4
  %conv = zext i8 %5 to i32
  %protocol_id = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol_id, align 1
  %conv1 = zext i8 %7 to i32
  %seq2 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %seq2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq2, align 2
  %conv3 = zext i16 %9 to i32
  %msg_type = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %msg_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msg_type, align 4
  %conv4 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv3, i32 noundef %conv4) #18
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scmi_xfer_get(ptr nocapture noundef readonly %handle, ptr noundef %minfo, i1 noundef zeroext %set_pending) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %xfer_lock = getelementptr inbounds %struct.scmi_xfers_info, ptr %minfo, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xfer_lock) #18
  %free_xfers = getelementptr inbounds %struct.scmi_xfers_info, ptr %minfo, i32 0, i32 3
  %0 = ptrtoint ptr %free_xfers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_xfers, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -100
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.i, label %if.end.hlist_del_init.exit_crit_edge, label %if.then.i

if.end.hlist_del_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %3, align 4
  %tobool.not.i3.i = icmp eq ptr %5, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  %9 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end.hlist_del_init.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @transfer_last_id, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !305
  tail call void @llvm.prefetch.p0(ptr nonnull @transfer_last_id, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @transfer_last_id, ptr nonnull @transfer_last_id, i32 1, ptr nonnull elementtype(i32) @transfer_last_id) #18, !srcloc !306
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !307
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %asmresult.i.i.i.i, ptr %add.ptr, align 4
  br i1 %set_pending, label %if.then12, label %hlist_del_init.exit.if.end26_crit_edge

hlist_del_init.exit.if.end26_crit_edge:           ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then12:                                        ; preds = %hlist_del_init.exit
  %and.i = and i32 %asmresult.i.i.i.i, 1023
  %12 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %minfo, align 4
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %13, i32 noundef 1024, i32 noundef %and.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1024
  br i1 %cmp.i, label %if.then.i54, label %if.then12.if.end126.i_crit_edge

if.then12.if.end126.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126.i

if.then.i54:                                      ; preds = %if.then12
  %14 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %minfo, align 4
  %call65.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %15, i32 noundef 1024, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call65.i)
  %cmp83.i = icmp eq i32 %call65.i, 1024
  br i1 %cmp83.i, label %land.rhs.i, label %if.then.i54.if.end126.i_crit_edge

if.then.i54.if.end126.i_crit_edge:                ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126.i

land.rhs.i:                                       ; preds = %if.then.i54
  %.b145.i = load i1, ptr @scmi_xfer_token_set.__already_done, align 1
  br i1 %.b145.i, label %land.rhs.i.do.end21_crit_edge, label %if.then90.i, !prof !289

land.rhs.i.do.end21_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end21

if.then90.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @scmi_xfer_token_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 9, ptr noundef null) #18
  br label %do.end21

if.end126.i:                                      ; preds = %if.then.i54.if.end126.i_crit_edge, %if.then12.if.end126.i_crit_edge
  %xfer_id.0.i = phi i32 [ %call.i, %if.then12.if.end126.i_crit_edge ], [ %call65.i, %if.then.i54.if.end126.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %xfer_id.0.i, i32 %and.i)
  %cmp127.not.i = icmp eq i32 %xfer_id.0.i, %and.i
  br i1 %cmp127.not.i, label %if.end126.i.if.then15_crit_edge, label %if.then128.i

if.end126.i.if.then15_crit_edge:                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then15

if.then128.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub129.i = sub i32 %xfer_id.0.i, %and.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @transfer_last_id, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr nonnull @transfer_last_id, i32 1, i32 3, i32 1) #18
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @transfer_last_id, ptr nonnull @transfer_last_id, i32 %sub129.i, ptr nonnull elementtype(i32) @transfer_last_id) #18, !srcloc !308
  br label %if.then15

if.then15:                                        ; preds = %if.then128.i, %if.end126.i.if.then15_crit_edge
  %17 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %minfo, align 4
  tail call void @_set_bit(i32 noundef %xfer_id.0.i, ptr noundef %18) #18
  %conv.i = trunc i32 %xfer_id.0.i to i16
  %seq.i = getelementptr i8, ptr %1, i32 -92
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %seq.i, align 4
  %conv17 = and i32 %xfer_id.0.i, 65535
  %mul.i.i = mul i32 %conv17, 1640531527
  %shr.i = lshr i32 %mul.i.i, 23
  %arrayidx = getelementptr %struct.scmi_xfers_info, ptr %minfo, i32 0, i32 4, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %1, align 4
  %tobool.not.i55 = icmp eq ptr %21, null
  br i1 %tobool.not.i55, label %if.then15.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then15.hlist_add_head.exit_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #20
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %1, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then15.hlist_add_head.exit_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %1, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %arrayidx, ptr %pprev.i.i, align 4
  %pending = getelementptr i8, ptr %1, i32 -4
  %26 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %pending, align 4
  br label %if.end26

do.end21:                                         ; preds = %if.then90.i, %land.rhs.i.do.end21_crit_edge
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.34, i32 noundef -12) #21
  %29 = ptrtoint ptr %free_xfers to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free_xfers, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %1, align 4
  %tobool.not.i56 = icmp eq ptr %30, null
  br i1 %tobool.not.i56, label %do.end21.if.end26.thread_crit_edge, label %do.body12.i58

do.end21.if.end26.thread_crit_edge:               ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26.thread

do.body12.i58:                                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #20
  %pprev.i57 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %pprev.i57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %1, ptr %pprev.i57, align 4
  br label %if.end26.thread

if.end26.thread:                                  ; preds = %do.body12.i58, %do.end21.if.end26.thread_crit_edge
  %33 = ptrtoint ptr %free_xfers to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %1, ptr %free_xfers, align 4
  %34 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %free_xfers, ptr %pprev.i.i, align 4
  br label %cleanup

if.end26:                                         ; preds = %hlist_add_head.exit, %hlist_del_init.exit.if.end26_crit_edge
  %cmp.i61 = icmp ugt ptr %add.ptr, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %users = getelementptr i8, ptr %1, i32 8
  %call.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #18
  %35 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %users, align 4
  %busy = getelementptr i8, ptr %1, i32 12
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy, i32 noundef 4) #18
  %36 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %busy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.end26.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end26.thread ], [ %add.ptr, %if.then28 ], [ %add.ptr, %if.end26.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xfer_lock, i32 noundef %call2) #18
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_notify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_scmi_rx_done(i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_rx_done, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_scmi_rx_done, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !303

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !289

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !309
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_rx_done, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i8 noundef zeroext %msg_type) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !310
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !310
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !289

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !311
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_rx_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_scmi_rx_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_scmi_rx_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 86, ptr noundef nonnull @.str.37) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !312
  %38 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__scmi_xfer_put(ptr noundef %minfo, ptr noundef %xfer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %xfer_lock = getelementptr inbounds %struct.scmi_xfers_info, ptr %minfo, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xfer_lock) #18
  %users = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #18, !srcloc !301
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i, !prof !289

if.end5.i.i.i.if.end9_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 3) #18
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !302
  %pending = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 6
  %1 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pending, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then6:                                         ; preds = %if.then
  %seq.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %seq.i, align 4
  %conv.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %minfo, align 4
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %6) #18
  %node = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 7
  %pprev.i.i.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i, label %if.then6.hash_del.exit_crit_edge, label %if.then.i.i

if.then6.hash_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then6
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i3.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %node, align 4
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then6.hash_del.exit_crit_edge
  %15 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %pending, align 4
  br label %if.end

if.end:                                           ; preds = %hash_del.exit, %if.then.if.end_crit_edge
  %node8 = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 7
  %free_xfers = getelementptr inbounds %struct.scmi_xfers_info, ptr %minfo, i32 0, i32 3
  %16 = ptrtoint ptr %free_xfers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free_xfers, align 4
  %18 = ptrtoint ptr %node8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %node8, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end.hlist_add_head.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node8, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end.hlist_add_head.exit_crit_edge
  %20 = ptrtoint ptr %free_xfers to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node8, ptr %free_xfers, align 4
  %pprev34.i = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %free_xfers, ptr %pprev34.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %hlist_add_head.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xfer_lock, i32 noundef %call2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_protocol_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scmi_alloc_init_protocol_instance(ptr noundef %info, ptr noundef %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.scmi_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle1, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %1, ptr noundef null, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %proto, align 4
  %conv = zext i8 %3 to i32
  tail call void @scmi_protocol_put(i32 noundef %conv) #18
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 36, i32 noundef 3520) #18
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.clean_crit_edge, label %if.end6

if.end.clean_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean

if.end6:                                          ; preds = %if.end
  %gid7 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %gid7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %gid7, align 4
  %proto8 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %proto8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %proto, ptr %proto8, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %handle1, ptr %call.i, align 4
  %9 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle1, align 4
  %ph = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ph, align 4
  %xops = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %xops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xfer_ops, ptr %xops, align 4
  %set_priv = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %set_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @scmi_set_protocol_priv, ptr %set_priv, align 4
  %get_priv = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %get_priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @scmi_get_protocol_priv, ptr %get_priv, align 4
  %users = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #18
  %15 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %users, align 4
  %16 = ptrtoint ptr %proto8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proto8, align 4
  %instance_init = getelementptr inbounds %struct.scmi_protocol, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %instance_init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %instance_init, align 4
  %call17 = tail call i32 %19(ptr noundef %ph) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end6.clean_crit_edge

if.end6.clean_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean

if.end20:                                         ; preds = %if.end6
  %protocols = getelementptr inbounds %struct.scmi_info, ptr %info, i32 0, i32 8
  %20 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %proto, align 4
  %conv22 = zext i8 %21 to i32
  %add = add nuw nsw i32 %conv22, 1
  %call25 = tail call i32 @idr_alloc(ptr noundef %protocols, ptr noundef nonnull %call.i, i32 noundef %conv22, i32 noundef %add, i32 noundef 3264) #18
  %22 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %proto, align 4
  %conv27 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %conv27)
  %cmp.not = icmp eq i32 %call25, %conv27
  br i1 %cmp.not, label %if.end30, label %if.end20.clean_crit_edge

if.end20.clean_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %clean

if.end30:                                         ; preds = %if.end20
  %24 = ptrtoint ptr %proto8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %proto8, align 4
  %events = getelementptr inbounds %struct.scmi_protocol, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %events, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %if.end30.if.end47_crit_edge, label %if.then33

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then33:                                        ; preds = %if.end30
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %25, align 4
  %call39 = tail call i32 @scmi_register_protocol_events(ptr noundef %handle1, i8 noundef zeroext %29, ptr noundef %ph, ptr noundef nonnull %27) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then33.if.end47_crit_edge, label %do.end

if.then33.if.end47_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle1, align 4
  %32 = ptrtoint ptr %proto8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %proto8, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv45 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.50, i32 noundef %conv45, i32 noundef %call39) #21
  br label %if.end47

if.end47:                                         ; preds = %do.end, %if.then33.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %36 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle1, align 4
  %38 = ptrtoint ptr %gid7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gid7, align 4
  tail call void @devres_close_group(ptr noundef %37, ptr noundef %39) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scmi_alloc_init_protocol_instance.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scmi_alloc_init_protocol_instance, %if.then55)) #18
          to label %cleanup [label %if.then55], !srcloc !303

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  %40 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle1, align 4
  %42 = ptrtoint ptr %proto8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %proto8, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv59 = zext i8 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scmi_alloc_init_protocol_instance.__UNIQUE_ID_ddebug344, ptr noundef %41, ptr noundef nonnull @.str.52, i32 noundef %conv59) #18
  br label %cleanup

clean:                                            ; preds = %if.end20.clean_crit_edge, %if.end6.clean_crit_edge, %if.end.clean_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end6.clean_crit_edge ], [ %call25, %if.end20.clean_crit_edge ], [ -12, %if.end.clean_crit_edge ]
  %46 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %proto, align 4
  %conv64 = zext i8 %47 to i32
  tail call void @scmi_protocol_put(i32 noundef %conv64) #18
  %48 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %handle1, align 4
  %call66 = tail call i32 @devres_release_group(ptr noundef %49, ptr noundef nonnull %call) #18
  br label %out

out:                                              ; preds = %clean, %if.then
  %ret.1 = phi i32 [ %ret.0, %clean ], [ -12, %if.then ]
  %50 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then55, %if.end47
  %retval.0 = phi ptr [ %50, %out ], [ %call.i, %if.then55 ], [ %call.i, %if.end47 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @scmi_set_protocol_priv(ptr nocapture noundef writeonly %ph, ptr noundef %priv) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %ph, i32 -4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %priv1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @scmi_get_protocol_priv(ptr nocapture noundef readonly %ph) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %ph, i32 -4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_register_protocol_events(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_get(ptr nocapture noundef readonly %ph, ptr nocapture noundef writeonly %version) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -52
  %2 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3.i, align 4
  %desc.i = getelementptr i8, ptr %1, i32 -48
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %max_msg_size.i = getelementptr inbounds %struct.scmi_desc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_msg_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_msg_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp ult i32 %7, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tx_minfo.i = getelementptr i8, ptr %1, i32 20
  %call.i = tail call fastcc ptr @scmi_xfer_get(ptr noundef %1, ptr noundef %tx_minfo.i, i1 noundef zeroext true) #18
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xfer_get_init.exit, label %xfer_get_init.exit.thread

xfer_get_init.exit.thread:                        ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %len.i, align 4
  %len15.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %len15.i, align 4
  %hdr.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %type.i, align 2
  %11 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hdr.i, align 4
  %poll_completion.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %poll_completion.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %poll_completion.i, align 4
  %call1 = tail call i32 @do_xfer(ptr noundef %ph, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %xfer_get_init.exit.thread.if.end4_crit_edge

xfer_get_init.exit.thread.if.end4_crit_edge:      ; preds = %xfer_get_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

xfer_get_init.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %13) #21
  br label %cleanup

if.then3:                                         ; preds = %xfer_get_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %version, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %xfer_get_init.exit.thread.if.end4_crit_edge
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %tx_minfo.i13 = getelementptr i8, ptr %21, i32 20
  tail call fastcc void @__scmi_xfer_put(ptr noundef %tx_minfo.i13, ptr noundef %call.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %xfer_get_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end4 ], [ %13, %xfer_get_init.exit ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfer_get_init(ptr nocapture noundef readonly %ph, i8 noundef zeroext %msg_id, i32 noundef %tx_size, i32 noundef %rx_size, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -52
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 4
  %desc = getelementptr i8, ptr %1, i32 -48
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %max_msg_size = getelementptr inbounds %struct.scmi_desc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_msg_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_msg_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rx_size)
  %cmp = icmp ult i32 %7, %rx_size
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %tx_size)
  %cmp7 = icmp ult i32 %7, %tx_size
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_minfo = getelementptr i8, ptr %1, i32 20
  %call = tail call fastcc ptr @scmi_xfer_get(ptr noundef %1, ptr noundef %tx_minfo, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %8) #21
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %call, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %tx_size, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_size)
  %tobool.not = icmp eq i32 %rx_size, 0
  br i1 %tobool.not, label %cond.false, label %if.end12.cond.end_crit_edge

if.end12.cond.end_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %max_msg_size14 = getelementptr inbounds %struct.scmi_desc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %max_msg_size14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_msg_size14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end12.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.false ], [ %rx_size, %if.end12.cond.end_crit_edge ]
  %len15 = getelementptr inbounds %struct.scmi_xfer, ptr %call, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %len15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %len15, align 4
  %hdr = getelementptr inbounds %struct.scmi_xfer, ptr %call, i32 0, i32 1
  %type = getelementptr inbounds %struct.scmi_xfer, ptr %call, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %type, align 2
  %16 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %msg_id, ptr %hdr, align 4
  %poll_completion = getelementptr inbounds %struct.scmi_xfer, ptr %call, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %poll_completion to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %poll_completion, align 4
  %18 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then10 ], [ 0, %cond.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @reset_rx_to_maxsz(ptr nocapture noundef readonly %ph, ptr nocapture noundef writeonly %xfer) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %desc = getelementptr i8, ptr %1, i32 -48
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %max_msg_size = getelementptr inbounds %struct.scmi_desc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %max_msg_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_msg_size, align 4
  %len = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_xfer(ptr nocapture noundef readonly %ph, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -52
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 4
  %hdr = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1
  %poll_completion = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %poll_completion to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %poll_completion, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %desc = getelementptr i8, ptr %1, i32 -48
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.scmi_desc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %poll_done = getelementptr inbounds %struct.scmi_transport_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %poll_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %poll_done, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.body, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

do.body:                                          ; preds = %land.lhs.true
  %.b203 = load i1, ptr @do_xfer.__print_once, align 1
  br i1 %.b203, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @do_xfer.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.55) #21
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %proto = getelementptr i8, ptr %ph, i32 -16
  %12 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proto, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %protocol_id = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %protocol_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %protocol_id, align 1
  %done = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 4
  %17 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %done, align 4
  %tx_idr = getelementptr i8, ptr %1, i32 4228
  %conv = zext i8 %15 to i32
  %call = tail call ptr @idr_find(ptr noundef %tx_idr, i32 noundef %conv) #18
  %tobool15.not = icmp eq ptr %call, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end20, !prof !290

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xfer, align 4
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdr, align 4
  %22 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %protocol_id, align 1
  %seq = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %seq, align 4
  %26 = ptrtoint ptr %poll_completion to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %poll_completion, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool28 = icmp ne i8 %27, 0
  tail call fastcc void @trace_scmi_xfer_begin(i32 noundef %19, i8 noundef zeroext %21, i8 noundef zeroext %23, i16 noundef zeroext %25, i1 noundef zeroext %tobool28)
  %state = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 10
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !313
  %desc35 = getelementptr i8, ptr %1, i32 -48
  %29 = ptrtoint ptr %desc35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc35, align 4
  %ops36 = getelementptr inbounds %struct.scmi_desc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops36, align 4
  %send_message = getelementptr inbounds %struct.scmi_transport_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_message, align 4
  %call37 = tail call i32 %34(ptr noundef nonnull %call, ptr noundef %xfer) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %do.body40, label %if.end54

do.body40:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_xfer.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_xfer, %if.then50)) #18
          to label %cleanup [label %if.then50], !srcloc !303

if.then50:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_xfer.__UNIQUE_ID_ddebug343, ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %call37) #18
  br label %cleanup

if.end54:                                         ; preds = %if.end20
  %35 = ptrtoint ptr %poll_completion to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %poll_completion, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool57.not = icmp eq i8 %36, 0
  br i1 %tobool57.not, label %if.else.i, label %if.then58

if.then58:                                        ; preds = %if.end54
  %call59 = tail call i64 @ktime_get() #18
  %add = add i64 %call59, 100000
  %handle.i = getelementptr inbounds %struct.scmi_chan_info, ptr %call, i32 0, i32 1
  %37 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handle.i, align 4
  %desc.i = getelementptr i8, ptr %38, i32 -48
  %39 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.scmi_desc, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %poll_done.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %poll_done.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %poll_done.i, align 4
  %call.i = tail call zeroext i1 %44(ptr noundef nonnull %call, ptr noundef %xfer) #18
  br i1 %call.i, label %if.then58.do.end88_crit_edge, label %lor.lhs.false.i

if.then58.do.end88_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end88

lor.lhs.false.i:                                  ; preds = %if.then58
  %call1.i = tail call zeroext i1 @try_wait_for_completion(ptr noundef %done) #18
  br i1 %call1.i, label %lor.lhs.false.i.do.end88_crit_edge, label %scmi_xfer_done_no_timeout.exit

lor.lhs.false.i.do.end88_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end88

scmi_xfer_done_no_timeout.exit:                   ; preds = %lor.lhs.false.i
  %call2.i205 = tail call i64 @ktime_get() #18
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i205, i64 %add)
  %cmp3.i.i.i = icmp sgt i64 %call2.i205, %add
  br i1 %cmp3.i.i.i, label %scmi_xfer_done_no_timeout.exit.do.end88_crit_edge, label %scmi_xfer_done_no_timeout.exit.do.body71_crit_edge, !prof !289

scmi_xfer_done_no_timeout.exit.do.body71_crit_edge: ; preds = %scmi_xfer_done_no_timeout.exit
  br label %do.body71

scmi_xfer_done_no_timeout.exit.do.end88_crit_edge: ; preds = %scmi_xfer_done_no_timeout.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end88

do.body71:                                        ; preds = %do.body71.do.body71_crit_edge, %scmi_xfer_done_no_timeout.exit.do.body71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !314
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !315
  %call82 = tail call fastcc zeroext i1 @scmi_xfer_done_no_timeout(ptr noundef nonnull %call, ptr noundef %xfer, i64 noundef %add)
  br i1 %call82, label %do.body71.do.end88_crit_edge, label %do.body71.do.body71_crit_edge

do.body71.do.body71_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body71

do.body71.do.end88_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end88

do.end88:                                         ; preds = %do.body71.do.end88_crit_edge, %scmi_xfer_done_no_timeout.exit.do.end88_crit_edge, %lor.lhs.false.i.do.end88_crit_edge, %if.then58.do.end88_crit_edge
  %call89 = tail call i64 @ktime_get() #18
  call void @__sanitizer_cov_trace_cmp8(i64 %call89, i64 %add)
  %cmp.i.i = icmp slt i64 %call89, %add
  br i1 %cmp.i.i, label %if.then91, label %do.end88.if.end133_crit_edge

do.end88.if.end133_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then91:                                        ; preds = %do.end88
  %lock = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 11
  %call98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp104 = icmp eq i32 %46, 0
  br i1 %cmp104, label %if.then106, label %if.then91.if.end110_crit_edge

if.then91.if.end110_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end110

if.then106:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #20
  %47 = ptrtoint ptr %desc35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc35, align 4
  %ops108 = getelementptr inbounds %struct.scmi_desc, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops108, align 4
  %fetch_response = getelementptr inbounds %struct.scmi_transport_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %fetch_response to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fetch_response, align 4
  tail call void %52(ptr noundef nonnull %call, ptr noundef %xfer) #18
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %state, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.then91.if.end110_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call98) #18
  br label %if.end124

if.else.i:                                        ; preds = %if.end54
  %54 = ptrtoint ptr %desc35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc35, align 4
  %max_rx_timeout_ms = getelementptr inbounds %struct.scmi_desc, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %max_rx_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_rx_timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %57) #18
  %call117 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %call2.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.end122, label %if.else.i.if.end124_crit_edge

if.else.i.if.end124_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end124

do.end122:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %58 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.59, ptr noundef %58) #21
  br label %if.end133

if.end124:                                        ; preds = %if.else.i.if.end124_crit_edge, %if.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool125.not = icmp eq i32 %call37, 0
  br i1 %tobool125.not, label %land.lhs.true126, label %if.end124.if.end133_crit_edge

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

land.lhs.true126:                                 ; preds = %if.end124
  %status = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool128.not = icmp eq i32 %60, 0
  br i1 %tobool128.not, label %land.lhs.true126.if.end133_crit_edge, label %if.then129

land.lhs.true126.if.end133_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then129:                                       ; preds = %land.lhs.true126
  %sub.i = sub i32 0, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i)
  %cmp1.i = icmp ult i32 %sub.i, 11
  br i1 %cmp1.i, label %if.then.i206, label %if.then129.if.end133_crit_edge

if.then129.if.end133_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then.i206:                                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr [11 x i32], ptr @scmi_linux_errmap, i32 0, i32 %sub.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then.i206, %if.then129.if.end133_crit_edge, %land.lhs.true126.if.end133_crit_edge, %if.end124.if.end133_crit_edge, %do.end122, %do.end88.if.end133_crit_edge
  %ret.2 = phi i32 [ %call37, %if.end124.if.end133_crit_edge ], [ 0, %land.lhs.true126.if.end133_crit_edge ], [ %62, %if.then.i206 ], [ -5, %if.then129.if.end133_crit_edge ], [ -110, %do.end122 ], [ -110, %do.end88.if.end133_crit_edge ]
  %63 = ptrtoint ptr %desc35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc35, align 4
  %ops135 = getelementptr inbounds %struct.scmi_desc, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %ops135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops135, align 4
  %mark_txdone = getelementptr inbounds %struct.scmi_transport_ops, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %mark_txdone to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mark_txdone, align 4
  %tobool136.not = icmp eq ptr %68, null
  br i1 %tobool136.not, label %if.end133.if.end141_crit_edge, label %if.then137

if.end133.if.end141_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end141

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %68(ptr noundef nonnull %call, i32 noundef %ret.2) #18
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end133.if.end141_crit_edge
  %69 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %xfer, align 4
  %71 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hdr, align 4
  %73 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %protocol_id, align 1
  %75 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %seq, align 4
  tail call fastcc void @trace_scmi_xfer_end(i32 noundef %70, i8 noundef zeroext %72, i8 noundef zeroext %74, i16 noundef zeroext %76, i32 noundef %ret.2)
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.then50, %do.body40, %if.end11.cleanup_crit_edge, %if.then7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end141 ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ %call37, %if.then50 ], [ %call37, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_xfer_with_response(ptr nocapture noundef readonly %ph, ptr noundef %xfer) #0 align 64 {
entry:
  %async_response = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %async_response) #18
  %0 = getelementptr inbounds i8, ptr %async_response, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %async_response to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %async_response, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %async_response, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #18
  %async_done = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 5
  %3 = ptrtoint ptr %async_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %async_response, ptr %async_done, align 4
  %call1 = call i32 @do_xfer(ptr noundef %ph, ptr noundef %xfer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %async_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async_done, align 4
  %call3 = call i32 @wait_for_completion_timeout(ptr noundef %5, i32 noundef 200) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end12_crit_edge, label %if.else

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.else:                                          ; preds = %if.then
  %status = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.else.if.end12_crit_edge, label %if.then7

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then7:                                         ; preds = %if.else
  %sub.i = sub i32 0, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i)
  %cmp1.i = icmp ult i32 %sub.i, 11
  br i1 %cmp1.i, label %if.then.i, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr [11 x i32], ptr @scmi_linux_errmap, i32 0, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then.i, %if.then7.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.if.end12_crit_edge ], [ 0, %if.else.if.end12_crit_edge ], [ -110, %if.then.if.end12_crit_edge ], [ %9, %if.then.i ], [ -5, %if.then7.if.end12_crit_edge ]
  %10 = ptrtoint ptr %async_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %async_done, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %async_response) #18
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfer_put(ptr nocapture noundef readonly %ph, ptr noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ph, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tx_minfo = getelementptr i8, ptr %1, i32 20
  tail call fastcc void @__scmi_xfer_put(ptr noundef %tx_minfo, ptr noundef %xfer)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_scmi_xfer_begin(i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_scmi_xfer_begin, %do.body)) #18
          to label %if.end49 [label %do.body], !srcloc !303

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !289

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %if.end31

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !316
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end49.critedge, label %if.end31.do.body2.i_crit_edge

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
  tail call void %15(ptr noundef %17, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i1 noundef zeroext %poll) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !317
  br label %if.end49.sink.split

if.end49.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !317
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.end49.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i74.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i74.c to ptr
  %preempt_count.i.i75.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i75.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i75.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75.c, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !289

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %27, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %29 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i84
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i85.not = icmp eq i32 %32, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %33 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !311
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_scmi_xfer_begin.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_scmi_xfer_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 34, ptr noundef nonnull @.str.37) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !312
  %38 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scmi_xfer_done_no_timeout(ptr noundef %cinfo, ptr noundef %xfer, i64 noundef %stop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %desc = getelementptr i8, ptr %1, i32 -48
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.scmi_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %poll_done = getelementptr inbounds %struct.scmi_transport_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %poll_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll_done, align 4
  %call = tail call zeroext i1 %7(ptr noundef %cinfo, ptr noundef %xfer) #18
  br i1 %call, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %done = getelementptr inbounds %struct.scmi_xfer, ptr %xfer, i32 0, i32 4
  %call1 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %done) #18
  br i1 %call1, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i64 @ktime_get() #18
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %stop)
  %cmp3.i.i = icmp sgt i64 %call2, %stop
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp3.i.i, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_scmi_xfer_end(i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_scmi_xfer_end, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !303

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !289

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !318
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, i32 noundef %transfer_id, i8 noundef zeroext %msg_id, i8 noundef zeroext %protocol_id, i16 noundef zeroext %seq, i32 noundef %status) #18
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !319
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !319
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !289

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !279) #18
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !311
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_scmi_xfer_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_scmi_xfer_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 60, ptr noundef nonnull @.str.37) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !312
  %38 = tail call i32 @llvm.read_register.i32(metadata !279) #18
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
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_child_dev_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_device_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scmi_chan_setup(ptr noundef %info, ptr noundef %dev, i32 noundef %prot_id, i1 noundef zeroext %tx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_idr = getelementptr inbounds %struct.scmi_info, ptr %info, i32 0, i32 6
  %rx_idr = getelementptr inbounds %struct.scmi_info, ptr %info, i32 0, i32 7
  %cond2 = select i1 %tx, ptr %tx_idr, ptr %rx_idr
  %call = tail call ptr @idr_find(ptr noundef %cond2, i32 noundef %prot_id) #18
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %not.tx = xor i1 %tx, true
  %cond = zext i1 %not.tx to i32
  %desc = getelementptr inbounds %struct.scmi_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.scmi_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %chan_available = getelementptr inbounds %struct.scmi_transport_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chan_available to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_available, align 4
  %call4 = tail call zeroext i1 %5(ptr noundef %dev, i32 noundef %cond) #18
  br i1 %call4, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @idr_find(ptr noundef %cond2, i32 noundef 16) #18
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.idr_alloc_crit_edge, !prof !290

if.then5.idr_alloc_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %idr_alloc

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 12, i32 noundef 3520) #18
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %ops21 = getelementptr inbounds %struct.scmi_desc, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops21, align 4
  %chan_setup = getelementptr inbounds %struct.scmi_transport_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %chan_setup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan_setup, align 4
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %call24 = tail call i32 %14(ptr noundef nonnull %call.i, ptr noundef %16, i1 noundef zeroext %tx) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end18.idr_alloc_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18.idr_alloc_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %idr_alloc

idr_alloc:                                        ; preds = %if.end18.idr_alloc_crit_edge, %if.then5.idr_alloc_crit_edge
  %cinfo.0 = phi ptr [ %call.i, %if.end18.idr_alloc_crit_edge ], [ %call6, %if.then5.idr_alloc_crit_edge ]
  %add = add i32 %prot_id, 1
  %call28 = tail call i32 @idr_alloc(ptr noundef %cond2, ptr noundef nonnull %cinfo.0, i32 noundef %prot_id, i32 noundef %add, i32 noundef 3264) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %prot_id)
  %cmp.not = icmp eq i32 %call28, %prot_id
  br i1 %cmp.not, label %if.end30, label %do.end

do.end:                                           ; preds = %idr_alloc
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %call28) #21
  br label %cleanup

if.end30:                                         ; preds = %idr_alloc
  call void @__sanitizer_cov_trace_pc() #20
  %handle = getelementptr inbounds %struct.scmi_info, ptr %info, i32 0, i32 3
  %handle31 = getelementptr inbounds %struct.scmi_chan_info, ptr %cinfo.0, i32 0, i32 1
  %17 = ptrtoint ptr %handle31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %handle, ptr %handle31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %do.end ], [ 0, %if.end30 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %call24, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_bus_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scmi_transports_init() unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scmi_mailbox_desc to i32))
  %0 = load ptr, ptr @scmi_mailbox_desc, align 4
  %tobool3.not.i = icmp eq ptr %0, null
  br i1 %tobool3.not.i, label %entry.land.lhs.true.1.i_crit_edge, label %if.end11.i

entry.land.lhs.true.1.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.1.i

if.end11.i:                                       ; preds = %entry
  %call.i = tail call i32 %0() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.land.lhs.true.1.i_crit_edge, label %if.end11.i.cleanup.i_crit_edge

if.end11.i.cleanup.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end11.i.land.lhs.true.1.i_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.1.i

cleanup.i:                                        ; preds = %if.end11.2.i.cleanup.i_crit_edge, %if.end11.1.i.cleanup.i_crit_edge, %if.end11.i.cleanup.i_crit_edge
  %trans.033.lcssa.i = phi ptr [ @scmi_of_match, %if.end11.i.cleanup.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.of_device_id], ptr @scmi_of_match, i32 0, i32 1), %if.end11.1.i.cleanup.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.of_device_id], ptr @scmi_of_match, i32 0, i32 2), %if.end11.2.i.cleanup.i_crit_edge ]
  %ret.1.lcssa.i = phi i32 [ %call.i, %if.end11.i.cleanup.i_crit_edge ], [ %call.1.i, %if.end11.1.i.cleanup.i_crit_edge ], [ %call.2.i, %if.end11.2.i.cleanup.i_crit_edge ]
  %compatible.i = getelementptr inbounds %struct.of_device_id, ptr %trans.033.lcssa.i, i32 0, i32 2
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %compatible.i) #21
  br label %__scmi_transports_setup.exit

land.lhs.true.1.i:                                ; preds = %if.end11.i.land.lhs.true.1.i_crit_edge, %entry.land.lhs.true.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scmi_smc_desc to i32))
  %1 = load ptr, ptr @scmi_smc_desc, align 4
  %tobool3.not.1.i = icmp eq ptr %1, null
  br i1 %tobool3.not.1.i, label %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge, label %if.end11.1.i

land.lhs.true.1.i.land.lhs.true.2.i_crit_edge:    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.2.i

if.end11.1.i:                                     ; preds = %land.lhs.true.1.i
  %call.1.i = tail call i32 %1() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool12.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool12.not.1.i, label %if.end11.1.i.land.lhs.true.2.i_crit_edge, label %if.end11.1.i.cleanup.i_crit_edge

if.end11.1.i.cleanup.i_crit_edge:                 ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end11.1.i.land.lhs.true.2.i_crit_edge:         ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.2.i

land.lhs.true.2.i:                                ; preds = %if.end11.1.i.land.lhs.true.2.i_crit_edge, %land.lhs.true.1.i.land.lhs.true.2.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scmi_virtio_desc to i32))
  %2 = load ptr, ptr @scmi_virtio_desc, align 4
  %tobool3.not.2.i = icmp eq ptr %2, null
  br i1 %tobool3.not.2.i, label %land.lhs.true.2.i.__scmi_transports_setup.exit_crit_edge, label %if.end11.2.i

land.lhs.true.2.i.__scmi_transports_setup.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__scmi_transports_setup.exit

if.end11.2.i:                                     ; preds = %land.lhs.true.2.i
  %call.2.i = tail call i32 %2() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool12.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool12.not.2.i, label %if.end11.2.i.__scmi_transports_setup.exit_crit_edge, label %if.end11.2.i.cleanup.i_crit_edge

if.end11.2.i.cleanup.i_crit_edge:                 ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.end11.2.i.__scmi_transports_setup.exit_crit_edge: ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__scmi_transports_setup.exit

__scmi_transports_setup.exit:                     ; preds = %if.end11.2.i.__scmi_transports_setup.exit_crit_edge, %land.lhs.true.2.i.__scmi_transports_setup.exit_crit_edge, %cleanup.i
  %ret.3.i = phi i32 [ %ret.1.lcssa.i, %cleanup.i ], [ 0, %if.end11.2.i.__scmi_transports_setup.exit_crit_edge ], [ 0, %land.lhs.true.2.i.__scmi_transports_setup.exit_crit_edge ]
  ret i32 %ret.3.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_base_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_clock_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_perf_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_power_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_reset_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_sensors_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_voltage_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_system_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %prot_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup90

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4632, i32 noundef 3520) #18
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup90_crit_edge, label %if.end5

if.end.cleanup90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup90

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %desc7 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %desc7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %desc7, align 4
  %node = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %node, ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %prev.i, align 4
  %protocols = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %protocols, ptr noundef nonnull @.str.94, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #18
  %xa_flags.i.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_next.i.i, align 4
  %protocols_mtx = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %protocols_mtx, ptr noundef nonnull @.str.78, ptr noundef nonnull @scmi_probe.__key) #18
  %active_protocols = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %active_protocols, ptr noundef nonnull @.str.94, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #18
  %xa_flags.i.i.i150 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %10 = ptrtoint ptr %xa_flags.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108868, ptr %xa_flags.i.i.i150, align 4
  %xa_head.i.i.i151 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %11 = ptrtoint ptr %xa_head.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %xa_head.i.i.i151, align 4
  %idr_base.i.i152 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %idr_base.i.i152 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %idr_base.i.i152, align 4
  %idr_next.i.i153 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %idr_next.i.i153 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %idr_next.i.i153, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tx_idr = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %tx_idr, ptr noundef nonnull @.str.94, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #18
  %xa_flags.i.i.i154 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %xa_flags.i.i.i154 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 67108868, ptr %xa_flags.i.i.i154, align 4
  %xa_head.i.i.i155 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %16 = ptrtoint ptr %xa_head.i.i.i155 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xa_head.i.i.i155, align 4
  %idr_base.i.i156 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %idr_base.i.i156 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %idr_base.i.i156, align 4
  %idr_next.i.i157 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %idr_next.i.i157 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_next.i.i157, align 4
  %rx_idr = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %rx_idr, ptr noundef nonnull @.str.94, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #18
  %xa_flags.i.i.i158 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %19 = ptrtoint ptr %xa_flags.i.i.i158 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 67108868, ptr %xa_flags.i.i.i158, align 4
  %xa_head.i.i.i159 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %xa_head.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %xa_head.i.i.i159, align 4
  %idr_base.i.i160 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %idr_base.i.i160 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %idr_base.i.i160, align 4
  %idr_next.i.i161 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %idr_next.i.i161 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %idr_next.i.i161, align 4
  %handle8 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %25 = ptrtoint ptr %handle8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %handle8, align 4
  %version = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 2
  %version11 = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %version11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %version, ptr %version11, align 4
  %devm_protocol_get = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @scmi_devm_protocol_get, ptr %devm_protocol_get, align 4
  %devm_protocol_put = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %devm_protocol_put to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @scmi_devm_protocol_put, ptr %devm_protocol_put, align 4
  %ops = getelementptr inbounds %struct.scmi_desc, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool12.not = icmp eq ptr %32, null
  br i1 %tobool12.not, label %if.end5.if.end20_crit_edge, label %if.then13

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then13:                                        ; preds = %if.end5
  %call16 = tail call i32 %32(ptr noundef %dev1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then13.if.end20_crit_edge, label %if.then13.cleanup90_crit_edge

if.then13.cleanup90_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup90

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %call.i162 = tail call fastcc i32 @scmi_chan_setup(ptr noundef nonnull %call.i, ptr noundef %dev1, i32 noundef 16, i1 noundef zeroext true) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i, label %if.end24, label %if.end20.cleanup90_crit_edge

if.end20.cleanup90_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup90

if.end24:                                         ; preds = %if.end20
  %call1.i = tail call fastcc i32 @scmi_chan_setup(ptr noundef nonnull %call.i, ptr noundef %dev1, i32 noundef 16, i1 noundef zeroext false) #18
  %33 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc7, align 4
  %ops.i.i = getelementptr inbounds %struct.scmi_desc, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 4
  %get_max_msg.i.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %get_max_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_max_msg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %max_msg.i.i = getelementptr inbounds %struct.scmi_desc, ptr %34, i32 0, i32 4
  %39 = ptrtoint ptr %max_msg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_msg.i.i, align 4
  %max_msg2.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %max_msg2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_msg2.i.i, align 4
  %42 = load i32, ptr %max_msg.i.i, align 4
  br label %cleanup22.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end24
  %call.i.i = tail call ptr @idr_find(ptr noundef %tx_idr, i32 noundef 16) #18
  %tobool5.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i.i, label %if.else.i.i.clear_txrx_setup_crit_edge, label %if.end.i.i

if.else.i.i.clear_txrx_setup_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clear_txrx_setup

if.end.i.i:                                       ; preds = %if.else.i.i
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %get_max_msg8.i.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %get_max_msg8.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_max_msg8.i.i, align 4
  %call9.i.i = tail call i32 %46(ptr noundef nonnull %call.i.i) #18
  %max_msg11.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 4, i32 2
  %47 = ptrtoint ptr %max_msg11.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call9.i.i, ptr %max_msg11.i.i, align 4
  %call12.i.i = tail call ptr @idr_find(ptr noundef %rx_idr, i32 noundef 16) #18
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then14.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %48 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i.i, align 4
  %get_max_msg16.i.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %get_max_msg16.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_max_msg16.i.i, align 4
  %call17.i.i = tail call i32 %51(ptr noundef nonnull %call12.i.i) #18
  br label %cleanup22.sink.split.i.i

cleanup22.sink.split.i.i:                         ; preds = %if.then14.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ %42, %if.then.i.i ], [ %call17.i.i, %if.then14.i.i ]
  %max_msg4.i.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %max_msg4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink.i.i, ptr %max_msg4.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup22.sink.split.i.i, %if.end.i.i.if.end.i_crit_edge
  %tx_minfo.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 4
  %call1.i163 = tail call fastcc i32 @__scmi_xfer_info_init(ptr noundef nonnull %call.i, ptr noundef %tx_minfo.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool2.not.i = icmp eq i32 %call1.i163, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.clear_txrx_setup_crit_edge

if.end.i.clear_txrx_setup_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clear_txrx_setup

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call ptr @idr_find(ptr noundef %rx_idr, i32 noundef 16) #18
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end28_crit_edge, label %scmi_xfer_info_init.exit

land.lhs.true.i.if.end28_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

scmi_xfer_info_init.exit:                         ; preds = %land.lhs.true.i
  %rx_minfo.i = getelementptr inbounds %struct.scmi_info, ptr %call.i, i32 0, i32 5
  %call6.i = tail call fastcc i32 @__scmi_xfer_info_init(ptr noundef nonnull %call.i, ptr noundef %rx_minfo.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool26.not = icmp eq i32 %call6.i, 0
  br i1 %tobool26.not, label %scmi_xfer_info_init.exit.if.end28_crit_edge, label %scmi_xfer_info_init.exit.clear_txrx_setup_crit_edge

scmi_xfer_info_init.exit.clear_txrx_setup_crit_edge: ; preds = %scmi_xfer_info_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %clear_txrx_setup

scmi_xfer_info_init.exit.if.end28_crit_edge:      ; preds = %scmi_xfer_info_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.end28:                                         ; preds = %scmi_xfer_info_init.exit.if.end28_crit_edge, %land.lhs.true.i.if.end28_crit_edge
  %call29 = tail call i32 @scmi_notification_init(ptr noundef %handle8) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end35_crit_edge, label %do.end34

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79) #21
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end28.if.end35_crit_edge
  %call.i164 = tail call fastcc ptr @scmi_get_protocol_instance(ptr noundef %handle8, i8 noundef zeroext 16) #18
  %cmp.i.i.i.not = icmp ugt ptr %call.i164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %call.i164 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82) #21
  tail call void @scmi_notification_exit(ptr noundef %handle8) #18
  br label %clear_txrx_setup

if.end42:                                         ; preds = %if.end35
  tail call void @mutex_lock_nested(ptr noundef nonnull @scmi_list_mutex, i32 noundef 0) #18
  %54 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scmi_list, i32 0, i32 1), align 4
  %call.i.i165 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %54, ptr noundef nonnull @scmi_list) #18
  br i1 %call.i.i165, label %if.end.i.i166, label %if.end42.list_add_tail.exit_crit_edge

if.end42.list_add_tail.exit_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i166:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @scmi_list, i32 0, i32 1), align 4
  %55 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @scmi_list, ptr %node, align 4
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %prev.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %node, ptr %54, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i166, %if.end42.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #18
  %call44 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #18
  %cmp.not187 = icmp eq ptr %call44, null
  br i1 %cmp.not187, label %list_add_tail.exit.cleanup90_crit_edge, label %for.body.lr.ph

list_add_tail.exit.cleanup90_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup90

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %protocols_imp.i = getelementptr %struct.scmi_info, ptr %call.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %child.0188 = phi ptr [ %call44, %for.body.lr.ph ], [ %call87, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prot_id) #18
  %58 = ptrtoint ptr %prot_id to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %prot_id, align 4, !annotation !291
  %call.i.i167 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0188, ptr noundef nonnull @.str.84, ptr noundef nonnull %prot_id, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i167)
  %tobool46.not = icmp sgt i32 %call.i.i167, -1
  br i1 %tobool46.not, label %do.end63, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end63:                                         ; preds = %for.body
  %59 = ptrtoint ptr %prot_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %prot_id, align 4
  %61 = and i32 %60, 4194048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool64.not = icmp eq i32 %61, 0
  br i1 %tobool64.not, label %do.end63.if.end70_crit_edge, label %do.end69

do.end63.if.end70_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end70

do.end69:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.86, i32 noundef %60) #21
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %do.end63.if.end70_crit_edge
  %62 = ptrtoint ptr %prot_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %prot_id, align 4
  %conv = trunc i32 %63 to i8
  %64 = ptrtoint ptr %protocols_imp.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %protocols_imp.i, align 4
  %tobool.not.i168 = icmp eq ptr %65, null
  br i1 %tobool.not.i168, label %if.end70.do.end75_crit_edge, label %for.body.preheader.i

if.end70.do.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end75

for.body.preheader.i:                             ; preds = %if.end70
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %conv)
  %cmp3.i = icmp eq i8 %67, %conv
  br i1 %cmp3.i, label %for.body.preheader.i.if.end76_crit_edge, label %for.cond.i

for.body.preheader.i.if.end76_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr i8, ptr %65, i32 1
  %68 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %conv)
  %cmp3.1.i = icmp eq i8 %69, %conv
  br i1 %cmp3.1.i, label %for.cond.i.if.end76_crit_edge, label %for.cond.1.i

for.cond.i.if.end76_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i8, ptr %65, i32 2
  %70 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %conv)
  %cmp3.2.i = icmp eq i8 %71, %conv
  br i1 %cmp3.2.i, label %for.cond.1.i.if.end76_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end76_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i8, ptr %65, i32 3
  %72 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %conv)
  %cmp3.3.i = icmp eq i8 %73, %conv
  br i1 %cmp3.3.i, label %for.cond.2.i.if.end76_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end76_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr i8, ptr %65, i32 4
  %74 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %conv)
  %cmp3.4.i = icmp eq i8 %75, %conv
  br i1 %cmp3.4.i, label %for.cond.3.i.if.end76_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end76_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr i8, ptr %65, i32 5
  %76 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %conv)
  %cmp3.5.i = icmp eq i8 %77, %conv
  br i1 %cmp3.5.i, label %for.cond.4.i.if.end76_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end76_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr i8, ptr %65, i32 6
  %78 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %conv)
  %cmp3.6.i = icmp eq i8 %79, %conv
  br i1 %cmp3.6.i, label %for.cond.5.i.if.end76_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end76_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr i8, ptr %65, i32 7
  %80 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %conv)
  %cmp3.7.i = icmp eq i8 %81, %conv
  br i1 %cmp3.7.i, label %for.cond.6.i.if.end76_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end76_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr i8, ptr %65, i32 8
  %82 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv)
  %cmp3.8.i = icmp eq i8 %83, %conv
  br i1 %cmp3.8.i, label %for.cond.7.i.if.end76_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end76_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr i8, ptr %65, i32 9
  %84 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %conv)
  %cmp3.9.i = icmp eq i8 %85, %conv
  br i1 %cmp3.9.i, label %for.cond.8.i.if.end76_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end76_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr i8, ptr %65, i32 10
  %86 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %conv)
  %cmp3.10.i = icmp eq i8 %87, %conv
  br i1 %cmp3.10.i, label %for.cond.9.i.if.end76_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end76_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr i8, ptr %65, i32 11
  %88 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.11.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %conv)
  %cmp3.11.i = icmp eq i8 %89, %conv
  br i1 %cmp3.11.i, label %for.cond.10.i.if.end76_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end76_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr i8, ptr %65, i32 12
  %90 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.12.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %91, i8 %conv)
  %cmp3.12.i = icmp eq i8 %91, %conv
  br i1 %cmp3.12.i, label %for.cond.11.i.if.end76_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end76_crit_edge:                 ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr i8, ptr %65, i32 13
  %92 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %93, i8 %conv)
  %cmp3.13.i = icmp eq i8 %93, %conv
  br i1 %cmp3.13.i, label %for.cond.12.i.if.end76_crit_edge, label %for.cond.13.i

for.cond.12.i.if.end76_crit_edge:                 ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr i8, ptr %65, i32 14
  %94 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %conv)
  %cmp3.14.i = icmp eq i8 %95, %conv
  br i1 %cmp3.14.i, label %for.cond.13.i.if.end76_crit_edge, label %scmi_is_protocol_implemented.exit

for.cond.13.i.if.end76_crit_edge:                 ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

scmi_is_protocol_implemented.exit:                ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr i8, ptr %65, i32 15
  %96 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %conv)
  %cmp3.15.i = icmp eq i8 %97, %conv
  br i1 %cmp3.15.i, label %scmi_is_protocol_implemented.exit.if.end76_crit_edge, label %scmi_is_protocol_implemented.exit.do.end75_crit_edge

scmi_is_protocol_implemented.exit.do.end75_crit_edge: ; preds = %scmi_is_protocol_implemented.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end75

scmi_is_protocol_implemented.exit.if.end76_crit_edge: ; preds = %scmi_is_protocol_implemented.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end76

do.end75:                                         ; preds = %scmi_is_protocol_implemented.exit.do.end75_crit_edge, %if.end70.do.end75_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.89, i32 noundef %63) #21
  br label %cleanup

if.end76:                                         ; preds = %scmi_is_protocol_implemented.exit.if.end76_crit_edge, %for.cond.13.i.if.end76_crit_edge, %for.cond.12.i.if.end76_crit_edge, %for.cond.11.i.if.end76_crit_edge, %for.cond.10.i.if.end76_crit_edge, %for.cond.9.i.if.end76_crit_edge, %for.cond.8.i.if.end76_crit_edge, %for.cond.7.i.if.end76_crit_edge, %for.cond.6.i.if.end76_crit_edge, %for.cond.5.i.if.end76_crit_edge, %for.cond.4.i.if.end76_crit_edge, %for.cond.3.i.if.end76_crit_edge, %for.cond.2.i.if.end76_crit_edge, %for.cond.1.i.if.end76_crit_edge, %for.cond.i.if.end76_crit_edge, %for.body.preheader.i.if.end76_crit_edge
  %add = add i32 %63, 1
  %call78 = call i32 @idr_alloc(ptr noundef %active_protocols, ptr noundef nonnull %child.0188, i32 noundef %63, i32 noundef %add, i32 noundef 3264) #18
  %98 = ptrtoint ptr %prot_id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %prot_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call78, i32 %99)
  %cmp79.not = icmp eq i32 %call78, %99
  br i1 %cmp79.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.92, i32 noundef %99) #21
  br label %cleanup

if.end85:                                         ; preds = %if.end76
  %call86 = call ptr @of_node_get(ptr noundef nonnull %child.0188) #18
  %100 = ptrtoint ptr %prot_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %prot_id, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @scmi_requested_devices_mtx, i32 noundef 0) #18
  %call.i170 = call ptr @idr_find(ptr noundef nonnull @scmi_requested_devices, i32 noundef %101) #18
  %tobool.not.i171 = icmp eq ptr %call.i170, null
  br i1 %tobool.not.i171, label %if.end85.scmi_create_protocol_devices.exit_crit_edge, label %for.cond.preheader.i

if.end85.scmi_create_protocol_devices.exit_crit_edge: ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_create_protocol_devices.exit

for.cond.preheader.i:                             ; preds = %if.end85
  %102 = ptrtoint ptr %call.i170 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn11.i = load ptr, ptr %call.i170, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %call.i170
  br i1 %cmp.not12.i, label %for.cond.preheader.i.scmi_create_protocol_devices.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.scmi_create_protocol_devices.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_create_protocol_devices.exit

for.body.i:                                       ; preds = %scmi_create_protocol_device.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %scmi_create_protocol_device.exit.i.for.body.i_crit_edge ], [ %.pn11.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rdev.0.i = getelementptr i8, ptr %.pn13.i, i32 -4
  %103 = ptrtoint ptr %rdev.0.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rdev.0.i, align 4
  %name.i = getelementptr inbounds %struct.scmi_device_id, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name.i, align 4
  %call.i.i172 = call fastcc ptr @scmi_get_protocol_device(ptr noundef nonnull %child.0188, ptr noundef %call.i, i32 noundef %101, ptr noundef %106) #18
  %tobool.not.i.i173 = icmp eq ptr %call.i.i172, null
  br i1 %tobool.not.i.i173, label %for.body.i.scmi_create_protocol_device.exit.i_crit_edge, label %if.end.i.i174

for.body.i.scmi_create_protocol_device.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_create_protocol_device.exit.i

if.end.i.i174:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @scmi_set_handle(ptr noundef nonnull %call.i.i172) #18
  br label %scmi_create_protocol_device.exit.i

scmi_create_protocol_device.exit.i:               ; preds = %if.end.i.i174, %for.body.i.scmi_create_protocol_device.exit.i_crit_edge
  %107 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %call.i170
  br i1 %cmp.not.i, label %scmi_create_protocol_device.exit.i.scmi_create_protocol_devices.exit_crit_edge, label %scmi_create_protocol_device.exit.i.for.body.i_crit_edge

scmi_create_protocol_device.exit.i.for.body.i_crit_edge: ; preds = %scmi_create_protocol_device.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

scmi_create_protocol_device.exit.i.scmi_create_protocol_devices.exit_crit_edge: ; preds = %scmi_create_protocol_device.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %scmi_create_protocol_devices.exit

scmi_create_protocol_devices.exit:                ; preds = %scmi_create_protocol_device.exit.i.scmi_create_protocol_devices.exit_crit_edge, %for.cond.preheader.i.scmi_create_protocol_devices.exit_crit_edge, %if.end85.scmi_create_protocol_devices.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @scmi_requested_devices_mtx) #18
  br label %cleanup

cleanup:                                          ; preds = %scmi_create_protocol_devices.exit, %do.end84, %do.end75, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prot_id) #18
  %call87 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0188) #18
  %cmp.not = icmp eq ptr %call87, null
  br i1 %cmp.not, label %cleanup.cleanup90_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup.cleanup90_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup90

clear_txrx_setup:                                 ; preds = %do.end41, %scmi_xfer_info_init.exit.clear_txrx_setup_crit_edge, %if.end.i.clear_txrx_setup_crit_edge, %if.else.i.i.clear_txrx_setup_crit_edge
  %ret.0 = phi i32 [ %call6.i, %scmi_xfer_info_init.exit.clear_txrx_setup_crit_edge ], [ %53, %do.end41 ], [ -22, %if.else.i.i.clear_txrx_setup_crit_edge ], [ %call1.i163, %if.end.i.clear_txrx_setup_crit_edge ]
  %108 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc7, align 4
  %ops.i = getelementptr inbounds %struct.scmi_desc, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i, align 4
  %chan_free.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %chan_free.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chan_free.i, align 4
  %call.i176 = tail call i32 @idr_for_each(ptr noundef %tx_idr, ptr noundef %113, ptr noundef %tx_idr) #18
  tail call void @idr_destroy(ptr noundef %tx_idr) #18
  %114 = ptrtoint ptr %desc7 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc7, align 4
  %ops3.i = getelementptr inbounds %struct.scmi_desc, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops3.i, align 4
  %chan_free4.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %chan_free4.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chan_free4.i, align 4
  %call5.i = tail call i32 @idr_for_each(ptr noundef %rx_idr, ptr noundef %119, ptr noundef %rx_idr) #18
  tail call void @idr_destroy(ptr noundef %rx_idr) #18
  br label %cleanup90

cleanup90:                                        ; preds = %clear_txrx_setup, %cleanup.cleanup90_crit_edge, %list_add_tail.exit.cleanup90_crit_edge, %if.end20.cleanup90_crit_edge, %if.then13.cleanup90_crit_edge, %if.end.cleanup90_crit_edge, %entry.cleanup90_crit_edge
  %retval.0 = phi i32 [ %ret.0, %clear_txrx_setup ], [ -22, %entry.cleanup90_crit_edge ], [ -12, %if.end.cleanup90_crit_edge ], [ %call16, %if.then13.cleanup90_crit_edge ], [ %call.i162, %if.end20.cleanup90_crit_edge ], [ 0, %list_add_tail.exit.cleanup90_crit_edge ], [ 0, %cleanup.cleanup90_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #18
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @scmi_list_mutex, i32 noundef 0) #18
  %users = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end3_crit_edge

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %if.end3

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #18
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i, %if.else.if.end3_crit_edge
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #18
  %handle = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 3
  tail call void @scmi_notification_exit(ptr noundef %handle) #18
  %protocols_mtx = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %protocols_mtx, i32 noundef 0) #18
  %protocols = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 8
  tail call void @idr_destroy(ptr noundef %protocols) #18
  tail call void @mutex_unlock(ptr noundef %protocols_mtx) #18
  %active_protocols = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %id, align 4
  %call521 = call ptr @idr_get_next(ptr noundef %active_protocols, ptr noundef nonnull %id) #18
  %cmp.not22 = icmp eq ptr %call521, null
  br i1 %cmp.not22, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %call523 = phi ptr [ %call5, %for.body.for.body_crit_edge ], [ %call521, %if.end3.for.body_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call523) #18
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %add = add i32 %14, 1
  store i32 %add, ptr %id, align 4
  %call5 = call ptr @idr_get_next(ptr noundef %active_protocols, ptr noundef nonnull %id) #18
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  call void @idr_destroy(ptr noundef %active_protocols) #18
  %tx_idr.i = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 6
  %desc.i = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.scmi_desc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %chan_free.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %chan_free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan_free.i, align 4
  %call.i = call i32 @idr_for_each(ptr noundef %tx_idr.i, ptr noundef %20, ptr noundef %tx_idr.i) #18
  call void @idr_destroy(ptr noundef %tx_idr.i) #18
  %rx_idr.i = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc.i, align 4
  %ops3.i = getelementptr inbounds %struct.scmi_desc, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops3.i, align 4
  %chan_free4.i = getelementptr inbounds %struct.scmi_transport_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %chan_free4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_free4.i, align 4
  %call5.i = call i32 @idr_for_each(ptr noundef %rx_idr.i, ptr noundef %26, ptr noundef %rx_idr.i) #18
  call void @idr_destroy(ptr noundef %rx_idr.i) #18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi i32 [ %call5.i, %for.end ], [ -16, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @scmi_devm_protocol_get(ptr noundef %sdev, i8 noundef zeroext %protocol_id, ptr noundef writeonly %ph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle1, align 8
  %tobool.not = icmp eq ptr %ph, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @scmi_devm_release_protocol, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.95) #18
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc ptr @scmi_get_protocol_instance(ptr noundef %1, i8 noundef zeroext %protocol_id)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @devres_free(ptr noundef nonnull %call2) #18
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call2, align 4
  %protocol_id12 = getelementptr inbounds %struct.scmi_protocol_devres, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %protocol_id12 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %protocol_id, ptr %protocol_id12, align 4
  %dev = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call2) #18
  %ph13 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call7, i32 0, i32 5
  %4 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ph13, ptr %ph, align 4
  %proto = getelementptr inbounds %struct.scmi_protocol_instance, ptr %call7, i32 0, i32 1
  %5 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proto, align 4
  %ops = getelementptr inbounds %struct.scmi_protocol, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.then9 ], [ %8, %if.end10 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_devm_protocol_put(ptr noundef %sdev, i8 noundef zeroext %protocol_id) #0 align 64 {
entry:
  %protocol_id.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %protocol_id.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %protocol_id, ptr %protocol_id.addr, align 1
  %dev = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %call = call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @scmi_devm_release_protocol, ptr noundef nonnull @scmi_devm_protocol_match, ptr noundef nonnull %protocol_id.addr) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !289

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_notification_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_notification_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_devm_release_protocol(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %protocol_id = getelementptr inbounds %struct.scmi_protocol_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol_id, align 4
  tail call void @scmi_protocol_release(ptr noundef %1, i8 noundef zeroext %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_devm_protocol_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  %tobool1.not = icmp eq ptr %data, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !290

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1287, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %protocol_id = getelementptr inbounds %struct.scmi_protocol_devres, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol_id, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  %conv26 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv26, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__scmi_xfer_info_init(ptr nocapture noundef readonly %sinfo, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sinfo, align 4
  %desc2 = getelementptr inbounds %struct.scmi_info, ptr %sinfo, i32 0, i32 1
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %max_msg = getelementptr inbounds %struct.scmi_xfers_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_msg, align 4
  %6 = add i32 %5, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %6)
  %7 = icmp ult i32 %6, -1024
  br i1 %7, label %do.end26, label %if.end62, !prof !290

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #18
  %8 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_msg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.96, i32 noundef %9, i32 noundef 1024) #21
  br label %cleanup

if.end62:                                         ; preds = %entry
  %pending_xfers = getelementptr inbounds %struct.scmi_xfers_info, ptr %info, i32 0, i32 4
  %10 = call ptr @memset(ptr %pending_xfers, i32 0, i32 2048)
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 128, i32 noundef 3520) #18
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %info, align 4
  %tobool82.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool82.not, label %if.end62.cleanup_crit_edge, label %if.end84

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end84:                                         ; preds = %if.end62
  %free_xfers = getelementptr inbounds %struct.scmi_xfers_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %free_xfers to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %free_xfers, align 4
  %13 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp86138 = icmp sgt i32 %14, 0
  br i1 %cmp86138, label %for.body.lr.ph, label %if.end84.do.body105_crit_edge

if.end84.do.body105_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body105

for.body.lr.ph:                                   ; preds = %if.end84
  %max_msg_size = getelementptr inbounds %struct.scmi_desc, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %hlist_add_head.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %hlist_add_head.exit.for.body_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 168, i32 noundef 3520) #18
  %tobool88.not = icmp eq ptr %call.i, null
  br i1 %tobool88.not, label %for.body.cleanup_crit_edge, label %devm_kcalloc.exit

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %for.body
  %15 = ptrtoint ptr %max_msg_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_msg_size, align 4
  %call5.i.i134 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %16, i32 noundef 3520) #18
  %rx = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i134, ptr %rx, align 4
  %tobool94.not = icmp eq ptr %call5.i.i134, null
  br i1 %tobool94.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end96

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end96:                                         ; preds = %devm_kcalloc.exit
  %tx = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i134, ptr %tx, align 4
  %done = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @init_completion.__key) #18
  %lock = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.98, ptr noundef nonnull @__scmi_xfer_info_init.__key, i16 noundef signext 3) #18
  %node = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %free_xfers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free_xfers, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %node, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end96.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end96.hlist_add_head.exit_crit_edge:           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #20
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end96.hlist_add_head.exit_crit_edge
  %24 = ptrtoint ptr %free_xfers to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %free_xfers, align 4
  %pprev34.i = getelementptr inbounds %struct.scmi_xfer, ptr %call.i, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %free_xfers, ptr %pprev34.i, align 4
  %inc = add nuw nsw i32 %i.0139, 1
  %26 = ptrtoint ptr %max_msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_msg, align 4
  %cmp86 = icmp slt i32 %inc, %27
  br i1 %cmp86, label %hlist_add_head.exit.for.body_crit_edge, label %hlist_add_head.exit.do.body105_crit_edge

hlist_add_head.exit.do.body105_crit_edge:         ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body105

hlist_add_head.exit.for.body_crit_edge:           ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

do.body105:                                       ; preds = %hlist_add_head.exit.do.body105_crit_edge, %if.end84.do.body105_crit_edge
  %xfer_lock = getelementptr inbounds %struct.scmi_xfers_info, ptr %info, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %xfer_lock, ptr noundef nonnull @.str.100, ptr noundef nonnull @__scmi_xfer_info_init.__key.99, i16 noundef signext 3) #18
  br label %cleanup

cleanup:                                          ; preds = %do.body105, %devm_kcalloc.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end26
  %retval.0 = phi i32 [ -22, %do.end26 ], [ 0, %do.body105 ], [ -12, %if.end62.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_set_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %impl_ver = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %impl_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %impl_ver, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protocol_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %version = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %version, align 4
  %conv = zext i16 %3 to i32
  %minor_ver = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %minor_ver, align 2
  %conv2 = zext i16 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %conv, i32 noundef %conv2)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vendor_id = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 2, i32 5
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.106, ptr noundef %vendor_id)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sub_vendor_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub_vendor_id = getelementptr inbounds %struct.scmi_info, ptr %1, i32 0, i32 2, i32 6
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.106, ptr noundef %sub_vendor_id)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !111, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !146, !148, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !212, !214, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !245, !247, !248, !249, !250, !252, !253, !255, !256, !258, !259, !261, !263, !264, !266, !268, !269, !271, !273, !274, !276, !278}
!llvm.named.register.sp = !{!279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @__tracepoint_scmi_xfer_begin, !1, !"__tracepoint_scmi_xfer_begin", i1 false, i1 false}
!1 = !{!"../include/trace/events/scmi.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_scmi_xfer_begin, !1, !"__tracepoint_ptr_scmi_xfer_begin", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_scmi_xfer_begin, !1, !"__SCK__tp_func_scmi_xfer_begin", i1 false, i1 false}
!4 = !{ptr @__tracepoint_scmi_xfer_end, !5, !"__tracepoint_scmi_xfer_end", i1 false, i1 false}
!5 = !{!"../include/trace/events/scmi.h", i32 36, i32 1}
!6 = !{ptr @__tracepoint_ptr_scmi_xfer_end, !5, !"__tracepoint_ptr_scmi_xfer_end", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_scmi_xfer_end, !5, !"__SCK__tp_func_scmi_xfer_end", i1 false, i1 false}
!8 = !{ptr @__tracepoint_scmi_rx_done, !9, !"__tracepoint_scmi_rx_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/scmi.h", i32 62, i32 1}
!10 = !{ptr @__tracepoint_ptr_scmi_rx_done, !9, !"__tracepoint_ptr_scmi_rx_done", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_scmi_rx_done, !9, !"__SCK__tp_func_scmi_rx_done", i1 false, i1 false}
!12 = !{ptr @event_class_scmi_xfer_begin, !1, !"event_class_scmi_xfer_begin", i1 false, i1 false}
!13 = !{ptr @event_scmi_xfer_begin, !1, !"event_scmi_xfer_begin", i1 false, i1 false}
!14 = !{ptr @__event_scmi_xfer_begin, !1, !"__event_scmi_xfer_begin", i1 false, i1 false}
!15 = !{ptr @event_class_scmi_xfer_end, !5, !"event_class_scmi_xfer_end", i1 false, i1 false}
!16 = !{ptr @event_scmi_xfer_end, !5, !"event_scmi_xfer_end", i1 false, i1 false}
!17 = !{ptr @__event_scmi_xfer_end, !5, !"__event_scmi_xfer_end", i1 false, i1 false}
!18 = !{ptr @event_class_scmi_rx_done, !9, !"event_class_scmi_rx_done", i1 false, i1 false}
!19 = !{ptr @event_scmi_rx_done, !9, !"event_scmi_rx_done", i1 false, i1 false}
!20 = !{ptr @__event_scmi_rx_done, !9, !"__event_scmi_rx_done", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_scmi_xfer_begin, !1, !"__bpf_trace_tp_map_scmi_xfer_begin", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_scmi_xfer_end, !5, !"__bpf_trace_tp_map_scmi_xfer_end", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_scmi_rx_done, !9, !"__bpf_trace_tp_map_scmi_rx_done", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 707, i32 3}
!26 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1190, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @scmi_protocol_release.__UNIQUE_ID_ddebug345, !29, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1644, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @scmi_protocol_device_request.__UNIQUE_ID_ddebug362, !34, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1663, i32 5}
!39 = !{ptr @scmi_protocol_device_request._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @scmi_protocol_device_request._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1701, i32 4}
!43 = !{ptr @scmi_protocol_device_request._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @scmi_protocol_device_request._entry_ptr.10, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1734, i32 4}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @scmi_protocol_device_request._entry.11, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @scmi_protocol_device_request._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1765, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @scmi_protocol_device_unrequest.__UNIQUE_ID_ddebug363, !52, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!55 = !{ptr @__initcall__kmod_scmi_module__369_2093_scmi_driver_init4, !56, !"__initcall__kmod_scmi_module__369_2093_scmi_driver_init4", i1 false, i1 false}
!56 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2093, i32 1}
!57 = !{ptr @__exitcall_scmi_driver_exit, !58, !"__exitcall_scmi_driver_exit", i1 false, i1 false}
!58 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2113, i32 1}
!59 = !{ptr @__UNIQUE_ID_alias370, !60, !"__UNIQUE_ID_alias370", i1 false, i1 false}
!60 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2115, i32 1}
!61 = !{ptr @__UNIQUE_ID_author371, !62, !"__UNIQUE_ID_author371", i1 false, i1 false}
!62 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2116, i32 1}
!63 = !{ptr @__UNIQUE_ID_description372, !64, !"__UNIQUE_ID_description372", i1 false, i1 false}
!64 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2117, i32 1}
!65 = !{ptr @__UNIQUE_ID_file373, !66, !"__UNIQUE_ID_file373", i1 false, i1 false}
!66 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2118, i32 1}
!67 = !{ptr @__UNIQUE_ID_license374, !66, !"__UNIQUE_ID_license374", i1 false, i1 false}
!68 = !{ptr @__tpstrtab_scmi_xfer_begin, !1, !"__tpstrtab_scmi_xfer_begin", i1 false, i1 false}
!69 = !{ptr @__tpstrtab_scmi_xfer_end, !5, !"__tpstrtab_scmi_xfer_end", i1 false, i1 false}
!70 = !{ptr @__tpstrtab_scmi_rx_done, !9, !"__tpstrtab_scmi_rx_done", i1 false, i1 false}
!71 = !{ptr @str__scmi__trace_system_name, !72, !"str__scmi__trace_system_name", i1 false, i1 false}
!72 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!73 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @trace_event_fields_scmi_xfer_begin, !1, !"trace_event_fields_scmi_xfer_begin", i1 false, i1 false}
!83 = !{ptr @trace_event_type_funcs_scmi_xfer_begin, !1, !"trace_event_type_funcs_scmi_xfer_begin", i1 false, i1 false}
!84 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @print_fmt_scmi_xfer_begin, !1, !"print_fmt_scmi_xfer_begin", i1 false, i1 false}
!86 = !{ptr @.str.28, !5, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @trace_event_fields_scmi_xfer_end, !5, !"trace_event_fields_scmi_xfer_end", i1 false, i1 false}
!88 = !{ptr @trace_event_type_funcs_scmi_xfer_end, !5, !"trace_event_type_funcs_scmi_xfer_end", i1 false, i1 false}
!89 = !{ptr @.str.29, !5, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @print_fmt_scmi_xfer_end, !5, !"print_fmt_scmi_xfer_end", i1 false, i1 false}
!91 = !{ptr @.str.30, !9, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @trace_event_fields_scmi_rx_done, !9, !"trace_event_fields_scmi_rx_done", i1 false, i1 false}
!93 = !{ptr @trace_event_type_funcs_scmi_rx_done, !9, !"trace_event_type_funcs_scmi_rx_done", i1 false, i1 false}
!94 = !{ptr @.str.31, !9, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @print_fmt_scmi_rx_done, !9, !"print_fmt_scmi_rx_done", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 624, i32 3}
!98 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @scmi_handle_notification._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @scmi_handle_notification._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 373, i32 4}
!103 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @scmi_xfer_get._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @scmi_xfer_get._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @transfer_last_id, !107, !"transfer_last_id", i1 false, i1 false}
!107 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 58, i32 17}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 292, i32 7}
!110 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!111 = !{ptr @.str.36, !9, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!113 = !{ptr @.str.37, !9, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!116 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 562, i32 3}
!119 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @scmi_xfer_command_acquire._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @scmi_xfer_command_acquire._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 587, i32 3}
!124 = !{ptr @scmi_xfer_command_acquire._entry.41, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @scmi_xfer_command_acquire._entry_ptr.43, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 470, i32 3}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @scmi_msg_response_validate._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @scmi_msg_response_validate._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 486, i32 4}
!133 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @scmi_msg_response_validate._entry.46, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @scmi_msg_response_validate._entry_ptr.49, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1086, i32 4}
!138 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @scmi_alloc_init_protocol_instance._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @scmi_alloc_init_protocol_instance._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1092, i32 2}
!143 = !{ptr @scmi_alloc_init_protocol_instance.__UNIQUE_ID_ddebug344, !142, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!144 = !{ptr @xfer_ops, !145, !"xfer_ops", i1 false, i1 false}
!145 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 995, i32 35}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 918, i32 3}
!148 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @xfer_get_init._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @xfer_get_init._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !152, !"__print_once", i1 false, i1 false}
!152 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 764, i32 3}
!153 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @do_xfer._entry, !152, !"_entry", i1 false, i1 false}
!156 = !{ptr @do_xfer._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 797, i32 3}
!159 = !{ptr @do_xfer.__UNIQUE_ID_ddebug343, !158, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 825, i32 4}
!162 = !{ptr @do_xfer._entry.58, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @do_xfer._entry_ptr.60, !161, !"_entry_ptr", i1 false, i1 false}
!164 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!165 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!166 = !{ptr @scmi_linux_errmap, !167, !"scmi_linux_errmap", i1 false, i1 false}
!167 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 159, i32 18}
!168 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!169 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!170 = !{ptr @init_completion.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../include/linux/completion.h", i32 87, i32 2}
!172 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 56, i32 8}
!175 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @scmi_list_mutex, !174, !"scmi_list_mutex", i1 false, i1 false}
!177 = !{ptr @scmi_list, !178, !"scmi_list", i1 false, i1 false}
!178 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 54, i32 8}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 61, i32 8}
!181 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @scmi_requested_devices_mtx, !180, !"scmi_requested_devices_mtx", i1 false, i1 false}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 60, i32 8}
!185 = !{ptr @scmi_requested_devices, !184, !"scmi_requested_devices", i1 false, i1 false}
!186 = !{ptr @.str.67, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1553, i32 2}
!188 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @scmi_get_protocol_device.__UNIQUE_ID_ddebug361, !187, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!190 = !{ptr @.str.69, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1557, i32 3}
!192 = !{ptr @scmi_get_protocol_device._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @scmi_get_protocol_device._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1563, i32 3}
!196 = !{ptr @scmi_get_protocol_device._entry.70, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @scmi_get_protocol_device._entry_ptr.72, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1505, i32 3}
!200 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @scmi_chan_setup._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @scmi_chan_setup._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.75, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2047, i32 4}
!205 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @__scmi_transports_setup._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @__scmi_transports_setup._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @scmi_of_match, !209, !"scmi_of_match", i1 false, i1 false}
!209 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1993, i32 34}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2010, i32 14}
!212 = !{ptr @scmi_driver, !213, !"scmi_driver", i1 false, i1 false}
!213 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 2008, i32 31}
!214 = !{ptr @scmi_probe.__key, !215, !"__key", i1 false, i1 false}
!215 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1826, i32 2}
!216 = !{ptr @.str.78, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.79, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1854, i32 3}
!219 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @scmi_probe._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @scmi_probe._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.82, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1863, i32 3}
!224 = !{ptr @scmi_probe._entry.81, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @scmi_probe._entry_ptr.83, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1874, i32 35}
!228 = !{ptr @.str.86, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1878, i32 4}
!230 = !{ptr @scmi_probe._entry.85, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @scmi_probe._entry_ptr.87, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.89, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1881, i32 4}
!234 = !{ptr @scmi_probe._entry.88, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @scmi_probe._entry_ptr.90, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.92, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1893, i32 4}
!238 = !{ptr @scmi_probe._entry.91, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @scmi_probe._entry_ptr.93, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @xa_init_flags.__key, !241, !"__key", i1 false, i1 false}
!241 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!242 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.95, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1263, i32 9}
!245 = !{ptr @.str.96, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1386, i32 3}
!247 = !{ptr @.str.97, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @__scmi_xfer_info_init._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @__scmi_xfer_info_init._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @__scmi_xfer_info_init.__key, !251, !"__key", i1 false, i1 false}
!251 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1418, i32 3}
!252 = !{ptr @.str.98, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @__scmi_xfer_info_init.__key.99, !254, !"__key", i1 false, i1 false}
!254 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1424, i32 2}
!255 = !{ptr @.str.100, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @versions_groups, !257, !"versions_groups", i1 false, i1 false}
!257 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1990, i32 1}
!258 = !{ptr @versions_group, !257, !"versions_group", i1 false, i1 false}
!259 = !{ptr @versions_attrs, !260, !"versions_attrs", i1 false, i1 false}
!260 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1983, i32 26}
!261 = !{ptr @.str.101, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1963, i32 8}
!263 = !{ptr @dev_attr_firmware_version, !262, !"dev_attr_firmware_version", i1 false, i1 false}
!264 = !{ptr @.str.102, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1961, i32 22}
!266 = !{ptr @.str.103, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1954, i32 8}
!268 = !{ptr @dev_attr_protocol_version, !267, !"dev_attr_protocol_version", i1 false, i1 false}
!269 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1951, i32 22}
!271 = !{ptr @.str.105, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1972, i32 8}
!273 = !{ptr @dev_attr_vendor_id, !272, !"dev_attr_vendor_id", i1 false, i1 false}
!274 = !{ptr @.str.106, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1970, i32 22}
!276 = !{ptr @.str.107, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/firmware/arm_scmi/driver.c", i32 1981, i32 8}
!278 = !{ptr @dev_attr_sub_vendor_id, !277, !"dev_attr_sub_vendor_id", i1 false, i1 false}
!279 = !{!"sp"}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{!"branch_weights", i32 2000, i32 1}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{!"auto-init"}
!292 = !{i64 2155863707}
!293 = !{i64 2155865107}
!294 = !{i64 2148243957, i64 2148243989, i64 2148244018, i64 2148244052, i64 2148244083, i64 2148244106}
!295 = !{i64 2148344250}
!296 = !{i64 726163, i64 726187, i64 726208, i64 726225, i64 726242}
!297 = !{i64 2148344476}
!298 = !{i64 2156258547}
!299 = !{i64 2156258389}
!300 = !{i64 2148331958}
!301 = !{i64 2148246422, i64 2148246454, i64 2148246483, i64 2148246517, i64 2148246548, i64 2148246571}
!302 = !{i64 2149657940}
!303 = !{i64 2148897669, i64 2148897674, i64 2148897687, i64 2148897731, i64 2148897765, i64 2148897786}
!304 = !{i8 0, i8 2}
!305 = !{i64 2148327838}
!306 = !{i64 2148243147, i64 2148243179, i64 2148243208, i64 2148243242, i64 2148243273, i64 2148243296}
!307 = !{i64 2148328067}
!308 = !{i64 2148242427, i64 2148242453, i64 2148242482, i64 2148242516, i64 2148242547, i64 2148242570}
!309 = !{i64 2153428726}
!310 = !{i64 2153429007}
!311 = !{i64 2149358512}
!312 = !{i64 2149359548}
!313 = !{i64 2156314911}
!314 = !{i64 2156317898}
!315 = !{i64 2156317740}
!316 = !{i64 2153390055}
!317 = !{i64 2153390334}
!318 = !{i64 2153411469}
!319 = !{i64 2153411748}
