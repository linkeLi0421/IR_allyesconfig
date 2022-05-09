; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc3/trace.c_pt.bc'
source_filename = "../drivers/usb/dwc3/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.106, %struct.trace_event, ptr, ptr, %union.anon.107, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%union.anon.118 = type { %struct.bpf_raw_event_map }
%union.anon.119 = type { %struct.bpf_raw_event_map }
%union.anon.120 = type { %struct.bpf_raw_event_map }
%union.anon.121 = type { %struct.bpf_raw_event_map }
%union.anon.122 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dwc3_log_io = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_dwc3_log_event = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_dwc3_log_ctrl = type { %struct.trace_entry, i8, i8, i16, i16, i16, i32, [0 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.trace_event_raw_dwc3_log_request = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dwc3_log_generic_cmd = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dwc3_log_gadget_ep_cmd = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32, i32 }
%struct.trace_event_raw_dwc3_log_trb = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dwc3_trb = type { i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.trace_event_raw_dwc3_log_ep = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i8, i8, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_dwc3_readl = internal constant [11 x i8] c"dwc3_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_readl }, align 4
@__tracepoint_dwc3_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_readl, ptr null, ptr @__traceiter_dwc3_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_readl = internal constant ptr @__tracepoint_dwc3_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_writel = internal constant [12 x i8] c"dwc3_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_writel }, align 4
@__tracepoint_dwc3_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_writel, ptr null, ptr @__traceiter_dwc3_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_writel = internal constant ptr @__tracepoint_dwc3_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_event = internal constant [11 x i8] c"dwc3_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_event = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_event }, align 4
@__tracepoint_dwc3_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_event, ptr null, ptr @__traceiter_dwc3_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_event = internal constant ptr @__tracepoint_dwc3_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_ctrl_req = internal constant [14 x i8] c"dwc3_ctrl_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_ctrl_req = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_ctrl_req }, align 4
@__tracepoint_dwc3_ctrl_req = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_ctrl_req, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_ctrl_req, ptr null, ptr @__traceiter_dwc3_ctrl_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_ctrl_req = internal constant ptr @__tracepoint_dwc3_ctrl_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_alloc_request = internal constant [19 x i8] c"dwc3_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_alloc_request }, align 4
@__tracepoint_dwc3_alloc_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_alloc_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_alloc_request, ptr null, ptr @__traceiter_dwc3_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_alloc_request = internal constant ptr @__tracepoint_dwc3_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_free_request = internal constant [18 x i8] c"dwc3_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_free_request }, align 4
@__tracepoint_dwc3_free_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_free_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_free_request, ptr null, ptr @__traceiter_dwc3_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_free_request = internal constant ptr @__tracepoint_dwc3_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_ep_queue = internal constant [14 x i8] c"dwc3_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_ep_queue }, align 4
@__tracepoint_dwc3_ep_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_ep_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_ep_queue, ptr null, ptr @__traceiter_dwc3_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_ep_queue = internal constant ptr @__tracepoint_dwc3_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_ep_dequeue = internal constant [16 x i8] c"dwc3_ep_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_ep_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_ep_dequeue }, align 4
@__tracepoint_dwc3_ep_dequeue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_ep_dequeue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_ep_dequeue, ptr null, ptr @__traceiter_dwc3_ep_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_ep_dequeue = internal constant ptr @__tracepoint_dwc3_ep_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_giveback = internal constant [21 x i8] c"dwc3_gadget_giveback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_giveback = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_giveback }, align 4
@__tracepoint_dwc3_gadget_giveback = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_gadget_giveback, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_giveback, ptr null, ptr @__traceiter_dwc3_gadget_giveback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_giveback = internal constant ptr @__tracepoint_dwc3_gadget_giveback, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_generic_cmd = internal constant [24 x i8] c"dwc3_gadget_generic_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_generic_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_generic_cmd }, align 4
@__tracepoint_dwc3_gadget_generic_cmd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_gadget_generic_cmd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_generic_cmd, ptr null, ptr @__traceiter_dwc3_gadget_generic_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_generic_cmd = internal constant ptr @__tracepoint_dwc3_gadget_generic_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_ep_cmd = internal constant [19 x i8] c"dwc3_gadget_ep_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_ep_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_ep_cmd }, align 4
@__tracepoint_dwc3_gadget_ep_cmd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_gadget_ep_cmd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_ep_cmd, ptr null, ptr @__traceiter_dwc3_gadget_ep_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_ep_cmd = internal constant ptr @__tracepoint_dwc3_gadget_ep_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_prepare_trb = internal constant [17 x i8] c"dwc3_prepare_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_prepare_trb = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_prepare_trb }, align 4
@__tracepoint_dwc3_prepare_trb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_prepare_trb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_prepare_trb, ptr null, ptr @__traceiter_dwc3_prepare_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_prepare_trb = internal constant ptr @__tracepoint_dwc3_prepare_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_complete_trb = internal constant [18 x i8] c"dwc3_complete_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_complete_trb = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_complete_trb }, align 4
@__tracepoint_dwc3_complete_trb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_complete_trb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_complete_trb, ptr null, ptr @__traceiter_dwc3_complete_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_complete_trb = internal constant ptr @__tracepoint_dwc3_complete_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_ep_enable = internal constant [22 x i8] c"dwc3_gadget_ep_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_ep_enable = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_ep_enable }, align 4
@__tracepoint_dwc3_gadget_ep_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_gadget_ep_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_ep_enable, ptr null, ptr @__traceiter_dwc3_gadget_ep_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_ep_enable = internal constant ptr @__tracepoint_dwc3_gadget_ep_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_ep_disable = internal constant [23 x i8] c"dwc3_gadget_ep_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_ep_disable = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_ep_disable }, align 4
@__tracepoint_dwc3_gadget_ep_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_dwc3_gadget_ep_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_ep_disable, ptr null, ptr @__traceiter_dwc3_gadget_ep_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_ep_disable = internal constant ptr @__tracepoint_dwc3_gadget_ep_disable, section "__tracepoints_ptrs", align 4
@str__dwc3__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc3\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_dwc3_log_io = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.104 { %struct.anon.105 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_io = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_io, ptr @perf_trace_dwc3_log_io, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_io, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_io, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_io, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_io = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_io, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_io = internal global { [83 x i8], [45 x i8] } { [83 x i8] c"\22addr %p offset %04x value %08x\22, REC->base + REC->offset, REC->offset, REC->value\00", [45 x i8] zeroinitializer }, align 32
@event_dwc3_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_io, %union.anon.106 { ptr @__tracepoint_dwc3_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_io }, ptr @print_fmt_dwc3_log_io, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_readl = internal global ptr @event_dwc3_readl, section "_ftrace_events", align 4
@event_dwc3_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_io, %union.anon.106 { ptr @__tracepoint_dwc3_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_io }, ptr @print_fmt_dwc3_log_io, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_writel = internal global ptr @event_dwc3_writel, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_event = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_event = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_event, ptr @perf_trace_dwc3_log_event, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_event, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_event = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_event, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_event = internal global { [98 x i8], [62 x i8] } { [98 x i8] c"\22event (%08x): %s\22, REC->event, dwc3_decode_event(__get_str(str), 500, REC->event, REC->ep0state)\00", [62 x i8] zeroinitializer }, align 32
@event_dwc3_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_event, %union.anon.106 { ptr @__tracepoint_dwc3_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_event }, ptr @print_fmt_dwc3_log_event, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_event = internal global ptr @event_dwc3_event, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_ctrl = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.56, %union.anon.104 { %struct.anon.105 { ptr @.str.57, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.104 { %struct.anon.105 { ptr @.str.58, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.104 { %struct.anon.105 { ptr @.str.60, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.104 { %struct.anon.105 { ptr @.str.61, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.104 { %struct.anon.105 { ptr @.str.62, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_ctrl = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_ctrl, ptr @perf_trace_dwc3_log_ctrl, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_ctrl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_ctrl, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_ctrl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_ctrl = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_ctrl, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_ctrl = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22%s\22, usb_decode_ctrl(__get_str(str), 500, REC->bRequestType, REC->bRequest, REC->wValue, REC->wIndex, REC->wLength)\00", [43 x i8] zeroinitializer }, align 32
@event_dwc3_ctrl_req = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_ctrl, %union.anon.106 { ptr @__tracepoint_dwc3_ctrl_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_ctrl }, ptr @print_fmt_dwc3_log_ctrl, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_ctrl_req = internal global ptr @event_dwc3_ctrl_req, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_request = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.74, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.75, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_request = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_request, ptr @perf_trace_dwc3_log_request, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_request, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_request = internal global { [191 x i8], [33 x i8] } { [191 x i8] c"\22%s: req %p length %u/%u %s%s%s ==> %d\22, __get_str(name), REC->req, REC->actual, REC->length, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22i\22 : \22I\22, REC->status\00", [33 x i8] zeroinitializer }, align 32
@event_dwc3_alloc_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.106 { ptr @__tracepoint_dwc3_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_alloc_request = internal global ptr @event_dwc3_alloc_request, section "_ftrace_events", align 4
@event_dwc3_free_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.106 { ptr @__tracepoint_dwc3_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_free_request = internal global ptr @event_dwc3_free_request, section "_ftrace_events", align 4
@event_dwc3_ep_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.106 { ptr @__tracepoint_dwc3_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_ep_queue = internal global ptr @event_dwc3_ep_queue, section "_ftrace_events", align 4
@event_dwc3_ep_dequeue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.106 { ptr @__tracepoint_dwc3_ep_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_ep_dequeue = internal global ptr @event_dwc3_ep_dequeue, section "_ftrace_events", align 4
@event_dwc3_gadget_giveback = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.106 { ptr @__tracepoint_dwc3_gadget_giveback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_gadget_giveback = internal global ptr @event_dwc3_gadget_giveback, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_generic_cmd = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.84, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_generic_cmd = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_generic_cmd, ptr @perf_trace_dwc3_log_generic_cmd, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_generic_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_generic_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_generic_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_generic_cmd = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_generic_cmd, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_generic_cmd = internal global { [158 x i8], [34 x i8] } { [158 x i8] c"\22cmd '%s' [%x] param %08x --> status: %s\22, dwc3_gadget_generic_cmd_string(REC->cmd), REC->cmd, REC->param, dwc3_gadget_generic_cmd_status_string(REC->status)\00", [34 x i8] zeroinitializer }, align 32
@event_dwc3_gadget_generic_cmd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_generic_cmd, %union.anon.106 { ptr @__tracepoint_dwc3_gadget_generic_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_generic_cmd }, ptr @print_fmt_dwc3_log_generic_cmd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_gadget_generic_cmd = internal global ptr @event_dwc3_gadget_generic_cmd, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_gadget_ep_cmd = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.102, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_gadget_ep_cmd = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_gadget_ep_cmd, ptr @perf_trace_dwc3_log_gadget_ep_cmd, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_gadget_ep_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_gadget_ep_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_gadget_ep_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_gadget_ep_cmd = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_gadget_ep_cmd, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_gadget_ep_cmd = internal global { [204 x i8], [52 x i8] } { [204 x i8] c"\22%s: cmd '%s' [%x] params %08x %08x %08x --> status: %s\22, __get_str(name), dwc3_gadget_ep_cmd_string(REC->cmd), REC->cmd, REC->param0, REC->param1, REC->param2, dwc3_ep_cmd_status_string(REC->cmd_status)\00", [52 x i8] zeroinitializer }, align 32
@event_dwc3_gadget_ep_cmd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_gadget_ep_cmd, %union.anon.106 { ptr @__tracepoint_dwc3_gadget_ep_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_gadget_ep_cmd }, ptr @print_fmt_dwc3_log_gadget_ep_cmd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_gadget_ep_cmd = internal global ptr @event_dwc3_gadget_ep_cmd, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_trb = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.116, %union.anon.104 { %struct.anon.105 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.118, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.119, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.120, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.122, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.123, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.104 { %struct.anon.105 { ptr @.str.124, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_trb = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_trb, ptr @perf_trace_dwc3_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_trb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_trb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_trb = internal global { [732 x i8], [164 x i8] } { [732 x i8] c"\22%s: trb %p (E%d:D%d) buf %08x%08x size %s%d ctrl %08x (%c%c%c%c:%c%c:%s)\22, __get_str(name), REC->trb, REC->enqueue, REC->dequeue, REC->bph, REC->bpl, ({char *s; int pcm = ((REC->size >> 24) & 3) + 1; switch (REC->type) { case 3: case 1: switch (pcm) { case 1: s = \221x \22; break; case 2: s = \222x \22; break; case 3: default: s = \223x \22; break; } break; default: s = \22\22; } s; }), ((REC->size) & (0x00ffffff)), REC->ctrl, REC->ctrl & ((((1UL))) << (0)) ? 'H' : 'h', REC->ctrl & ((((1UL))) << (1)) ? 'L' : 'l', REC->ctrl & ((((1UL))) << (2)) ? 'C' : 'c', REC->ctrl & ((((1UL))) << (3)) ? 'S' : 's', REC->ctrl & ((((1UL))) << (10)) ? 'S' : 's', REC->ctrl & ((((1UL))) << (11)) ? 'C' : 'c', dwc3_trb_type_string(((REC->ctrl) & (0x3f << 4)))\00", [164 x i8] zeroinitializer }, align 32
@event_dwc3_prepare_trb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_trb, %union.anon.106 { ptr @__tracepoint_dwc3_prepare_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_trb }, ptr @print_fmt_dwc3_log_trb, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_prepare_trb = internal global ptr @event_dwc3_prepare_trb, section "_ftrace_events", align 4
@event_dwc3_complete_trb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_trb, %union.anon.106 { ptr @__tracepoint_dwc3_complete_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_trb }, ptr @print_fmt_dwc3_log_trb, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_complete_trb = internal global ptr @event_dwc3_complete_trb, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_ep = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.138, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.139, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.140, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.141, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.142, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.143, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.144, %union.anon.104 { %struct.anon.105 { ptr @.str.145, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.144, %union.anon.104 { %struct.anon.105 { ptr @.str.146, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_dwc3_log_ep = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_ep, ptr @perf_trace_dwc3_log_ep, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_ep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_ep, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_ep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_ep = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_ep, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_dwc3_log_ep = internal global { [445 x i8], [99 x i8] } { [445 x i8] c"\22%s: mps %d/%d streams %d burst %d ring %d/%d flags %c:%c%c%c%c:%c\22, __get_str(name), REC->maxpacket, REC->maxpacket_limit, REC->max_streams, REC->maxburst, REC->trb_enqueue, REC->trb_dequeue, REC->flags & ((((1UL))) << (0)) ? 'E' : 'e', REC->flags & ((((1UL))) << (1)) ? 'S' : 's', REC->flags & ((((1UL))) << (2)) ? 'W' : 'w', REC->flags & ((((1UL))) << (3)) ? 'B' : 'b', REC->flags & ((((1UL))) << (5)) ? 'P' : 'p', REC->direction ? '<' : '>'\00", [99 x i8] zeroinitializer }, align 32
@event_dwc3_gadget_ep_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_ep, %union.anon.106 { ptr @__tracepoint_dwc3_gadget_ep_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_ep }, ptr @print_fmt_dwc3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_gadget_ep_enable = internal global ptr @event_dwc3_gadget_ep_enable, section "_ftrace_events", align 4
@event_dwc3_gadget_ep_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_ep, %union.anon.106 { ptr @__tracepoint_dwc3_gadget_ep_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_ep }, ptr @print_fmt_dwc3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_dwc3_gadget_ep_disable = internal global ptr @event_dwc3_gadget_ep_disable, section "_ftrace_events", align 4
@__bpf_trace_tp_map_dwc3_readl = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_readl, ptr @__bpf_trace_dwc3_log_io, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_writel = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_writel, ptr @__bpf_trace_dwc3_log_io, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_event = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_event, ptr @__bpf_trace_dwc3_log_event, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_ctrl_req = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_ctrl_req, ptr @__bpf_trace_dwc3_log_ctrl, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_alloc_request = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_alloc_request, ptr @__bpf_trace_dwc3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_free_request = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_free_request, ptr @__bpf_trace_dwc3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_ep_queue = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_ep_queue, ptr @__bpf_trace_dwc3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_ep_dequeue = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_ep_dequeue, ptr @__bpf_trace_dwc3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_gadget_giveback = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_gadget_giveback, ptr @__bpf_trace_dwc3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_gadget_generic_cmd = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_gadget_generic_cmd, ptr @__bpf_trace_dwc3_log_generic_cmd, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_gadget_ep_cmd = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_gadget_ep_cmd, ptr @__bpf_trace_dwc3_log_gadget_ep_cmd, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_prepare_trb = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_prepare_trb, ptr @__bpf_trace_dwc3_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_complete_trb = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_complete_trb, ptr @__bpf_trace_dwc3_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_gadget_ep_enable = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_gadget_ep_enable, ptr @__bpf_trace_dwc3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_dwc3_gadget_ep_disable = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_dwc3_gadget_ep_disable, ptr @__bpf_trace_dwc3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"addr %p offset %04x value %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep0state\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"str\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event (%08x): %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Disconnect: [%s]\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Reset [%s]\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Connection Done [%s]\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Link Change [%s]\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WakeUp [%s]\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Suspend [%s]\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Start-Of-Frame [%s]\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Erratic Error [%s]\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Command Complete [%s]\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Overflow [%s]\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U0\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U1\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U2\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U3\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SS.Disabled\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RX.Detect\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SS.Inactive\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Polling\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hot Reset\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Compliance\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loopback\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Reset\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Resume\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"UNKNOWN link state\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ep%d%s: \00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Transfer Complete (%c%c%c)\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" [%s]\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Transfer In Progress [%d] (%c%c%c)\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Transfer Not Ready [%d]%s\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" (Active)\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (Not Active)\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" [Data Phase]\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" [Status Phase]\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIFO\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" Stream %d Found\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" Stream Not Found\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Endpoint Command Complete\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unconnected\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Setup Phase\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Data Phase\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Status Phase\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"__u8\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bRequestType\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bRequest\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u16\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wValue\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wIndex\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wLength\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"struct dwc3_request *\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actual\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short_not_ok\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: req %p length %u/%u %s%s%s ==> %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"param\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd '%s' [%x] param %08x --> status: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Set LMP\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set Periodic Parameters\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Transmit Function Wake Device Notification\00", [53 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Set Scratchpad Buffer Array Address Lo\00", [57 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Set Scratchpad Buffer Array Address Hi\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Selected FIFO Flush\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"All FIFO Flush\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set Endpoint NRDY\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set Endpoint Prime\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Run SoC Bus Loopback Test\00", [38 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Timed Out\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Successful\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Error\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param0\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param1\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"param2\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmd_status\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: cmd '%s' [%x] params %08x %08x %08x --> status: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Start New Configuration\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"End Transfer\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Update Transfer\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Start Transfer\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Clear Stall\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Set Stall\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Get Endpoint State\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set Endpoint Transfer Resource\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set Endpoint Configuration\00", [37 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UNKNOWN command\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"No Resource\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Bus Expiry\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct dwc3_trb *\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"trb\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpl\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bph\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enqueue\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dequeue\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: trb %p (E%d:D%d) buf %08x%08x size %s%d ctrl %08x (%c%c%c%c:%c%c:%s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1x \00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2x \00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3x \00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"status2\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"status3\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isoc-first\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxpacket\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxpacket_limit\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_streams\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxburst\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trb_enqueue\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"trb_dequeue\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: mps %d/%d streams %d burst %d ring %d/%d flags %c:%c%c%c%c:%c\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@switch.table.trace_raw_output_dwc3_log_event = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.148 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.149 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.150 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.151 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.152 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.153 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.154 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.155 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.156 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_event.157 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_generic_cmd = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.91, ptr @.str.92, ptr @.str.21, ptr @.str.93, ptr @.str.94, ptr @.str.21, ptr @.str.21, ptr @.str.95], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.112, ptr @.str.111, ptr @.str.110, ptr @.str.109, ptr @.str.108, ptr @.str.107, ptr @.str.106, ptr @.str.105, ptr @.str.104], [60 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_dwc3_log_trb = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.158 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967186]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4294967186]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_ = private constant [28 x i8] c"../drivers/usb/dwc3/trace.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [29 x i8] c"str__dwc3__trace_system_name\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 36, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [31 x i8] c"trace_event_fields_dwc3_log_io\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_dwc3_log_io\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"print_fmt_dwc3_log_io\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"event_dwc3_readl\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 41, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"event_dwc3_writel\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 46, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [34 x i8] c"trace_event_fields_dwc3_log_event\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_dwc3_log_event\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [25 x i8] c"print_fmt_dwc3_log_event\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"event_dwc3_event\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 68, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [33 x i8] c"trace_event_fields_dwc3_log_ctrl\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_dwc3_log_ctrl\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [24 x i8] c"print_fmt_dwc3_log_ctrl\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"event_dwc3_ctrl_req\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 98, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [36 x i8] c"trace_event_fields_dwc3_log_request\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_dwc3_log_request\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"print_fmt_dwc3_log_request\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [25 x i8] c"event_dwc3_alloc_request\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 135, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [24 x i8] c"event_dwc3_free_request\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 140, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c"event_dwc3_ep_queue\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 145, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"event_dwc3_ep_dequeue\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 150, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [27 x i8] c"event_dwc3_gadget_giveback\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 155, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [40 x i8] c"trace_event_fields_dwc3_log_generic_cmd\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_dwc3_log_generic_cmd\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [31 x i8] c"print_fmt_dwc3_log_generic_cmd\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [30 x i8] c"event_dwc3_gadget_generic_cmd\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 180, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [42 x i8] c"trace_event_fields_dwc3_log_gadget_ep_cmd\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_dwc3_log_gadget_ep_cmd\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [33 x i8] c"print_fmt_dwc3_log_gadget_ep_cmd\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [25 x i8] c"event_dwc3_gadget_ep_cmd\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 213, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [32 x i8] c"trace_event_fields_dwc3_log_trb\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_dwc3_log_trb\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [23 x i8] c"print_fmt_dwc3_log_trb\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [23 x i8] c"event_dwc3_prepare_trb\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 280, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [24 x i8] c"event_dwc3_complete_trb\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 285, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [31 x i8] c"trace_event_fields_dwc3_log_ep\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_dwc3_log_ep\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [22 x i8] c"print_fmt_dwc3_log_ep\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [28 x i8] c"event_dwc3_gadget_ep_enable\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 329, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"event_dwc3_gadget_ep_disable\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 334, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 22, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 51, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 205, i32 23 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 209, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 213, i32 23 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 217, i32 23 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 221, i32 23 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 225, i32 23 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 229, i32 23 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 233, i32 23 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 237, i32 23 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 241, i32 23 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 245, i32 23 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 89, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 91, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 93, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 95, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 97, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 99, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 101, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 103, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 105, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 107, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 109, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 111, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 113, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 115, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 117, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 262, i32 29 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 263, i32 18 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 263, i32 25 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 270, i32 5 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 276, i32 37 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 281, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 289, i32 5 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 292, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 292, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 301, i32 7 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 305, i32 7 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 310, i32 36 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 317, i32 37 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 322, i32 37 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 328, i32 36 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 182, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 184, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 186, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 188, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 73, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 103, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 160, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 56, i32 10 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 58, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 60, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 62, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 64, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 66, i32 10 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 68, i32 10 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 70, i32 10 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 72, i32 10 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 74, i32 10 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 404, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 406, i32 10 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 408, i32 10 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 185, i32 1 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 25, i32 10 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 27, i32 10 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 29, i32 10 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 31, i32 10 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 33, i32 10 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 35, i32 10 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 37, i32 10 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 39, i32 10 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 41, i32 10 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 43, i32 10 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 392, i32 10 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 394, i32 10 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 219, i32 1 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 158, i32 10 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 160, i32 10 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 162, i32 10 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 164, i32 10 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 166, i32 10 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 168, i32 10 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 170, i32 10 }
@___asan_gen_.695 = private unnamed_addr constant [28 x i8] c"../drivers/usb/dwc3/debug.h\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 172, i32 10 }
@___asan_gen_.724 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.725 = private unnamed_addr constant [30 x i8] c"../drivers/usb/dwc3/./trace.h\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.725, i32 290, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant [45 x i8] c"switch.table.trace_raw_output_dwc3_log_event\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.148\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.149\00", align 1
@___asan_gen_.730 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.150\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.151\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.152\00", align 1
@___asan_gen_.733 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.153\00", align 1
@___asan_gen_.734 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.154\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.155\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.156\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [49 x i8] c"switch.table.trace_raw_output_dwc3_log_event.157\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [51 x i8] c"switch.table.trace_raw_output_dwc3_log_generic_cmd\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [53 x i8] c"switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd\00", align 1
@___asan_gen_.740 = private unnamed_addr constant [43 x i8] c"switch.table.trace_raw_output_dwc3_log_trb\00", align 1
@llvm.compiler.used = appending global [270 x ptr] [ptr @__bpf_trace_tp_map_dwc3_alloc_request, ptr @__bpf_trace_tp_map_dwc3_complete_trb, ptr @__bpf_trace_tp_map_dwc3_ctrl_req, ptr @__bpf_trace_tp_map_dwc3_ep_dequeue, ptr @__bpf_trace_tp_map_dwc3_ep_queue, ptr @__bpf_trace_tp_map_dwc3_event, ptr @__bpf_trace_tp_map_dwc3_free_request, ptr @__bpf_trace_tp_map_dwc3_gadget_ep_cmd, ptr @__bpf_trace_tp_map_dwc3_gadget_ep_disable, ptr @__bpf_trace_tp_map_dwc3_gadget_ep_enable, ptr @__bpf_trace_tp_map_dwc3_gadget_generic_cmd, ptr @__bpf_trace_tp_map_dwc3_gadget_giveback, ptr @__bpf_trace_tp_map_dwc3_prepare_trb, ptr @__bpf_trace_tp_map_dwc3_readl, ptr @__bpf_trace_tp_map_dwc3_writel, ptr @__event_dwc3_alloc_request, ptr @__event_dwc3_complete_trb, ptr @__event_dwc3_ctrl_req, ptr @__event_dwc3_ep_dequeue, ptr @__event_dwc3_ep_queue, ptr @__event_dwc3_event, ptr @__event_dwc3_free_request, ptr @__event_dwc3_gadget_ep_cmd, ptr @__event_dwc3_gadget_ep_disable, ptr @__event_dwc3_gadget_ep_enable, ptr @__event_dwc3_gadget_generic_cmd, ptr @__event_dwc3_gadget_giveback, ptr @__event_dwc3_prepare_trb, ptr @__event_dwc3_readl, ptr @__event_dwc3_writel, ptr @__tracepoint_dwc3_alloc_request, ptr @__tracepoint_dwc3_complete_trb, ptr @__tracepoint_dwc3_ctrl_req, ptr @__tracepoint_dwc3_ep_dequeue, ptr @__tracepoint_dwc3_ep_queue, ptr @__tracepoint_dwc3_event, ptr @__tracepoint_dwc3_free_request, ptr @__tracepoint_dwc3_gadget_ep_cmd, ptr @__tracepoint_dwc3_gadget_ep_disable, ptr @__tracepoint_dwc3_gadget_ep_enable, ptr @__tracepoint_dwc3_gadget_generic_cmd, ptr @__tracepoint_dwc3_gadget_giveback, ptr @__tracepoint_dwc3_prepare_trb, ptr @__tracepoint_dwc3_readl, ptr @__tracepoint_dwc3_writel, ptr @__tracepoint_ptr_dwc3_alloc_request, ptr @__tracepoint_ptr_dwc3_complete_trb, ptr @__tracepoint_ptr_dwc3_ctrl_req, ptr @__tracepoint_ptr_dwc3_ep_dequeue, ptr @__tracepoint_ptr_dwc3_ep_queue, ptr @__tracepoint_ptr_dwc3_event, ptr @__tracepoint_ptr_dwc3_free_request, ptr @__tracepoint_ptr_dwc3_gadget_ep_cmd, ptr @__tracepoint_ptr_dwc3_gadget_ep_disable, ptr @__tracepoint_ptr_dwc3_gadget_ep_enable, ptr @__tracepoint_ptr_dwc3_gadget_generic_cmd, ptr @__tracepoint_ptr_dwc3_gadget_giveback, ptr @__tracepoint_ptr_dwc3_prepare_trb, ptr @__tracepoint_ptr_dwc3_readl, ptr @__tracepoint_ptr_dwc3_writel, ptr @event_class_dwc3_log_ctrl, ptr @event_class_dwc3_log_ep, ptr @event_class_dwc3_log_event, ptr @event_class_dwc3_log_gadget_ep_cmd, ptr @event_class_dwc3_log_generic_cmd, ptr @event_class_dwc3_log_io, ptr @event_class_dwc3_log_request, ptr @event_class_dwc3_log_trb, ptr @event_dwc3_alloc_request, ptr @event_dwc3_complete_trb, ptr @event_dwc3_ctrl_req, ptr @event_dwc3_ep_dequeue, ptr @event_dwc3_ep_queue, ptr @event_dwc3_event, ptr @event_dwc3_free_request, ptr @event_dwc3_gadget_ep_cmd, ptr @event_dwc3_gadget_ep_disable, ptr @event_dwc3_gadget_ep_enable, ptr @event_dwc3_gadget_generic_cmd, ptr @event_dwc3_gadget_giveback, ptr @event_dwc3_prepare_trb, ptr @event_dwc3_readl, ptr @event_dwc3_writel, ptr @str__dwc3__trace_system_name, ptr @trace_event_fields_dwc3_log_io, ptr @trace_event_type_funcs_dwc3_log_io, ptr @print_fmt_dwc3_log_io, ptr @trace_event_fields_dwc3_log_event, ptr @trace_event_type_funcs_dwc3_log_event, ptr @print_fmt_dwc3_log_event, ptr @trace_event_fields_dwc3_log_ctrl, ptr @trace_event_type_funcs_dwc3_log_ctrl, ptr @print_fmt_dwc3_log_ctrl, ptr @trace_event_fields_dwc3_log_request, ptr @trace_event_type_funcs_dwc3_log_request, ptr @print_fmt_dwc3_log_request, ptr @trace_event_fields_dwc3_log_generic_cmd, ptr @trace_event_type_funcs_dwc3_log_generic_cmd, ptr @print_fmt_dwc3_log_generic_cmd, ptr @trace_event_fields_dwc3_log_gadget_ep_cmd, ptr @trace_event_type_funcs_dwc3_log_gadget_ep_cmd, ptr @print_fmt_dwc3_log_gadget_ep_cmd, ptr @trace_event_fields_dwc3_log_trb, ptr @trace_event_type_funcs_dwc3_log_trb, ptr @print_fmt_dwc3_log_trb, ptr @trace_event_fields_dwc3_log_ep, ptr @trace_event_type_funcs_dwc3_log_ep, ptr @print_fmt_dwc3_log_ep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @switch.table.trace_raw_output_dwc3_log_event, ptr @switch.table.trace_raw_output_dwc3_log_event.148, ptr @switch.table.trace_raw_output_dwc3_log_event.149, ptr @switch.table.trace_raw_output_dwc3_log_event.150, ptr @switch.table.trace_raw_output_dwc3_log_event.151, ptr @switch.table.trace_raw_output_dwc3_log_event.152, ptr @switch.table.trace_raw_output_dwc3_log_event.153, ptr @switch.table.trace_raw_output_dwc3_log_event.154, ptr @switch.table.trace_raw_output_dwc3_log_event.155, ptr @switch.table.trace_raw_output_dwc3_log_event.156, ptr @switch.table.trace_raw_output_dwc3_log_event.157, ptr @switch.table.trace_raw_output_dwc3_log_generic_cmd, ptr @switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd, ptr @switch.table.trace_raw_output_dwc3_log_trb], section "llvm.metadata"
@0 = internal global [202 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__dwc3__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_io to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_io to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_io to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_event to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_event to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_ctrl to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_ctrl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_ctrl to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_ctrl_req to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_request to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_request to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_alloc_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_free_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_ep_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_ep_dequeue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_gadget_giveback to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_generic_cmd to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_generic_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_generic_cmd to i32), i32 158, i32 192, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_gadget_generic_cmd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_gadget_ep_cmd to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_gadget_ep_cmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_gadget_ep_cmd to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_gadget_ep_cmd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_trb to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_trb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_trb to i32), i32 732, i32 896, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_prepare_trb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_complete_trb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_dwc3_log_ep to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_dwc3_log_ep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_dwc3_log_ep to i32), i32 445, i32 544, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_gadget_ep_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_dwc3_gadget_ep_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.148 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.149 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.150 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.151 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.152 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.153 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.154 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.155 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.156 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_event.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_generic_cmd to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_dwc3_log_trb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_readl(ptr nocapture readnone %__data, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_readl, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_writel(ptr nocapture readnone %__data, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_writel, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_event(ptr nocapture readnone %__data, i32 noundef %event, ptr noundef %dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, i32 noundef %event, ptr noundef %dwc) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_ctrl_req(ptr nocapture readnone %__data, ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_ctrl_req, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %ctrl) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_alloc_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_alloc_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_free_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_free_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_ep_queue(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_ep_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_ep_dequeue(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_ep_dequeue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_giveback(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_gadget_giveback, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_generic_cmd(ptr nocapture readnone %__data, i32 noundef %cmd, i32 noundef %param, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_gadget_generic_cmd, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, i32 noundef %cmd, i32 noundef %param, i32 noundef %status) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_ep_cmd(ptr nocapture readnone %__data, ptr noundef %dep, i32 noundef %cmd, ptr noundef %params, i32 noundef %cmd_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_gadget_ep_cmd, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %dep, i32 noundef %cmd, ptr noundef %params, i32 noundef %cmd_status) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_prepare_trb(ptr nocapture readnone %__data, ptr noundef %dep, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %dep, ptr noundef %trb) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_complete_trb(ptr nocapture readnone %__data, ptr noundef %dep, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %dep, ptr noundef %trb) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_ep_enable(ptr nocapture readnone %__data, ptr noundef %dep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_gadget_ep_enable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %dep) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_ep_disable(ptr nocapture readnone %__data, ptr noundef %dep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_dwc3_gadget_ep_disable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void %2(ptr noundef %4, ptr noundef %dep) #9
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_io(ptr noundef %__data, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %base6 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %base6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base, ptr %base6, align 4
  %offset7 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %offset7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %offset, ptr %offset7, align 4
  %value8 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %value, ptr %value8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_io(ptr noundef %__data, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %base17 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %base17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %base, ptr %base17, align 4
  %offset18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %offset, ptr %offset18, align 4
  %value19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %value, ptr %value19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_event(ptr noundef %__data, i32 noundef %event, ptr nocapture noundef readonly %dwc) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %event6 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %event6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %event, ptr %event6, align 4
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %5 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ep0state, align 4
  %ep0state7 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %ep0state7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ep0state7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_event(ptr noundef %__data, i32 noundef %event, ptr nocapture noundef readonly %dwc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %event17 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %event17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %event, ptr %event17, align 4
  %ep0state = getelementptr inbounds %struct.dwc3, ptr %dwc, i32 0, i32 58
  %29 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ep0state, align 4
  %ep0state18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %ep0state18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ep0state18, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_ctrl(ptr noundef %__data, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl, align 1
  %bRequestType6 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %bRequestType6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %bRequestType6, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %7 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bRequest, align 1
  %bRequest7 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %bRequest7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bRequest7, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %10 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wValue, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %wValue8 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %wValue8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %wValue8, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %14 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wIndex, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %wIndex9 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %wIndex9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %wIndex9, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %18 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wLength, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %wLength10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %wLength10 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %wLength10, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_ctrl(ptr noundef %__data, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ctrl, align 1
  %bRequestType17 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %bRequestType17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bRequestType17, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %31 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bRequest, align 1
  %bRequest18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %bRequest18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %bRequest18, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %34 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %wValue, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %wValue19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %wValue19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %wValue19, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %38 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wIndex, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %wIndex20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %wIndex20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %wIndex20, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %42 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wLength, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %wLength21 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %wLength21 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %wLength21, align 2
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dep.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dep.i, align 4
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 17
  %call.i55 = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add = add i32 %call.i55, 41
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = shl i32 %call.i55, 16
  %or.i = add i32 %add.i, 65576
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 40
  %6 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dep.i, align 4
  %name7 = getelementptr inbounds %struct.dwc3_ep, ptr %7, i32 0, i32 17
  %tobool8.not = icmp eq ptr %name7, null
  %spec.select = select i1 %tobool8.not, ptr @.str.64, ptr %name7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %req13 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %req13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %req13, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual, align 4
  %actual14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %actual14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %actual14, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %length16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %length16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %length16, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %status18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %status18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %status18, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %18 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %zero20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.clear, ptr %zero20, align 4
  %bf.load22 = load i32, ptr %zero, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 12
  %bf.clear24 = and i32 %bf.lshr23, 1
  %short_not_ok25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %short_not_ok25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.clear24, ptr %short_not_ok25, align 4
  %bf.load27 = load i32, ptr %zero, align 4
  %bf.lshr28 = lshr i32 %bf.load27, 14
  %bf.clear29 = and i32 %bf.lshr28, 1
  %no_interrupt30 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call3, i32 0, i32 8
  %21 = ptrtoint ptr %no_interrupt30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.clear29, ptr %no_interrupt30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %dep.i = getelementptr inbounds %struct.dwc3_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dep.i, align 4
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %3, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65576
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 52
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #9
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 40
  %30 = ptrtoint ptr %dep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dep.i, align 4
  %name19 = getelementptr inbounds %struct.dwc3_ep, ptr %31, i32 0, i32 17
  %tobool20.not = icmp eq ptr %name19, null
  %spec.select = select i1 %tobool20.not, ptr @.str.64, ptr %name19
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %req25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %req25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %req, ptr %req25, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %33 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual, align 4
  %actual26 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %actual26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %actual26, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 4
  %length28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %length28, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  %status30 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %status30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %status30, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %42 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero32 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %zero32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.clear, ptr %zero32, align 4
  %bf.load34 = load i32, ptr %zero, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 12
  %bf.clear36 = and i32 %bf.lshr35, 1
  %short_not_ok37 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %short_not_ok37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.clear36, ptr %short_not_ok37, align 4
  %bf.load39 = load i32, ptr %zero, align 4
  %bf.lshr40 = lshr i32 %bf.load39, 14
  %bf.clear41 = and i32 %bf.lshr40, 1
  %no_interrupt42 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %call13, i32 0, i32 8
  %45 = ptrtoint ptr %no_interrupt42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.clear41, ptr %no_interrupt42, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %13, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_generic_cmd(ptr noundef %__data, i32 noundef %cmd, i32 noundef %param, i32 noundef %status) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cmd6 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cmd, ptr %cmd6, align 4
  %param7 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %param7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %param, ptr %param7, align 4
  %status8 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %status, ptr %status8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_generic_cmd(ptr noundef %__data, i32 noundef %cmd, i32 noundef %param, i32 noundef %status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %cmd17 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %cmd17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cmd, ptr %cmd17, align 4
  %param18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %param18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %param, ptr %param18, align 4
  %status19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %status, ptr %status19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_gadget_ep_cmd(ptr noundef %__data, ptr noundef readonly %dep, i32 noundef %cmd, ptr nocapture noundef readonly %params, i32 noundef %cmd_status) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  %call.i37 = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add = add i32 %call.i37, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = shl i32 %call.i37, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str.64, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %cmd12 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %cmd12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cmd, ptr %cmd12, align 4
  %param0 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 2
  %5 = ptrtoint ptr %param0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %param0, align 4
  %param013 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %param013 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %param013, align 4
  %param1 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param1, align 4
  %param114 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %param114 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %param114, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %params, align 4
  %param215 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %param215 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %param215, align 4
  %cmd_status16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call3, i32 0, i32 6
  %14 = ptrtoint ptr %cmd_status16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cmd_status, ptr %cmd_status16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_gadget_ep_cmd(ptr noundef %__data, ptr noundef readonly %dep, i32 noundef %cmd, ptr nocapture noundef readonly %params, i32 noundef %cmd_status) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str.64, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %cmd24 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %cmd24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cmd, ptr %cmd24, align 4
  %param0 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 2
  %29 = ptrtoint ptr %param0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %param0, align 4
  %param025 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %param025 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %param025, align 4
  %param1 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %params, i32 0, i32 1
  %32 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %param1, align 4
  %param126 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %param126 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %param126, align 4
  %35 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %params, align 4
  %param227 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %param227 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %param227, align 4
  %cmd_status28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %call13, i32 0, i32 6
  %38 = ptrtoint ptr %cmd_status28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cmd_status, ptr %cmd_status28, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_trb(ptr noundef %__data, ptr noundef readonly %dep, ptr noundef %trb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  %call.i45 = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add = add i32 %call.i45, 45
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = shl i32 %call.i45, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str.64, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %trb12 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %trb12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %trb, ptr %trb12, align 4
  %5 = ptrtoint ptr %trb to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %trb, align 1
  %bpl13 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %bpl13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bpl13, align 4
  %bph = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 1
  %8 = ptrtoint ptr %bph to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %bph, align 1
  %bph14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %bph14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bph14, align 4
  %size = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %size, align 1
  %size15 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size15, align 4
  %ctrl = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ctrl, align 1
  %ctrl16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %ctrl16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ctrl16, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i, align 1
  %21 = and i8 %20, 3
  %and.i46 = zext i8 %21 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 7
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i46, ptr %type, align 4
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %23 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %trb_enqueue, align 4
  %conv = zext i8 %24 to i32
  %enqueue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 8
  %25 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %enqueue, align 4
  %trb_dequeue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %26 = ptrtoint ptr %trb_dequeue to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %trb_dequeue, align 1
  %conv18 = zext i8 %27 to i32
  %dequeue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call3, i32 0, i32 9
  %28 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv18, ptr %dequeue, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_trb(ptr noundef %__data, ptr noundef readonly %dep, ptr noundef %trb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65580
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 56
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str.64, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %trb24 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %trb24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %trb, ptr %trb24, align 4
  %29 = ptrtoint ptr %trb to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %trb, align 1
  %bpl25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %bpl25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bpl25, align 4
  %bph = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 1
  %32 = ptrtoint ptr %bph to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %bph, align 1
  %bph26 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %bph26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bph26, align 4
  %size = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 2
  %35 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %size, align 1
  %size27 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %size27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %size27, align 4
  %ctrl = getelementptr inbounds %struct.dwc3_trb, ptr %trb, i32 0, i32 3
  %38 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %ctrl, align 1
  %ctrl28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %ctrl28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ctrl28, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 9
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bmAttributes.i, align 1
  %45 = and i8 %44, 3
  %and.i69 = zext i8 %45 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 7
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i69, ptr %type, align 4
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %47 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %trb_enqueue, align 4
  %conv = zext i8 %48 to i32
  %enqueue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 8
  %49 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %enqueue, align 4
  %trb_dequeue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %50 = ptrtoint ptr %trb_dequeue to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %trb_dequeue, align 1
  %conv30 = zext i8 %51 to i32
  %dequeue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %call13, i32 0, i32 9
  %52 = ptrtoint ptr %dequeue to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv30, ptr %dequeue, align 4
  %53 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rctx, align 4
  %55 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %54, ptr noundef %__data, i64 noundef 1, ptr noundef %56, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_ep(ptr noundef %__data, ptr noundef readonly %dep) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #9
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !398

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !399

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #9
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  %call.i63 = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add = add i32 %call.i63, 41
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = shl i32 %call.i63, 16
  %or.i = add i32 %add.i, 65574
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 38
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str.64, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 7
  %4 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %4, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxpacket12 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %maxpacket12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %maxpacket12, align 4
  %bf.load14 = load i56, ptr %maxpacket, align 2
  %bf.lshr15 = lshr i56 %bf.load14, 24
  %6 = trunc i56 %bf.lshr15 to i32
  %bf.cast16 = and i32 %6, 65535
  %maxpacket_limit17 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %maxpacket_limit17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast16, ptr %maxpacket_limit17, align 4
  %bf.load19 = load i56, ptr %maxpacket, align 2
  %8 = trunc i56 %bf.load19 to i32
  %9 = lshr i32 %8, 8
  %bf.cast22 = and i32 %9, 65535
  %max_streams23 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %max_streams23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast22, ptr %max_streams23, align 4
  %bf.load25 = load i56, ptr %maxpacket, align 2
  %11 = trunc i56 %bf.load25 to i32
  %12 = lshr i32 %11, 1
  %bf.cast28 = and i32 %12, 31
  %maxburst29 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %maxburst29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.cast28, ptr %maxburst29, align 4
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %flags30 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags30, align 4
  %direction = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %17 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load31 = load i8, ptr %direction, align 4
  %bf.lshr32 = lshr i8 %bf.load31, 7
  %bf.cast33 = zext i8 %bf.lshr32 to i32
  %direction34 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 7
  %18 = ptrtoint ptr %direction34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.cast33, ptr %direction34, align 4
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %19 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %trb_enqueue, align 4
  %trb_enqueue35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 8
  %21 = ptrtoint ptr %trb_enqueue35 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %trb_enqueue35, align 4
  %trb_dequeue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %22 = ptrtoint ptr %trb_dequeue to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %trb_dequeue, align 1
  %trb_dequeue36 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call3, i32 0, i32 9
  %24 = ptrtoint ptr %trb_dequeue36 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %trb_dequeue36, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_ep(ptr noundef %__data, ptr noundef readonly %dep) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #9
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !400
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #9
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !400
  %name.i = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 17
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #12
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65574
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !388) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 52
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #9
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !388) #9
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 38
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str.64, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #13
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %dep, i32 0, i32 7
  %28 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxpacket24 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %maxpacket24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.cast, ptr %maxpacket24, align 4
  %bf.load26 = load i56, ptr %maxpacket, align 2
  %bf.lshr27 = lshr i56 %bf.load26, 24
  %30 = trunc i56 %bf.lshr27 to i32
  %bf.cast28 = and i32 %30, 65535
  %maxpacket_limit29 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %maxpacket_limit29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.cast28, ptr %maxpacket_limit29, align 4
  %bf.load31 = load i56, ptr %maxpacket, align 2
  %32 = trunc i56 %bf.load31 to i32
  %33 = lshr i32 %32, 8
  %bf.cast34 = and i32 %33, 65535
  %max_streams35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %max_streams35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.cast34, ptr %max_streams35, align 4
  %bf.load37 = load i56, ptr %maxpacket, align 2
  %35 = trunc i56 %bf.load37 to i32
  %36 = lshr i32 %35, 1
  %bf.cast40 = and i32 %36, 31
  %maxburst41 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %maxburst41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bf.cast40, ptr %maxburst41, align 4
  %flags = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 9
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %flags42 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %flags42, align 4
  %direction = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 18
  %41 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load43 = load i8, ptr %direction, align 4
  %bf.lshr44 = lshr i8 %bf.load43, 7
  %bf.cast45 = zext i8 %bf.lshr44 to i32
  %direction46 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 7
  %42 = ptrtoint ptr %direction46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bf.cast45, ptr %direction46, align 4
  %trb_enqueue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 10
  %43 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %trb_enqueue, align 4
  %trb_enqueue47 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 8
  %45 = ptrtoint ptr %trb_enqueue47 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %trb_enqueue47, align 4
  %trb_dequeue = getelementptr inbounds %struct.dwc3_ep, ptr %dep, i32 0, i32 11
  %46 = ptrtoint ptr %trb_dequeue to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %trb_dequeue, align 1
  %trb_dequeue48 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %call13, i32 0, i32 9
  %48 = ptrtoint ptr %trb_dequeue48 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %trb_dequeue48, align 1
  %49 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rctx, align 4
  %51 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %50, ptr noundef %__data, i64 noundef 1, ptr noundef %52, ptr noundef %11, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_io(ptr noundef %__data, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %base to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %offset to i64
  %conv8 = zext i32 %value to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_event(ptr noundef %__data, i32 noundef %event, ptr noundef %dwc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %event to i64
  %0 = ptrtoint ptr %dwc to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_ctrl(ptr noundef %__data, ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ctrl to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_generic_cmd(ptr noundef %__data, i32 noundef %cmd, i32 noundef %param, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %cmd to i64
  %conv4 = zext i32 %param to i64
  %conv8 = zext i32 %status to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_gadget_ep_cmd(ptr noundef %__data, ptr noundef %dep, i32 noundef %cmd, ptr noundef %params, i32 noundef %cmd_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dep to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %cmd to i64
  %1 = ptrtoint ptr %params to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %cmd_status to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_trb(ptr noundef %__data, ptr noundef %dep, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dep to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %trb to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_dwc3_log_ep(ptr noundef %__data, ptr noundef %dep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dep to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_io(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %base = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %value = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.5, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_event(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %event = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %ep0state = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ep0state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep0state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %bf.lshr.i.i = lshr i32 %3, 7
  %and.i.i = and i32 %bf.lshr.i.i, 15
  %bf.lshr2.i.i = lshr i32 %3, 20
  %bf.clear3.i.i = and i32 %bf.lshr2.i.i, 15
  %8 = zext i32 %bf.clear3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear3.i.i, label %sw.default.i.i [
    i32 0, label %switch.lookup
    i32 1, label %switch.lookup16
    i32 2, label %switch.lookup19
    i32 3, label %switch.lookup22
    i32 4, label %switch.lookup25
    i32 6, label %switch.lookup28
    i32 7, label %switch.lookup31
    i32 9, label %switch.lookup34
    i32 10, label %switch.lookup37
    i32 11, label %switch.lookup40
  ]

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event, i32 0, i32 %and.i.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call4.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.11, ptr noundef nonnull %switch.load) #9
  br label %dwc3_decode_event.exit

switch.lookup16:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep17 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.148, i32 0, i32 %and.i.i
  %10 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load18 = load ptr, ptr %switch.gep17, align 4
  %call7.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.12, ptr noundef nonnull %switch.load18) #9
  br label %dwc3_decode_event.exit

switch.lookup19:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep20 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.149, i32 0, i32 %and.i.i
  %11 = ptrtoint ptr %switch.gep20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load21 = load ptr, ptr %switch.gep20, align 4
  %call10.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.13, ptr noundef nonnull %switch.load21) #9
  br label %dwc3_decode_event.exit

switch.lookup22:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep23 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.150, i32 0, i32 %and.i.i
  %12 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load24 = load ptr, ptr %switch.gep23, align 4
  %call13.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.14, ptr noundef nonnull %switch.load24) #9
  br label %dwc3_decode_event.exit

switch.lookup25:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep26 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.151, i32 0, i32 %and.i.i
  %13 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load27 = load ptr, ptr %switch.gep26, align 4
  %call16.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.15, ptr noundef nonnull %switch.load27) #9
  br label %dwc3_decode_event.exit

switch.lookup28:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep29 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.152, i32 0, i32 %and.i.i
  %14 = ptrtoint ptr %switch.gep29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load30 = load ptr, ptr %switch.gep29, align 4
  %call19.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.16, ptr noundef nonnull %switch.load30) #9
  br label %dwc3_decode_event.exit

switch.lookup31:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep32 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.153, i32 0, i32 %and.i.i
  %15 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load33 = load ptr, ptr %switch.gep32, align 4
  %call22.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.17, ptr noundef nonnull %switch.load33) #9
  br label %dwc3_decode_event.exit

switch.lookup34:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep35 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.154, i32 0, i32 %and.i.i
  %16 = ptrtoint ptr %switch.gep35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load36 = load ptr, ptr %switch.gep35, align 4
  %call25.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.18, ptr noundef nonnull %switch.load36) #9
  br label %dwc3_decode_event.exit

switch.lookup37:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep38 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.155, i32 0, i32 %and.i.i
  %17 = ptrtoint ptr %switch.gep38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load39 = load ptr, ptr %switch.gep38, align 4
  %call28.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.19, ptr noundef nonnull %switch.load39) #9
  br label %dwc3_decode_event.exit

switch.lookup40:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep41 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %and.i.i
  %18 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load42 = load ptr, ptr %switch.gep41, align 4
  %call31.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.20, ptr noundef nonnull %switch.load42) #9
  br label %dwc3_decode_event.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 6146933341117959680, ptr %add.ptr, align 1
  br label %dwc3_decode_event.exit

if.else.i:                                        ; preds = %if.end
  %20 = lshr i32 %3, 27
  %21 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.39, ptr @.str.38
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.37, i32 noundef %20, ptr noundef nonnull %cond.i.i) #9
  %bf.lshr7.i.i = lshr i32 %3, 22
  %bf.clear8.i.i = and i32 %bf.lshr7.i.i, 15
  %22 = zext i32 %bf.clear8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %bf.clear8.i.i, label %sw.default90.i.i [
    i32 1, label %sw.bb.i3.i
    i32 2, label %sw.bb25.i.i
    i32 3, label %sw.bb40.i.i
    i32 4, label %sw.bb67.i.i
    i32 6, label %sw.bb71.i.i
    i32 7, label %sw.bb86.i.i
  ]

sw.bb.i3.i:                                       ; preds = %if.else.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub.i.i = sub i32 500, %call.i.i
  %23 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not.i.i = icmp eq i32 %23, 0
  %cond11.i.i = select i1 %tobool10.not.i.i, i32 115, i32 83
  %24 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not.i.i = icmp eq i32 %24, 0
  %cond14.i.i = select i1 %tobool13.not.i.i, i32 105, i32 73
  %25 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not.i.i = icmp eq i32 %25, 0
  %cond17.i.i = select i1 %tobool16.not.i.i, i32 108, i32 76
  %call18.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.40, i32 noundef %cond11.i.i, i32 noundef %cond14.i.i, i32 noundef %cond17.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 134217728
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i3.i.dwc3_decode_event.exit_crit_edge

sw.bb.i3.i.dwc3_decode_event.exit_crit_edge:      ; preds = %sw.bb.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_decode_event.exit

if.then.i.i:                                      ; preds = %sw.bb.i3.i
  %add.i.i = add i32 %call18.i.i, %call.i.i
  %add.ptr21.i.i = getelementptr i8, ptr %add.ptr, i32 %add.i.i
  %sub22.i.i = sub i32 500, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %26 = icmp ult i32 %7, 4
  br i1 %26, label %switch.lookup43, label %if.then.i.i.dwc3_ep0_state_string.exit.i.i_crit_edge

if.then.i.i.dwc3_ep0_state_string.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_ep0_state_string.exit.i.i

switch.lookup43:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep44 = getelementptr inbounds [4 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.157, i32 0, i32 %7
  %27 = ptrtoint ptr %switch.gep44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load45 = load ptr, ptr %switch.gep44, align 4
  br label %dwc3_ep0_state_string.exit.i.i

dwc3_ep0_state_string.exit.i.i:                   ; preds = %switch.lookup43, %if.then.i.i.dwc3_ep0_state_string.exit.i.i_crit_edge
  %retval.0.i.i8.i = phi ptr [ %switch.load45, %switch.lookup43 ], [ @.str.21, %if.then.i.i.dwc3_ep0_state_string.exit.i.i_crit_edge ]
  %call24.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21.i.i, i32 noundef %sub22.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %retval.0.i.i8.i) #9
  br label %dwc3_decode_event.exit

sw.bb25.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr26.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub27.i.i = sub i32 500, %call.i.i
  %bf.clear29.i.i = and i32 %3, 65535
  %28 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool31.not.i.i = icmp eq i32 %28, 0
  %cond32.i.i = select i1 %tobool31.not.i.i, i32 115, i32 83
  %29 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool34.not.i.i = icmp eq i32 %29, 0
  %cond35.i.i = select i1 %tobool34.not.i.i, i32 105, i32 73
  %30 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool37.not.i.i = icmp eq i32 %30, 0
  %cond38.i.i = select i1 %tobool37.not.i.i, i32 109, i32 77
  %call39.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26.i.i, i32 noundef %sub27.i.i, ptr noundef nonnull @.str.42, i32 noundef %bf.clear29.i.i, i32 noundef %cond32.i.i, i32 noundef %cond35.i.i, i32 noundef %cond38.i.i) #9
  br label %dwc3_decode_event.exit

sw.bb40.i.i:                                      ; preds = %if.else.i
  %add.ptr41.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub42.i.i = sub i32 500, %call.i.i
  %bf.clear44.i.i = and i32 %3, 65535
  %31 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not.i.i = icmp eq i32 %31, 0
  %cond47.i.i = select i1 %tobool46.not.i.i, ptr @.str.45, ptr @.str.44
  %call48.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41.i.i, i32 noundef %sub42.i.i, ptr noundef nonnull @.str.43, i32 noundef %bf.clear44.i.i, ptr noundef nonnull %cond47.i.i) #9
  %add49.i.i = add i32 %call48.i.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %3)
  %cmp51.i.i = icmp ult i32 %3, 134217728
  br i1 %cmp51.i.i, label %if.then53.i.i, label %sw.bb40.i.i.dwc3_decode_event.exit_crit_edge

sw.bb40.i.i.dwc3_decode_event.exit_crit_edge:     ; preds = %sw.bb40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_decode_event.exit

if.then53.i.i:                                    ; preds = %sw.bb40.i.i
  %bf.lshr55.i.i = lshr i32 %3, 16
  %and57.i.i = and i32 %bf.lshr55.i.i, 3
  %32 = zext i32 %and57.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %and57.i.i, label %if.then53.i.i.dwc3_decode_event.exit_crit_edge [
    i32 1, label %sw.bb58.i.i
    i32 2, label %sw.bb62.i.i
  ]

if.then53.i.i.dwc3_decode_event.exit_crit_edge:   ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_decode_event.exit

sw.bb58.i.i:                                      ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr59.i.i = getelementptr i8, ptr %add.ptr, i32 %add49.i.i
  %sub60.i.i = sub i32 500, %add49.i.i
  %call61.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59.i.i, i32 noundef %sub60.i.i, ptr noundef nonnull @.str.46) #9
  br label %dwc3_decode_event.exit

sw.bb62.i.i:                                      ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr63.i.i = getelementptr i8, ptr %add.ptr, i32 %add49.i.i
  %sub64.i.i = sub i32 500, %add49.i.i
  %call65.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63.i.i, i32 noundef %sub64.i.i, ptr noundef nonnull @.str.47) #9
  br label %dwc3_decode_event.exit

sw.bb67.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr68.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub69.i.i = sub i32 500, %call.i.i
  %call70.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68.i.i, i32 noundef %sub69.i.i, ptr noundef nonnull @.str.48) #9
  br label %dwc3_decode_event.exit

sw.bb71.i.i:                                      ; preds = %if.else.i
  %33 = and i32 %3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %33)
  %cond95.i.i = icmp eq i32 %33, 65536
  %add.ptr76.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub77.i.i = sub i32 500, %call.i.i
  br i1 %cond95.i.i, label %sw.bb75.i.i, label %sw.default.i9.i

sw.bb75.i.i:                                      ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear79.i.i = and i32 %3, 65535
  %call80.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76.i.i, i32 noundef %sub77.i.i, ptr noundef nonnull @.str.49, i32 noundef %bf.clear79.i.i) #9
  br label %dwc3_decode_event.exit

sw.default.i9.i:                                  ; preds = %sw.bb71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call84.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76.i.i, i32 noundef %sub77.i.i, ptr noundef nonnull @.str.50) #9
  br label %dwc3_decode_event.exit

sw.bb86.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr87.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub88.i.i = sub i32 500, %call.i.i
  %call89.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr87.i.i, i32 noundef %sub88.i.i, ptr noundef nonnull @.str.51) #9
  br label %dwc3_decode_event.exit

sw.default90.i.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr91.i.i = getelementptr i8, ptr %add.ptr, i32 %call.i.i
  %sub92.i.i = sub i32 500, %call.i.i
  %call93.i.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91.i.i, i32 noundef %sub92.i.i, ptr noundef nonnull @.str.21) #9
  br label %dwc3_decode_event.exit

dwc3_decode_event.exit:                           ; preds = %sw.default90.i.i, %sw.bb86.i.i, %sw.default.i9.i, %sw.bb75.i.i, %sw.bb67.i.i, %sw.bb62.i.i, %sw.bb58.i.i, %if.then53.i.i.dwc3_decode_event.exit_crit_edge, %sw.bb40.i.i.dwc3_decode_event.exit_crit_edge, %sw.bb25.i.i, %dwc3_ep0_state_string.exit.i.i, %sw.bb.i3.i.dwc3_decode_event.exit_crit_edge, %sw.default.i.i, %switch.lookup40, %switch.lookup37, %switch.lookup34, %switch.lookup31, %switch.lookup28, %switch.lookup25, %switch.lookup22, %switch.lookup19, %switch.lookup16, %switch.lookup
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, i32 noundef %3, ptr noundef %add.ptr) #9
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %dwc3_decode_event.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %dwc3_decode_event.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_ctrl(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %bRequestType = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bRequestType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequestType, align 4
  %bRequest = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wValue, align 2
  %wIndex = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %wIndex to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wIndex, align 4
  %wLength = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wLength, align 2
  %call1 = tail call ptr @usb_decode_ctrl(ptr noundef %add.ptr, i32 noundef 500, i8 noundef zeroext %5, i8 noundef zeroext %7, i16 noundef zeroext %9, i16 noundef zeroext %11, i16 noundef zeroext %13) #9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.63, ptr noundef %call1) #9
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_decode_ctrl(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.78, ptr @.str.77
  %short_not_ok = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %short_not_ok to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %short_not_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.80, ptr @.str.79
  %no_interrupt = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.82, ptr @.str.81
  %status = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.76, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, ptr noundef nonnull %cond4, i32 noundef %17) #9
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_generic_cmd(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cmd = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %3 to i8
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 16
  br i1 %4, label %switch.lookup, label %if.end.dwc3_gadget_generic_cmd_string.exit_crit_edge

if.end.dwc3_gadget_generic_cmd_string.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_gadget_generic_cmd_string.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_generic_cmd, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dwc3_gadget_generic_cmd_string.exit

dwc3_gadget_generic_cmd_string.exit:              ; preds = %switch.lookup, %if.end.dwc3_gadget_generic_cmd_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.21, %if.end.dwc3_gadget_generic_cmd_string.exit_crit_edge ]
  %param = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %10, label %sw.default.i18 [
    i32 -110, label %dwc3_gadget_generic_cmd_string.exit.dwc3_gadget_generic_cmd_status_string.exit_crit_edge
    i32 0, label %sw.bb1.i16
    i32 1, label %sw.bb2.i17
  ]

dwc3_gadget_generic_cmd_string.exit.dwc3_gadget_generic_cmd_status_string.exit_crit_edge: ; preds = %dwc3_gadget_generic_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_gadget_generic_cmd_status_string.exit

sw.bb1.i16:                                       ; preds = %dwc3_gadget_generic_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_gadget_generic_cmd_status_string.exit

sw.bb2.i17:                                       ; preds = %dwc3_gadget_generic_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_gadget_generic_cmd_status_string.exit

sw.default.i18:                                   ; preds = %dwc3_gadget_generic_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_gadget_generic_cmd_status_string.exit

dwc3_gadget_generic_cmd_status_string.exit:       ; preds = %sw.default.i18, %sw.bb2.i17, %sw.bb1.i16, %dwc3_gadget_generic_cmd_string.exit.dwc3_gadget_generic_cmd_status_string.exit_crit_edge
  %retval.0.i19 = phi ptr [ @.str.21, %sw.default.i18 ], [ @.str.98, %sw.bb2.i17 ], [ @.str.97, %sw.bb1.i16 ], [ @.str.96, %dwc3_gadget_generic_cmd_string.exit.dwc3_gadget_generic_cmd_status_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.85, ptr noundef nonnull %retval.0.i, i32 noundef %3, i32 noundef %8, ptr noundef nonnull %retval.0.i19) #9
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %dwc3_gadget_generic_cmd_status_string.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %dwc3_gadget_generic_cmd_status_string.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_gadget_ep_cmd(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %cmd = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %conv = trunc i32 %5 to i8
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 9
  br i1 %6, label %switch.lookup, label %if.end.dwc3_gadget_ep_cmd_string.exit_crit_edge

if.end.dwc3_gadget_ep_cmd_string.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_gadget_ep_cmd_string.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dwc3_gadget_ep_cmd_string.exit

dwc3_gadget_ep_cmd_string.exit:                   ; preds = %switch.lookup, %if.end.dwc3_gadget_ep_cmd_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.113, %if.end.dwc3_gadget_ep_cmd_string.exit_crit_edge ]
  %param0 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %param0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %param0, align 4
  %param1 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %param1, align 4
  %param2 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %param2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %param2, align 4
  %cmd_status = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %cmd_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_status, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %16, label %sw.default.i23 [
    i32 -110, label %dwc3_gadget_ep_cmd_string.exit.dwc3_ep_cmd_status_string.exit_crit_edge
    i32 0, label %sw.bb1.i20
    i32 1, label %sw.bb2.i21
    i32 2, label %sw.bb3.i22
  ]

dwc3_gadget_ep_cmd_string.exit.dwc3_ep_cmd_status_string.exit_crit_edge: ; preds = %dwc3_gadget_ep_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_ep_cmd_status_string.exit

sw.bb1.i20:                                       ; preds = %dwc3_gadget_ep_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_ep_cmd_status_string.exit

sw.bb2.i21:                                       ; preds = %dwc3_gadget_ep_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_ep_cmd_status_string.exit

sw.bb3.i22:                                       ; preds = %dwc3_gadget_ep_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_ep_cmd_status_string.exit

sw.default.i23:                                   ; preds = %dwc3_gadget_ep_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_ep_cmd_status_string.exit

dwc3_ep_cmd_status_string.exit:                   ; preds = %sw.default.i23, %sw.bb3.i22, %sw.bb2.i21, %sw.bb1.i20, %dwc3_gadget_ep_cmd_string.exit.dwc3_ep_cmd_status_string.exit_crit_edge
  %retval.0.i24 = phi ptr [ @.str.21, %sw.default.i23 ], [ @.str.115, %sw.bb3.i22 ], [ @.str.114, %sw.bb2.i21 ], [ @.str.97, %sw.bb1.i20 ], [ @.str.96, %dwc3_gadget_ep_cmd_string.exit.dwc3_ep_cmd_status_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.103, ptr noundef %add.ptr, ptr noundef nonnull %retval.0.i, i32 noundef %5, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %retval.0.i24) #9
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %dwc3_ep_cmd_status_string.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %dwc3_ep_cmd_status_string.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_trb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %trb = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trb, align 4
  %enqueue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enqueue, align 4
  %dequeue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dequeue, align 4
  %bph = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %bph to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bph, align 4
  %bpl = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bpl, align 4
  %size = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 5
  %type = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %15, label %if.end.sw.epilog7_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge63
  ]

if.end.sw.bb_crit_edge63:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.epilog7_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog7

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge63
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %shr = lshr i32 %18, 24
  %and2 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %switch.selectcmp = icmp eq i32 %and2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.127, ptr @.str.128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %switch.selectcmp61 = icmp eq i32 %and2, 0
  %switch.select62 = select i1 %switch.selectcmp61, ptr @.str.126, ptr %switch.select
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb, %if.end.sw.epilog7_crit_edge
  %s1.0 = phi ptr [ %switch.select62, %sw.bb ], [ @.str.129, %if.end.sw.epilog7_crit_edge ]
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %and9 = and i32 %20, 16777215
  %ctrl = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl, align 4
  %and11 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  %cond = select i1 %tobool.not, i32 104, i32 72
  %and13 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 108, i32 76
  %and17 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, i32 99, i32 67
  %and21 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, i32 115, i32 83
  %and25 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, i32 115, i32 83
  %and29 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, i32 99, i32 67
  %and33 = and i32 %22, 1008
  %23 = add nsw i32 %and33, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %23)
  %24 = icmp ult i32 %23, 128
  br i1 %24, label %switch.lookup, label %sw.epilog7.dwc3_trb_type_string.exit_crit_edge

sw.epilog7.dwc3_trb_type_string.exit_crit_edge:   ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc3_trb_type_string.exit

switch.lookup:                                    ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #11
  %25 = lshr exact i32 %23, 4
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_trb, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dwc3_trb_type_string.exit

dwc3_trb_type_string.exit:                        ; preds = %switch.lookup, %sw.epilog7.dwc3_trb_type_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.21, %sw.epilog7.dwc3_trb_type_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.125, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %s1.0, i32 noundef %and9, i32 noundef %22, i32 noundef %cond, i32 noundef %cond15, i32 noundef %cond19, i32 noundef %cond23, i32 noundef %cond27, i32 noundef %cond31, ptr noundef nonnull %retval.0.i) #9
  %call35 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %dwc3_trb_type_string.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %dwc3_trb_type_string.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_ep(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %maxpacket = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxpacket, align 4
  %maxpacket_limit = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxpacket_limit, align 4
  %max_streams = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max_streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_streams, align 4
  %maxburst = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxburst, align 4
  %trb_enqueue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %trb_enqueue to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %trb_enqueue, align 4
  %conv = zext i8 %13 to i32
  %trb_dequeue = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %trb_dequeue to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %trb_dequeue, align 1
  %conv1 = zext i8 %15 to i32
  %flags2 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags2, align 4
  %and3 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool.not, i32 101, i32 69
  %and5 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, i32 115, i32 83
  %and9 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, i32 119, i32 87
  %and13 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, i32 98, i32 66
  %and17 = and i32 %17, 32
  %18 = xor i32 %and17, 112
  %direction = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  %cond21 = select i1 %tobool20.not, i32 62, i32 60
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.147, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %conv, i32 noundef %conv1, i32 noundef %cond, i32 noundef %cond7, i32 noundef %cond11, i32 noundef %cond15, i32 noundef %18, i32 noundef %cond21) #9
  %call22 = tail call i32 @trace_handle_return(ptr noundef %seq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 202)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 202)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !310, !311, !312, !313, !314, !315, !316, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!llvm.named.register.sp = !{!388}
!llvm.module.flags = !{!389, !390, !391, !392, !393, !394, !395, !396}
!llvm.ident = !{!397}

!0 = !{ptr @__tracepoint_dwc3_readl, !1, !"__tracepoint_dwc3_readl", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc3/./trace.h", i32 41, i32 1}
!2 = !{ptr @__tracepoint_ptr_dwc3_readl, !1, !"__tracepoint_ptr_dwc3_readl", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_dwc3_readl, !1, !"__SCK__tp_func_dwc3_readl", i1 false, i1 false}
!4 = !{ptr @__tracepoint_dwc3_writel, !5, !"__tracepoint_dwc3_writel", i1 false, i1 false}
!5 = !{!"../drivers/usb/dwc3/./trace.h", i32 46, i32 1}
!6 = !{ptr @__tracepoint_ptr_dwc3_writel, !5, !"__tracepoint_ptr_dwc3_writel", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_dwc3_writel, !5, !"__SCK__tp_func_dwc3_writel", i1 false, i1 false}
!8 = !{ptr @__tracepoint_dwc3_event, !9, !"__tracepoint_dwc3_event", i1 false, i1 false}
!9 = !{!"../drivers/usb/dwc3/./trace.h", i32 68, i32 1}
!10 = !{ptr @__tracepoint_ptr_dwc3_event, !9, !"__tracepoint_ptr_dwc3_event", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_dwc3_event, !9, !"__SCK__tp_func_dwc3_event", i1 false, i1 false}
!12 = !{ptr @__tracepoint_dwc3_ctrl_req, !13, !"__tracepoint_dwc3_ctrl_req", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc3/./trace.h", i32 98, i32 1}
!14 = !{ptr @__tracepoint_ptr_dwc3_ctrl_req, !13, !"__tracepoint_ptr_dwc3_ctrl_req", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_dwc3_ctrl_req, !13, !"__SCK__tp_func_dwc3_ctrl_req", i1 false, i1 false}
!16 = !{ptr @__tracepoint_dwc3_alloc_request, !17, !"__tracepoint_dwc3_alloc_request", i1 false, i1 false}
!17 = !{!"../drivers/usb/dwc3/./trace.h", i32 135, i32 1}
!18 = !{ptr @__tracepoint_ptr_dwc3_alloc_request, !17, !"__tracepoint_ptr_dwc3_alloc_request", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_dwc3_alloc_request, !17, !"__SCK__tp_func_dwc3_alloc_request", i1 false, i1 false}
!20 = !{ptr @__tracepoint_dwc3_free_request, !21, !"__tracepoint_dwc3_free_request", i1 false, i1 false}
!21 = !{!"../drivers/usb/dwc3/./trace.h", i32 140, i32 1}
!22 = !{ptr @__tracepoint_ptr_dwc3_free_request, !21, !"__tracepoint_ptr_dwc3_free_request", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_dwc3_free_request, !21, !"__SCK__tp_func_dwc3_free_request", i1 false, i1 false}
!24 = !{ptr @__tracepoint_dwc3_ep_queue, !25, !"__tracepoint_dwc3_ep_queue", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc3/./trace.h", i32 145, i32 1}
!26 = !{ptr @__tracepoint_ptr_dwc3_ep_queue, !25, !"__tracepoint_ptr_dwc3_ep_queue", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_dwc3_ep_queue, !25, !"__SCK__tp_func_dwc3_ep_queue", i1 false, i1 false}
!28 = !{ptr @__tracepoint_dwc3_ep_dequeue, !29, !"__tracepoint_dwc3_ep_dequeue", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc3/./trace.h", i32 150, i32 1}
!30 = !{ptr @__tracepoint_ptr_dwc3_ep_dequeue, !29, !"__tracepoint_ptr_dwc3_ep_dequeue", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_dwc3_ep_dequeue, !29, !"__SCK__tp_func_dwc3_ep_dequeue", i1 false, i1 false}
!32 = !{ptr @__tracepoint_dwc3_gadget_giveback, !33, !"__tracepoint_dwc3_gadget_giveback", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc3/./trace.h", i32 155, i32 1}
!34 = !{ptr @__tracepoint_ptr_dwc3_gadget_giveback, !33, !"__tracepoint_ptr_dwc3_gadget_giveback", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_dwc3_gadget_giveback, !33, !"__SCK__tp_func_dwc3_gadget_giveback", i1 false, i1 false}
!36 = !{ptr @__tracepoint_dwc3_gadget_generic_cmd, !37, !"__tracepoint_dwc3_gadget_generic_cmd", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc3/./trace.h", i32 180, i32 1}
!38 = !{ptr @__tracepoint_ptr_dwc3_gadget_generic_cmd, !37, !"__tracepoint_ptr_dwc3_gadget_generic_cmd", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_dwc3_gadget_generic_cmd, !37, !"__SCK__tp_func_dwc3_gadget_generic_cmd", i1 false, i1 false}
!40 = !{ptr @__tracepoint_dwc3_gadget_ep_cmd, !41, !"__tracepoint_dwc3_gadget_ep_cmd", i1 false, i1 false}
!41 = !{!"../drivers/usb/dwc3/./trace.h", i32 213, i32 1}
!42 = !{ptr @__tracepoint_ptr_dwc3_gadget_ep_cmd, !41, !"__tracepoint_ptr_dwc3_gadget_ep_cmd", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_dwc3_gadget_ep_cmd, !41, !"__SCK__tp_func_dwc3_gadget_ep_cmd", i1 false, i1 false}
!44 = !{ptr @__tracepoint_dwc3_prepare_trb, !45, !"__tracepoint_dwc3_prepare_trb", i1 false, i1 false}
!45 = !{!"../drivers/usb/dwc3/./trace.h", i32 280, i32 1}
!46 = !{ptr @__tracepoint_ptr_dwc3_prepare_trb, !45, !"__tracepoint_ptr_dwc3_prepare_trb", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_dwc3_prepare_trb, !45, !"__SCK__tp_func_dwc3_prepare_trb", i1 false, i1 false}
!48 = !{ptr @__tracepoint_dwc3_complete_trb, !49, !"__tracepoint_dwc3_complete_trb", i1 false, i1 false}
!49 = !{!"../drivers/usb/dwc3/./trace.h", i32 285, i32 1}
!50 = !{ptr @__tracepoint_ptr_dwc3_complete_trb, !49, !"__tracepoint_ptr_dwc3_complete_trb", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_dwc3_complete_trb, !49, !"__SCK__tp_func_dwc3_complete_trb", i1 false, i1 false}
!52 = !{ptr @__tracepoint_dwc3_gadget_ep_enable, !53, !"__tracepoint_dwc3_gadget_ep_enable", i1 false, i1 false}
!53 = !{!"../drivers/usb/dwc3/./trace.h", i32 329, i32 1}
!54 = !{ptr @__tracepoint_ptr_dwc3_gadget_ep_enable, !53, !"__tracepoint_ptr_dwc3_gadget_ep_enable", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_dwc3_gadget_ep_enable, !53, !"__SCK__tp_func_dwc3_gadget_ep_enable", i1 false, i1 false}
!56 = !{ptr @__tracepoint_dwc3_gadget_ep_disable, !57, !"__tracepoint_dwc3_gadget_ep_disable", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc3/./trace.h", i32 334, i32 1}
!58 = !{ptr @__tracepoint_ptr_dwc3_gadget_ep_disable, !57, !"__tracepoint_ptr_dwc3_gadget_ep_disable", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_dwc3_gadget_ep_disable, !57, !"__SCK__tp_func_dwc3_gadget_ep_disable", i1 false, i1 false}
!60 = !{ptr @event_class_dwc3_log_io, !61, !"event_class_dwc3_log_io", i1 false, i1 false}
!61 = !{!"../drivers/usb/dwc3/./trace.h", i32 22, i32 1}
!62 = !{ptr @event_dwc3_readl, !1, !"event_dwc3_readl", i1 false, i1 false}
!63 = !{ptr @__event_dwc3_readl, !1, !"__event_dwc3_readl", i1 false, i1 false}
!64 = !{ptr @event_dwc3_writel, !5, !"event_dwc3_writel", i1 false, i1 false}
!65 = !{ptr @__event_dwc3_writel, !5, !"__event_dwc3_writel", i1 false, i1 false}
!66 = !{ptr @event_class_dwc3_log_event, !67, !"event_class_dwc3_log_event", i1 false, i1 false}
!67 = !{!"../drivers/usb/dwc3/./trace.h", i32 51, i32 1}
!68 = !{ptr @event_dwc3_event, !9, !"event_dwc3_event", i1 false, i1 false}
!69 = !{ptr @__event_dwc3_event, !9, !"__event_dwc3_event", i1 false, i1 false}
!70 = !{ptr @event_class_dwc3_log_ctrl, !71, !"event_class_dwc3_log_ctrl", i1 false, i1 false}
!71 = !{!"../drivers/usb/dwc3/./trace.h", i32 73, i32 1}
!72 = !{ptr @event_dwc3_ctrl_req, !13, !"event_dwc3_ctrl_req", i1 false, i1 false}
!73 = !{ptr @__event_dwc3_ctrl_req, !13, !"__event_dwc3_ctrl_req", i1 false, i1 false}
!74 = !{ptr @event_class_dwc3_log_request, !75, !"event_class_dwc3_log_request", i1 false, i1 false}
!75 = !{!"../drivers/usb/dwc3/./trace.h", i32 103, i32 1}
!76 = !{ptr @event_dwc3_alloc_request, !17, !"event_dwc3_alloc_request", i1 false, i1 false}
!77 = !{ptr @__event_dwc3_alloc_request, !17, !"__event_dwc3_alloc_request", i1 false, i1 false}
!78 = !{ptr @event_dwc3_free_request, !21, !"event_dwc3_free_request", i1 false, i1 false}
!79 = !{ptr @__event_dwc3_free_request, !21, !"__event_dwc3_free_request", i1 false, i1 false}
!80 = !{ptr @event_dwc3_ep_queue, !25, !"event_dwc3_ep_queue", i1 false, i1 false}
!81 = !{ptr @__event_dwc3_ep_queue, !25, !"__event_dwc3_ep_queue", i1 false, i1 false}
!82 = !{ptr @event_dwc3_ep_dequeue, !29, !"event_dwc3_ep_dequeue", i1 false, i1 false}
!83 = !{ptr @__event_dwc3_ep_dequeue, !29, !"__event_dwc3_ep_dequeue", i1 false, i1 false}
!84 = !{ptr @event_dwc3_gadget_giveback, !33, !"event_dwc3_gadget_giveback", i1 false, i1 false}
!85 = !{ptr @__event_dwc3_gadget_giveback, !33, !"__event_dwc3_gadget_giveback", i1 false, i1 false}
!86 = !{ptr @event_class_dwc3_log_generic_cmd, !87, !"event_class_dwc3_log_generic_cmd", i1 false, i1 false}
!87 = !{!"../drivers/usb/dwc3/./trace.h", i32 160, i32 1}
!88 = !{ptr @event_dwc3_gadget_generic_cmd, !37, !"event_dwc3_gadget_generic_cmd", i1 false, i1 false}
!89 = !{ptr @__event_dwc3_gadget_generic_cmd, !37, !"__event_dwc3_gadget_generic_cmd", i1 false, i1 false}
!90 = !{ptr @event_class_dwc3_log_gadget_ep_cmd, !91, !"event_class_dwc3_log_gadget_ep_cmd", i1 false, i1 false}
!91 = !{!"../drivers/usb/dwc3/./trace.h", i32 185, i32 1}
!92 = !{ptr @event_dwc3_gadget_ep_cmd, !41, !"event_dwc3_gadget_ep_cmd", i1 false, i1 false}
!93 = !{ptr @__event_dwc3_gadget_ep_cmd, !41, !"__event_dwc3_gadget_ep_cmd", i1 false, i1 false}
!94 = !{ptr @event_class_dwc3_log_trb, !95, !"event_class_dwc3_log_trb", i1 false, i1 false}
!95 = !{!"../drivers/usb/dwc3/./trace.h", i32 219, i32 1}
!96 = !{ptr @event_dwc3_prepare_trb, !45, !"event_dwc3_prepare_trb", i1 false, i1 false}
!97 = !{ptr @__event_dwc3_prepare_trb, !45, !"__event_dwc3_prepare_trb", i1 false, i1 false}
!98 = !{ptr @event_dwc3_complete_trb, !49, !"event_dwc3_complete_trb", i1 false, i1 false}
!99 = !{ptr @__event_dwc3_complete_trb, !49, !"__event_dwc3_complete_trb", i1 false, i1 false}
!100 = !{ptr @event_class_dwc3_log_ep, !101, !"event_class_dwc3_log_ep", i1 false, i1 false}
!101 = !{!"../drivers/usb/dwc3/./trace.h", i32 290, i32 1}
!102 = !{ptr @event_dwc3_gadget_ep_enable, !53, !"event_dwc3_gadget_ep_enable", i1 false, i1 false}
!103 = !{ptr @__event_dwc3_gadget_ep_enable, !53, !"__event_dwc3_gadget_ep_enable", i1 false, i1 false}
!104 = !{ptr @event_dwc3_gadget_ep_disable, !57, !"event_dwc3_gadget_ep_disable", i1 false, i1 false}
!105 = !{ptr @__event_dwc3_gadget_ep_disable, !57, !"__event_dwc3_gadget_ep_disable", i1 false, i1 false}
!106 = !{ptr @__bpf_trace_tp_map_dwc3_readl, !1, !"__bpf_trace_tp_map_dwc3_readl", i1 false, i1 false}
!107 = !{ptr @__bpf_trace_tp_map_dwc3_writel, !5, !"__bpf_trace_tp_map_dwc3_writel", i1 false, i1 false}
!108 = !{ptr @__bpf_trace_tp_map_dwc3_event, !9, !"__bpf_trace_tp_map_dwc3_event", i1 false, i1 false}
!109 = !{ptr @__bpf_trace_tp_map_dwc3_ctrl_req, !13, !"__bpf_trace_tp_map_dwc3_ctrl_req", i1 false, i1 false}
!110 = !{ptr @__bpf_trace_tp_map_dwc3_alloc_request, !17, !"__bpf_trace_tp_map_dwc3_alloc_request", i1 false, i1 false}
!111 = !{ptr @__bpf_trace_tp_map_dwc3_free_request, !21, !"__bpf_trace_tp_map_dwc3_free_request", i1 false, i1 false}
!112 = !{ptr @__bpf_trace_tp_map_dwc3_ep_queue, !25, !"__bpf_trace_tp_map_dwc3_ep_queue", i1 false, i1 false}
!113 = !{ptr @__bpf_trace_tp_map_dwc3_ep_dequeue, !29, !"__bpf_trace_tp_map_dwc3_ep_dequeue", i1 false, i1 false}
!114 = !{ptr @__bpf_trace_tp_map_dwc3_gadget_giveback, !33, !"__bpf_trace_tp_map_dwc3_gadget_giveback", i1 false, i1 false}
!115 = !{ptr @__bpf_trace_tp_map_dwc3_gadget_generic_cmd, !37, !"__bpf_trace_tp_map_dwc3_gadget_generic_cmd", i1 false, i1 false}
!116 = !{ptr @__bpf_trace_tp_map_dwc3_gadget_ep_cmd, !41, !"__bpf_trace_tp_map_dwc3_gadget_ep_cmd", i1 false, i1 false}
!117 = !{ptr @__bpf_trace_tp_map_dwc3_prepare_trb, !45, !"__bpf_trace_tp_map_dwc3_prepare_trb", i1 false, i1 false}
!118 = !{ptr @__bpf_trace_tp_map_dwc3_complete_trb, !49, !"__bpf_trace_tp_map_dwc3_complete_trb", i1 false, i1 false}
!119 = !{ptr @__bpf_trace_tp_map_dwc3_gadget_ep_enable, !53, !"__bpf_trace_tp_map_dwc3_gadget_ep_enable", i1 false, i1 false}
!120 = !{ptr @__bpf_trace_tp_map_dwc3_gadget_ep_disable, !57, !"__bpf_trace_tp_map_dwc3_gadget_ep_disable", i1 false, i1 false}
!121 = !{ptr @__tpstrtab_dwc3_readl, !1, !"__tpstrtab_dwc3_readl", i1 false, i1 false}
!122 = !{ptr @__tpstrtab_dwc3_writel, !5, !"__tpstrtab_dwc3_writel", i1 false, i1 false}
!123 = !{ptr @__tpstrtab_dwc3_event, !9, !"__tpstrtab_dwc3_event", i1 false, i1 false}
!124 = !{ptr @__tpstrtab_dwc3_ctrl_req, !13, !"__tpstrtab_dwc3_ctrl_req", i1 false, i1 false}
!125 = !{ptr @__tpstrtab_dwc3_alloc_request, !17, !"__tpstrtab_dwc3_alloc_request", i1 false, i1 false}
!126 = !{ptr @__tpstrtab_dwc3_free_request, !21, !"__tpstrtab_dwc3_free_request", i1 false, i1 false}
!127 = !{ptr @__tpstrtab_dwc3_ep_queue, !25, !"__tpstrtab_dwc3_ep_queue", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_dwc3_ep_dequeue, !29, !"__tpstrtab_dwc3_ep_dequeue", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_dwc3_gadget_giveback, !33, !"__tpstrtab_dwc3_gadget_giveback", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_dwc3_gadget_generic_cmd, !37, !"__tpstrtab_dwc3_gadget_generic_cmd", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_dwc3_gadget_ep_cmd, !41, !"__tpstrtab_dwc3_gadget_ep_cmd", i1 false, i1 false}
!132 = !{ptr @__tpstrtab_dwc3_prepare_trb, !45, !"__tpstrtab_dwc3_prepare_trb", i1 false, i1 false}
!133 = !{ptr @__tpstrtab_dwc3_complete_trb, !49, !"__tpstrtab_dwc3_complete_trb", i1 false, i1 false}
!134 = !{ptr @__tpstrtab_dwc3_gadget_ep_enable, !53, !"__tpstrtab_dwc3_gadget_ep_enable", i1 false, i1 false}
!135 = !{ptr @__tpstrtab_dwc3_gadget_ep_disable, !57, !"__tpstrtab_dwc3_gadget_ep_disable", i1 false, i1 false}
!136 = !{ptr @str__dwc3__trace_system_name, !137, !"str__dwc3__trace_system_name", i1 false, i1 false}
!137 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!138 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.2, !61, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.3, !61, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @trace_event_fields_dwc3_log_io, !61, !"trace_event_fields_dwc3_log_io", i1 false, i1 false}
!144 = !{ptr @trace_event_type_funcs_dwc3_log_io, !61, !"trace_event_type_funcs_dwc3_log_io", i1 false, i1 false}
!145 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @print_fmt_dwc3_log_io, !61, !"print_fmt_dwc3_log_io", i1 false, i1 false}
!147 = !{ptr @.str.6, !67, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.7, !67, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @trace_event_fields_dwc3_log_event, !67, !"trace_event_fields_dwc3_log_event", i1 false, i1 false}
!152 = !{ptr @trace_event_type_funcs_dwc3_log_event, !67, !"trace_event_type_funcs_dwc3_log_event", i1 false, i1 false}
!153 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.11, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/dwc3/debug.h", i32 205, i32 23}
!156 = !{ptr @.str.12, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/dwc3/debug.h", i32 209, i32 23}
!158 = !{ptr @.str.13, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/dwc3/debug.h", i32 213, i32 23}
!160 = !{ptr @.str.14, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/dwc3/debug.h", i32 217, i32 23}
!162 = !{ptr @.str.15, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/dwc3/debug.h", i32 221, i32 23}
!164 = !{ptr @.str.16, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/dwc3/debug.h", i32 225, i32 23}
!166 = !{ptr @.str.17, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/dwc3/debug.h", i32 229, i32 23}
!168 = !{ptr @.str.18, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/dwc3/debug.h", i32 233, i32 23}
!170 = !{ptr @.str.19, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/dwc3/debug.h", i32 237, i32 23}
!172 = !{ptr @.str.20, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/dwc3/debug.h", i32 241, i32 23}
!174 = !{ptr @.str.21, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/dwc3/debug.h", i32 245, i32 23}
!176 = !{ptr @.str.22, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/dwc3/debug.h", i32 89, i32 10}
!178 = !{ptr @.str.23, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/dwc3/debug.h", i32 91, i32 10}
!180 = !{ptr @.str.24, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/dwc3/debug.h", i32 93, i32 10}
!182 = !{ptr @.str.25, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/dwc3/debug.h", i32 95, i32 10}
!184 = !{ptr @.str.26, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/dwc3/debug.h", i32 97, i32 10}
!186 = !{ptr @.str.27, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/dwc3/debug.h", i32 99, i32 10}
!188 = !{ptr @.str.28, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/dwc3/debug.h", i32 101, i32 10}
!190 = !{ptr @.str.29, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/dwc3/debug.h", i32 103, i32 10}
!192 = !{ptr @.str.30, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/dwc3/debug.h", i32 105, i32 10}
!194 = !{ptr @.str.31, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/dwc3/debug.h", i32 107, i32 10}
!196 = !{ptr @.str.32, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/dwc3/debug.h", i32 109, i32 10}
!198 = !{ptr @.str.33, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/dwc3/debug.h", i32 111, i32 10}
!200 = !{ptr @.str.34, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/dwc3/debug.h", i32 113, i32 10}
!202 = !{ptr @.str.35, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/dwc3/debug.h", i32 115, i32 10}
!204 = !{ptr @.str.36, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/dwc3/debug.h", i32 117, i32 10}
!206 = !{ptr @.str.37, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/dwc3/debug.h", i32 262, i32 29}
!208 = !{ptr @.str.38, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/dwc3/debug.h", i32 263, i32 18}
!210 = !{ptr @.str.39, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/dwc3/debug.h", i32 263, i32 25}
!212 = !{ptr @.str.40, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/dwc3/debug.h", i32 270, i32 5}
!214 = !{ptr @.str.41, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/dwc3/debug.h", i32 276, i32 37}
!216 = !{ptr @.str.42, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/dwc3/debug.h", i32 281, i32 5}
!218 = !{ptr @.str.43, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/dwc3/debug.h", i32 289, i32 5}
!220 = !{ptr @.str.44, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/dwc3/debug.h", i32 292, i32 5}
!222 = !{ptr @.str.45, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/dwc3/debug.h", i32 292, i32 19}
!224 = !{ptr @.str.46, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/dwc3/debug.h", i32 301, i32 7}
!226 = !{ptr @.str.47, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/dwc3/debug.h", i32 305, i32 7}
!228 = !{ptr @.str.48, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/dwc3/debug.h", i32 310, i32 36}
!230 = !{ptr @.str.49, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/dwc3/debug.h", i32 317, i32 37}
!232 = !{ptr @.str.50, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/dwc3/debug.h", i32 322, i32 37}
!234 = !{ptr @.str.51, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/dwc3/debug.h", i32 328, i32 36}
!236 = !{ptr @.str.52, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/dwc3/debug.h", i32 182, i32 10}
!238 = !{ptr @.str.53, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/dwc3/debug.h", i32 184, i32 10}
!240 = !{ptr @.str.54, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/dwc3/debug.h", i32 186, i32 10}
!242 = !{ptr @.str.55, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/dwc3/debug.h", i32 188, i32 10}
!244 = !{ptr @print_fmt_dwc3_log_event, !67, !"print_fmt_dwc3_log_event", i1 false, i1 false}
!245 = !{ptr @.str.56, !71, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.57, !71, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.58, !71, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.59, !71, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.60, !71, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.61, !71, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.62, !71, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @trace_event_fields_dwc3_log_ctrl, !71, !"trace_event_fields_dwc3_log_ctrl", i1 false, i1 false}
!253 = !{ptr @trace_event_type_funcs_dwc3_log_ctrl, !71, !"trace_event_type_funcs_dwc3_log_ctrl", i1 false, i1 false}
!254 = !{ptr @.str.63, !71, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @print_fmt_dwc3_log_ctrl, !71, !"print_fmt_dwc3_log_ctrl", i1 false, i1 false}
!256 = !{ptr @.str.64, !75, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.65, !75, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.66, !75, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.67, !75, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.68, !75, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.69, !75, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.70, !75, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.71, !75, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.72, !75, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.73, !75, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.74, !75, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.75, !75, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @trace_event_fields_dwc3_log_request, !75, !"trace_event_fields_dwc3_log_request", i1 false, i1 false}
!269 = !{ptr @trace_event_type_funcs_dwc3_log_request, !75, !"trace_event_type_funcs_dwc3_log_request", i1 false, i1 false}
!270 = !{ptr @.str.76, !75, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.77, !75, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.78, !75, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.79, !75, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.80, !75, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.81, !75, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.82, !75, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @print_fmt_dwc3_log_request, !75, !"print_fmt_dwc3_log_request", i1 false, i1 false}
!278 = !{ptr @.str.83, !87, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.84, !87, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @trace_event_fields_dwc3_log_generic_cmd, !87, !"trace_event_fields_dwc3_log_generic_cmd", i1 false, i1 false}
!281 = !{ptr @trace_event_type_funcs_dwc3_log_generic_cmd, !87, !"trace_event_type_funcs_dwc3_log_generic_cmd", i1 false, i1 false}
!282 = !{ptr @.str.85, !87, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.86, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/dwc3/debug.h", i32 56, i32 10}
!285 = !{ptr @.str.87, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/dwc3/debug.h", i32 58, i32 10}
!287 = !{ptr @.str.88, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/dwc3/debug.h", i32 60, i32 10}
!289 = !{ptr @.str.89, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/dwc3/debug.h", i32 62, i32 10}
!291 = !{ptr @.str.90, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/dwc3/debug.h", i32 64, i32 10}
!293 = !{ptr @.str.91, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/dwc3/debug.h", i32 66, i32 10}
!295 = !{ptr @.str.92, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/dwc3/debug.h", i32 68, i32 10}
!297 = !{ptr @.str.93, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/dwc3/debug.h", i32 70, i32 10}
!299 = !{ptr @.str.94, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/dwc3/debug.h", i32 72, i32 10}
!301 = !{ptr @.str.95, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/dwc3/debug.h", i32 74, i32 10}
!303 = !{ptr @.str.96, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/dwc3/debug.h", i32 404, i32 10}
!305 = !{ptr @.str.97, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/dwc3/debug.h", i32 406, i32 10}
!307 = !{ptr @.str.98, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/dwc3/debug.h", i32 408, i32 10}
!309 = !{ptr @print_fmt_dwc3_log_generic_cmd, !87, !"print_fmt_dwc3_log_generic_cmd", i1 false, i1 false}
!310 = !{ptr @.str.99, !91, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.100, !91, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.101, !91, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.102, !91, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @trace_event_fields_dwc3_log_gadget_ep_cmd, !91, !"trace_event_fields_dwc3_log_gadget_ep_cmd", i1 false, i1 false}
!315 = !{ptr @trace_event_type_funcs_dwc3_log_gadget_ep_cmd, !91, !"trace_event_type_funcs_dwc3_log_gadget_ep_cmd", i1 false, i1 false}
!316 = !{ptr @.str.103, !91, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.104, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/dwc3/debug.h", i32 25, i32 10}
!319 = !{ptr @.str.105, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/dwc3/debug.h", i32 27, i32 10}
!321 = !{ptr @.str.106, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/dwc3/debug.h", i32 29, i32 10}
!323 = !{ptr @.str.107, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/dwc3/debug.h", i32 31, i32 10}
!325 = !{ptr @.str.108, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/dwc3/debug.h", i32 33, i32 10}
!327 = !{ptr @.str.109, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/dwc3/debug.h", i32 35, i32 10}
!329 = !{ptr @.str.110, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/dwc3/debug.h", i32 37, i32 10}
!331 = !{ptr @.str.111, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/dwc3/debug.h", i32 39, i32 10}
!333 = !{ptr @.str.112, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/dwc3/debug.h", i32 41, i32 10}
!335 = !{ptr @.str.113, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/dwc3/debug.h", i32 43, i32 10}
!337 = !{ptr @.str.114, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/dwc3/debug.h", i32 392, i32 10}
!339 = !{ptr @.str.115, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/dwc3/debug.h", i32 394, i32 10}
!341 = !{ptr @print_fmt_dwc3_log_gadget_ep_cmd, !91, !"print_fmt_dwc3_log_gadget_ep_cmd", i1 false, i1 false}
!342 = !{ptr @.str.116, !95, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.117, !95, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.118, !95, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.119, !95, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.120, !95, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.121, !95, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.122, !95, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.123, !95, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.124, !95, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @trace_event_fields_dwc3_log_trb, !95, !"trace_event_fields_dwc3_log_trb", i1 false, i1 false}
!352 = !{ptr @trace_event_type_funcs_dwc3_log_trb, !95, !"trace_event_type_funcs_dwc3_log_trb", i1 false, i1 false}
!353 = !{ptr @.str.125, !95, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.126, !95, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.127, !95, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.128, !95, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.129, !95, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.130, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/dwc3/debug.h", i32 158, i32 10}
!360 = !{ptr @.str.131, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/dwc3/debug.h", i32 160, i32 10}
!362 = !{ptr @.str.132, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/dwc3/debug.h", i32 162, i32 10}
!364 = !{ptr @.str.133, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/dwc3/debug.h", i32 164, i32 10}
!366 = !{ptr @.str.134, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/dwc3/debug.h", i32 166, i32 10}
!368 = !{ptr @.str.135, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/usb/dwc3/debug.h", i32 168, i32 10}
!370 = !{ptr @.str.136, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/usb/dwc3/debug.h", i32 170, i32 10}
!372 = !{ptr @.str.137, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/usb/dwc3/debug.h", i32 172, i32 10}
!374 = !{ptr @print_fmt_dwc3_log_trb, !95, !"print_fmt_dwc3_log_trb", i1 false, i1 false}
!375 = !{ptr @.str.138, !101, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.139, !101, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.140, !101, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.141, !101, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.142, !101, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.143, !101, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.144, !101, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.145, !101, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.146, !101, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @trace_event_fields_dwc3_log_ep, !101, !"trace_event_fields_dwc3_log_ep", i1 false, i1 false}
!385 = !{ptr @trace_event_type_funcs_dwc3_log_ep, !101, !"trace_event_type_funcs_dwc3_log_ep", i1 false, i1 false}
!386 = !{ptr @.str.147, !101, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @print_fmt_dwc3_log_ep, !101, !"print_fmt_dwc3_log_ep", i1 false, i1 false}
!388 = !{!"sp"}
!389 = !{i32 1, !"wchar_size", i32 2}
!390 = !{i32 1, !"min_enum_size", i32 4}
!391 = !{i32 8, !"branch-target-enforcement", i32 0}
!392 = !{i32 8, !"sign-return-address", i32 0}
!393 = !{i32 8, !"sign-return-address-all", i32 0}
!394 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!395 = !{i32 7, !"uwtable", i32 1}
!396 = !{i32 7, !"frame-pointer", i32 2}
!397 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!398 = !{!"branch_weights", i32 2000, i32 1}
!399 = !{!"branch_weights", i32 1, i32 2000}
!400 = !{!"auto-init"}
