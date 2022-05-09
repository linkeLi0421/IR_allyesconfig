; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/cdns3-trace.c_pt.bc'
source_filename = "../drivers/usb/cdns3/cdns3-trace.c"
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
%union.anon.123 = type { %struct.bpf_raw_event_map }
%union.anon.124 = type { %struct.bpf_raw_event_map }
%union.anon.125 = type { %struct.bpf_raw_event_map }
%union.anon.126 = type { %struct.bpf_raw_event_map }
%union.anon.127 = type { %struct.bpf_raw_event_map }
%union.anon.128 = type { %struct.bpf_raw_event_map }
%union.anon.129 = type { %struct.bpf_raw_event_map }
%union.anon.130 = type { %struct.bpf_raw_event_map }
%union.anon.131 = type { %struct.bpf_raw_event_map }
%union.anon.132 = type { %struct.bpf_raw_event_map }
%union.anon.133 = type { %struct.bpf_raw_event_map }
%union.anon.134 = type { %struct.bpf_raw_event_map }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.cdns3_endpoint = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i32, ptr, [20 x i8], i32, ptr, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, ptr, i32, i8, i32, i16, i16, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.trace_event_raw_cdns3_halt = type { %struct.trace_entry, i32, i8, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cdns3_wa1 = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_wa2 = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_doorbell = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_usb_irq = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_epx_irq = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.cdns3_device = type { ptr, ptr, %struct.usb_gadget, ptr, i32, %struct.spinlock, ptr, ptr, ptr, i32, ptr, i8, i32, [32 x ptr], %struct.list_head, %struct.work_struct, i32, i16, i16, i32, %struct.work_struct, ptr, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cdns3_usb_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [26 x i32], i32, i32, i32, [74 x i32], [51 x i32], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_cdns3_log_ep0_irq = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_ctrl = type { %struct.trace_entry, i8, i8, i16, i16, i16, i32, [0 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.cdns3_request = type { %struct.usb_request, ptr, ptr, i32, i32, ptr, i32, %struct.list_head, i32, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.trace_event_raw_cdns3_log_request = type { %struct.trace_entry, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_ep0_queue = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_stream_split_transfer_len = type { %struct.trace_entry, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_aligned_request = type { %struct.trace_entry, i32, ptr, ptr, i32, ptr, i32, i32, [0 x i8] }
%struct.cdns3_aligned_buf = type { ptr, i32, i32, i32, i8, %struct.list_head }
%struct.trace_event_raw_cdns3_log_map_request = type { %struct.trace_entry, i32, ptr, ptr, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_trb = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.cdns3_trb = type { i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.trace_event_raw_cdns3_log_ring = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cdns3_log_ep = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [0 x i8] }
%struct.trace_event_raw_cdns3_log_request_handled = type { %struct.trace_entry, ptr, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cdns3_halt = internal constant [11 x i8] c"cdns3_halt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_halt = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_halt }, align 4
@__tracepoint_cdns3_halt = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_halt, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_halt, ptr null, ptr @__traceiter_cdns3_halt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_halt = internal constant ptr @__tracepoint_cdns3_halt, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_wa1 = internal constant [10 x i8] c"cdns3_wa1\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_wa1 = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_wa1 }, align 4
@__tracepoint_cdns3_wa1 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_wa1, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_wa1, ptr null, ptr @__traceiter_cdns3_wa1, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_wa1 = internal constant ptr @__tracepoint_cdns3_wa1, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_wa2 = internal constant [10 x i8] c"cdns3_wa2\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_wa2 = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_wa2 }, align 4
@__tracepoint_cdns3_wa2 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_wa2, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_wa2, ptr null, ptr @__traceiter_cdns3_wa2, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_wa2 = internal constant ptr @__tracepoint_cdns3_wa2, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_doorbell_ep0 = internal constant [19 x i8] c"cdns3_doorbell_ep0\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_doorbell_ep0 = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_doorbell_ep0 }, align 4
@__tracepoint_cdns3_doorbell_ep0 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_doorbell_ep0, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_doorbell_ep0, ptr null, ptr @__traceiter_cdns3_doorbell_ep0, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_doorbell_ep0 = internal constant ptr @__tracepoint_cdns3_doorbell_ep0, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_doorbell_epx = internal constant [19 x i8] c"cdns3_doorbell_epx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_doorbell_epx = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_doorbell_epx }, align 4
@__tracepoint_cdns3_doorbell_epx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_doorbell_epx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_doorbell_epx, ptr null, ptr @__traceiter_cdns3_doorbell_epx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_doorbell_epx = internal constant ptr @__tracepoint_cdns3_doorbell_epx, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_usb_irq = internal constant [14 x i8] c"cdns3_usb_irq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_usb_irq = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_usb_irq }, align 4
@__tracepoint_cdns3_usb_irq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_usb_irq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_usb_irq, ptr null, ptr @__traceiter_cdns3_usb_irq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_usb_irq = internal constant ptr @__tracepoint_cdns3_usb_irq, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_epx_irq = internal constant [14 x i8] c"cdns3_epx_irq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_epx_irq = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_epx_irq }, align 4
@__tracepoint_cdns3_epx_irq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_epx_irq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_epx_irq, ptr null, ptr @__traceiter_cdns3_epx_irq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_epx_irq = internal constant ptr @__tracepoint_cdns3_epx_irq, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_ep0_irq = internal constant [14 x i8] c"cdns3_ep0_irq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_ep0_irq = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_ep0_irq }, align 4
@__tracepoint_cdns3_ep0_irq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_ep0_irq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_ep0_irq, ptr null, ptr @__traceiter_cdns3_ep0_irq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_ep0_irq = internal constant ptr @__tracepoint_cdns3_ep0_irq, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_ctrl_req = internal constant [15 x i8] c"cdns3_ctrl_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_ctrl_req = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_ctrl_req }, align 4
@__tracepoint_cdns3_ctrl_req = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_ctrl_req, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_ctrl_req, ptr null, ptr @__traceiter_cdns3_ctrl_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_ctrl_req = internal constant ptr @__tracepoint_cdns3_ctrl_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_alloc_request = internal constant [20 x i8] c"cdns3_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_alloc_request }, align 4
@__tracepoint_cdns3_alloc_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_alloc_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_alloc_request, ptr null, ptr @__traceiter_cdns3_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_alloc_request = internal constant ptr @__tracepoint_cdns3_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_free_request = internal constant [19 x i8] c"cdns3_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_free_request }, align 4
@__tracepoint_cdns3_free_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_free_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_free_request, ptr null, ptr @__traceiter_cdns3_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_free_request = internal constant ptr @__tracepoint_cdns3_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_ep_queue = internal constant [15 x i8] c"cdns3_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_ep_queue }, align 4
@__tracepoint_cdns3_ep_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_ep_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_ep_queue, ptr null, ptr @__traceiter_cdns3_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_ep_queue = internal constant ptr @__tracepoint_cdns3_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_ep_dequeue = internal constant [17 x i8] c"cdns3_ep_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_ep_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_ep_dequeue }, align 4
@__tracepoint_cdns3_ep_dequeue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_ep_dequeue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_ep_dequeue, ptr null, ptr @__traceiter_cdns3_ep_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_ep_dequeue = internal constant ptr @__tracepoint_cdns3_ep_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_gadget_giveback = internal constant [22 x i8] c"cdns3_gadget_giveback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_gadget_giveback = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_gadget_giveback }, align 4
@__tracepoint_cdns3_gadget_giveback = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_gadget_giveback, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_gadget_giveback, ptr null, ptr @__traceiter_cdns3_gadget_giveback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_gadget_giveback = internal constant ptr @__tracepoint_cdns3_gadget_giveback, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_ep0_queue = internal constant [16 x i8] c"cdns3_ep0_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_ep0_queue = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_ep0_queue }, align 4
@__tracepoint_cdns3_ep0_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_ep0_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_ep0_queue, ptr null, ptr @__traceiter_cdns3_ep0_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_ep0_queue = internal constant ptr @__tracepoint_cdns3_ep0_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_stream_transfer_split = internal constant [28 x i8] c"cdns3_stream_transfer_split\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_stream_transfer_split = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_stream_transfer_split }, align 4
@__tracepoint_cdns3_stream_transfer_split = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_stream_transfer_split, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_stream_transfer_split, ptr null, ptr @__traceiter_cdns3_stream_transfer_split, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_stream_transfer_split = internal constant ptr @__tracepoint_cdns3_stream_transfer_split, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_stream_transfer_split_next_part = internal constant [38 x i8] c"cdns3_stream_transfer_split_next_part\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_stream_transfer_split_next_part = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_stream_transfer_split_next_part }, align 4
@__tracepoint_cdns3_stream_transfer_split_next_part = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_stream_transfer_split_next_part, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_stream_transfer_split_next_part, ptr null, ptr @__traceiter_cdns3_stream_transfer_split_next_part, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_stream_transfer_split_next_part = internal constant ptr @__tracepoint_cdns3_stream_transfer_split_next_part, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_free_aligned_request = internal constant [27 x i8] c"cdns3_free_aligned_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_free_aligned_request = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_free_aligned_request }, align 4
@__tracepoint_cdns3_free_aligned_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_free_aligned_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_free_aligned_request, ptr null, ptr @__traceiter_cdns3_free_aligned_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_free_aligned_request = internal constant ptr @__tracepoint_cdns3_free_aligned_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_prepare_aligned_request = internal constant [30 x i8] c"cdns3_prepare_aligned_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_prepare_aligned_request = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_prepare_aligned_request }, align 4
@__tracepoint_cdns3_prepare_aligned_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_prepare_aligned_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_prepare_aligned_request, ptr null, ptr @__traceiter_cdns3_prepare_aligned_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_prepare_aligned_request = internal constant ptr @__tracepoint_cdns3_prepare_aligned_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_map_request = internal constant [18 x i8] c"cdns3_map_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_map_request = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_map_request }, align 4
@__tracepoint_cdns3_map_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_map_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_map_request, ptr null, ptr @__traceiter_cdns3_map_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_map_request = internal constant ptr @__tracepoint_cdns3_map_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_mapped_request = internal constant [21 x i8] c"cdns3_mapped_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_mapped_request = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_mapped_request }, align 4
@__tracepoint_cdns3_mapped_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_mapped_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_mapped_request, ptr null, ptr @__traceiter_cdns3_mapped_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_mapped_request = internal constant ptr @__tracepoint_cdns3_mapped_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_prepare_trb = internal constant [18 x i8] c"cdns3_prepare_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_prepare_trb = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_prepare_trb }, align 4
@__tracepoint_cdns3_prepare_trb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_prepare_trb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_prepare_trb, ptr null, ptr @__traceiter_cdns3_prepare_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_prepare_trb = internal constant ptr @__tracepoint_cdns3_prepare_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_complete_trb = internal constant [19 x i8] c"cdns3_complete_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_complete_trb = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_complete_trb }, align 4
@__tracepoint_cdns3_complete_trb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_complete_trb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_complete_trb, ptr null, ptr @__traceiter_cdns3_complete_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_complete_trb = internal constant ptr @__tracepoint_cdns3_complete_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_ring = internal constant [11 x i8] c"cdns3_ring\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_ring = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_ring }, align 4
@__tracepoint_cdns3_ring = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_ring, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_ring, ptr null, ptr @__traceiter_cdns3_ring, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_ring = internal constant ptr @__tracepoint_cdns3_ring, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_gadget_ep_enable = internal constant [23 x i8] c"cdns3_gadget_ep_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_gadget_ep_enable = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_gadget_ep_enable }, align 4
@__tracepoint_cdns3_gadget_ep_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_gadget_ep_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_gadget_ep_enable, ptr null, ptr @__traceiter_cdns3_gadget_ep_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_gadget_ep_enable = internal constant ptr @__tracepoint_cdns3_gadget_ep_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_gadget_ep_disable = internal constant [24 x i8] c"cdns3_gadget_ep_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_gadget_ep_disable = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_gadget_ep_disable }, align 4
@__tracepoint_cdns3_gadget_ep_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_gadget_ep_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_gadget_ep_disable, ptr null, ptr @__traceiter_cdns3_gadget_ep_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_gadget_ep_disable = internal constant ptr @__tracepoint_cdns3_gadget_ep_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdns3_request_handled = internal constant [22 x i8] c"cdns3_request_handled\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdns3_request_handled = dso_local global %struct.static_call_key { ptr @__traceiter_cdns3_request_handled }, align 4
@__tracepoint_cdns3_request_handled = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cdns3_request_handled, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cdns3_request_handled, ptr null, ptr @__traceiter_cdns3_request_handled, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdns3_request_handled = internal constant ptr @__tracepoint_cdns3_request_handled, section "__tracepoints_ptrs", align 4
@str__cdns3__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdns3\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_cdns3_halt = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.104 { %struct.anon.105 { ptr @.str.4, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.104 { %struct.anon.105 { ptr @.str.5, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_halt = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_halt, ptr @perf_trace_cdns3_halt, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_halt, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_halt, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_halt, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_halt = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_halt, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_halt = internal global { [101 x i8], [59 x i8] } { [101 x i8] c"\22Halt %s for %s: %s\22, REC->flush ? \22 and flush\22 : \22\22, __get_str(name), REC->halt ? \22set\22 : \22cleared\22\00", [59 x i8] zeroinitializer }, align 32
@event_cdns3_halt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_halt, %union.anon.106 { ptr @__tracepoint_cdns3_halt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_halt }, ptr @print_fmt_cdns3_halt, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_halt = internal global ptr @event_cdns3_halt, section "_ftrace_events", align 4
@trace_event_fields_cdns3_wa1 = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cdns3_wa1 = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_wa1, ptr @perf_trace_cdns3_wa1, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_wa1, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_wa1, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_wa1, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_wa1 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_wa1, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_wa1 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\22WA1: %s %s\22, __get_str(ep_name), __get_str(msg)\00", [47 x i8] zeroinitializer }, align 32
@event_cdns3_wa1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_wa1, %union.anon.106 { ptr @__tracepoint_cdns3_wa1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_wa1 }, ptr @print_fmt_cdns3_wa1, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_wa1 = internal global ptr @event_cdns3_wa1, section "_ftrace_events", align 4
@trace_event_fields_cdns3_wa2 = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cdns3_wa2 = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_wa2, ptr @perf_trace_cdns3_wa2, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_wa2, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_wa2, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_wa2, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_wa2 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_wa2, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_wa2 = internal global { [49 x i8], [47 x i8] } { [49 x i8] c"\22WA2: %s %s\22, __get_str(ep_name), __get_str(msg)\00", [47 x i8] zeroinitializer }, align 32
@event_cdns3_wa2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_wa2, %union.anon.106 { ptr @__tracepoint_cdns3_wa2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_wa2 }, ptr @print_fmt_cdns3_wa2, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_wa2 = internal global ptr @event_cdns3_wa2, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_doorbell = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_doorbell = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_doorbell, ptr @perf_trace_cdns3_log_doorbell, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_doorbell, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_doorbell, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_doorbell, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_doorbell = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_doorbell, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_doorbell = internal global { [56 x i8], [40 x i8] } { [56 x i8] c"\22%s, ep_trbaddr %08x\22, __get_str(name), REC->ep_trbaddr\00", [40 x i8] zeroinitializer }, align 32
@event_cdns3_doorbell_ep0 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_doorbell, %union.anon.106 { ptr @__tracepoint_cdns3_doorbell_ep0 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_doorbell }, ptr @print_fmt_cdns3_log_doorbell, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_doorbell_ep0 = internal global ptr @event_cdns3_doorbell_ep0, section "_ftrace_events", align 4
@event_cdns3_doorbell_epx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_doorbell, %union.anon.106 { ptr @__tracepoint_cdns3_doorbell_epx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_doorbell }, ptr @print_fmt_cdns3_log_doorbell, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_doorbell_epx = internal global ptr @event_cdns3_doorbell_epx, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_usb_irq = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.104 { %struct.anon.105 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_usb_irq = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_usb_irq, ptr @perf_trace_cdns3_log_usb_irq, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_usb_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_usb_irq, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_usb_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_usb_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_usb_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_usb_irq = internal global { [70 x i8], [58 x i8] } { [70 x i8] c"\22%s\22, cdns3_decode_usb_irq(__get_str(str), REC->speed, REC->usb_ists)\00", [58 x i8] zeroinitializer }, align 32
@event_cdns3_usb_irq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_usb_irq, %union.anon.106 { ptr @__tracepoint_cdns3_usb_irq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_usb_irq }, ptr @print_fmt_cdns3_log_usb_irq, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_usb_irq = internal global ptr @event_cdns3_usb_irq, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_epx_irq = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_epx_irq = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_epx_irq, ptr @perf_trace_cdns3_log_epx_irq, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_epx_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_epx_irq, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_epx_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_epx_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_epx_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_epx_irq = internal global { [179 x i8], [45 x i8] } { [179 x i8] c"\22%s, ep_traddr: %08x ep_last_sid: %08x use_streams: %d\22, cdns3_decode_epx_irq(__get_str(str), __get_str(ep_name), REC->ep_sts), REC->ep_traddr, REC->ep_last_sid, REC->use_streams\00", [45 x i8] zeroinitializer }, align 32
@event_cdns3_epx_irq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_epx_irq, %union.anon.106 { ptr @__tracepoint_cdns3_epx_irq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_epx_irq }, ptr @print_fmt_cdns3_log_epx_irq, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_epx_irq = internal global ptr @event_cdns3_epx_irq, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_ep0_irq = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_ep0_irq = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_ep0_irq, ptr @perf_trace_cdns3_log_ep0_irq, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_ep0_irq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_ep0_irq, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_ep0_irq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_ep0_irq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_ep0_irq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_ep0_irq = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22%s\22, cdns3_decode_ep0_irq(__get_str(str), REC->ep_dir, REC->ep_sts)\00", [59 x i8] zeroinitializer }, align 32
@event_cdns3_ep0_irq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_ep0_irq, %union.anon.106 { ptr @__tracepoint_cdns3_ep0_irq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_ep0_irq }, ptr @print_fmt_cdns3_log_ep0_irq, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_ep0_irq = internal global ptr @event_cdns3_ep0_irq, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_ctrl = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.104 { %struct.anon.105 { ptr @.str.58, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.104 { %struct.anon.105 { ptr @.str.59, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.60, %union.anon.104 { %struct.anon.105 { ptr @.str.61, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.60, %union.anon.104 { %struct.anon.105 { ptr @.str.62, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.60, %union.anon.104 { %struct.anon.105 { ptr @.str.63, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_ctrl = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_ctrl, ptr @perf_trace_cdns3_log_ctrl, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_ctrl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_ctrl, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_ctrl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_ctrl = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_ctrl, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_ctrl = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22%s\22, usb_decode_ctrl(__get_str(str), 500, REC->bRequestType, REC->bRequest, REC->wValue, REC->wIndex, REC->wLength)\00", [43 x i8] zeroinitializer }, align 32
@event_cdns3_ctrl_req = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_ctrl, %union.anon.106 { ptr @__tracepoint_cdns3_ctrl_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_ctrl }, ptr @print_fmt_cdns3_log_ctrl, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_ctrl_req = internal global ptr @event_cdns3_ctrl_req, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_request = internal global { [14 x %struct.trace_event_fields], [80 x i8] } { [14 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.64, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.71, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.74, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.75, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.76, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.77, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [80 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_request = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_request, ptr @perf_trace_cdns3_log_request, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_request, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_request = internal global { [323 x i8], [93 x i8] } { [323 x i8] c"\22%s: req: %p, req buff %p, length: %u/%u %s%s%s, status: %d, trb: [start:%d, end:%d], flags:%x SID: %u\22, __get_str(name), REC->req, REC->buf, REC->actual, REC->length, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22I\22 : \22i\22, REC->status, REC->start_trb, REC->end_trb, REC->flags, REC->stream_id\00", [93 x i8] zeroinitializer }, align 32
@event_cdns3_alloc_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_request, %union.anon.106 { ptr @__tracepoint_cdns3_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_request }, ptr @print_fmt_cdns3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_alloc_request = internal global ptr @event_cdns3_alloc_request, section "_ftrace_events", align 4
@event_cdns3_free_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_request, %union.anon.106 { ptr @__tracepoint_cdns3_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_request }, ptr @print_fmt_cdns3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_free_request = internal global ptr @event_cdns3_free_request, section "_ftrace_events", align 4
@event_cdns3_ep_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_request, %union.anon.106 { ptr @__tracepoint_cdns3_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_request }, ptr @print_fmt_cdns3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_ep_queue = internal global ptr @event_cdns3_ep_queue, section "_ftrace_events", align 4
@event_cdns3_ep_dequeue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_request, %union.anon.106 { ptr @__tracepoint_cdns3_ep_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_request }, ptr @print_fmt_cdns3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_ep_dequeue = internal global ptr @event_cdns3_ep_dequeue, section "_ftrace_events", align 4
@event_cdns3_gadget_giveback = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_request, %union.anon.106 { ptr @__tracepoint_cdns3_gadget_giveback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_request }, ptr @print_fmt_cdns3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_gadget_giveback = internal global ptr @event_cdns3_gadget_giveback, section "_ftrace_events", align 4
@trace_event_fields_cdns3_ep0_queue = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.86, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cdns3_ep0_queue = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_ep0_queue, ptr @perf_trace_cdns3_ep0_queue, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_ep0_queue, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_ep0_queue, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_ep0_queue, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_ep0_queue = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_ep0_queue, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_ep0_queue = internal global { [66 x i8], [62 x i8] } { [66 x i8] c"\22Queue to ep0%s length: %u\22, REC->dir ? \22in\22 : \22out\22, REC->length\00", [62 x i8] zeroinitializer }, align 32
@event_cdns3_ep0_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_ep0_queue, %union.anon.106 { ptr @__tracepoint_cdns3_ep0_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_ep0_queue }, ptr @print_fmt_cdns3_ep0_queue, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_ep0_queue = internal global ptr @event_cdns3_ep0_queue, section "_ftrace_events", align 4
@trace_event_fields_cdns3_stream_split_transfer_len = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.64, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.78, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cdns3_stream_split_transfer_len = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_stream_split_transfer_len, ptr @perf_trace_cdns3_stream_split_transfer_len, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_stream_split_transfer_len, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_stream_split_transfer_len, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_stream_split_transfer_len, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_stream_split_transfer_len = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_stream_split_transfer_len, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_stream_split_transfer_len = internal global { [129 x i8], [63 x i8] } { [129 x i8] c"\22%s: req: %p,request length: %u actual length: %u  SID: %u\22, __get_str(name), REC->req, REC->length, REC->actual, REC->stream_id\00", [63 x i8] zeroinitializer }, align 32
@event_cdns3_stream_transfer_split = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_stream_split_transfer_len, %union.anon.106 { ptr @__tracepoint_cdns3_stream_transfer_split }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_stream_split_transfer_len }, ptr @print_fmt_cdns3_stream_split_transfer_len, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_stream_transfer_split = internal global ptr @event_cdns3_stream_transfer_split, section "_ftrace_events", align 4
@event_cdns3_stream_transfer_split_next_part = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_stream_split_transfer_len, %union.anon.106 { ptr @__tracepoint_cdns3_stream_transfer_split_next_part }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_stream_split_transfer_len }, ptr @print_fmt_cdns3_stream_split_transfer_len, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_stream_transfer_split_next_part = internal global ptr @event_cdns3_stream_transfer_split_next_part, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_aligned_request = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.91, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.92, %union.anon.104 { %struct.anon.105 { ptr @.str.93, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.94, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.92, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.96, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_aligned_request = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_aligned_request, ptr @perf_trace_cdns3_log_aligned_request, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_aligned_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_aligned_request, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_aligned_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_aligned_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_aligned_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_aligned_request = internal global { [173 x i8], [51 x i8] } { [173 x i8] c"\22%s: req: %p, req buf %p, dma %pad a_buf %p a_dma %pad, size %d\22, __get_str(name), REC->req, REC->buf, &REC->dma, REC->aligned_buf, &REC->aligned_dma, REC->aligned_buf_size\00", [51 x i8] zeroinitializer }, align 32
@event_cdns3_free_aligned_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_aligned_request, %union.anon.106 { ptr @__tracepoint_cdns3_free_aligned_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_aligned_request }, ptr @print_fmt_cdns3_log_aligned_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_free_aligned_request = internal global ptr @event_cdns3_free_aligned_request, section "_ftrace_events", align 4
@event_cdns3_prepare_aligned_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_aligned_request, %union.anon.106 { ptr @__tracepoint_cdns3_prepare_aligned_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_aligned_request }, ptr @print_fmt_cdns3_log_aligned_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_prepare_aligned_request = internal global ptr @event_cdns3_prepare_aligned_request, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_map_request = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.91, %union.anon.104 { %struct.anon.105 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.92, %union.anon.104 { %struct.anon.105 { ptr @.str.93, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_map_request = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_map_request, ptr @perf_trace_cdns3_log_map_request, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_map_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_map_request, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_map_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_map_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_map_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_map_request = internal global { [82 x i8], [46 x i8] } { [82 x i8] c"\22%s: req: %p, req buf %p, dma %p\22, __get_str(name), REC->req, REC->buf, &REC->dma\00", [46 x i8] zeroinitializer }, align 32
@event_cdns3_map_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_map_request, %union.anon.106 { ptr @__tracepoint_cdns3_map_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_map_request }, ptr @print_fmt_cdns3_log_map_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_map_request = internal global ptr @event_cdns3_map_request, section "_ftrace_events", align 4
@event_cdns3_mapped_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_map_request, %union.anon.106 { ptr @__tracepoint_cdns3_mapped_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_map_request }, ptr @print_fmt_cdns3_log_map_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_mapped_request = internal global ptr @event_cdns3_mapped_request, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_trb = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.99, %union.anon.104 { %struct.anon.105 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.102, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.103, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.104, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_trb = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_trb, ptr @perf_trace_cdns3_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_trb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_trb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_trb = internal global { [1590 x i8], [394 x i8] } { [1590 x i8] c"\22%s: trb %p, dma buf: 0x%08x, size: %ld, burst: %d ctrl: 0x%08x (%s%s%s%s%s%s%s) SID:%lu LAST_SID:%u\22, __get_str(name), REC->trb, REC->buffer, ((REC->length) & ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((0) > (16)) * 0l)) : (int *)8))), (0) > (16), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (0)) + 1) & (~(((0UL))) >> (32 - 1 - (16)))))), (u8)(((REC->length) & ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((24) > (31)) * 0l)) : (int *)8))), (24) > (31), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (24)) + 1) & (~(((0UL))) >> (32 - 1 - (31)))))) >> 24), REC->control, REC->control & ((((1UL))) << (0)) ? \22C=1, \22 : \22C=0, \22, REC->control & ((((1UL))) << (1)) ? \22T=1, \22 : \22T=0, \22, REC->control & ((((1UL))) << (2)) ? \22ISP, \22 : \22\22, REC->control & ((((1UL))) << (3)) ? \22FIFO, \22 : \22\22, REC->control & ((((1UL))) << (4)) ? \22CHAIN, \22 : \22\22, REC->control & ((((1UL))) << (5)) ? \22IOC, \22 : \22\22, (((REC->control) & ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((10) > (15)) * 0l)) : (int *)8))), (10) > (15), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (10)) + 1) & (~(((0UL))) >> (32 - 1 - (15)))))) >> 10) == 1 ? \22Normal\22 : \22LINK\22, (((REC->control) & ((((int)(sizeof(struct { int:(-!!(__builtin_choose_expr( (sizeof(int) == sizeof(*(8 ? ((void *)((long)((16) > (31)) * 0l)) : (int *)8))), (16) > (31), 0))); })))) + (((~(((0UL)))) - ((((1UL))) << (16)) + 1) & (~(((0UL))) >> (32 - 1 - (31)))))) >> 16), REC->last_stream_id\00", [394 x i8] zeroinitializer }, align 32
@event_cdns3_prepare_trb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_trb, %union.anon.106 { ptr @__tracepoint_cdns3_prepare_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_trb }, ptr @print_fmt_cdns3_log_trb, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_prepare_trb = internal global ptr @event_cdns3_prepare_trb, section "_ftrace_events", align 4
@event_cdns3_complete_trb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_trb, %union.anon.106 { ptr @__tracepoint_cdns3_complete_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_trb }, ptr @print_fmt_cdns3_log_trb, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_complete_trb = internal global ptr @event_cdns3_complete_trb, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_ring = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.116, %union.anon.104 { %struct.anon.105 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.116, %union.anon.104 { %struct.anon.105 { ptr @.str.118, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_ring = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_ring, ptr @perf_trace_cdns3_log_ring, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_ring, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_ring, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_ring, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_ring = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_ring, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_ring = internal global { [122 x i8], [38 x i8] } { [122 x i8] c"\22%s\22, cdns3_dbg_ring((struct cdns3_endpoint *)__get_str(priv_ep), (struct cdns3_trb *)__get_str(ring), __get_str(buffer))\00", [38 x i8] zeroinitializer }, align 32
@event_cdns3_ring = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_ring, %union.anon.106 { ptr @__tracepoint_cdns3_ring }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_ring }, ptr @print_fmt_cdns3_log_ring, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_ring = internal global ptr @event_cdns3_ring, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_ep = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.125, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.126, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.127, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.128, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.77, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.86, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.104 { %struct.anon.105 { ptr @.str.129, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.104 { %struct.anon.105 { ptr @.str.130, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_ep = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_ep, ptr @perf_trace_cdns3_log_ep, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_ep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_ep, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_ep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_ep = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_ep, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_ep = internal global { [694 x i8], [170 x i8] } { [694 x i8] c"\22%s: mps: %d/%d. streams: %d, stream enable: %d, burst: %d, enq idx: %d, deq idx: %d, flags %s%s%s%s%s%s%s%s, dir: %s\22, __get_str(name), REC->maxpacket, REC->maxpacket_limit, REC->max_streams, REC->use_streams, REC->maxburst, REC->enqueue, REC->dequeue, REC->flags & ((((1UL))) << (0)) ? \22EN | \22 : \22\22, REC->flags & ((((1UL))) << (1)) ? \22STALLED | \22 : \22\22, REC->flags & ((((1UL))) << (3)) ? \22WEDGE | \22 : \22\22, REC->flags & ((((1UL))) << (4)) ? \22STARTED | \22 : \22\22, REC->flags & ((((1UL))) << (5)) ? \22UPD TRB | \22 : \22\22, REC->flags & ((((1UL))) << (6)) ? \22REQ PEN | \22 : \22\22, REC->flags & ((((1UL))) << (7)) ? \22RING FULL |\22 : \22\22, REC->flags & ((((1UL))) << (8)) ? \22CLAIMED \22 : \22\22, REC->dir ? \22IN\22 : \22OUT\22\00", [170 x i8] zeroinitializer }, align 32
@event_cdns3_gadget_ep_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_ep, %union.anon.106 { ptr @__tracepoint_cdns3_gadget_ep_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_ep }, ptr @print_fmt_cdns3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_gadget_ep_enable = internal global ptr @event_cdns3_gadget_ep_enable, section "_ftrace_events", align 4
@event_cdns3_gadget_ep_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_ep, %union.anon.106 { ptr @__tracepoint_cdns3_gadget_ep_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_ep }, ptr @print_fmt_cdns3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_gadget_ep_disable = internal global ptr @event_cdns3_gadget_ep_disable, section "_ftrace_events", align 4
@trace_event_fields_cdns3_log_request_handled = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.64, %union.anon.104 { %struct.anon.105 { ptr @.str.142, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.143, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.144, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.145, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.146, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.75, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.104 { %struct.anon.105 { ptr @.str.76, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cdns3_log_request_handled = internal global %struct.trace_event_class { ptr @str__cdns3__trace_system_name, ptr @trace_event_raw_event_cdns3_log_request_handled, ptr @perf_trace_cdns3_log_request_handled, ptr @trace_event_reg, ptr @trace_event_fields_cdns3_log_request_handled, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdns3_log_request_handled, i64 24), ptr getelementptr (i8, ptr @event_class_cdns3_log_request_handled, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdns3_log_request_handled = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cdns3_log_request_handled, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cdns3_log_request_handled = internal global { [220 x i8], [36 x i8] } { [220 x i8] c"\22Req: %p %s, DMA pos: %d, ep deq: %d, ep enq: %d, start trb: %d, end trb: %d\22, REC->priv_req, REC->handled ? \22handled\22 : \22not handled\22, REC->dma_position, REC->dequeue_idx, REC->enqueue_idx, REC->start_trb, REC->end_trb\00", [36 x i8] zeroinitializer }, align 32
@event_cdns3_request_handled = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdns3_log_request_handled, %union.anon.106 { ptr @__tracepoint_cdns3_request_handled }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdns3_log_request_handled }, ptr @print_fmt_cdns3_log_request_handled, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cdns3_request_handled = internal global ptr @event_cdns3_request_handled, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cdns3_halt = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_halt, ptr @__bpf_trace_cdns3_halt, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_wa1 = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_wa1, ptr @__bpf_trace_cdns3_wa1, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_wa2 = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_wa2, ptr @__bpf_trace_cdns3_wa2, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_doorbell_ep0 = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_doorbell_ep0, ptr @__bpf_trace_cdns3_log_doorbell, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_doorbell_epx = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_doorbell_epx, ptr @__bpf_trace_cdns3_log_doorbell, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_usb_irq = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_usb_irq, ptr @__bpf_trace_cdns3_log_usb_irq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_epx_irq = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_epx_irq, ptr @__bpf_trace_cdns3_log_epx_irq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_ep0_irq = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_ep0_irq, ptr @__bpf_trace_cdns3_log_ep0_irq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_ctrl_req = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_ctrl_req, ptr @__bpf_trace_cdns3_log_ctrl, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_alloc_request = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_alloc_request, ptr @__bpf_trace_cdns3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_free_request = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_free_request, ptr @__bpf_trace_cdns3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_ep_queue = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_ep_queue, ptr @__bpf_trace_cdns3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_ep_dequeue = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_ep_dequeue, ptr @__bpf_trace_cdns3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_gadget_giveback = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_gadget_giveback, ptr @__bpf_trace_cdns3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_ep0_queue = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_ep0_queue, ptr @__bpf_trace_cdns3_ep0_queue, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_stream_transfer_split = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_stream_transfer_split, ptr @__bpf_trace_cdns3_stream_split_transfer_len, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_stream_transfer_split_next_part = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_stream_transfer_split_next_part, ptr @__bpf_trace_cdns3_stream_split_transfer_len, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_free_aligned_request = internal global %union.anon.125 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_free_aligned_request, ptr @__bpf_trace_cdns3_log_aligned_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_prepare_aligned_request = internal global %union.anon.126 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_prepare_aligned_request, ptr @__bpf_trace_cdns3_log_aligned_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_map_request = internal global %union.anon.127 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_map_request, ptr @__bpf_trace_cdns3_log_map_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_mapped_request = internal global %union.anon.128 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_mapped_request, ptr @__bpf_trace_cdns3_log_map_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_prepare_trb = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_prepare_trb, ptr @__bpf_trace_cdns3_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_complete_trb = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_complete_trb, ptr @__bpf_trace_cdns3_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_ring = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_ring, ptr @__bpf_trace_cdns3_log_ring, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_gadget_ep_enable = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_gadget_ep_enable, ptr @__bpf_trace_cdns3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_gadget_ep_disable = internal global %union.anon.133 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_gadget_ep_disable, ptr @__bpf_trace_cdns3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cdns3_request_handled = internal global %union.anon.134 { %struct.bpf_raw_event_map { ptr @__tracepoint_cdns3_request_handled, ptr @__bpf_trace_cdns3_log_request_handled, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"halt\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Halt %s for %s: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" and flush\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cleared\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ep_name\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WA1: %s %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WA2: %s %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep_trbaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s, ep_trbaddr %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum usb_device_speed\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_ists\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"str\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ %08x = \00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Connection %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Disconnection \00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"suspended \00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L1 enter \00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"L1 exit \00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L2 enter \00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"L2 exit \00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"U3 exit \00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Warm Reset \00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Hot Reset \00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Reset\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep_sts\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ep_traddr\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ep_last_sid\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"use_streams\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s, ep_traddr: %08x ep_last_sid: %08x use_streams: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ for %s: %08x \00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SETUP \00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IOC \00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ISP \00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DESCMIS \00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STREAMR \00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MD_EXIT \00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NRDY \00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PRIME \00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SIDERRT \00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IOT \00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep_dir\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ep0IN\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep0OUT\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bRequestType\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bRequest\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wValue\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wIndex\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wLength\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"struct cdns3_request *\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actual\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short_not_ok\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"start_trb\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"end_trb\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stream_id\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s: req: %p, req buff %p, length: %u/%u %s%s%s, status: %d, trb: [start:%d, end:%d], flags:%x SID: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Queue to ep0%s length: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: req: %p,request length: %u actual length: %u  SID: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct usb_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma_addr_t\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aligned_buf\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aligned_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aligned_buf_size\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: req: %p, req buf %p, dma %pad a_buf %p a_dma %pad, size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: req: %p, req buf %p, dma %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"struct cdns3_trb *\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"trb\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"buffer\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"last_stream_id\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%s: trb %p, dma buf: 0x%08x, size: %ld, burst: %d ctrl: 0x%08x (%s%s%s%s%s%s%s) SID:%lu LAST_SID:%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"C=1, \00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"C=0, \00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"T=1, \00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"T=0, \00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ISP, \00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FIFO, \00", [25 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CHAIN, \00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOC, \00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINK\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__data_loc u8[]\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ring\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"priv_ep\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0A\09\09Ring contents for %s:\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0A\09\09Ring deq index: %d, trb: %p (virt), 0x%llx (dma)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\09\09Ring enq index: %d, trb: %p (virt), 0x%llx (dma)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\09\09free trbs: %d, CCS=%d, PCS=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09\09@%pad %08x %08x %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxpacket\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxpacket_limit\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_streams\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxburst\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enqueue\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dequeue\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"%s: mps: %d/%d. streams: %d, stream enable: %d, burst: %d, enq idx: %d, deq idx: %d, flags %s%s%s%s%s%s%s%s, dir: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EN | \00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STALLED | \00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WEDGE | \00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"STARTED | \00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UPD TRB | \00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REQ PEN | \00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RING FULL |\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLAIMED \00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priv_req\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_position\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"handled\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dequeue_idx\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enqueue_idx\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Req: %p %s, DMA pos: %d, ep deq: %d, ep enq: %d, start trb: %d, end trb: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not handled\00", [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [35 x i8] c"../drivers/usb/cdns3/cdns3-trace.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"str__cdns3__trace_system_name\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 36, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [30 x i8] c"trace_event_fields_cdns3_halt\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_cdns3_halt\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"print_fmt_cdns3_halt\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"event_cdns3_halt\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [29 x i8] c"trace_event_fields_cdns3_wa1\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_cdns3_wa1\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"print_fmt_cdns3_wa1\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"event_cdns3_wa1\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [29 x i8] c"trace_event_fields_cdns3_wa2\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_cdns3_wa2\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"print_fmt_cdns3_wa2\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [16 x i8] c"event_cdns3_wa2\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [38 x i8] c"trace_event_fields_cdns3_log_doorbell\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_cdns3_log_doorbell\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [29 x i8] c"print_fmt_cdns3_log_doorbell\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [25 x i8] c"event_cdns3_doorbell_ep0\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 87, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [25 x i8] c"event_cdns3_doorbell_epx\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 92, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cdns3_log_usb_irq\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cdns3_log_usb_irq\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [28 x i8] c"print_fmt_cdns3_log_usb_irq\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"event_cdns3_usb_irq\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 113, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cdns3_log_epx_irq\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cdns3_log_epx_irq\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [28 x i8] c"print_fmt_cdns3_log_epx_irq\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c"event_cdns3_epx_irq\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 145, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cdns3_log_ep0_irq\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cdns3_log_ep0_irq\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"print_fmt_cdns3_log_ep0_irq\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"event_cdns3_ep0_irq\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 167, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant [34 x i8] c"trace_event_fields_cdns3_log_ctrl\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_cdns3_log_ctrl\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [25 x i8] c"print_fmt_cdns3_log_ctrl\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"event_cdns3_ctrl_req\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 197, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cdns3_log_request\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cdns3_log_request\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"print_fmt_cdns3_log_request\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [26 x i8] c"event_cdns3_alloc_request\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 250, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant [25 x i8] c"event_cdns3_free_request\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 255, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant [21 x i8] c"event_cdns3_ep_queue\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 260, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [23 x i8] c"event_cdns3_ep_dequeue\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 265, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant [28 x i8] c"event_cdns3_gadget_giveback\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 270, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [35 x i8] c"trace_event_fields_cdns3_ep0_queue\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_cdns3_ep0_queue\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [26 x i8] c"print_fmt_cdns3_ep0_queue\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [22 x i8] c"event_cdns3_ep0_queue\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [51 x i8] c"trace_event_fields_cdns3_stream_split_transfer_len\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [55 x i8] c"trace_event_type_funcs_cdns3_stream_split_transfer_len\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [42 x i8] c"print_fmt_cdns3_stream_split_transfer_len\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [34 x i8] c"event_cdns3_stream_transfer_split\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 312, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [44 x i8] c"event_cdns3_stream_transfer_split_next_part\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 317, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant [45 x i8] c"trace_event_fields_cdns3_log_aligned_request\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_cdns3_log_aligned_request\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [36 x i8] c"print_fmt_cdns3_log_aligned_request\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [33 x i8] c"event_cdns3_free_aligned_request\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 351, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant [36 x i8] c"event_cdns3_prepare_aligned_request\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 356, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant [41 x i8] c"trace_event_fields_cdns3_log_map_request\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_cdns3_log_map_request\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [32 x i8] c"print_fmt_cdns3_log_map_request\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [24 x i8] c"event_cdns3_map_request\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 380, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant [27 x i8] c"event_cdns3_mapped_request\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 384, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [33 x i8] c"trace_event_fields_cdns3_log_trb\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_cdns3_log_trb\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [24 x i8] c"print_fmt_cdns3_log_trb\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [24 x i8] c"event_cdns3_prepare_trb\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 427, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [25 x i8] c"event_cdns3_complete_trb\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 432, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant [34 x i8] c"trace_event_fields_cdns3_log_ring\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_cdns3_log_ring\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [25 x i8] c"print_fmt_cdns3_log_ring\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"event_cdns3_ring\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 459, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [32 x i8] c"trace_event_fields_cdns3_log_ep\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_cdns3_log_ep\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [23 x i8] c"print_fmt_cdns3_log_ep\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [29 x i8] c"event_cdns3_gadget_ep_enable\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 510, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [30 x i8] c"event_cdns3_gadget_ep_disable\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 515, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [45 x i8] c"trace_event_fields_cdns3_log_request_handled\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_cdns3_log_request_handled\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [36 x i8] c"print_fmt_cdns3_log_request_handled\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [28 x i8] c"event_cdns3_request_handled\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 552, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 27, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 44, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 58, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 72, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 97, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 21, i32 21 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 24, i32 29 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 28, i32 29 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 30, i32 29 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 32, i32 29 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 34, i32 29 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 36, i32 29 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 38, i32 29 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 40, i32 29 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 42, i32 29 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 44, i32 29 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 46, i32 29 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 118, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 57, i32 21 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 60, i32 29 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 62, i32 29 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 64, i32 29 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 66, i32 29 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 68, i32 29 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 70, i32 29 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 74, i32 29 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 76, i32 29 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 78, i32 29 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 84, i32 29 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 150, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 101, i32 14 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 101, i32 24 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 172, i32 1 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 202, i32 1 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 275, i32 1 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 290, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 323, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 361, i32 1 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 389, i32 1 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 437, i32 1 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 122, i32 28 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 125, i32 10 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 131, i32 10 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 136, i32 10 }
@___asan_gen_.747 = private unnamed_addr constant [35 x i8] c"../drivers/usb/cdns3/cdns3-debug.h\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.747, i32 151, i32 4 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 464, i32 1 }
@___asan_gen_.818 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [37 x i8] c"../drivers/usb/cdns3/./cdns3-trace.h\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.819, i32 520, i32 1 }
@llvm.compiler.used = appending global [349 x ptr] [ptr @__bpf_trace_tp_map_cdns3_alloc_request, ptr @__bpf_trace_tp_map_cdns3_complete_trb, ptr @__bpf_trace_tp_map_cdns3_ctrl_req, ptr @__bpf_trace_tp_map_cdns3_doorbell_ep0, ptr @__bpf_trace_tp_map_cdns3_doorbell_epx, ptr @__bpf_trace_tp_map_cdns3_ep0_irq, ptr @__bpf_trace_tp_map_cdns3_ep0_queue, ptr @__bpf_trace_tp_map_cdns3_ep_dequeue, ptr @__bpf_trace_tp_map_cdns3_ep_queue, ptr @__bpf_trace_tp_map_cdns3_epx_irq, ptr @__bpf_trace_tp_map_cdns3_free_aligned_request, ptr @__bpf_trace_tp_map_cdns3_free_request, ptr @__bpf_trace_tp_map_cdns3_gadget_ep_disable, ptr @__bpf_trace_tp_map_cdns3_gadget_ep_enable, ptr @__bpf_trace_tp_map_cdns3_gadget_giveback, ptr @__bpf_trace_tp_map_cdns3_halt, ptr @__bpf_trace_tp_map_cdns3_map_request, ptr @__bpf_trace_tp_map_cdns3_mapped_request, ptr @__bpf_trace_tp_map_cdns3_prepare_aligned_request, ptr @__bpf_trace_tp_map_cdns3_prepare_trb, ptr @__bpf_trace_tp_map_cdns3_request_handled, ptr @__bpf_trace_tp_map_cdns3_ring, ptr @__bpf_trace_tp_map_cdns3_stream_transfer_split, ptr @__bpf_trace_tp_map_cdns3_stream_transfer_split_next_part, ptr @__bpf_trace_tp_map_cdns3_usb_irq, ptr @__bpf_trace_tp_map_cdns3_wa1, ptr @__bpf_trace_tp_map_cdns3_wa2, ptr @__event_cdns3_alloc_request, ptr @__event_cdns3_complete_trb, ptr @__event_cdns3_ctrl_req, ptr @__event_cdns3_doorbell_ep0, ptr @__event_cdns3_doorbell_epx, ptr @__event_cdns3_ep0_irq, ptr @__event_cdns3_ep0_queue, ptr @__event_cdns3_ep_dequeue, ptr @__event_cdns3_ep_queue, ptr @__event_cdns3_epx_irq, ptr @__event_cdns3_free_aligned_request, ptr @__event_cdns3_free_request, ptr @__event_cdns3_gadget_ep_disable, ptr @__event_cdns3_gadget_ep_enable, ptr @__event_cdns3_gadget_giveback, ptr @__event_cdns3_halt, ptr @__event_cdns3_map_request, ptr @__event_cdns3_mapped_request, ptr @__event_cdns3_prepare_aligned_request, ptr @__event_cdns3_prepare_trb, ptr @__event_cdns3_request_handled, ptr @__event_cdns3_ring, ptr @__event_cdns3_stream_transfer_split, ptr @__event_cdns3_stream_transfer_split_next_part, ptr @__event_cdns3_usb_irq, ptr @__event_cdns3_wa1, ptr @__event_cdns3_wa2, ptr @__tracepoint_cdns3_alloc_request, ptr @__tracepoint_cdns3_complete_trb, ptr @__tracepoint_cdns3_ctrl_req, ptr @__tracepoint_cdns3_doorbell_ep0, ptr @__tracepoint_cdns3_doorbell_epx, ptr @__tracepoint_cdns3_ep0_irq, ptr @__tracepoint_cdns3_ep0_queue, ptr @__tracepoint_cdns3_ep_dequeue, ptr @__tracepoint_cdns3_ep_queue, ptr @__tracepoint_cdns3_epx_irq, ptr @__tracepoint_cdns3_free_aligned_request, ptr @__tracepoint_cdns3_free_request, ptr @__tracepoint_cdns3_gadget_ep_disable, ptr @__tracepoint_cdns3_gadget_ep_enable, ptr @__tracepoint_cdns3_gadget_giveback, ptr @__tracepoint_cdns3_halt, ptr @__tracepoint_cdns3_map_request, ptr @__tracepoint_cdns3_mapped_request, ptr @__tracepoint_cdns3_prepare_aligned_request, ptr @__tracepoint_cdns3_prepare_trb, ptr @__tracepoint_cdns3_request_handled, ptr @__tracepoint_cdns3_ring, ptr @__tracepoint_cdns3_stream_transfer_split, ptr @__tracepoint_cdns3_stream_transfer_split_next_part, ptr @__tracepoint_cdns3_usb_irq, ptr @__tracepoint_cdns3_wa1, ptr @__tracepoint_cdns3_wa2, ptr @__tracepoint_ptr_cdns3_alloc_request, ptr @__tracepoint_ptr_cdns3_complete_trb, ptr @__tracepoint_ptr_cdns3_ctrl_req, ptr @__tracepoint_ptr_cdns3_doorbell_ep0, ptr @__tracepoint_ptr_cdns3_doorbell_epx, ptr @__tracepoint_ptr_cdns3_ep0_irq, ptr @__tracepoint_ptr_cdns3_ep0_queue, ptr @__tracepoint_ptr_cdns3_ep_dequeue, ptr @__tracepoint_ptr_cdns3_ep_queue, ptr @__tracepoint_ptr_cdns3_epx_irq, ptr @__tracepoint_ptr_cdns3_free_aligned_request, ptr @__tracepoint_ptr_cdns3_free_request, ptr @__tracepoint_ptr_cdns3_gadget_ep_disable, ptr @__tracepoint_ptr_cdns3_gadget_ep_enable, ptr @__tracepoint_ptr_cdns3_gadget_giveback, ptr @__tracepoint_ptr_cdns3_halt, ptr @__tracepoint_ptr_cdns3_map_request, ptr @__tracepoint_ptr_cdns3_mapped_request, ptr @__tracepoint_ptr_cdns3_prepare_aligned_request, ptr @__tracepoint_ptr_cdns3_prepare_trb, ptr @__tracepoint_ptr_cdns3_request_handled, ptr @__tracepoint_ptr_cdns3_ring, ptr @__tracepoint_ptr_cdns3_stream_transfer_split, ptr @__tracepoint_ptr_cdns3_stream_transfer_split_next_part, ptr @__tracepoint_ptr_cdns3_usb_irq, ptr @__tracepoint_ptr_cdns3_wa1, ptr @__tracepoint_ptr_cdns3_wa2, ptr @event_cdns3_alloc_request, ptr @event_cdns3_complete_trb, ptr @event_cdns3_ctrl_req, ptr @event_cdns3_doorbell_ep0, ptr @event_cdns3_doorbell_epx, ptr @event_cdns3_ep0_irq, ptr @event_cdns3_ep0_queue, ptr @event_cdns3_ep_dequeue, ptr @event_cdns3_ep_queue, ptr @event_cdns3_epx_irq, ptr @event_cdns3_free_aligned_request, ptr @event_cdns3_free_request, ptr @event_cdns3_gadget_ep_disable, ptr @event_cdns3_gadget_ep_enable, ptr @event_cdns3_gadget_giveback, ptr @event_cdns3_halt, ptr @event_cdns3_map_request, ptr @event_cdns3_mapped_request, ptr @event_cdns3_prepare_aligned_request, ptr @event_cdns3_prepare_trb, ptr @event_cdns3_request_handled, ptr @event_cdns3_ring, ptr @event_cdns3_stream_transfer_split, ptr @event_cdns3_stream_transfer_split_next_part, ptr @event_cdns3_usb_irq, ptr @event_cdns3_wa1, ptr @event_cdns3_wa2, ptr @event_class_cdns3_ep0_queue, ptr @event_class_cdns3_halt, ptr @event_class_cdns3_log_aligned_request, ptr @event_class_cdns3_log_ctrl, ptr @event_class_cdns3_log_doorbell, ptr @event_class_cdns3_log_ep, ptr @event_class_cdns3_log_ep0_irq, ptr @event_class_cdns3_log_epx_irq, ptr @event_class_cdns3_log_map_request, ptr @event_class_cdns3_log_request, ptr @event_class_cdns3_log_request_handled, ptr @event_class_cdns3_log_ring, ptr @event_class_cdns3_log_trb, ptr @event_class_cdns3_log_usb_irq, ptr @event_class_cdns3_stream_split_transfer_len, ptr @event_class_cdns3_wa1, ptr @event_class_cdns3_wa2, ptr @str__cdns3__trace_system_name, ptr @trace_event_fields_cdns3_halt, ptr @trace_event_type_funcs_cdns3_halt, ptr @print_fmt_cdns3_halt, ptr @trace_event_fields_cdns3_wa1, ptr @trace_event_type_funcs_cdns3_wa1, ptr @print_fmt_cdns3_wa1, ptr @trace_event_fields_cdns3_wa2, ptr @trace_event_type_funcs_cdns3_wa2, ptr @print_fmt_cdns3_wa2, ptr @trace_event_fields_cdns3_log_doorbell, ptr @trace_event_type_funcs_cdns3_log_doorbell, ptr @print_fmt_cdns3_log_doorbell, ptr @trace_event_fields_cdns3_log_usb_irq, ptr @trace_event_type_funcs_cdns3_log_usb_irq, ptr @print_fmt_cdns3_log_usb_irq, ptr @trace_event_fields_cdns3_log_epx_irq, ptr @trace_event_type_funcs_cdns3_log_epx_irq, ptr @print_fmt_cdns3_log_epx_irq, ptr @trace_event_fields_cdns3_log_ep0_irq, ptr @trace_event_type_funcs_cdns3_log_ep0_irq, ptr @print_fmt_cdns3_log_ep0_irq, ptr @trace_event_fields_cdns3_log_ctrl, ptr @trace_event_type_funcs_cdns3_log_ctrl, ptr @print_fmt_cdns3_log_ctrl, ptr @trace_event_fields_cdns3_log_request, ptr @trace_event_type_funcs_cdns3_log_request, ptr @print_fmt_cdns3_log_request, ptr @trace_event_fields_cdns3_ep0_queue, ptr @trace_event_type_funcs_cdns3_ep0_queue, ptr @print_fmt_cdns3_ep0_queue, ptr @trace_event_fields_cdns3_stream_split_transfer_len, ptr @trace_event_type_funcs_cdns3_stream_split_transfer_len, ptr @print_fmt_cdns3_stream_split_transfer_len, ptr @trace_event_fields_cdns3_log_aligned_request, ptr @trace_event_type_funcs_cdns3_log_aligned_request, ptr @print_fmt_cdns3_log_aligned_request, ptr @trace_event_fields_cdns3_log_map_request, ptr @trace_event_type_funcs_cdns3_log_map_request, ptr @print_fmt_cdns3_log_map_request, ptr @trace_event_fields_cdns3_log_trb, ptr @trace_event_type_funcs_cdns3_log_trb, ptr @print_fmt_cdns3_log_trb, ptr @trace_event_fields_cdns3_log_ring, ptr @trace_event_type_funcs_cdns3_log_ring, ptr @print_fmt_cdns3_log_ring, ptr @trace_event_fields_cdns3_log_ep, ptr @trace_event_type_funcs_cdns3_log_ep, ptr @print_fmt_cdns3_log_ep, ptr @trace_event_fields_cdns3_log_request_handled, ptr @trace_event_type_funcs_cdns3_log_request_handled, ptr @print_fmt_cdns3_log_request_handled, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148], section "llvm.metadata"
@0 = internal global [224 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cdns3__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_halt to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_halt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_halt to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_halt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_wa1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_wa1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_wa1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_wa1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_wa2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_wa2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_wa2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_wa2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_doorbell to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_doorbell to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_doorbell to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_doorbell_ep0 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_doorbell_epx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_usb_irq to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_usb_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_usb_irq to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_usb_irq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_epx_irq to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_epx_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_epx_irq to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_epx_irq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_ep0_irq to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_ep0_irq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_ep0_irq to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_ep0_irq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_ctrl to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_ctrl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_ctrl to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_ctrl_req to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_request to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_request to i32), i32 323, i32 416, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_alloc_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_free_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_ep_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_ep_dequeue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_gadget_giveback to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_ep0_queue to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_ep0_queue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_ep0_queue to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_ep0_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_stream_split_transfer_len to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_stream_split_transfer_len to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_stream_split_transfer_len to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_stream_transfer_split to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_stream_transfer_split_next_part to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_aligned_request to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_aligned_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_aligned_request to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_free_aligned_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_prepare_aligned_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_map_request to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_map_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_map_request to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_map_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_mapped_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_trb to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_trb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_trb to i32), i32 1590, i32 1984, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_prepare_trb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_complete_trb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_ring to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_ring to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_ring to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_ring to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_ep to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_ep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_ep to i32), i32 694, i32 864, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_gadget_ep_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_gadget_ep_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cdns3_log_request_handled to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cdns3_log_request_handled to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cdns3_log_request_handled to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cdns3_request_handled to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_halt(ptr nocapture readnone %__data, ptr noundef %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_halt, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_wa1(ptr nocapture readnone %__data, ptr noundef %ep_priv, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_wa1, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %ep_priv, ptr noundef %msg) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_wa2(ptr nocapture readnone %__data, ptr noundef %ep_priv, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_wa2, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %ep_priv, ptr noundef %msg) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_doorbell_ep0(ptr nocapture readnone %__data, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_doorbell_ep0, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_doorbell_epx(ptr nocapture readnone %__data, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_doorbell_epx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_usb_irq(ptr nocapture readnone %__data, ptr noundef %priv_dev, i32 noundef %usb_ists) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_usb_irq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_dev, i32 noundef %usb_ists) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_epx_irq(ptr nocapture readnone %__data, ptr noundef %priv_dev, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_epx_irq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_dev, ptr noundef %priv_ep) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_ep0_irq(ptr nocapture readnone %__data, ptr noundef %priv_dev, i32 noundef %ep_sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_ep0_irq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_dev, i32 noundef %ep_sts) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_ctrl_req(ptr nocapture readnone %__data, ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_ctrl_req, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %ctrl) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_alloc_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_alloc_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_free_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_free_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_ep_queue(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_ep_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_ep_dequeue(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_ep_dequeue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_gadget_giveback(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_gadget_giveback, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_ep0_queue(ptr nocapture readnone %__data, ptr noundef %dev_priv, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_ep0_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %dev_priv, ptr noundef %request) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_stream_transfer_split(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_stream_transfer_split, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_stream_transfer_split_next_part(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_stream_transfer_split_next_part, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_free_aligned_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_free_aligned_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_prepare_aligned_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_prepare_aligned_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_map_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_map_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_mapped_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_mapped_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_prepare_trb(ptr nocapture readnone %__data, ptr noundef %priv_ep, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_prepare_trb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_ep, ptr noundef %trb) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_complete_trb(ptr nocapture readnone %__data, ptr noundef %priv_ep, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_complete_trb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_ep, ptr noundef %trb) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_ring(ptr nocapture readnone %__data, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_ring, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_ep) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_gadget_ep_enable(ptr nocapture readnone %__data, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_gadget_ep_enable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_ep) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_gadget_ep_disable(ptr nocapture readnone %__data, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_gadget_ep_disable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_ep) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cdns3_request_handled(ptr nocapture readnone %__data, ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cdns3_request_handled, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %2(ptr noundef %4, ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_halt(ptr noundef %__data, ptr noundef readonly %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep_priv, i32 0, i32 8
  %call.i28 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i28, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i28, 16
  %or.i = add i32 %add.i, 65550
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 14
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %halt12 = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %halt12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %halt, ptr %halt12, align 4
  %flush13 = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %flush13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %flush, ptr %flush13, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_halt(ptr noundef %__data, ptr noundef readonly %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep_priv, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65550
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 14
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %halt24 = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %halt24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %halt, ptr %halt24, align 4
  %flush25 = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %flush25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %flush, ptr %flush25, align 1
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_wa1(ptr noundef %__data, ptr noundef readonly %ep_priv, ptr noundef readonly %msg) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep_priv, i32 0, i32 8
  %call.i36 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %tobool7.not.i = icmp eq ptr %msg, null
  %cond11.i = select i1 %tobool7.not.i, ptr @.str, ptr %msg
  %call12.i = tail call i32 @strlen(ptr noundef nonnull %cond11.i) #13
  %add13.i = add i32 %call12.i, 1
  %add20.i = add i32 %call.i36, 17
  %add = add i32 %add20.i, %add13.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl17.i = shl i32 %add13.i, 16
  %or19.i = or i32 %shl17.i, %add20.i
  %add.i = shl i32 %call.i36, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_wa1, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_ep_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_cdns3_wa1, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or19.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %and13 = and i32 %add20.i, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call20 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef nonnull %cond11.i) #14
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_wa1(ptr noundef %__data, ptr noundef readonly %ep_priv, ptr noundef readonly %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep_priv, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 16
  %tobool7.not.i = icmp eq ptr %msg, null
  %cond11.i = select i1 %tobool7.not.i, ptr @.str, ptr %msg
  %call12.i = tail call i32 @strlen(ptr noundef nonnull %cond11.i) #13
  %add13.i = add i32 %call12.i, 1
  %add15.i = add i32 %call.i, 17
  %shl17.i = shl i32 %add13.i, 16
  %or19.i = or i32 %shl17.i, %add15.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add20.i = add i32 %call.i, 28
  %add12 = add i32 %add20.i, %add13.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_wa1, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_ep_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_cdns3_wa1, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or19.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %and25 = and i32 %add15.i, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %call32 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef nonnull %cond11.i) #14
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_wa2(ptr noundef %__data, ptr noundef readonly %ep_priv, ptr noundef readonly %msg) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep_priv, i32 0, i32 8
  %call.i36 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %tobool7.not.i = icmp eq ptr %msg, null
  %cond11.i = select i1 %tobool7.not.i, ptr @.str, ptr %msg
  %call12.i = tail call i32 @strlen(ptr noundef nonnull %cond11.i) #13
  %add13.i = add i32 %call12.i, 1
  %add20.i = add i32 %call.i36, 17
  %add = add i32 %add20.i, %add13.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl17.i = shl i32 %add13.i, 16
  %or19.i = or i32 %shl17.i, %add20.i
  %add.i = shl i32 %call.i36, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_wa2, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_ep_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_cdns3_wa2, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or19.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %and13 = and i32 %add20.i, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %call20 = call ptr @strcpy(ptr noundef %add.ptr14, ptr noundef nonnull %cond11.i) #14
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_wa2(ptr noundef %__data, ptr noundef readonly %ep_priv, ptr noundef readonly %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %ep_priv, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 16
  %tobool7.not.i = icmp eq ptr %msg, null
  %cond11.i = select i1 %tobool7.not.i, ptr @.str, ptr %msg
  %call12.i = tail call i32 @strlen(ptr noundef nonnull %cond11.i) #13
  %add13.i = add i32 %call12.i, 1
  %add15.i = add i32 %call.i, 17
  %shl17.i = shl i32 %add13.i, 16
  %or19.i = or i32 %shl17.i, %add15.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add20.i = add i32 %call.i, 28
  %add12 = add i32 %add20.i, %add13.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_wa2, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_ep_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_cdns3_wa2, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or19.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %and25 = and i32 %add15.i, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %call32 = call ptr @strcpy(ptr noundef %add.ptr26, ptr noundef nonnull %cond11.i) #14
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_doorbell(ptr noundef %__data, ptr noundef readonly %ep_name, i32 noundef %ep_trbaddr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i22 = icmp eq ptr %ep_name, null
  %spec.select.i = select i1 %tobool.not.i22, ptr @.str, ptr %ep_name
  %call.i23 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #13
  %add = add i32 %call.i23, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i23, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_doorbell, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %call8 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #14
  %ep_trbaddr9 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_doorbell, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %ep_trbaddr9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ep_trbaddr, ptr %ep_trbaddr9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_doorbell(ptr noundef %__data, ptr noundef readonly %ep_name, i32 noundef %ep_trbaddr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %tobool.not.i = icmp eq ptr %ep_name, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str, ptr %ep_name
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65552
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i46.not = icmp eq ptr %15, null
  br i1 %tobool.not.i46.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_doorbell, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %call20 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #14
  %ep_trbaddr21 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_doorbell, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %ep_trbaddr21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ep_trbaddr, ptr %ep_trbaddr21, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_usb_irq(ptr noundef %__data, ptr noundef %priv_dev, i32 noundef %usb_ists) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %call6 = call i32 @cdns3_get_speed(ptr noundef %priv_dev) #10
  %speed = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6, ptr %speed, align 4
  %usb_ists7 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %usb_ists7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %usb_ists, ptr %usb_ists7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_usb_irq(ptr noundef %__data, ptr noundef %priv_dev, i32 noundef %usb_ists) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %call17 = call i32 @cdns3_get_speed(ptr noundef %priv_dev) #10
  %speed = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call17, ptr %speed, align 4
  %usb_ists18 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %usb_ists18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %usb_ists, ptr %usb_ists18, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_epx_irq(ptr noundef %__data, ptr nocapture noundef readonly %priv_dev, ptr noundef readonly %priv_ep) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %call.i41 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i41, 533
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add7.i = add i32 %call.i41, 33
  %or10.i = or i32 %add7.i, 32768000
  %add.i = shl i32 %call.i41, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_ep_name, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call3, i32 0, i32 6
  %4 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or10.i, ptr %__data_loc_str, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %tobool7.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool7.not, ptr @.str, ptr %name.i
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %6, i32 0, i32 11
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts) #10, !srcloc !495
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !496
  %ep_sts13 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %ep_sts13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ep_sts13, align 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %ep_traddr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %11, i32 0, i32 8
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr) #10, !srcloc !495
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !497
  %ep_traddr20 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %ep_traddr20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ep_traddr20, align 4
  %last_stream_id = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 28
  %15 = ptrtoint ptr %last_stream_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %last_stream_id, align 4
  %conv = zext i16 %16 to i32
  %ep_last_sid = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %ep_last_sid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %ep_last_sid, align 4
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %18 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %use_streams, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %use_streams21 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %use_streams21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.cast, ptr %use_streams21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_epx_irq(ptr noundef %__data, ptr nocapture noundef readonly %priv_dev, ptr noundef readonly %priv_ep) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %add7.i = add i32 %call.i, 33
  %or10.i = or i32 %add7.i, 32768000
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 544
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_ep_name, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call13, i32 0, i32 6
  %28 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or10.i, ptr %__data_loc_str, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %tobool19.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool19.not, ptr @.str, ptr %name.i
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %regs = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 6
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %ep_sts = getelementptr inbounds %struct.cdns3_usb_regs, ptr %30, i32 0, i32 11
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_sts) #10, !srcloc !495
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !498
  %ep_sts26 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %ep_sts26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ep_sts26, align 4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %ep_traddr = getelementptr inbounds %struct.cdns3_usb_regs, ptr %35, i32 0, i32 8
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ep_traddr) #10, !srcloc !495
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !499
  %ep_traddr33 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %ep_traddr33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ep_traddr33, align 4
  %last_stream_id = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 28
  %39 = ptrtoint ptr %last_stream_id to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %last_stream_id, align 4
  %conv = zext i16 %40 to i32
  %ep_last_sid = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %ep_last_sid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv, ptr %ep_last_sid, align 4
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %42 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %use_streams, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %use_streams34 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %use_streams34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.cast, ptr %use_streams34, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_ep0_irq(ptr noundef %__data, ptr nocapture noundef readonly %priv_dev, i32 noundef %ep_sts) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %selected_ep = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 16
  %4 = ptrtoint ptr %selected_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %selected_ep, align 4
  %ep_dir = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %ep_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ep_dir, align 4
  %ep_sts6 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %ep_sts6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ep_sts, ptr %ep_sts6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_ep0_irq(ptr noundef %__data, ptr nocapture noundef readonly %priv_dev, i32 noundef %ep_sts) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %selected_ep = getelementptr inbounds %struct.cdns3_device, ptr %priv_dev, i32 0, i32 16
  %28 = ptrtoint ptr %selected_ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %selected_ep, align 4
  %ep_dir = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %ep_dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ep_dir, align 4
  %ep_sts17 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %ep_sts17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %ep_sts, ptr %ep_sts17, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_ctrl(ptr noundef %__data, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl, align 1
  %bRequestType6 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %bRequestType6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %bRequestType6, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %7 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bRequest, align 1
  %bRequest7 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call3, i32 0, i32 2
  %9 = ptrtoint ptr %bRequest7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bRequest7, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %10 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wValue, align 1
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %wValue8 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %wValue8 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %wValue8, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %14 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wIndex, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %wIndex9 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %wIndex9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %wIndex9, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %18 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wLength, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %wLength10 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %wLength10 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %wLength10, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_ctrl(ptr noundef %__data, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ctrl, align 1
  %bRequestType17 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %bRequestType17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bRequestType17, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %31 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bRequest, align 1
  %bRequest18 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call13, i32 0, i32 2
  %33 = ptrtoint ptr %bRequest18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %bRequest18, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %34 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %wValue, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %wValue19 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %wValue19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %wValue19, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %38 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %wIndex, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %wIndex20 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %wIndex20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %wIndex20, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %42 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %wLength, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %wLength21 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %wLength21 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %wLength21, align 2
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %4, i32 0, i32 8
  %call.i74 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i74, 61
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i74, 16
  %or.i = add i32 %add.i, 65596
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 60
  %6 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ep.i, align 4
  %name7 = getelementptr inbounds %struct.cdns3_endpoint, ptr %7, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req13 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %req13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %req13, align 4
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  %buf14 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %buf14, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  %actual16 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %actual16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %actual16, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %length18 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %length18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %length18, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %status20 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %status20, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %21 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero22 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 7
  %22 = ptrtoint ptr %zero22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.clear, ptr %zero22, align 4
  %bf.load24 = load i32, ptr %zero, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 12
  %bf.clear26 = and i32 %bf.lshr25, 1
  %short_not_ok27 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 8
  %23 = ptrtoint ptr %short_not_ok27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.clear26, ptr %short_not_ok27, align 4
  %bf.load29 = load i32, ptr %zero, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 14
  %bf.clear31 = and i32 %bf.lshr30, 1
  %no_interrupt32 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 9
  %24 = ptrtoint ptr %no_interrupt32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.clear31, ptr %no_interrupt32, align 4
  %start_trb = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 3
  %25 = ptrtoint ptr %start_trb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_trb, align 4
  %start_trb33 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 10
  %27 = ptrtoint ptr %start_trb33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %start_trb33, align 4
  %end_trb = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 4
  %28 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end_trb, align 4
  %end_trb34 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 11
  %30 = ptrtoint ptr %end_trb34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %end_trb34, align 4
  %flags = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 6
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %flags35 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 12
  %33 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %flags35, align 4
  %bf.load37 = load i32, ptr %zero, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 16
  %stream_id39 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call3, i32 0, i32 13
  %34 = ptrtoint ptr %stream_id39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.lshr38, ptr %stream_id39, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %3, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65596
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 72
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #10
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 60
  %30 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_ep.i, align 4
  %name19 = getelementptr inbounds %struct.cdns3_endpoint, ptr %31, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name19, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name19
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req25 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %req25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %req, ptr %req25, align 4
  %33 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req, align 4
  %buf26 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %buf26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %buf26, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %36 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual, align 4
  %actual28 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %actual28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %actual28, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %length30 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %length30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %length30, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %status32 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %status32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %status32, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %45 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero34 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 7
  %46 = ptrtoint ptr %zero34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.clear, ptr %zero34, align 4
  %bf.load36 = load i32, ptr %zero, align 4
  %bf.lshr37 = lshr i32 %bf.load36, 12
  %bf.clear38 = and i32 %bf.lshr37, 1
  %short_not_ok39 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 8
  %47 = ptrtoint ptr %short_not_ok39 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.clear38, ptr %short_not_ok39, align 4
  %bf.load41 = load i32, ptr %zero, align 4
  %bf.lshr42 = lshr i32 %bf.load41, 14
  %bf.clear43 = and i32 %bf.lshr42, 1
  %no_interrupt44 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 9
  %48 = ptrtoint ptr %no_interrupt44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %bf.clear43, ptr %no_interrupt44, align 4
  %start_trb = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 3
  %49 = ptrtoint ptr %start_trb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %start_trb, align 4
  %start_trb45 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 10
  %51 = ptrtoint ptr %start_trb45 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %start_trb45, align 4
  %end_trb = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 4
  %52 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end_trb, align 4
  %end_trb46 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 11
  %54 = ptrtoint ptr %end_trb46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %end_trb46, align 4
  %flags = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 6
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %flags47 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 12
  %57 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %flags47, align 4
  %bf.load49 = load i32, ptr %zero, align 4
  %bf.lshr50 = lshr i32 %bf.load49, 16
  %stream_id51 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %call13, i32 0, i32 13
  %58 = ptrtoint ptr %stream_id51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %bf.lshr50, ptr %stream_id51, align 4
  %59 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rctx, align 4
  %61 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %60, ptr noundef %__data, i64 noundef 1, ptr noundef %62, ptr noundef %13, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_ep0_queue(ptr noundef %__data, ptr nocapture noundef readonly %dev_priv, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ep0_data_dir = getelementptr inbounds %struct.cdns3_device, ptr %dev_priv, i32 0, i32 12
  %3 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ep0_data_dir, align 4
  %dir = getelementptr inbounds %struct.trace_event_raw_cdns3_ep0_queue, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dir, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %length6 = getelementptr inbounds %struct.trace_event_raw_cdns3_ep0_queue, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %length6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_ep0_queue(ptr noundef %__data, ptr nocapture noundef readonly %dev_priv, ptr nocapture noundef readonly %request) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ep0_data_dir = getelementptr inbounds %struct.cdns3_device, ptr %dev_priv, i32 0, i32 12
  %27 = ptrtoint ptr %ep0_data_dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ep0_data_dir, align 4
  %dir = getelementptr inbounds %struct.trace_event_raw_cdns3_ep0_queue, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dir, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %request, i32 0, i32 1
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  %length17 = getelementptr inbounds %struct.trace_event_raw_cdns3_ep0_queue, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %length17, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_stream_split_transfer_len(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 1
  %3 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %4, i32 0, i32 8
  %call.i37 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i37, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i37, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %6 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ep.i, align 4
  %name7 = getelementptr inbounds %struct.cdns3_endpoint, ptr %7, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req13 = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %req13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req, ptr %req13, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %actual, align 4
  %actual15 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %actual15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual15, align 4
  %length16 = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %length16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %length16, align 4
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %15 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %stream_id18 = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %stream_id18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.lshr, ptr %stream_id18, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_stream_split_transfer_len(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %3, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #10
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %30 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_ep.i, align 4
  %name19 = getelementptr inbounds %struct.cdns3_endpoint, ptr %31, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name19, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name19
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req25 = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %req25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %req, ptr %req25, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %actual, align 4
  %actual27 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %36 = ptrtoint ptr %actual27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual27, align 4
  %length28 = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %length28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %length28, align 4
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %39 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %stream_id30 = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %stream_id30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %bf.lshr, ptr %stream_id30, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %13, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_aligned_request(ptr noundef %__data, ptr noundef %priv_req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 1
  %3 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %4, i32 0, i32 8
  %call.i44 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i44, 37
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i44, 16
  %or.i = add i32 %add.i, 65572
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 36
  %6 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ep.i, align 4
  %name7 = getelementptr inbounds %struct.cdns3_endpoint, ptr %7, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv_req, ptr %req, align 4
  %9 = ptrtoint ptr %priv_req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv_req, align 4
  %buf14 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %buf14, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 2
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma, align 4
  %dma16 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %dma16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma16, align 4
  %aligned_buf = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 5
  %15 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aligned_buf, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %aligned_buf18 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %aligned_buf18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %aligned_buf18, align 4
  %20 = load ptr, ptr %aligned_buf, align 4
  %dma20 = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dma20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma20, align 4
  %aligned_dma = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 6
  %23 = ptrtoint ptr %aligned_dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %aligned_dma, align 4
  %24 = load ptr, ptr %aligned_buf, align 4
  %size = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %aligned_buf_size = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call3, i32 0, i32 7
  %27 = ptrtoint ptr %aligned_buf_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %aligned_buf_size, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_aligned_request(ptr noundef %__data, ptr noundef %priv_req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 1
  %2 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %3, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65572
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 48
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #10
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 36
  %30 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_ep.i, align 4
  %name19 = getelementptr inbounds %struct.cdns3_endpoint, ptr %31, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name19, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name19
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %priv_req, ptr %req, align 4
  %33 = ptrtoint ptr %priv_req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv_req, align 4
  %buf26 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %buf26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %buf26, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 2
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma, align 4
  %dma28 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %dma28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma28, align 4
  %aligned_buf = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 5
  %39 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %aligned_buf, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %aligned_buf30 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %aligned_buf30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %aligned_buf30, align 4
  %44 = load ptr, ptr %aligned_buf, align 4
  %dma32 = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dma32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma32, align 4
  %aligned_dma = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 6
  %47 = ptrtoint ptr %aligned_dma to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %aligned_dma, align 4
  %48 = load ptr, ptr %aligned_buf, align 4
  %size = getelementptr inbounds %struct.cdns3_aligned_buf, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size, align 4
  %aligned_buf_size = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %call13, i32 0, i32 7
  %51 = ptrtoint ptr %aligned_buf_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %aligned_buf_size, align 4
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %13, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_map_request(ptr noundef %__data, ptr noundef %priv_req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 1
  %3 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %4, i32 0, i32 8
  %call.i33 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i33, 25
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i33, 16
  %or.i = add i32 %add.i, 65560
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 24
  %6 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ep.i, align 4
  %name7 = getelementptr inbounds %struct.cdns3_endpoint, ptr %7, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv_req, ptr %req, align 4
  %9 = ptrtoint ptr %priv_req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv_req, align 4
  %buf14 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %buf14, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 2
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma, align 4
  %dma16 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %dma16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_map_request(ptr noundef %__data, ptr noundef %priv_req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %priv_ep.i = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 1
  %2 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ep.i, align 4
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %3, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65560
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 36
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #10
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 24
  %30 = ptrtoint ptr %priv_ep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_ep.i, align 4
  %name19 = getelementptr inbounds %struct.cdns3_endpoint, ptr %31, i32 0, i32 8
  %tobool20.not = icmp eq ptr %name19, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name19
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %priv_req, ptr %req, align 4
  %33 = ptrtoint ptr %priv_req to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv_req, align 4
  %buf26 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %buf26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %buf26, align 4
  %dma = getelementptr inbounds %struct.usb_request, ptr %priv_req, i32 0, i32 2
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma, align 4
  %dma28 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %dma28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dma28, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %13, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_trb(ptr noundef %__data, ptr noundef readonly %priv_ep, ptr noundef %trb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %call.i40 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i40, 37
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i40, 16
  %or.i = add i32 %add.i, 65572
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 36
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %trb12 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %trb12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %trb, ptr %trb12, align 4
  %5 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trb, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %buffer13 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %buffer13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buffer13, align 4
  %length = getelementptr inbounds %struct.cdns3_trb, ptr %trb, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %length14 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %length14, align 4
  %control = getelementptr inbounds %struct.cdns3_trb, ptr %trb, i32 0, i32 2
  %13 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %control, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %control15 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %control15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %control15, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 9
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i, align 1
  %21 = and i8 %20, 3
  %and.i41 = zext i8 %21 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i41, ptr %type, align 4
  %last_stream_id = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 28
  %23 = ptrtoint ptr %last_stream_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %last_stream_id, align 4
  %conv = zext i16 %24 to i32
  %last_stream_id17 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call3, i32 0, i32 7
  %25 = ptrtoint ptr %last_stream_id17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %last_stream_id17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_trb(ptr noundef %__data, ptr noundef readonly %priv_ep, ptr noundef %trb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65572
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 48
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 36
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %trb24 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %trb24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %trb, ptr %trb24, align 4
  %29 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trb, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %buffer25 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %buffer25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %buffer25, align 4
  %length = getelementptr inbounds %struct.cdns3_trb, ptr %trb, i32 0, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %length26 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %length26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %length26, align 4
  %control = getelementptr inbounds %struct.cdns3_trb, ptr %trb, i32 0, i32 2
  %37 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %control, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %control27 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %control27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %control27, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 9
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bmAttributes.i, align 1
  %45 = and i8 %44, 3
  %and.i64 = zext i8 %45 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i64, ptr %type, align 4
  %last_stream_id = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 28
  %47 = ptrtoint ptr %last_stream_id to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %last_stream_id, align 4
  %conv = zext i16 %48 to i32
  %last_stream_id29 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %call13, i32 0, i32 7
  %49 = ptrtoint ptr %last_stream_id29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %last_stream_id29, align 4
  %50 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rctx, align 4
  %52 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %51, ptr noundef %__data, i64 noundef 1, ptr noundef %53, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_ring(ptr noundef %__data, ptr nocapture noundef readonly %priv_ep) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 46892) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 471859220, ptr %__data_loc_ring, align 4
  %__data_loc_priv_ep = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_priv_ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11279412, ptr %__data_loc_priv_ep, align 4
  %__data_loc_buffer = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %__data_loc_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1706287904, ptr %__data_loc_buffer, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 7220
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %priv_ep, i32 172)
  %add.ptr10 = getelementptr i8, ptr %call3, i32 20
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %7 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trb_pool, align 4
  %9 = call ptr @memcpy(ptr %add.ptr10, ptr %8, i32 7200)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_ring(ptr noundef %__data, ptr nocapture noundef readonly %priv_ep) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 46892, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 471859220, ptr %__data_loc_ring, align 4
  %__data_loc_priv_ep = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %__data_loc_priv_ep to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 11279412, ptr %__data_loc_priv_ep, align 4
  %__data_loc_buffer = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %__data_loc_buffer to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1706287904, ptr %__data_loc_buffer, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 7220
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %priv_ep, i32 172)
  %add.ptr22 = getelementptr i8, ptr %call13, i32 20
  %trb_pool = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 5
  %31 = ptrtoint ptr %trb_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trb_pool, align 4
  %33 = call ptr @memcpy(ptr %add.ptr22, ptr %32, i32 7200)
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 46892, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_ep(ptr noundef %__data, ptr noundef readonly %priv_ep) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %call.i69 = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add = add i32 %call.i69, 45
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = shl i32 %call.i69, 16
  %or.i = add i32 %add.i, 65578
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 42
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 7
  %4 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %4, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxpacket12 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %maxpacket12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %maxpacket12, align 4
  %bf.load14 = load i56, ptr %maxpacket, align 2
  %bf.lshr15 = lshr i56 %bf.load14, 24
  %6 = trunc i56 %bf.lshr15 to i32
  %bf.cast16 = and i32 %6, 65535
  %maxpacket_limit17 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %maxpacket_limit17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast16, ptr %maxpacket_limit17, align 4
  %bf.load19 = load i56, ptr %maxpacket, align 2
  %8 = trunc i56 %bf.load19 to i32
  %9 = lshr i32 %8, 8
  %bf.cast22 = and i32 %9, 65535
  %max_streams23 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %max_streams23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.cast22, ptr %max_streams23, align 4
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %11 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load24 = load i8, ptr %use_streams, align 4
  %bf.lshr25 = lshr i8 %bf.load24, 6
  %bf.clear26 = and i8 %bf.lshr25, 1
  %bf.cast27 = zext i8 %bf.clear26 to i32
  %use_streams28 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 5
  %12 = ptrtoint ptr %use_streams28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.cast27, ptr %use_streams28, align 4
  %bf.load30 = load i56, ptr %maxpacket, align 2
  %13 = trunc i56 %bf.load30 to i32
  %14 = lshr i32 %13, 1
  %bf.cast33 = and i32 %14, 31
  %maxburst34 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 6
  %15 = ptrtoint ptr %maxburst34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.cast33, ptr %maxburst34, align 4
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %flags35 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 7
  %18 = ptrtoint ptr %flags35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %flags35, align 4
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 11
  %19 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dir, align 4
  %conv = zext i8 %20 to i32
  %dir36 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 8
  %21 = ptrtoint ptr %dir36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %dir36, align 4
  %enqueue = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 20
  %22 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enqueue, align 4
  %conv37 = trunc i32 %23 to i8
  %enqueue38 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 9
  %24 = ptrtoint ptr %enqueue38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv37, ptr %enqueue38, align 4
  %dequeue = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 21
  %25 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dequeue, align 4
  %conv39 = trunc i32 %26 to i8
  %dequeue40 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call3, i32 0, i32 10
  %27 = ptrtoint ptr %dequeue40 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv39, ptr %dequeue40, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_ep(ptr noundef %__data, ptr noundef readonly %priv_ep) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 8
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #13
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65578
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 56
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 42
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #14
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %priv_ep, i32 0, i32 7
  %28 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %28, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxpacket24 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %maxpacket24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.cast, ptr %maxpacket24, align 4
  %bf.load26 = load i56, ptr %maxpacket, align 2
  %bf.lshr27 = lshr i56 %bf.load26, 24
  %30 = trunc i56 %bf.lshr27 to i32
  %bf.cast28 = and i32 %30, 65535
  %maxpacket_limit29 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %maxpacket_limit29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.cast28, ptr %maxpacket_limit29, align 4
  %bf.load31 = load i56, ptr %maxpacket, align 2
  %32 = trunc i56 %bf.load31 to i32
  %33 = lshr i32 %32, 8
  %bf.cast34 = and i32 %33, 65535
  %max_streams35 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %max_streams35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bf.cast34, ptr %max_streams35, align 4
  %use_streams = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 26
  %35 = ptrtoint ptr %use_streams to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load36 = load i8, ptr %use_streams, align 4
  %bf.lshr37 = lshr i8 %bf.load36, 6
  %bf.clear38 = and i8 %bf.lshr37, 1
  %bf.cast39 = zext i8 %bf.clear38 to i32
  %use_streams40 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 5
  %36 = ptrtoint ptr %use_streams40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.cast39, ptr %use_streams40, align 4
  %bf.load42 = load i56, ptr %maxpacket, align 2
  %37 = trunc i56 %bf.load42 to i32
  %38 = lshr i32 %37, 1
  %bf.cast45 = and i32 %38, 31
  %maxburst46 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 6
  %39 = ptrtoint ptr %maxburst46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bf.cast45, ptr %maxburst46, align 4
  %flags = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 9
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %flags47 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 7
  %42 = ptrtoint ptr %flags47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %flags47, align 4
  %dir = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 11
  %43 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dir, align 4
  %conv = zext i8 %44 to i32
  %dir48 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 8
  %45 = ptrtoint ptr %dir48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %dir48, align 4
  %enqueue = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 20
  %46 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %enqueue, align 4
  %conv49 = trunc i32 %47 to i8
  %enqueue50 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 9
  %48 = ptrtoint ptr %enqueue50 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv49, ptr %enqueue50, align 4
  %dequeue = getelementptr inbounds %struct.cdns3_endpoint, ptr %priv_ep, i32 0, i32 21
  %49 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dequeue, align 4
  %conv51 = trunc i32 %50 to i8
  %dequeue52 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %call13, i32 0, i32 10
  %51 = ptrtoint ptr %dequeue52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv51, ptr %dequeue52, align 1
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdns3_log_request_handled(ptr noundef %__data, ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #10
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !492

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !493

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #10
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %priv_req6 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %priv_req6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv_req, ptr %priv_req6, align 4
  %dma_position = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %dma_position to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %current_index, ptr %dma_position, align 4
  %handled7 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %handled7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %handled, ptr %handled7, align 4
  %priv_ep = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 1
  %6 = ptrtoint ptr %priv_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ep, align 4
  %dequeue = getelementptr inbounds %struct.cdns3_endpoint, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dequeue, align 4
  %dequeue_idx = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %dequeue_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dequeue_idx, align 4
  %11 = load ptr, ptr %priv_ep, align 4
  %enqueue = getelementptr inbounds %struct.cdns3_endpoint, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enqueue, align 4
  %enqueue_idx = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %enqueue_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %enqueue_idx, align 4
  %start_trb = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 3
  %15 = ptrtoint ptr %start_trb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_trb, align 4
  %start_trb9 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %start_trb9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %start_trb9, align 4
  %end_trb = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 4
  %18 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end_trb, align 4
  %end_trb10 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %end_trb10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %end_trb10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cdns3_log_request_handled(ptr noundef %__data, ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !494
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !494
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !482) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !482) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %priv_req17 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %priv_req17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %priv_req, ptr %priv_req17, align 4
  %dma_position = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %dma_position to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %current_index, ptr %dma_position, align 4
  %handled18 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %handled18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %handled, ptr %handled18, align 4
  %priv_ep = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 1
  %30 = ptrtoint ptr %priv_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv_ep, align 4
  %dequeue = getelementptr inbounds %struct.cdns3_endpoint, ptr %31, i32 0, i32 21
  %32 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dequeue, align 4
  %dequeue_idx = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %dequeue_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dequeue_idx, align 4
  %35 = load ptr, ptr %priv_ep, align 4
  %enqueue = getelementptr inbounds %struct.cdns3_endpoint, ptr %35, i32 0, i32 20
  %36 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enqueue, align 4
  %enqueue_idx = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %enqueue_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %enqueue_idx, align 4
  %start_trb = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 3
  %39 = ptrtoint ptr %start_trb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %start_trb, align 4
  %start_trb20 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %start_trb20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %start_trb20, align 4
  %end_trb = getelementptr inbounds %struct.cdns3_request, ptr %priv_req, i32 0, i32 4
  %42 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end_trb, align 4
  %end_trb21 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %end_trb21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %end_trb21, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_halt(ptr noundef %__data, ptr noundef %ep_priv, i8 noundef zeroext %halt, i8 noundef zeroext %flush) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ep_priv to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %halt to i64
  %conv8 = zext i8 %flush to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_wa1(ptr noundef %__data, ptr noundef %ep_priv, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ep_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %msg to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_wa2(ptr noundef %__data, ptr noundef %ep_priv, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ep_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %msg to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_doorbell(ptr noundef %__data, ptr noundef %ep_name, i32 noundef %ep_trbaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ep_name to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ep_trbaddr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_usb_irq(ptr noundef %__data, ptr noundef %priv_dev, i32 noundef %usb_ists) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %usb_ists to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_epx_irq(ptr noundef %__data, ptr noundef %priv_dev, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %priv_ep to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_ep0_irq(ptr noundef %__data, ptr noundef %priv_dev, i32 noundef %ep_sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_dev to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ep_sts to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_ctrl(ptr noundef %__data, ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ctrl to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_ep0_queue(ptr noundef %__data, ptr noundef %dev_priv, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev_priv to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %request to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_stream_split_transfer_len(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_aligned_request(ptr noundef %__data, ptr noundef %priv_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_map_request(ptr noundef %__data, ptr noundef %priv_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_trb(ptr noundef %__data, ptr noundef %priv_ep, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_ep to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %trb to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_ring(ptr noundef %__data, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_ep to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_ep(ptr noundef %__data, ptr noundef %priv_ep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_ep to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cdns3_log_request_handled(ptr noundef %__data, ptr noundef %priv_req, i32 noundef %current_index, i32 noundef %handled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %priv_req to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %current_index to i64
  %conv8 = zext i32 %handled to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_halt(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %flush = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flush, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %halt = getelementptr inbounds %struct.trace_event_raw_cdns3_halt, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %halt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %halt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.10, ptr @.str.9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, ptr noundef %add.ptr, ptr noundef nonnull %cond3) #10
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_wa1(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_wa1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_ep_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_cdns3_wa1, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_msg, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, ptr noundef %add.ptr2) #10
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_wa2(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_wa2, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_ep_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_cdns3_wa2, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_msg, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %add.ptr, ptr noundef %add.ptr2) #10
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_doorbell(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_doorbell, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %ep_trbaddr = getelementptr inbounds %struct.trace_event_raw_cdns3_log_doorbell, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ep_trbaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep_trbaddr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %add.ptr, i32 noundef %5) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_get_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_usb_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %speed = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %usb_ists = getelementptr inbounds %struct.trace_event_raw_cdns3_log_usb_irq, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %usb_ists to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_ists, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.23, i32 noundef %7) #10
  %and.i = and i32 %7, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call.i
  %call1.i = tail call ptr @usb_speed_string(i32 noundef %5) #10
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.24, ptr noundef %call1.i) #10
  %add.i = add i32 %call2.i, %call.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %add.i, %if.then.i ], [ %call.i, %if.end.if.end.i_crit_edge ]
  %8 = and i32 %7, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end.i.if.end11.i_crit_edge, label %if.then7.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 %ret.0.i
  %10 = call ptr @memcpy(ptr %add.ptr8.i, ptr @.str.25, i32 15)
  %add10.i = add i32 %ret.0.i, 14
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %ret.1.i = phi i32 [ %add10.i, %if.then7.i ], [ %ret.0.i, %if.end.i.if.end11.i_crit_edge ]
  %and12.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end18.i_crit_edge, label %if.then14.i

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr15.i = getelementptr i8, ptr %add.ptr, i32 %ret.1.i
  %11 = call ptr @memcpy(ptr %add.ptr15.i, ptr @.str.26, i32 11)
  %add17.i = add i32 %ret.1.i, 10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end18.i_crit_edge
  %ret.2.i = phi i32 [ %add17.i, %if.then14.i ], [ %ret.1.i, %if.end11.i.if.end18.i_crit_edge ]
  %and19.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end25.i_crit_edge, label %if.then21.i

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr22.i = getelementptr i8, ptr %add.ptr, i32 %ret.2.i
  %12 = call ptr @memcpy(ptr %add.ptr22.i, ptr @.str.27, i32 10)
  %add24.i = add i32 %ret.2.i, 9
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end25.i_crit_edge
  %ret.3.i = phi i32 [ %add24.i, %if.then21.i ], [ %ret.2.i, %if.end18.i.if.end25.i_crit_edge ]
  %and26.i = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end32.i_crit_edge, label %if.then28.i

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr29.i = getelementptr i8, ptr %add.ptr, i32 %ret.3.i
  %13 = call ptr @memcpy(ptr %add.ptr29.i, ptr @.str.28, i32 9)
  %add31.i = add i32 %ret.3.i, 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end32.i_crit_edge
  %ret.4.i = phi i32 [ %add31.i, %if.then28.i ], [ %ret.3.i, %if.end25.i.if.end32.i_crit_edge ]
  br i1 %tobool13.not.i, label %if.end32.i.if.end39.i_crit_edge, label %if.then35.i

if.end32.i.if.end39.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr36.i = getelementptr i8, ptr %add.ptr, i32 %ret.4.i
  %14 = call ptr @memcpy(ptr %add.ptr36.i, ptr @.str.29, i32 10)
  %add38.i = add i32 %ret.4.i, 9
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end39.i_crit_edge
  %ret.5.i = phi i32 [ %add38.i, %if.then35.i ], [ %ret.4.i, %if.end32.i.if.end39.i_crit_edge ]
  %and40.i = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end46.i_crit_edge, label %if.then42.i

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr43.i = getelementptr i8, ptr %add.ptr, i32 %ret.5.i
  %15 = call ptr @memcpy(ptr %add.ptr43.i, ptr @.str.30, i32 9)
  %add45.i = add i32 %ret.5.i, 8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end39.i.if.end46.i_crit_edge
  %ret.6.i = phi i32 [ %add45.i, %if.then42.i ], [ %ret.5.i, %if.end39.i.if.end46.i_crit_edge ]
  %and47.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end53.i_crit_edge, label %if.then49.i

if.end46.i.if.end53.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr50.i = getelementptr i8, ptr %add.ptr, i32 %ret.6.i
  %16 = call ptr @memcpy(ptr %add.ptr50.i, ptr @.str.31, i32 9)
  %add52.i = add i32 %ret.6.i, 8
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.end46.i.if.end53.i_crit_edge
  %ret.7.i = phi i32 [ %add52.i, %if.then49.i ], [ %ret.6.i, %if.end46.i.if.end53.i_crit_edge ]
  %and54.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end60.i_crit_edge, label %if.then56.i

if.end53.i.if.end60.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr57.i = getelementptr i8, ptr %add.ptr, i32 %ret.7.i
  %17 = call ptr @memcpy(ptr %add.ptr57.i, ptr @.str.32, i32 12)
  %add59.i = add i32 %ret.7.i, 11
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end60.i_crit_edge
  %ret.8.i = phi i32 [ %add59.i, %if.then56.i ], [ %ret.7.i, %if.end53.i.if.end60.i_crit_edge ]
  %and61.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end60.i.if.end67.i_crit_edge, label %if.then63.i

if.end60.i.if.end67.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr64.i = getelementptr i8, ptr %add.ptr, i32 %ret.8.i
  %18 = call ptr @memcpy(ptr %add.ptr64.i, ptr @.str.33, i32 11)
  %add66.i = add i32 %ret.8.i, 10
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then63.i, %if.end60.i.if.end67.i_crit_edge
  %ret.9.i = phi i32 [ %add66.i, %if.then63.i ], [ %ret.8.i, %if.end60.i.if.end67.i_crit_edge ]
  %and68.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end67.i.cdns3_decode_usb_irq.exit_crit_edge, label %if.then70.i

if.end67.i.cdns3_decode_usb_irq.exit_crit_edge:   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns3_decode_usb_irq.exit

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr71.i = getelementptr i8, ptr %add.ptr, i32 %ret.9.i
  %19 = call ptr @memcpy(ptr %add.ptr71.i, ptr @.str.34, i32 6)
  br label %cdns3_decode_usb_irq.exit

cdns3_decode_usb_irq.exit:                        ; preds = %if.then70.i, %if.end67.i.cdns3_decode_usb_irq.exit_crit_edge
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %add.ptr) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %cdns3_decode_usb_irq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %cdns3_decode_usb_irq.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_epx_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_ep_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_ep_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_ep_name, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %ep_sts = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ep_sts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep_sts, align 4
  %call.i = tail call fastcc ptr @cdns3_decode_ep_irq(ptr noundef %add.ptr, i32 noundef %7, ptr noundef %add.ptr2) #10
  %ep_traddr = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ep_traddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep_traddr, align 4
  %ep_last_sid = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ep_last_sid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ep_last_sid, align 4
  %use_streams = getelementptr inbounds %struct.trace_event_raw_cdns3_log_epx_irq, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %use_streams to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use_streams, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, ptr noundef %add.ptr, i32 noundef %9, i32 noundef %11, i32 noundef %13) #10
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cdns3_decode_ep_irq(ptr noundef returned writeonly %str, i32 noundef %ep_sts, ptr noundef %ep_name) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str, ptr noundef nonnull @.str.40, ptr noundef %ep_name, i32 noundef %ep_sts)
  %and = and i32 %ep_sts, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %str, i32 %call
  %0 = call ptr @memcpy(ptr %add.ptr, ptr @.str.41, i32 7)
  %add = add i32 %call, 6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %add, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %and2 = and i32 %ep_sts, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr5 = getelementptr i8, ptr %str, i32 %ret.0
  %1 = call ptr @memcpy(ptr %add.ptr5, ptr @.str.42, i32 5)
  %add7 = add i32 %ret.0, 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ret.1 = phi i32 [ %add7, %if.then4 ], [ %ret.0, %if.end.if.end8_crit_edge ]
  %and9 = and i32 %ep_sts, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end15_crit_edge, label %if.then11

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr12 = getelementptr i8, ptr %str, i32 %ret.1
  %2 = call ptr @memcpy(ptr %add.ptr12, ptr @.str.43, i32 5)
  %add14 = add i32 %ret.1, 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8.if.end15_crit_edge
  %ret.2 = phi i32 [ %add14, %if.then11 ], [ %ret.1, %if.end8.if.end15_crit_edge ]
  %and16 = and i32 %ep_sts, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr19 = getelementptr i8, ptr %str, i32 %ret.2
  %3 = call ptr @memcpy(ptr %add.ptr19, ptr @.str.44, i32 9)
  %add21 = add i32 %ret.2, 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %ret.3 = phi i32 [ %add21, %if.then18 ], [ %ret.2, %if.end15.if.end22_crit_edge ]
  %and23 = and i32 %ep_sts, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %if.then25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr26 = getelementptr i8, ptr %str, i32 %ret.3
  %4 = call ptr @memcpy(ptr %add.ptr26, ptr @.str.45, i32 9)
  %add28 = add i32 %ret.3, 8
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22.if.end29_crit_edge
  %ret.4 = phi i32 [ %add28, %if.then25 ], [ %ret.3, %if.end22.if.end29_crit_edge ]
  %and30 = and i32 %ep_sts, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end36_crit_edge, label %if.then32

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr33 = getelementptr i8, ptr %str, i32 %ret.4
  %5 = call ptr @memcpy(ptr %add.ptr33, ptr @.str.46, i32 9)
  %add35 = add i32 %ret.4, 8
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29.if.end36_crit_edge
  %ret.5 = phi i32 [ %add35, %if.then32 ], [ %ret.4, %if.end29.if.end36_crit_edge ]
  %and37 = and i32 %ep_sts, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end43_crit_edge, label %if.then39

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr40 = getelementptr i8, ptr %str, i32 %ret.5
  %6 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 6075991712777510912, ptr %add.ptr40, align 1
  %add42 = add i32 %ret.5, 7
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge
  %ret.6 = phi i32 [ %add42, %if.then39 ], [ %ret.5, %if.end36.if.end43_crit_edge ]
  %and44 = and i32 %ep_sts, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end50_crit_edge, label %if.then46

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr47 = getelementptr i8, ptr %str, i32 %ret.6
  %7 = call ptr @memcpy(ptr %add.ptr47, ptr @.str.48, i32 6)
  %add49 = add i32 %ret.6, 5
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end43.if.end50_crit_edge
  %ret.7 = phi i32 [ %add49, %if.then46 ], [ %ret.6, %if.end43.if.end50_crit_edge ]
  %and51 = and i32 %ep_sts, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end57_crit_edge, label %if.then53

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr54 = getelementptr i8, ptr %str, i32 %ret.7
  %8 = call ptr @memcpy(ptr %add.ptr54, ptr @.str.49, i32 7)
  %add56 = add i32 %ret.7, 6
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end50.if.end57_crit_edge
  %ret.8 = phi i32 [ %add56, %if.then53 ], [ %ret.7, %if.end50.if.end57_crit_edge ]
  %and58 = and i32 %ep_sts, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end64_crit_edge, label %if.then60

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr61 = getelementptr i8, ptr %str, i32 %ret.8
  %9 = call ptr @memcpy(ptr %add.ptr61, ptr @.str.50, i32 9)
  %add63 = add i32 %ret.8, 8
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end57.if.end64_crit_edge
  %ret.9 = phi i32 [ %add63, %if.then60 ], [ %ret.8, %if.end57.if.end64_crit_edge ]
  %and65 = and i32 %ep_sts, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end71_crit_edge, label %if.then67

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr68 = getelementptr i8, ptr %str, i32 %ret.9
  %10 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 5716568018772631552, ptr %add.ptr68, align 1
  %add70 = add i32 %ret.9, 7
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end64.if.end71_crit_edge
  %ret.10 = phi i32 [ %add70, %if.then67 ], [ %ret.9, %if.end64.if.end71_crit_edge ]
  %and72 = and i32 %ep_sts, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end78_crit_edge, label %if.then74

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr75 = getelementptr i8, ptr %str, i32 %ret.10
  %11 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 5283653946988175360, ptr %add.ptr75, align 1
  %add77 = add i32 %ret.10, 7
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end71.if.end78_crit_edge
  %ret.11 = phi i32 [ %add77, %if.then74 ], [ %ret.10, %if.end71.if.end78_crit_edge ]
  %and79 = and i32 %ep_sts, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end85_crit_edge, label %if.then81

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr82 = getelementptr i8, ptr %str, i32 %ret.11
  %12 = call ptr @memcpy(ptr %add.ptr82, ptr @.str.53, i32 5)
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end78.if.end85_crit_edge
  ret ptr %str
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_ep0_irq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %ep_dir = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ep_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ep_dir, align 4
  %ep_sts = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep0_irq, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ep_sts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ep_sts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.57, ptr @.str.56
  %call.i = tail call fastcc ptr @cdns3_decode_ep_irq(ptr noundef %add.ptr, i32 noundef %7, ptr noundef nonnull %cond.i) #10
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %add.ptr) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_ctrl(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %bRequestType = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bRequestType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequestType, align 4
  %bRequest = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wValue, align 2
  %wIndex = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %wIndex to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wIndex, align 4
  %wLength = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ctrl, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wLength, align 2
  %call1 = tail call ptr @usb_decode_ctrl(ptr noundef %add.ptr, i32 noundef 500, i8 noundef zeroext %5, i8 noundef zeroext %7, i16 noundef zeroext %9, i16 noundef zeroext %11, i16 noundef zeroext %13) #10
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %call1) #10
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_decode_ctrl(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, ptr @.str.81, ptr @.str.80
  %short_not_ok = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %short_not_ok to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %short_not_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.83, ptr @.str.82
  %no_interrupt = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %no_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.85, ptr @.str.84
  %status = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %start_trb = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %start_trb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_trb, align 4
  %end_trb = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end_trb, align 4
  %flags5 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags5, align 4
  %stream_id = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.79, ptr noundef %add.ptr, ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, ptr noundef nonnull %cond4, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #10
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_ep0_queue(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dir = getelementptr inbounds %struct.trace_event_raw_cdns3_ep0_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.89, ptr @.str.88
  %length = getelementptr inbounds %struct.trace_event_raw_cdns3_ep0_queue, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.87, ptr noundef nonnull %cond, i32 noundef %5) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_stream_split_transfer_len(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %stream_id = getelementptr inbounds %struct.trace_event_raw_cdns3_stream_split_transfer_len, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.90, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_aligned_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %dma = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 4
  %aligned_buf = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %aligned_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aligned_buf, align 4
  %aligned_dma = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 6
  %aligned_buf_size = getelementptr inbounds %struct.trace_event_raw_cdns3_log_aligned_request, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %aligned_buf_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aligned_buf_size, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.97, ptr noundef %add.ptr, ptr noundef %5, ptr noundef %7, ptr noundef %dma, ptr noundef %9, ptr noundef %aligned_dma, i32 noundef %11) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_map_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %buf = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %dma = getelementptr inbounds %struct.trace_event_raw_cdns3_log_map_request, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.98, ptr noundef %add.ptr, ptr noundef %5, ptr noundef %7, ptr noundef %dma) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_trb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %trb = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trb, align 4
  %buffer = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %and1 = and i32 %9, 131071
  %shr = lshr i32 %9, 24
  %control = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control, align 4
  %and6 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %cond = select i1 %tobool.not, ptr @.str.107, ptr @.str.106
  %and8 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.109, ptr @.str.108
  %and12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.8, ptr @.str.110
  %and16 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.8, ptr @.str.111
  %and20 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.8, ptr @.str.112
  %and24 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.8, ptr @.str.113
  %12 = and i32 %11, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %12)
  %cmp30 = icmp eq i32 %12, 1024
  %cond32 = select i1 %cmp30, ptr @.str.114, ptr @.str.115
  %shr35 = lshr i32 %11, 16
  %last_stream_id = getelementptr inbounds %struct.trace_event_raw_cdns3_log_trb, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %last_stream_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_stream_id, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.105, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %and1, i32 noundef %shr, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef nonnull %cond10, ptr noundef nonnull %cond14, ptr noundef nonnull %cond18, ptr noundef nonnull %cond22, ptr noundef nonnull %cond26, ptr noundef nonnull %cond32, i32 noundef %shr35, i32 noundef %14) #10
  %call36 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_ring(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %__data_loc_priv_ep = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %__data_loc_priv_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_priv_ep, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_ring = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %__data_loc_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_ring, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  %__data_loc_buffer = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ring, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_buffer, align 4
  %and3 = and i32 %7, 65535
  %add.ptr4 = getelementptr i8, ptr %1, i32 %and3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #10
  %trb_pool_dma.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 6
  %8 = ptrtoint ptr %trb_pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trb_pool_dma.i, align 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %addr.i, align 4
  %type.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 13
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  %cond.i = select i1 %cmp.i, i32 80, i32 600
  %trb_pool.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 5
  %13 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trb_pool.i, align 4
  %dequeue.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 21
  %15 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dequeue.i, align 4
  %arrayidx.i = getelementptr %struct.cdns3_trb, ptr %14, i32 %16
  %name.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 8
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4, ptr noundef nonnull @.str.119, ptr noundef %name.i) #10
  %add.ptr2.i = getelementptr i8, ptr %add.ptr4, i32 %call.i
  %17 = ptrtoint ptr %dequeue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dequeue.i, align 4
  %call4.i = tail call i32 @cdns3_trb_virt_to_dma(ptr noundef %add.ptr, ptr noundef %arrayidx.i) #10
  %conv5.i = zext i32 %call4.i to i64
  %call6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2.i, ptr noundef nonnull @.str.120, i32 noundef %18, ptr noundef %arrayidx.i, i64 noundef %conv5.i) #10
  %add7.i = add i32 %call6.i, %call.i
  %19 = ptrtoint ptr %trb_pool.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trb_pool.i, align 4
  %enqueue.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 20
  %21 = ptrtoint ptr %enqueue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enqueue.i, align 4
  %arrayidx9.i = getelementptr %struct.cdns3_trb, ptr %20, i32 %22
  %add.ptr10.i = getelementptr i8, ptr %add.ptr4, i32 %add7.i
  %call12.i = tail call i32 @cdns3_trb_virt_to_dma(ptr noundef %add.ptr, ptr noundef %arrayidx9.i) #10
  %conv13.i = zext i32 %call12.i to i64
  %call14.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10.i, ptr noundef nonnull @.str.121, i32 noundef %22, ptr noundef %arrayidx9.i, i64 noundef %conv13.i) #10
  %add15.i = add i32 %call14.i, %add7.i
  %add.ptr16.i = getelementptr i8, ptr %add.ptr4, i32 %add15.i
  %free_trbs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 15
  %23 = ptrtoint ptr %free_trbs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %free_trbs.i, align 4
  %ccs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 19
  %25 = ptrtoint ptr %ccs.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ccs.i, align 1
  %conv17.i = zext i8 %26 to i32
  %pcs.i = getelementptr inbounds %struct.cdns3_endpoint, ptr %add.ptr, i32 0, i32 18
  %27 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pcs.i, align 4
  %conv18.i = zext i8 %28 to i32
  %call19.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.i, ptr noundef nonnull @.str.122, i32 noundef %24, i32 noundef %conv17.i, i32 noundef %conv18.i) #10
  %add20.i = add i32 %call19.i, %add15.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.082.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %ret.081.i = phi i32 [ %add20.i, %if.end ], [ %add34.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx31.i = getelementptr %struct.cdns3_trb, ptr %add.ptr2, i32 %i.082.i
  %add.ptr32.i = getelementptr i8, ptr %add.ptr4, i32 %ret.081.i
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx31.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #10
  %length.i = getelementptr %struct.cdns3_trb, ptr %add.ptr2, i32 %i.082.i, i32 1
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #10
  %control.i = getelementptr %struct.cdns3_trb, ptr %add.ptr2, i32 %i.082.i, i32 2
  %35 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %control.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #10
  %call33.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.i, ptr noundef nonnull @.str.124, ptr noundef nonnull %addr.i, i32 noundef %31, i32 noundef %34, i32 noundef %37) #10
  %add34.i = add i32 %call33.i, %ret.081.i
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 4
  %add35.i = add i32 %39, 12
  store i32 %add35.i, ptr %addr.i, align 4
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %cond.i
  br i1 %exitcond.not.i, label %cdns3_dbg_ring.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cdns3_dbg_ring.exit:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #10
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %add.ptr4) #10
  %call6 = call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %cdns3_dbg_ring.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %cdns3_dbg_ring.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_ep(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %maxpacket = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxpacket, align 4
  %maxpacket_limit = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxpacket_limit, align 4
  %max_streams = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max_streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_streams, align 4
  %use_streams = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %use_streams to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_streams, align 4
  %maxburst = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxburst, align 4
  %enqueue = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %enqueue to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enqueue, align 4
  %conv = zext i8 %15 to i32
  %dequeue = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %dequeue to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dequeue, align 1
  %conv1 = zext i8 %17 to i32
  %flags2 = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags2, align 4
  %and3 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.132
  %and5 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.8, ptr @.str.133
  %and9 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.8, ptr @.str.134
  %and13 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.8, ptr @.str.135
  %and17 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.8, ptr @.str.136
  %and21 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.8, ptr @.str.137
  %and25 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.8, ptr @.str.138
  %and29 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.8, ptr @.str.139
  %dir = getelementptr inbounds %struct.trace_event_raw_cdns3_log_ep, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool32.not = icmp eq i32 %21, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.141, ptr @.str.140
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.131, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, i32 noundef %conv1, ptr noundef nonnull %cond, ptr noundef nonnull %cond7, ptr noundef nonnull %cond11, ptr noundef nonnull %cond15, ptr noundef nonnull %cond19, ptr noundef nonnull %cond23, ptr noundef nonnull %cond27, ptr noundef nonnull %cond31, ptr noundef nonnull %cond33) #10
  %call34 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cdns3_log_request_handled(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %priv_req = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_req, align 4
  %handled = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %handled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.148, ptr @.str.144
  %dma_position = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dma_position to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_position, align 4
  %dequeue_idx = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dequeue_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dequeue_idx, align 4
  %enqueue_idx = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %enqueue_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enqueue_idx, align 4
  %start_trb = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %start_trb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %start_trb, align 4
  %end_trb = getelementptr inbounds %struct.trace_event_raw_cdns3_log_request_handled, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %end_trb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end_trb, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.147, ptr noundef %3, ptr noundef nonnull %cond, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !171, !172, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !310, !311, !312, !313, !314, !315, !316, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !346, !347, !348, !349, !350, !352, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !441, !443, !445, !447, !449, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!llvm.named.register.sp = !{!482}
!llvm.module.flags = !{!483, !484, !485, !486, !487, !488, !489, !490}
!llvm.ident = !{!491}

!0 = !{ptr @__tracepoint_cdns3_halt, !1, !"__tracepoint_cdns3_halt", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 27, i32 1}
!2 = !{ptr @__tracepoint_ptr_cdns3_halt, !1, !"__tracepoint_ptr_cdns3_halt", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cdns3_halt, !1, !"__SCK__tp_func_cdns3_halt", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cdns3_wa1, !5, !"__tracepoint_cdns3_wa1", i1 false, i1 false}
!5 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 44, i32 1}
!6 = !{ptr @__tracepoint_ptr_cdns3_wa1, !5, !"__tracepoint_ptr_cdns3_wa1", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cdns3_wa1, !5, !"__SCK__tp_func_cdns3_wa1", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cdns3_wa2, !9, !"__tracepoint_cdns3_wa2", i1 false, i1 false}
!9 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 58, i32 1}
!10 = !{ptr @__tracepoint_ptr_cdns3_wa2, !9, !"__tracepoint_ptr_cdns3_wa2", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cdns3_wa2, !9, !"__SCK__tp_func_cdns3_wa2", i1 false, i1 false}
!12 = !{ptr @__tracepoint_cdns3_doorbell_ep0, !13, !"__tracepoint_cdns3_doorbell_ep0", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 87, i32 1}
!14 = !{ptr @__tracepoint_ptr_cdns3_doorbell_ep0, !13, !"__tracepoint_ptr_cdns3_doorbell_ep0", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_cdns3_doorbell_ep0, !13, !"__SCK__tp_func_cdns3_doorbell_ep0", i1 false, i1 false}
!16 = !{ptr @__tracepoint_cdns3_doorbell_epx, !17, !"__tracepoint_cdns3_doorbell_epx", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 92, i32 1}
!18 = !{ptr @__tracepoint_ptr_cdns3_doorbell_epx, !17, !"__tracepoint_ptr_cdns3_doorbell_epx", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_cdns3_doorbell_epx, !17, !"__SCK__tp_func_cdns3_doorbell_epx", i1 false, i1 false}
!20 = !{ptr @__tracepoint_cdns3_usb_irq, !21, !"__tracepoint_cdns3_usb_irq", i1 false, i1 false}
!21 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 113, i32 1}
!22 = !{ptr @__tracepoint_ptr_cdns3_usb_irq, !21, !"__tracepoint_ptr_cdns3_usb_irq", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_cdns3_usb_irq, !21, !"__SCK__tp_func_cdns3_usb_irq", i1 false, i1 false}
!24 = !{ptr @__tracepoint_cdns3_epx_irq, !25, !"__tracepoint_cdns3_epx_irq", i1 false, i1 false}
!25 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 145, i32 1}
!26 = !{ptr @__tracepoint_ptr_cdns3_epx_irq, !25, !"__tracepoint_ptr_cdns3_epx_irq", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_cdns3_epx_irq, !25, !"__SCK__tp_func_cdns3_epx_irq", i1 false, i1 false}
!28 = !{ptr @__tracepoint_cdns3_ep0_irq, !29, !"__tracepoint_cdns3_ep0_irq", i1 false, i1 false}
!29 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 167, i32 1}
!30 = !{ptr @__tracepoint_ptr_cdns3_ep0_irq, !29, !"__tracepoint_ptr_cdns3_ep0_irq", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_cdns3_ep0_irq, !29, !"__SCK__tp_func_cdns3_ep0_irq", i1 false, i1 false}
!32 = !{ptr @__tracepoint_cdns3_ctrl_req, !33, !"__tracepoint_cdns3_ctrl_req", i1 false, i1 false}
!33 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 197, i32 1}
!34 = !{ptr @__tracepoint_ptr_cdns3_ctrl_req, !33, !"__tracepoint_ptr_cdns3_ctrl_req", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_cdns3_ctrl_req, !33, !"__SCK__tp_func_cdns3_ctrl_req", i1 false, i1 false}
!36 = !{ptr @__tracepoint_cdns3_alloc_request, !37, !"__tracepoint_cdns3_alloc_request", i1 false, i1 false}
!37 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 250, i32 1}
!38 = !{ptr @__tracepoint_ptr_cdns3_alloc_request, !37, !"__tracepoint_ptr_cdns3_alloc_request", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_cdns3_alloc_request, !37, !"__SCK__tp_func_cdns3_alloc_request", i1 false, i1 false}
!40 = !{ptr @__tracepoint_cdns3_free_request, !41, !"__tracepoint_cdns3_free_request", i1 false, i1 false}
!41 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 255, i32 1}
!42 = !{ptr @__tracepoint_ptr_cdns3_free_request, !41, !"__tracepoint_ptr_cdns3_free_request", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_cdns3_free_request, !41, !"__SCK__tp_func_cdns3_free_request", i1 false, i1 false}
!44 = !{ptr @__tracepoint_cdns3_ep_queue, !45, !"__tracepoint_cdns3_ep_queue", i1 false, i1 false}
!45 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 260, i32 1}
!46 = !{ptr @__tracepoint_ptr_cdns3_ep_queue, !45, !"__tracepoint_ptr_cdns3_ep_queue", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_cdns3_ep_queue, !45, !"__SCK__tp_func_cdns3_ep_queue", i1 false, i1 false}
!48 = !{ptr @__tracepoint_cdns3_ep_dequeue, !49, !"__tracepoint_cdns3_ep_dequeue", i1 false, i1 false}
!49 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 265, i32 1}
!50 = !{ptr @__tracepoint_ptr_cdns3_ep_dequeue, !49, !"__tracepoint_ptr_cdns3_ep_dequeue", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_cdns3_ep_dequeue, !49, !"__SCK__tp_func_cdns3_ep_dequeue", i1 false, i1 false}
!52 = !{ptr @__tracepoint_cdns3_gadget_giveback, !53, !"__tracepoint_cdns3_gadget_giveback", i1 false, i1 false}
!53 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 270, i32 1}
!54 = !{ptr @__tracepoint_ptr_cdns3_gadget_giveback, !53, !"__tracepoint_ptr_cdns3_gadget_giveback", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_cdns3_gadget_giveback, !53, !"__SCK__tp_func_cdns3_gadget_giveback", i1 false, i1 false}
!56 = !{ptr @__tracepoint_cdns3_ep0_queue, !57, !"__tracepoint_cdns3_ep0_queue", i1 false, i1 false}
!57 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 275, i32 1}
!58 = !{ptr @__tracepoint_ptr_cdns3_ep0_queue, !57, !"__tracepoint_ptr_cdns3_ep0_queue", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_cdns3_ep0_queue, !57, !"__SCK__tp_func_cdns3_ep0_queue", i1 false, i1 false}
!60 = !{ptr @__tracepoint_cdns3_stream_transfer_split, !61, !"__tracepoint_cdns3_stream_transfer_split", i1 false, i1 false}
!61 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 312, i32 1}
!62 = !{ptr @__tracepoint_ptr_cdns3_stream_transfer_split, !61, !"__tracepoint_ptr_cdns3_stream_transfer_split", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_cdns3_stream_transfer_split, !61, !"__SCK__tp_func_cdns3_stream_transfer_split", i1 false, i1 false}
!64 = !{ptr @__tracepoint_cdns3_stream_transfer_split_next_part, !65, !"__tracepoint_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!65 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 317, i32 1}
!66 = !{ptr @__tracepoint_ptr_cdns3_stream_transfer_split_next_part, !65, !"__tracepoint_ptr_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_cdns3_stream_transfer_split_next_part, !65, !"__SCK__tp_func_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!68 = !{ptr @__tracepoint_cdns3_free_aligned_request, !69, !"__tracepoint_cdns3_free_aligned_request", i1 false, i1 false}
!69 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 351, i32 1}
!70 = !{ptr @__tracepoint_ptr_cdns3_free_aligned_request, !69, !"__tracepoint_ptr_cdns3_free_aligned_request", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_cdns3_free_aligned_request, !69, !"__SCK__tp_func_cdns3_free_aligned_request", i1 false, i1 false}
!72 = !{ptr @__tracepoint_cdns3_prepare_aligned_request, !73, !"__tracepoint_cdns3_prepare_aligned_request", i1 false, i1 false}
!73 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 356, i32 1}
!74 = !{ptr @__tracepoint_ptr_cdns3_prepare_aligned_request, !73, !"__tracepoint_ptr_cdns3_prepare_aligned_request", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_cdns3_prepare_aligned_request, !73, !"__SCK__tp_func_cdns3_prepare_aligned_request", i1 false, i1 false}
!76 = !{ptr @__tracepoint_cdns3_map_request, !77, !"__tracepoint_cdns3_map_request", i1 false, i1 false}
!77 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 380, i32 1}
!78 = !{ptr @__tracepoint_ptr_cdns3_map_request, !77, !"__tracepoint_ptr_cdns3_map_request", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_cdns3_map_request, !77, !"__SCK__tp_func_cdns3_map_request", i1 false, i1 false}
!80 = !{ptr @__tracepoint_cdns3_mapped_request, !81, !"__tracepoint_cdns3_mapped_request", i1 false, i1 false}
!81 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 384, i32 1}
!82 = !{ptr @__tracepoint_ptr_cdns3_mapped_request, !81, !"__tracepoint_ptr_cdns3_mapped_request", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_cdns3_mapped_request, !81, !"__SCK__tp_func_cdns3_mapped_request", i1 false, i1 false}
!84 = !{ptr @__tracepoint_cdns3_prepare_trb, !85, !"__tracepoint_cdns3_prepare_trb", i1 false, i1 false}
!85 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 427, i32 1}
!86 = !{ptr @__tracepoint_ptr_cdns3_prepare_trb, !85, !"__tracepoint_ptr_cdns3_prepare_trb", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_cdns3_prepare_trb, !85, !"__SCK__tp_func_cdns3_prepare_trb", i1 false, i1 false}
!88 = !{ptr @__tracepoint_cdns3_complete_trb, !89, !"__tracepoint_cdns3_complete_trb", i1 false, i1 false}
!89 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 432, i32 1}
!90 = !{ptr @__tracepoint_ptr_cdns3_complete_trb, !89, !"__tracepoint_ptr_cdns3_complete_trb", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_cdns3_complete_trb, !89, !"__SCK__tp_func_cdns3_complete_trb", i1 false, i1 false}
!92 = !{ptr @__tracepoint_cdns3_ring, !93, !"__tracepoint_cdns3_ring", i1 false, i1 false}
!93 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 459, i32 1}
!94 = !{ptr @__tracepoint_ptr_cdns3_ring, !93, !"__tracepoint_ptr_cdns3_ring", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_cdns3_ring, !93, !"__SCK__tp_func_cdns3_ring", i1 false, i1 false}
!96 = !{ptr @__tracepoint_cdns3_gadget_ep_enable, !97, !"__tracepoint_cdns3_gadget_ep_enable", i1 false, i1 false}
!97 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 510, i32 1}
!98 = !{ptr @__tracepoint_ptr_cdns3_gadget_ep_enable, !97, !"__tracepoint_ptr_cdns3_gadget_ep_enable", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_cdns3_gadget_ep_enable, !97, !"__SCK__tp_func_cdns3_gadget_ep_enable", i1 false, i1 false}
!100 = !{ptr @__tracepoint_cdns3_gadget_ep_disable, !101, !"__tracepoint_cdns3_gadget_ep_disable", i1 false, i1 false}
!101 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 515, i32 1}
!102 = !{ptr @__tracepoint_ptr_cdns3_gadget_ep_disable, !101, !"__tracepoint_ptr_cdns3_gadget_ep_disable", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_cdns3_gadget_ep_disable, !101, !"__SCK__tp_func_cdns3_gadget_ep_disable", i1 false, i1 false}
!104 = !{ptr @__tracepoint_cdns3_request_handled, !105, !"__tracepoint_cdns3_request_handled", i1 false, i1 false}
!105 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 552, i32 1}
!106 = !{ptr @__tracepoint_ptr_cdns3_request_handled, !105, !"__tracepoint_ptr_cdns3_request_handled", i1 false, i1 false}
!107 = !{ptr @__SCK__tp_func_cdns3_request_handled, !105, !"__SCK__tp_func_cdns3_request_handled", i1 false, i1 false}
!108 = !{ptr @event_class_cdns3_halt, !1, !"event_class_cdns3_halt", i1 false, i1 false}
!109 = !{ptr @event_cdns3_halt, !1, !"event_cdns3_halt", i1 false, i1 false}
!110 = !{ptr @__event_cdns3_halt, !1, !"__event_cdns3_halt", i1 false, i1 false}
!111 = !{ptr @event_class_cdns3_wa1, !5, !"event_class_cdns3_wa1", i1 false, i1 false}
!112 = !{ptr @event_cdns3_wa1, !5, !"event_cdns3_wa1", i1 false, i1 false}
!113 = !{ptr @__event_cdns3_wa1, !5, !"__event_cdns3_wa1", i1 false, i1 false}
!114 = !{ptr @event_class_cdns3_wa2, !9, !"event_class_cdns3_wa2", i1 false, i1 false}
!115 = !{ptr @event_cdns3_wa2, !9, !"event_cdns3_wa2", i1 false, i1 false}
!116 = !{ptr @__event_cdns3_wa2, !9, !"__event_cdns3_wa2", i1 false, i1 false}
!117 = !{ptr @event_class_cdns3_log_doorbell, !118, !"event_class_cdns3_log_doorbell", i1 false, i1 false}
!118 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 72, i32 1}
!119 = !{ptr @event_cdns3_doorbell_ep0, !13, !"event_cdns3_doorbell_ep0", i1 false, i1 false}
!120 = !{ptr @__event_cdns3_doorbell_ep0, !13, !"__event_cdns3_doorbell_ep0", i1 false, i1 false}
!121 = !{ptr @event_cdns3_doorbell_epx, !17, !"event_cdns3_doorbell_epx", i1 false, i1 false}
!122 = !{ptr @__event_cdns3_doorbell_epx, !17, !"__event_cdns3_doorbell_epx", i1 false, i1 false}
!123 = !{ptr @event_class_cdns3_log_usb_irq, !124, !"event_class_cdns3_log_usb_irq", i1 false, i1 false}
!124 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 97, i32 1}
!125 = !{ptr @event_cdns3_usb_irq, !21, !"event_cdns3_usb_irq", i1 false, i1 false}
!126 = !{ptr @__event_cdns3_usb_irq, !21, !"__event_cdns3_usb_irq", i1 false, i1 false}
!127 = !{ptr @event_class_cdns3_log_epx_irq, !128, !"event_class_cdns3_log_epx_irq", i1 false, i1 false}
!128 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 118, i32 1}
!129 = !{ptr @event_cdns3_epx_irq, !25, !"event_cdns3_epx_irq", i1 false, i1 false}
!130 = !{ptr @__event_cdns3_epx_irq, !25, !"__event_cdns3_epx_irq", i1 false, i1 false}
!131 = !{ptr @event_class_cdns3_log_ep0_irq, !132, !"event_class_cdns3_log_ep0_irq", i1 false, i1 false}
!132 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 150, i32 1}
!133 = !{ptr @event_cdns3_ep0_irq, !29, !"event_cdns3_ep0_irq", i1 false, i1 false}
!134 = !{ptr @__event_cdns3_ep0_irq, !29, !"__event_cdns3_ep0_irq", i1 false, i1 false}
!135 = !{ptr @event_class_cdns3_log_ctrl, !136, !"event_class_cdns3_log_ctrl", i1 false, i1 false}
!136 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 172, i32 1}
!137 = !{ptr @event_cdns3_ctrl_req, !33, !"event_cdns3_ctrl_req", i1 false, i1 false}
!138 = !{ptr @__event_cdns3_ctrl_req, !33, !"__event_cdns3_ctrl_req", i1 false, i1 false}
!139 = !{ptr @event_class_cdns3_log_request, !140, !"event_class_cdns3_log_request", i1 false, i1 false}
!140 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 202, i32 1}
!141 = !{ptr @event_cdns3_alloc_request, !37, !"event_cdns3_alloc_request", i1 false, i1 false}
!142 = !{ptr @__event_cdns3_alloc_request, !37, !"__event_cdns3_alloc_request", i1 false, i1 false}
!143 = !{ptr @event_cdns3_free_request, !41, !"event_cdns3_free_request", i1 false, i1 false}
!144 = !{ptr @__event_cdns3_free_request, !41, !"__event_cdns3_free_request", i1 false, i1 false}
!145 = !{ptr @event_cdns3_ep_queue, !45, !"event_cdns3_ep_queue", i1 false, i1 false}
!146 = !{ptr @__event_cdns3_ep_queue, !45, !"__event_cdns3_ep_queue", i1 false, i1 false}
!147 = !{ptr @event_cdns3_ep_dequeue, !49, !"event_cdns3_ep_dequeue", i1 false, i1 false}
!148 = !{ptr @__event_cdns3_ep_dequeue, !49, !"__event_cdns3_ep_dequeue", i1 false, i1 false}
!149 = !{ptr @event_cdns3_gadget_giveback, !53, !"event_cdns3_gadget_giveback", i1 false, i1 false}
!150 = !{ptr @__event_cdns3_gadget_giveback, !53, !"__event_cdns3_gadget_giveback", i1 false, i1 false}
!151 = !{ptr @event_class_cdns3_ep0_queue, !57, !"event_class_cdns3_ep0_queue", i1 false, i1 false}
!152 = !{ptr @event_cdns3_ep0_queue, !57, !"event_cdns3_ep0_queue", i1 false, i1 false}
!153 = !{ptr @__event_cdns3_ep0_queue, !57, !"__event_cdns3_ep0_queue", i1 false, i1 false}
!154 = !{ptr @event_class_cdns3_stream_split_transfer_len, !155, !"event_class_cdns3_stream_split_transfer_len", i1 false, i1 false}
!155 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 290, i32 1}
!156 = !{ptr @event_cdns3_stream_transfer_split, !61, !"event_cdns3_stream_transfer_split", i1 false, i1 false}
!157 = !{ptr @__event_cdns3_stream_transfer_split, !61, !"__event_cdns3_stream_transfer_split", i1 false, i1 false}
!158 = !{ptr @event_cdns3_stream_transfer_split_next_part, !65, !"event_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!159 = !{ptr @__event_cdns3_stream_transfer_split_next_part, !65, !"__event_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!160 = !{ptr @event_class_cdns3_log_aligned_request, !161, !"event_class_cdns3_log_aligned_request", i1 false, i1 false}
!161 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 323, i32 1}
!162 = !{ptr @event_cdns3_free_aligned_request, !69, !"event_cdns3_free_aligned_request", i1 false, i1 false}
!163 = !{ptr @__event_cdns3_free_aligned_request, !69, !"__event_cdns3_free_aligned_request", i1 false, i1 false}
!164 = !{ptr @event_cdns3_prepare_aligned_request, !73, !"event_cdns3_prepare_aligned_request", i1 false, i1 false}
!165 = !{ptr @__event_cdns3_prepare_aligned_request, !73, !"__event_cdns3_prepare_aligned_request", i1 false, i1 false}
!166 = !{ptr @event_class_cdns3_log_map_request, !167, !"event_class_cdns3_log_map_request", i1 false, i1 false}
!167 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 361, i32 1}
!168 = !{ptr @event_cdns3_map_request, !77, !"event_cdns3_map_request", i1 false, i1 false}
!169 = !{ptr @__event_cdns3_map_request, !77, !"__event_cdns3_map_request", i1 false, i1 false}
!170 = !{ptr @event_cdns3_mapped_request, !81, !"event_cdns3_mapped_request", i1 false, i1 false}
!171 = !{ptr @__event_cdns3_mapped_request, !81, !"__event_cdns3_mapped_request", i1 false, i1 false}
!172 = !{ptr @event_class_cdns3_log_trb, !173, !"event_class_cdns3_log_trb", i1 false, i1 false}
!173 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 389, i32 1}
!174 = !{ptr @event_cdns3_prepare_trb, !85, !"event_cdns3_prepare_trb", i1 false, i1 false}
!175 = !{ptr @__event_cdns3_prepare_trb, !85, !"__event_cdns3_prepare_trb", i1 false, i1 false}
!176 = !{ptr @event_cdns3_complete_trb, !89, !"event_cdns3_complete_trb", i1 false, i1 false}
!177 = !{ptr @__event_cdns3_complete_trb, !89, !"__event_cdns3_complete_trb", i1 false, i1 false}
!178 = !{ptr @event_class_cdns3_log_ring, !179, !"event_class_cdns3_log_ring", i1 false, i1 false}
!179 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 437, i32 1}
!180 = !{ptr @event_cdns3_ring, !93, !"event_cdns3_ring", i1 false, i1 false}
!181 = !{ptr @__event_cdns3_ring, !93, !"__event_cdns3_ring", i1 false, i1 false}
!182 = !{ptr @event_class_cdns3_log_ep, !183, !"event_class_cdns3_log_ep", i1 false, i1 false}
!183 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 464, i32 1}
!184 = !{ptr @event_cdns3_gadget_ep_enable, !97, !"event_cdns3_gadget_ep_enable", i1 false, i1 false}
!185 = !{ptr @__event_cdns3_gadget_ep_enable, !97, !"__event_cdns3_gadget_ep_enable", i1 false, i1 false}
!186 = !{ptr @event_cdns3_gadget_ep_disable, !101, !"event_cdns3_gadget_ep_disable", i1 false, i1 false}
!187 = !{ptr @__event_cdns3_gadget_ep_disable, !101, !"__event_cdns3_gadget_ep_disable", i1 false, i1 false}
!188 = !{ptr @event_class_cdns3_log_request_handled, !189, !"event_class_cdns3_log_request_handled", i1 false, i1 false}
!189 = !{!"../drivers/usb/cdns3/./cdns3-trace.h", i32 520, i32 1}
!190 = !{ptr @event_cdns3_request_handled, !105, !"event_cdns3_request_handled", i1 false, i1 false}
!191 = !{ptr @__event_cdns3_request_handled, !105, !"__event_cdns3_request_handled", i1 false, i1 false}
!192 = !{ptr @__bpf_trace_tp_map_cdns3_halt, !1, !"__bpf_trace_tp_map_cdns3_halt", i1 false, i1 false}
!193 = !{ptr @__bpf_trace_tp_map_cdns3_wa1, !5, !"__bpf_trace_tp_map_cdns3_wa1", i1 false, i1 false}
!194 = !{ptr @__bpf_trace_tp_map_cdns3_wa2, !9, !"__bpf_trace_tp_map_cdns3_wa2", i1 false, i1 false}
!195 = !{ptr @__bpf_trace_tp_map_cdns3_doorbell_ep0, !13, !"__bpf_trace_tp_map_cdns3_doorbell_ep0", i1 false, i1 false}
!196 = !{ptr @__bpf_trace_tp_map_cdns3_doorbell_epx, !17, !"__bpf_trace_tp_map_cdns3_doorbell_epx", i1 false, i1 false}
!197 = !{ptr @__bpf_trace_tp_map_cdns3_usb_irq, !21, !"__bpf_trace_tp_map_cdns3_usb_irq", i1 false, i1 false}
!198 = !{ptr @__bpf_trace_tp_map_cdns3_epx_irq, !25, !"__bpf_trace_tp_map_cdns3_epx_irq", i1 false, i1 false}
!199 = !{ptr @__bpf_trace_tp_map_cdns3_ep0_irq, !29, !"__bpf_trace_tp_map_cdns3_ep0_irq", i1 false, i1 false}
!200 = !{ptr @__bpf_trace_tp_map_cdns3_ctrl_req, !33, !"__bpf_trace_tp_map_cdns3_ctrl_req", i1 false, i1 false}
!201 = !{ptr @__bpf_trace_tp_map_cdns3_alloc_request, !37, !"__bpf_trace_tp_map_cdns3_alloc_request", i1 false, i1 false}
!202 = !{ptr @__bpf_trace_tp_map_cdns3_free_request, !41, !"__bpf_trace_tp_map_cdns3_free_request", i1 false, i1 false}
!203 = !{ptr @__bpf_trace_tp_map_cdns3_ep_queue, !45, !"__bpf_trace_tp_map_cdns3_ep_queue", i1 false, i1 false}
!204 = !{ptr @__bpf_trace_tp_map_cdns3_ep_dequeue, !49, !"__bpf_trace_tp_map_cdns3_ep_dequeue", i1 false, i1 false}
!205 = !{ptr @__bpf_trace_tp_map_cdns3_gadget_giveback, !53, !"__bpf_trace_tp_map_cdns3_gadget_giveback", i1 false, i1 false}
!206 = !{ptr @__bpf_trace_tp_map_cdns3_ep0_queue, !57, !"__bpf_trace_tp_map_cdns3_ep0_queue", i1 false, i1 false}
!207 = !{ptr @__bpf_trace_tp_map_cdns3_stream_transfer_split, !61, !"__bpf_trace_tp_map_cdns3_stream_transfer_split", i1 false, i1 false}
!208 = !{ptr @__bpf_trace_tp_map_cdns3_stream_transfer_split_next_part, !65, !"__bpf_trace_tp_map_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!209 = !{ptr @__bpf_trace_tp_map_cdns3_free_aligned_request, !69, !"__bpf_trace_tp_map_cdns3_free_aligned_request", i1 false, i1 false}
!210 = !{ptr @__bpf_trace_tp_map_cdns3_prepare_aligned_request, !73, !"__bpf_trace_tp_map_cdns3_prepare_aligned_request", i1 false, i1 false}
!211 = !{ptr @__bpf_trace_tp_map_cdns3_map_request, !77, !"__bpf_trace_tp_map_cdns3_map_request", i1 false, i1 false}
!212 = !{ptr @__bpf_trace_tp_map_cdns3_mapped_request, !81, !"__bpf_trace_tp_map_cdns3_mapped_request", i1 false, i1 false}
!213 = !{ptr @__bpf_trace_tp_map_cdns3_prepare_trb, !85, !"__bpf_trace_tp_map_cdns3_prepare_trb", i1 false, i1 false}
!214 = !{ptr @__bpf_trace_tp_map_cdns3_complete_trb, !89, !"__bpf_trace_tp_map_cdns3_complete_trb", i1 false, i1 false}
!215 = !{ptr @__bpf_trace_tp_map_cdns3_ring, !93, !"__bpf_trace_tp_map_cdns3_ring", i1 false, i1 false}
!216 = !{ptr @__bpf_trace_tp_map_cdns3_gadget_ep_enable, !97, !"__bpf_trace_tp_map_cdns3_gadget_ep_enable", i1 false, i1 false}
!217 = !{ptr @__bpf_trace_tp_map_cdns3_gadget_ep_disable, !101, !"__bpf_trace_tp_map_cdns3_gadget_ep_disable", i1 false, i1 false}
!218 = !{ptr @__bpf_trace_tp_map_cdns3_request_handled, !105, !"__bpf_trace_tp_map_cdns3_request_handled", i1 false, i1 false}
!219 = !{ptr @__tpstrtab_cdns3_halt, !1, !"__tpstrtab_cdns3_halt", i1 false, i1 false}
!220 = !{ptr @__tpstrtab_cdns3_wa1, !5, !"__tpstrtab_cdns3_wa1", i1 false, i1 false}
!221 = !{ptr @__tpstrtab_cdns3_wa2, !9, !"__tpstrtab_cdns3_wa2", i1 false, i1 false}
!222 = !{ptr @__tpstrtab_cdns3_doorbell_ep0, !13, !"__tpstrtab_cdns3_doorbell_ep0", i1 false, i1 false}
!223 = !{ptr @__tpstrtab_cdns3_doorbell_epx, !17, !"__tpstrtab_cdns3_doorbell_epx", i1 false, i1 false}
!224 = !{ptr @__tpstrtab_cdns3_usb_irq, !21, !"__tpstrtab_cdns3_usb_irq", i1 false, i1 false}
!225 = !{ptr @__tpstrtab_cdns3_epx_irq, !25, !"__tpstrtab_cdns3_epx_irq", i1 false, i1 false}
!226 = !{ptr @__tpstrtab_cdns3_ep0_irq, !29, !"__tpstrtab_cdns3_ep0_irq", i1 false, i1 false}
!227 = !{ptr @__tpstrtab_cdns3_ctrl_req, !33, !"__tpstrtab_cdns3_ctrl_req", i1 false, i1 false}
!228 = !{ptr @__tpstrtab_cdns3_alloc_request, !37, !"__tpstrtab_cdns3_alloc_request", i1 false, i1 false}
!229 = !{ptr @__tpstrtab_cdns3_free_request, !41, !"__tpstrtab_cdns3_free_request", i1 false, i1 false}
!230 = !{ptr @__tpstrtab_cdns3_ep_queue, !45, !"__tpstrtab_cdns3_ep_queue", i1 false, i1 false}
!231 = !{ptr @__tpstrtab_cdns3_ep_dequeue, !49, !"__tpstrtab_cdns3_ep_dequeue", i1 false, i1 false}
!232 = !{ptr @__tpstrtab_cdns3_gadget_giveback, !53, !"__tpstrtab_cdns3_gadget_giveback", i1 false, i1 false}
!233 = !{ptr @__tpstrtab_cdns3_ep0_queue, !57, !"__tpstrtab_cdns3_ep0_queue", i1 false, i1 false}
!234 = !{ptr @__tpstrtab_cdns3_stream_transfer_split, !61, !"__tpstrtab_cdns3_stream_transfer_split", i1 false, i1 false}
!235 = !{ptr @__tpstrtab_cdns3_stream_transfer_split_next_part, !65, !"__tpstrtab_cdns3_stream_transfer_split_next_part", i1 false, i1 false}
!236 = !{ptr @__tpstrtab_cdns3_free_aligned_request, !69, !"__tpstrtab_cdns3_free_aligned_request", i1 false, i1 false}
!237 = !{ptr @__tpstrtab_cdns3_prepare_aligned_request, !73, !"__tpstrtab_cdns3_prepare_aligned_request", i1 false, i1 false}
!238 = !{ptr @__tpstrtab_cdns3_map_request, !77, !"__tpstrtab_cdns3_map_request", i1 false, i1 false}
!239 = !{ptr @__tpstrtab_cdns3_mapped_request, !81, !"__tpstrtab_cdns3_mapped_request", i1 false, i1 false}
!240 = !{ptr @__tpstrtab_cdns3_prepare_trb, !85, !"__tpstrtab_cdns3_prepare_trb", i1 false, i1 false}
!241 = !{ptr @__tpstrtab_cdns3_complete_trb, !89, !"__tpstrtab_cdns3_complete_trb", i1 false, i1 false}
!242 = !{ptr @__tpstrtab_cdns3_ring, !93, !"__tpstrtab_cdns3_ring", i1 false, i1 false}
!243 = !{ptr @__tpstrtab_cdns3_gadget_ep_enable, !97, !"__tpstrtab_cdns3_gadget_ep_enable", i1 false, i1 false}
!244 = !{ptr @__tpstrtab_cdns3_gadget_ep_disable, !101, !"__tpstrtab_cdns3_gadget_ep_disable", i1 false, i1 false}
!245 = !{ptr @__tpstrtab_cdns3_request_handled, !105, !"__tpstrtab_cdns3_request_handled", i1 false, i1 false}
!246 = !{ptr @str__cdns3__trace_system_name, !247, !"str__cdns3__trace_system_name", i1 false, i1 false}
!247 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!248 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @trace_event_fields_cdns3_halt, !1, !"trace_event_fields_cdns3_halt", i1 false, i1 false}
!255 = !{ptr @trace_event_type_funcs_cdns3_halt, !1, !"trace_event_type_funcs_cdns3_halt", i1 false, i1 false}
!256 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @print_fmt_cdns3_halt, !1, !"print_fmt_cdns3_halt", i1 false, i1 false}
!262 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @trace_event_fields_cdns3_wa1, !5, !"trace_event_fields_cdns3_wa1", i1 false, i1 false}
!265 = !{ptr @trace_event_type_funcs_cdns3_wa1, !5, !"trace_event_type_funcs_cdns3_wa1", i1 false, i1 false}
!266 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @print_fmt_cdns3_wa1, !5, !"print_fmt_cdns3_wa1", i1 false, i1 false}
!268 = !{ptr @trace_event_fields_cdns3_wa2, !9, !"trace_event_fields_cdns3_wa2", i1 false, i1 false}
!269 = !{ptr @trace_event_type_funcs_cdns3_wa2, !9, !"trace_event_type_funcs_cdns3_wa2", i1 false, i1 false}
!270 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @print_fmt_cdns3_wa2, !9, !"print_fmt_cdns3_wa2", i1 false, i1 false}
!272 = !{ptr @.str.15, !118, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.16, !118, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @trace_event_fields_cdns3_log_doorbell, !118, !"trace_event_fields_cdns3_log_doorbell", i1 false, i1 false}
!275 = !{ptr @trace_event_type_funcs_cdns3_log_doorbell, !118, !"trace_event_type_funcs_cdns3_log_doorbell", i1 false, i1 false}
!276 = !{ptr @.str.17, !118, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @print_fmt_cdns3_log_doorbell, !118, !"print_fmt_cdns3_log_doorbell", i1 false, i1 false}
!278 = !{ptr @.str.18, !124, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.19, !124, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.20, !124, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.21, !124, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @trace_event_fields_cdns3_log_usb_irq, !124, !"trace_event_fields_cdns3_log_usb_irq", i1 false, i1 false}
!283 = !{ptr @trace_event_type_funcs_cdns3_log_usb_irq, !124, !"trace_event_type_funcs_cdns3_log_usb_irq", i1 false, i1 false}
!284 = !{ptr @.str.22, !124, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.23, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 21, i32 21}
!287 = !{ptr @.str.24, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 24, i32 29}
!289 = !{ptr @.str.25, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 28, i32 29}
!291 = !{ptr @.str.26, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 30, i32 29}
!293 = !{ptr @.str.27, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 32, i32 29}
!295 = !{ptr @.str.28, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 34, i32 29}
!297 = !{ptr @.str.29, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 36, i32 29}
!299 = !{ptr @.str.30, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 38, i32 29}
!301 = !{ptr @.str.31, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 40, i32 29}
!303 = !{ptr @.str.32, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 42, i32 29}
!305 = !{ptr @.str.33, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 44, i32 29}
!307 = !{ptr @.str.34, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 46, i32 29}
!309 = !{ptr @print_fmt_cdns3_log_usb_irq, !124, !"print_fmt_cdns3_log_usb_irq", i1 false, i1 false}
!310 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @trace_event_fields_cdns3_log_epx_irq, !128, !"trace_event_fields_cdns3_log_epx_irq", i1 false, i1 false}
!315 = !{ptr @trace_event_type_funcs_cdns3_log_epx_irq, !128, !"trace_event_type_funcs_cdns3_log_epx_irq", i1 false, i1 false}
!316 = !{ptr @.str.39, !128, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.40, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 57, i32 21}
!319 = !{ptr @.str.41, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 60, i32 29}
!321 = !{ptr @.str.42, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 62, i32 29}
!323 = !{ptr @.str.43, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 64, i32 29}
!325 = !{ptr @.str.44, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 66, i32 29}
!327 = !{ptr @.str.45, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 68, i32 29}
!329 = !{ptr @.str.46, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 70, i32 29}
!331 = distinct !{null, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 72, i32 29}
!333 = !{ptr @.str.48, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 74, i32 29}
!335 = !{ptr @.str.49, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 76, i32 29}
!337 = !{ptr @.str.50, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 78, i32 29}
!339 = distinct !{null, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 80, i32 29}
!341 = distinct !{null, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 82, i32 29}
!343 = !{ptr @.str.53, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 84, i32 29}
!345 = !{ptr @print_fmt_cdns3_log_epx_irq, !128, !"print_fmt_cdns3_log_epx_irq", i1 false, i1 false}
!346 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @trace_event_fields_cdns3_log_ep0_irq, !132, !"trace_event_fields_cdns3_log_ep0_irq", i1 false, i1 false}
!349 = !{ptr @trace_event_type_funcs_cdns3_log_ep0_irq, !132, !"trace_event_type_funcs_cdns3_log_ep0_irq", i1 false, i1 false}
!350 = !{ptr @.str.56, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 101, i32 14}
!352 = !{ptr @.str.57, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 101, i32 24}
!354 = !{ptr @print_fmt_cdns3_log_ep0_irq, !132, !"print_fmt_cdns3_log_ep0_irq", i1 false, i1 false}
!355 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @trace_event_fields_cdns3_log_ctrl, !136, !"trace_event_fields_cdns3_log_ctrl", i1 false, i1 false}
!362 = !{ptr @trace_event_type_funcs_cdns3_log_ctrl, !136, !"trace_event_type_funcs_cdns3_log_ctrl", i1 false, i1 false}
!363 = !{ptr @print_fmt_cdns3_log_ctrl, !136, !"print_fmt_cdns3_log_ctrl", i1 false, i1 false}
!364 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.76, !140, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @trace_event_fields_cdns3_log_request, !140, !"trace_event_fields_cdns3_log_request", i1 false, i1 false}
!380 = !{ptr @trace_event_type_funcs_cdns3_log_request, !140, !"trace_event_type_funcs_cdns3_log_request", i1 false, i1 false}
!381 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.81, !140, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.82, !140, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.84, !140, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @print_fmt_cdns3_log_request, !140, !"print_fmt_cdns3_log_request", i1 false, i1 false}
!389 = !{ptr @.str.86, !57, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @trace_event_fields_cdns3_ep0_queue, !57, !"trace_event_fields_cdns3_ep0_queue", i1 false, i1 false}
!391 = !{ptr @trace_event_type_funcs_cdns3_ep0_queue, !57, !"trace_event_type_funcs_cdns3_ep0_queue", i1 false, i1 false}
!392 = !{ptr @.str.87, !57, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.88, !57, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.89, !57, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @print_fmt_cdns3_ep0_queue, !57, !"print_fmt_cdns3_ep0_queue", i1 false, i1 false}
!396 = !{ptr @trace_event_fields_cdns3_stream_split_transfer_len, !155, !"trace_event_fields_cdns3_stream_split_transfer_len", i1 false, i1 false}
!397 = !{ptr @trace_event_type_funcs_cdns3_stream_split_transfer_len, !155, !"trace_event_type_funcs_cdns3_stream_split_transfer_len", i1 false, i1 false}
!398 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @print_fmt_cdns3_stream_split_transfer_len, !155, !"print_fmt_cdns3_stream_split_transfer_len", i1 false, i1 false}
!400 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.92, !161, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.93, !161, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.94, !161, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.96, !161, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @trace_event_fields_cdns3_log_aligned_request, !161, !"trace_event_fields_cdns3_log_aligned_request", i1 false, i1 false}
!407 = !{ptr @trace_event_type_funcs_cdns3_log_aligned_request, !161, !"trace_event_type_funcs_cdns3_log_aligned_request", i1 false, i1 false}
!408 = !{ptr @.str.97, !161, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @print_fmt_cdns3_log_aligned_request, !161, !"print_fmt_cdns3_log_aligned_request", i1 false, i1 false}
!410 = !{ptr @trace_event_fields_cdns3_log_map_request, !167, !"trace_event_fields_cdns3_log_map_request", i1 false, i1 false}
!411 = !{ptr @trace_event_type_funcs_cdns3_log_map_request, !167, !"trace_event_type_funcs_cdns3_log_map_request", i1 false, i1 false}
!412 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @print_fmt_cdns3_log_map_request, !167, !"print_fmt_cdns3_log_map_request", i1 false, i1 false}
!414 = !{ptr @.str.99, !173, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.100, !173, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.102, !173, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.103, !173, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.104, !173, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @trace_event_fields_cdns3_log_trb, !173, !"trace_event_fields_cdns3_log_trb", i1 false, i1 false}
!421 = !{ptr @trace_event_type_funcs_cdns3_log_trb, !173, !"trace_event_type_funcs_cdns3_log_trb", i1 false, i1 false}
!422 = !{ptr @.str.105, !173, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.106, !173, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.107, !173, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.109, !173, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.110, !173, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.111, !173, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.112, !173, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.113, !173, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.114, !173, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.115, !173, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @print_fmt_cdns3_log_trb, !173, !"print_fmt_cdns3_log_trb", i1 false, i1 false}
!434 = !{ptr @.str.116, !179, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.117, !179, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.118, !179, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @trace_event_fields_cdns3_log_ring, !179, !"trace_event_fields_cdns3_log_ring", i1 false, i1 false}
!438 = !{ptr @trace_event_type_funcs_cdns3_log_ring, !179, !"trace_event_type_funcs_cdns3_log_ring", i1 false, i1 false}
!439 = !{ptr @.str.119, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 122, i32 28}
!441 = !{ptr @.str.120, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 125, i32 10}
!443 = !{ptr @.str.121, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 131, i32 10}
!445 = !{ptr @.str.122, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 136, i32 10}
!447 = distinct !{null, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 143, i32 22}
!449 = !{ptr @.str.124, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/usb/cdns3/cdns3-debug.h", i32 151, i32 4}
!451 = !{ptr @print_fmt_cdns3_log_ring, !179, !"print_fmt_cdns3_log_ring", i1 false, i1 false}
!452 = !{ptr @.str.125, !183, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @.str.126, !183, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @.str.127, !183, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.128, !183, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.129, !183, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.130, !183, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @trace_event_fields_cdns3_log_ep, !183, !"trace_event_fields_cdns3_log_ep", i1 false, i1 false}
!459 = !{ptr @trace_event_type_funcs_cdns3_log_ep, !183, !"trace_event_type_funcs_cdns3_log_ep", i1 false, i1 false}
!460 = !{ptr @.str.131, !183, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.132, !183, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.133, !183, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.134, !183, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.135, !183, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.136, !183, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.137, !183, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.138, !183, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @.str.139, !183, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.140, !183, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @.str.141, !183, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @print_fmt_cdns3_log_ep, !183, !"print_fmt_cdns3_log_ep", i1 false, i1 false}
!472 = !{ptr @.str.142, !189, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.143, !189, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @.str.144, !189, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @.str.145, !189, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @.str.146, !189, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @trace_event_fields_cdns3_log_request_handled, !189, !"trace_event_fields_cdns3_log_request_handled", i1 false, i1 false}
!478 = !{ptr @trace_event_type_funcs_cdns3_log_request_handled, !189, !"trace_event_type_funcs_cdns3_log_request_handled", i1 false, i1 false}
!479 = !{ptr @.str.147, !189, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @.str.148, !189, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @print_fmt_cdns3_log_request_handled, !189, !"print_fmt_cdns3_log_request_handled", i1 false, i1 false}
!482 = !{!"sp"}
!483 = !{i32 1, !"wchar_size", i32 2}
!484 = !{i32 1, !"min_enum_size", i32 4}
!485 = !{i32 8, !"branch-target-enforcement", i32 0}
!486 = !{i32 8, !"sign-return-address", i32 0}
!487 = !{i32 8, !"sign-return-address-all", i32 0}
!488 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!489 = !{i32 7, !"uwtable", i32 1}
!490 = !{i32 7, !"frame-pointer", i32 2}
!491 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!492 = !{!"branch_weights", i32 2000, i32 1}
!493 = !{!"branch_weights", i32 1, i32 2000}
!494 = !{!"auto-init"}
!495 = !{i64 6064161}
!496 = !{i64 2157192280}
!497 = !{i64 2157192559}
!498 = !{i64 2157441486}
!499 = !{i64 2157441765}
