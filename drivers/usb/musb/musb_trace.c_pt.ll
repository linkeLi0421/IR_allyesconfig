; ModuleID = '/llk/IR_all_yes/drivers/usb/musb/musb_trace.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.107, %struct.trace_event, ptr, ptr, %union.anon.108, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.107 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.108 = type { ptr }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.trace_event_raw_musb_log = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_musb_state = type { %struct.trace_entry, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_musb_regb = type { %struct.trace_entry, ptr, ptr, i32, i8, [0 x i8] }
%struct.trace_event_raw_musb_regw = type { %struct.trace_entry, ptr, ptr, i32, i16, [0 x i8] }
%struct.trace_event_raw_musb_regl = type { %struct.trace_entry, ptr, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_musb_isr = type { %struct.trace_entry, i32, i8, i16, i16, [0 x i8] }
%struct.trace_event_raw_musb_urb = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.trace_event_raw_musb_req = type { %struct.trace_entry, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.musb_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, i8, i8, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_musb_log = internal constant [9 x i8] c"musb_log\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_log = dso_local global %struct.static_call_key { ptr @__traceiter_musb_log }, align 4
@__tracepoint_musb_log = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_log, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_log, ptr null, ptr @__traceiter_musb_log, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_log = internal constant ptr @__tracepoint_musb_log, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_state = internal constant [11 x i8] c"musb_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_state = dso_local global %struct.static_call_key { ptr @__traceiter_musb_state }, align 4
@__tracepoint_musb_state = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_state, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_state, ptr null, ptr @__traceiter_musb_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_state = internal constant ptr @__tracepoint_musb_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_readb = internal constant [11 x i8] c"musb_readb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_readb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_readb }, align 4
@__tracepoint_musb_readb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_readb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_readb, ptr null, ptr @__traceiter_musb_readb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_readb = internal constant ptr @__tracepoint_musb_readb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_writeb = internal constant [12 x i8] c"musb_writeb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_writeb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_writeb }, align 4
@__tracepoint_musb_writeb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_writeb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_writeb, ptr null, ptr @__traceiter_musb_writeb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_writeb = internal constant ptr @__tracepoint_musb_writeb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_readw = internal constant [11 x i8] c"musb_readw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_readw = dso_local global %struct.static_call_key { ptr @__traceiter_musb_readw }, align 4
@__tracepoint_musb_readw = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_readw, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_readw, ptr null, ptr @__traceiter_musb_readw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_readw = internal constant ptr @__tracepoint_musb_readw, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_writew = internal constant [12 x i8] c"musb_writew\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_writew = dso_local global %struct.static_call_key { ptr @__traceiter_musb_writew }, align 4
@__tracepoint_musb_writew = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_writew, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_writew, ptr null, ptr @__traceiter_musb_writew, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_writew = internal constant ptr @__tracepoint_musb_writew, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_readl = internal constant [11 x i8] c"musb_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_readl = dso_local global %struct.static_call_key { ptr @__traceiter_musb_readl }, align 4
@__tracepoint_musb_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_readl, ptr null, ptr @__traceiter_musb_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_readl = internal constant ptr @__tracepoint_musb_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_writel = internal constant [12 x i8] c"musb_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_writel = dso_local global %struct.static_call_key { ptr @__traceiter_musb_writel }, align 4
@__tracepoint_musb_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_writel, ptr null, ptr @__traceiter_musb_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_writel = internal constant ptr @__tracepoint_musb_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_isr = internal constant [9 x i8] c"musb_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_isr = dso_local global %struct.static_call_key { ptr @__traceiter_musb_isr }, align 4
@__tracepoint_musb_isr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_isr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_isr, ptr null, ptr @__traceiter_musb_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_isr = internal constant ptr @__tracepoint_musb_isr, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_start = internal constant [15 x i8] c"musb_urb_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_start = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_start }, align 4
@__tracepoint_musb_urb_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_urb_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_urb_start, ptr null, ptr @__traceiter_musb_urb_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_start = internal constant ptr @__tracepoint_musb_urb_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_gb = internal constant [12 x i8] c"musb_urb_gb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_gb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_gb }, align 4
@__tracepoint_musb_urb_gb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_urb_gb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_urb_gb, ptr null, ptr @__traceiter_musb_urb_gb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_gb = internal constant ptr @__tracepoint_musb_urb_gb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_rx = internal constant [12 x i8] c"musb_urb_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_rx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_rx }, align 4
@__tracepoint_musb_urb_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_urb_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_urb_rx, ptr null, ptr @__traceiter_musb_urb_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_rx = internal constant ptr @__tracepoint_musb_urb_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_tx = internal constant [12 x i8] c"musb_urb_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_tx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_tx }, align 4
@__tracepoint_musb_urb_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_urb_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_urb_tx, ptr null, ptr @__traceiter_musb_urb_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_tx = internal constant ptr @__tracepoint_musb_urb_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_enq = internal constant [13 x i8] c"musb_urb_enq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_enq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_enq }, align 4
@__tracepoint_musb_urb_enq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_urb_enq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_urb_enq, ptr null, ptr @__traceiter_musb_urb_enq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_enq = internal constant ptr @__tracepoint_musb_urb_enq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_deq = internal constant [13 x i8] c"musb_urb_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_deq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_deq }, align 4
@__tracepoint_musb_urb_deq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_urb_deq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_urb_deq, ptr null, ptr @__traceiter_musb_urb_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_deq = internal constant ptr @__tracepoint_musb_urb_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_gb = internal constant [12 x i8] c"musb_req_gb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_gb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_gb }, align 4
@__tracepoint_musb_req_gb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_gb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_gb, ptr null, ptr @__traceiter_musb_req_gb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_gb = internal constant ptr @__tracepoint_musb_req_gb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_tx = internal constant [12 x i8] c"musb_req_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_tx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_tx }, align 4
@__tracepoint_musb_req_tx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_tx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_tx, ptr null, ptr @__traceiter_musb_req_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_tx = internal constant ptr @__tracepoint_musb_req_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_rx = internal constant [12 x i8] c"musb_req_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_rx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_rx }, align 4
@__tracepoint_musb_req_rx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_rx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_rx, ptr null, ptr @__traceiter_musb_req_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_rx = internal constant ptr @__tracepoint_musb_req_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_alloc = internal constant [15 x i8] c"musb_req_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_alloc }, align 4
@__tracepoint_musb_req_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_alloc, ptr null, ptr @__traceiter_musb_req_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_alloc = internal constant ptr @__tracepoint_musb_req_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_free = internal constant [14 x i8] c"musb_req_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_free = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_free }, align 4
@__tracepoint_musb_req_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_free, ptr null, ptr @__traceiter_musb_req_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_free = internal constant ptr @__tracepoint_musb_req_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_start = internal constant [15 x i8] c"musb_req_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_start = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_start }, align 4
@__tracepoint_musb_req_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_start, ptr null, ptr @__traceiter_musb_req_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_start = internal constant ptr @__tracepoint_musb_req_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_enq = internal constant [13 x i8] c"musb_req_enq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_enq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_enq }, align 4
@__tracepoint_musb_req_enq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_enq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_enq, ptr null, ptr @__traceiter_musb_req_enq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_enq = internal constant ptr @__tracepoint_musb_req_enq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_deq = internal constant [13 x i8] c"musb_req_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_deq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_deq }, align 4
@__tracepoint_musb_req_deq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_musb_req_deq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_musb_req_deq, ptr null, ptr @__traceiter_musb_req_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_deq = internal constant ptr @__tracepoint_musb_req_deq, section "__tracepoints_ptrs", align 4
@str__musb__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"musb\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_musb_log = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_musb_log = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_log, ptr @perf_trace_musb_log, ptr @trace_event_reg, ptr @trace_event_fields_musb_log, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_log, i64 24), ptr getelementptr (i8, ptr @event_class_musb_log, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_log = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_log, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_log = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22%s: %s\22, __get_str(name), __get_str(msg)\00", [54 x i8] zeroinitializer }, align 32
@event_musb_log = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_log, %union.anon.107 { ptr @__tracepoint_musb_log }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_log }, ptr @print_fmt_musb_log, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_log = internal global ptr @event_musb_log, section "_ftrace_events", align 4
@trace_event_fields_musb_state = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.105 { %struct.anon.106 { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_musb_state = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_state, ptr @perf_trace_musb_state, ptr @trace_event_reg, ptr @trace_event_fields_musb_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_state, i64 24), ptr getelementptr (i8, ptr @event_class_musb_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_state = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_state, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_state = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22%s: devctl: %02x %s\22, __get_str(name), REC->devctl, __get_str(desc)\00", [59 x i8] zeroinitializer }, align 32
@event_musb_state = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_state, %union.anon.107 { ptr @__tracepoint_musb_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_state }, ptr @print_fmt_musb_state, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_state = internal global ptr @event_musb_state, section "_ftrace_events", align 4
@trace_event_fields_musb_regb = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.105 { %struct.anon.106 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.105 { %struct.anon.106 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.105 { %struct.anon.106 { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_musb_regb = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_regb, ptr @perf_trace_musb_regb, ptr @trace_event_reg, ptr @trace_event_fields_musb_regb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_regb, i64 24), ptr getelementptr (i8, ptr @event_class_musb_regb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_regb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_regb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_regb = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22%pS: %p + %04x: %02x\22, REC->caller, REC->addr, REC->offset, REC->data\00", [57 x i8] zeroinitializer }, align 32
@event_musb_readb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regb, %union.anon.107 { ptr @__tracepoint_musb_readb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regb }, ptr @print_fmt_musb_regb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_readb = internal global ptr @event_musb_readb, section "_ftrace_events", align 4
@event_musb_writeb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regb, %union.anon.107 { ptr @__tracepoint_musb_writeb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regb }, ptr @print_fmt_musb_regb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_writeb = internal global ptr @event_musb_writeb, section "_ftrace_events", align 4
@trace_event_fields_musb_regw = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.105 { %struct.anon.106 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.105 { %struct.anon.106 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.105 { %struct.anon.106 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_musb_regw = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_regw, ptr @perf_trace_musb_regw, ptr @trace_event_reg, ptr @trace_event_fields_musb_regw, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_regw, i64 24), ptr getelementptr (i8, ptr @event_class_musb_regw, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_regw = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_regw, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_regw = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22%pS: %p + %04x: %04x\22, REC->caller, REC->addr, REC->offset, REC->data\00", [57 x i8] zeroinitializer }, align 32
@event_musb_readw = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regw, %union.anon.107 { ptr @__tracepoint_musb_readw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regw }, ptr @print_fmt_musb_regw, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_readw = internal global ptr @event_musb_readw, section "_ftrace_events", align 4
@event_musb_writew = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regw, %union.anon.107 { ptr @__tracepoint_musb_writew }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regw }, ptr @print_fmt_musb_regw, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_writew = internal global ptr @event_musb_writew, section "_ftrace_events", align 4
@trace_event_fields_musb_regl = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.105 { %struct.anon.106 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.105 { %struct.anon.106 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.105 { %struct.anon.106 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_musb_regl = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_regl, ptr @perf_trace_musb_regl, ptr @trace_event_reg, ptr @trace_event_fields_musb_regl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_regl, i64 24), ptr getelementptr (i8, ptr @event_class_musb_regl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_regl = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_regl, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_regl = internal global { [71 x i8], [57 x i8] } { [71 x i8] c"\22%pS: %p + %04x: %08x\22, REC->caller, REC->addr, REC->offset, REC->data\00", [57 x i8] zeroinitializer }, align 32
@event_musb_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regl, %union.anon.107 { ptr @__tracepoint_musb_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regl }, ptr @print_fmt_musb_regl, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_readl = internal global ptr @event_musb_readl, section "_ftrace_events", align 4
@event_musb_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regl, %union.anon.107 { ptr @__tracepoint_musb_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regl }, ptr @print_fmt_musb_regl, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_writel = internal global ptr @event_musb_writel, section "_ftrace_events", align 4
@trace_event_fields_musb_isr = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.105 { %struct.anon.106 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.105 { %struct.anon.106 { ptr @.str.22, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.105 { %struct.anon.106 { ptr @.str.23, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_musb_isr = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_isr, ptr @perf_trace_musb_isr, ptr @trace_event_reg, ptr @trace_event_fields_musb_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_isr, i64 24), ptr getelementptr (i8, ptr @event_class_musb_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_isr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_isr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_isr = internal global { [90 x i8], [38 x i8] } { [90 x i8] c"\22%s: usb %02x, tx %04x, rx %04x\22, __get_str(name), REC->int_usb, REC->int_tx, REC->int_rx\00", [38 x i8] zeroinitializer }, align 32
@event_musb_isr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_isr, %union.anon.107 { ptr @__tracepoint_musb_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_isr }, ptr @print_fmt_musb_isr, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_isr = internal global ptr @event_musb_isr, section "_ftrace_events", align 4
@trace_event_fields_musb_urb = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.105 { %struct.anon.106 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.105 { %struct.anon.106 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.105 { %struct.anon.106 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.105 { %struct.anon.106 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.105 { %struct.anon.106 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_musb_urb = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_urb, ptr @perf_trace_musb_urb, ptr @trace_event_reg, ptr @trace_event_fields_musb_urb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_urb, i64 24), ptr getelementptr (i8, ptr @event_class_musb_urb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_urb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_urb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_urb = internal global { [233 x i8], [55 x i8] } { [233 x i8] c"\22%s: %p, dev%d ep%d%s, flag 0x%x, len %d/%d, status %d\22, __get_str(name), REC->urb, (((REC->pipe) >> 8) & 0x7f), (((REC->pipe) >> 15) & 0xf), ((REC->pipe) & 0x80) ? \22in\22 : \22out\22, REC->flag, REC->actual_len, REC->buf_len, REC->status\00", [55 x i8] zeroinitializer }, align 32
@event_musb_urb_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.107 { ptr @__tracepoint_musb_urb_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_urb_start = internal global ptr @event_musb_urb_start, section "_ftrace_events", align 4
@event_musb_urb_gb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.107 { ptr @__tracepoint_musb_urb_gb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_urb_gb = internal global ptr @event_musb_urb_gb, section "_ftrace_events", align 4
@event_musb_urb_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.107 { ptr @__tracepoint_musb_urb_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_urb_rx = internal global ptr @event_musb_urb_rx, section "_ftrace_events", align 4
@event_musb_urb_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.107 { ptr @__tracepoint_musb_urb_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_urb_tx = internal global ptr @event_musb_urb_tx, section "_ftrace_events", align 4
@event_musb_urb_enq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.107 { ptr @__tracepoint_musb_urb_enq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_urb_enq = internal global ptr @event_musb_urb_enq, section "_ftrace_events", align 4
@event_musb_urb_deq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.107 { ptr @__tracepoint_musb_urb_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_urb_deq = internal global ptr @event_musb_urb_deq, section "_ftrace_events", align 4
@trace_event_fields_musb_req = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.105 { %struct.anon.106 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.105 { %struct.anon.106 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.105 { %struct.anon.106 { ptr @.str.39, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.105 { %struct.anon.106 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.105 { %struct.anon.106 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_musb_req = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_req, ptr @perf_trace_musb_req, ptr @trace_event_reg, ptr @trace_event_fields_musb_req, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_req, i64 24), ptr getelementptr (i8, ptr @event_class_musb_req, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_req = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_musb_req, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_musb_req = internal global { [228 x i8], [60 x i8] } { [228 x i8] c"\22%p, ep%d %s, %s%s%s, len %d/%d, status %d\22, REC->req, REC->epnum, REC->is_tx ? \22tx/IN\22 : \22rx/OUT\22, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22I\22 : \22i\22, REC->actual_len, REC->buf_len, REC->status\00", [60 x i8] zeroinitializer }, align 32
@event_musb_req_gb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_gb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_gb = internal global ptr @event_musb_req_gb, section "_ftrace_events", align 4
@event_musb_req_tx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_tx = internal global ptr @event_musb_req_tx, section "_ftrace_events", align 4
@event_musb_req_rx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_rx = internal global ptr @event_musb_req_rx, section "_ftrace_events", align 4
@event_musb_req_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_alloc = internal global ptr @event_musb_req_alloc, section "_ftrace_events", align 4
@event_musb_req_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_free = internal global ptr @event_musb_req_free, section "_ftrace_events", align 4
@event_musb_req_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_start = internal global ptr @event_musb_req_start, section "_ftrace_events", align 4
@event_musb_req_enq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_enq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_enq = internal global ptr @event_musb_req_enq, section "_ftrace_events", align 4
@event_musb_req_deq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.107 { ptr @__tracepoint_musb_req_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.108 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_musb_req_deq = internal global ptr @event_musb_req_deq, section "_ftrace_events", align 4
@__bpf_trace_tp_map_musb_log = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_log, ptr @__bpf_trace_musb_log, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_state = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_state, ptr @__bpf_trace_musb_state, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_readb = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_readb, ptr @__bpf_trace_musb_regb, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_writeb = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_writeb, ptr @__bpf_trace_musb_regb, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_readw = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_readw, ptr @__bpf_trace_musb_regw, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_writew = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_writew, ptr @__bpf_trace_musb_regw, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_readl = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_readl, ptr @__bpf_trace_musb_regl, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_writel = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_writel, ptr @__bpf_trace_musb_regl, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_isr = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_isr, ptr @__bpf_trace_musb_isr, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_urb_start = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_urb_start, ptr @__bpf_trace_musb_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_urb_gb = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_urb_gb, ptr @__bpf_trace_musb_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_urb_rx = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_urb_rx, ptr @__bpf_trace_musb_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_urb_tx = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_urb_tx, ptr @__bpf_trace_musb_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_urb_enq = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_urb_enq, ptr @__bpf_trace_musb_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_urb_deq = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_urb_deq, ptr @__bpf_trace_musb_urb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_gb = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_gb, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_tx = internal global %union.anon.125 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_tx, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_rx = internal global %union.anon.126 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_rx, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_alloc = internal global %union.anon.127 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_alloc, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_free = internal global %union.anon.128 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_free, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_start = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_start, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_enq = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_enq, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_musb_req_deq = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_musb_req_deq, ptr @__bpf_trace_musb_req, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"devctl\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"desc\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: devctl: %02x %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"caller\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%pS: %p + %04x: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%pS: %p + %04x: %04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%pS: %p + %04x: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"int_usb\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"int_tx\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"int_rx\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: usb %02x, tx %04x, rx %04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"struct urb *\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"urb\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flag\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"buf_len\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"actual_len\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: %p, dev%d ep%d%s, flag 0x%x, len %d/%d, status %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct usb_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"is_tx\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epnum\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short_not_ok\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%p, ep%d %s, %s%s%s, len %d/%d, status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tx/IN\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx/OUT\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/musb/musb_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_musb_log.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [33 x i8] c"../drivers/usb/musb/musb_trace.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [29 x i8] c"str__musb__trace_system_name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 36, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [28 x i8] c"trace_event_fields_musb_log\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_musb_log\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"print_fmt_musb_log\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"event_musb_log\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"trace_event_fields_musb_state\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_musb_state\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"print_fmt_musb_state\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"event_musb_state\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [29 x i8] c"trace_event_fields_musb_regb\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_musb_regb\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"print_fmt_musb_regb\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"event_musb_readb\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 77, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"event_musb_writeb\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 83, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"trace_event_fields_musb_regw\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_musb_regw\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"print_fmt_musb_regw\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"event_musb_readw\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 109, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"event_musb_writew\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 115, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [29 x i8] c"trace_event_fields_musb_regl\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_musb_regl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"print_fmt_musb_regl\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"event_musb_readl\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 141, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"event_musb_writel\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 147, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [28 x i8] c"trace_event_fields_musb_isr\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_musb_isr\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"print_fmt_musb_isr\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"event_musb_isr\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"trace_event_fields_musb_urb\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_musb_urb\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"print_fmt_musb_urb\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"event_musb_urb_start\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 206, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"event_musb_urb_gb\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 211, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"event_musb_urb_rx\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 216, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"event_musb_urb_tx\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 221, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"event_musb_urb_enq\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 226, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"event_musb_urb_deq\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 231, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"trace_event_fields_musb_req\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_musb_req\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [19 x i8] c"print_fmt_musb_req\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"event_musb_req_gb\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 272, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"event_musb_req_tx\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 277, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"event_musb_req_rx\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 282, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"event_musb_req_alloc\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 287, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c"event_musb_req_free\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 292, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"event_musb_req_start\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 297, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"event_musb_req_enq\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 302, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"event_musb_req_deq\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 307, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 40, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 57, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 89, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 121, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 153, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 174, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 236, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [35 x i8] c"../drivers/usb/musb/./musb_trace.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 26, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 108, i32 2 }
@llvm.compiler.used = appending global [203 x ptr] [ptr @__bpf_trace_tp_map_musb_isr, ptr @__bpf_trace_tp_map_musb_log, ptr @__bpf_trace_tp_map_musb_readb, ptr @__bpf_trace_tp_map_musb_readl, ptr @__bpf_trace_tp_map_musb_readw, ptr @__bpf_trace_tp_map_musb_req_alloc, ptr @__bpf_trace_tp_map_musb_req_deq, ptr @__bpf_trace_tp_map_musb_req_enq, ptr @__bpf_trace_tp_map_musb_req_free, ptr @__bpf_trace_tp_map_musb_req_gb, ptr @__bpf_trace_tp_map_musb_req_rx, ptr @__bpf_trace_tp_map_musb_req_start, ptr @__bpf_trace_tp_map_musb_req_tx, ptr @__bpf_trace_tp_map_musb_state, ptr @__bpf_trace_tp_map_musb_urb_deq, ptr @__bpf_trace_tp_map_musb_urb_enq, ptr @__bpf_trace_tp_map_musb_urb_gb, ptr @__bpf_trace_tp_map_musb_urb_rx, ptr @__bpf_trace_tp_map_musb_urb_start, ptr @__bpf_trace_tp_map_musb_urb_tx, ptr @__bpf_trace_tp_map_musb_writeb, ptr @__bpf_trace_tp_map_musb_writel, ptr @__bpf_trace_tp_map_musb_writew, ptr @__event_musb_isr, ptr @__event_musb_log, ptr @__event_musb_readb, ptr @__event_musb_readl, ptr @__event_musb_readw, ptr @__event_musb_req_alloc, ptr @__event_musb_req_deq, ptr @__event_musb_req_enq, ptr @__event_musb_req_free, ptr @__event_musb_req_gb, ptr @__event_musb_req_rx, ptr @__event_musb_req_start, ptr @__event_musb_req_tx, ptr @__event_musb_state, ptr @__event_musb_urb_deq, ptr @__event_musb_urb_enq, ptr @__event_musb_urb_gb, ptr @__event_musb_urb_rx, ptr @__event_musb_urb_start, ptr @__event_musb_urb_tx, ptr @__event_musb_writeb, ptr @__event_musb_writel, ptr @__event_musb_writew, ptr @__tracepoint_musb_isr, ptr @__tracepoint_musb_log, ptr @__tracepoint_musb_readb, ptr @__tracepoint_musb_readl, ptr @__tracepoint_musb_readw, ptr @__tracepoint_musb_req_alloc, ptr @__tracepoint_musb_req_deq, ptr @__tracepoint_musb_req_enq, ptr @__tracepoint_musb_req_free, ptr @__tracepoint_musb_req_gb, ptr @__tracepoint_musb_req_rx, ptr @__tracepoint_musb_req_start, ptr @__tracepoint_musb_req_tx, ptr @__tracepoint_musb_state, ptr @__tracepoint_musb_urb_deq, ptr @__tracepoint_musb_urb_enq, ptr @__tracepoint_musb_urb_gb, ptr @__tracepoint_musb_urb_rx, ptr @__tracepoint_musb_urb_start, ptr @__tracepoint_musb_urb_tx, ptr @__tracepoint_musb_writeb, ptr @__tracepoint_musb_writel, ptr @__tracepoint_musb_writew, ptr @__tracepoint_ptr_musb_isr, ptr @__tracepoint_ptr_musb_log, ptr @__tracepoint_ptr_musb_readb, ptr @__tracepoint_ptr_musb_readl, ptr @__tracepoint_ptr_musb_readw, ptr @__tracepoint_ptr_musb_req_alloc, ptr @__tracepoint_ptr_musb_req_deq, ptr @__tracepoint_ptr_musb_req_enq, ptr @__tracepoint_ptr_musb_req_free, ptr @__tracepoint_ptr_musb_req_gb, ptr @__tracepoint_ptr_musb_req_rx, ptr @__tracepoint_ptr_musb_req_start, ptr @__tracepoint_ptr_musb_req_tx, ptr @__tracepoint_ptr_musb_state, ptr @__tracepoint_ptr_musb_urb_deq, ptr @__tracepoint_ptr_musb_urb_enq, ptr @__tracepoint_ptr_musb_urb_gb, ptr @__tracepoint_ptr_musb_urb_rx, ptr @__tracepoint_ptr_musb_urb_start, ptr @__tracepoint_ptr_musb_urb_tx, ptr @__tracepoint_ptr_musb_writeb, ptr @__tracepoint_ptr_musb_writel, ptr @__tracepoint_ptr_musb_writew, ptr @event_class_musb_isr, ptr @event_class_musb_log, ptr @event_class_musb_regb, ptr @event_class_musb_regl, ptr @event_class_musb_regw, ptr @event_class_musb_req, ptr @event_class_musb_state, ptr @event_class_musb_urb, ptr @event_musb_isr, ptr @event_musb_log, ptr @event_musb_readb, ptr @event_musb_readl, ptr @event_musb_readw, ptr @event_musb_req_alloc, ptr @event_musb_req_deq, ptr @event_musb_req_enq, ptr @event_musb_req_free, ptr @event_musb_req_gb, ptr @event_musb_req_rx, ptr @event_musb_req_start, ptr @event_musb_req_tx, ptr @event_musb_state, ptr @event_musb_urb_deq, ptr @event_musb_urb_enq, ptr @event_musb_urb_gb, ptr @event_musb_urb_rx, ptr @event_musb_urb_start, ptr @event_musb_urb_tx, ptr @event_musb_writeb, ptr @event_musb_writel, ptr @event_musb_writew, ptr @str__musb__trace_system_name, ptr @trace_event_fields_musb_log, ptr @trace_event_type_funcs_musb_log, ptr @print_fmt_musb_log, ptr @trace_event_fields_musb_state, ptr @trace_event_type_funcs_musb_state, ptr @print_fmt_musb_state, ptr @trace_event_fields_musb_regb, ptr @trace_event_type_funcs_musb_regb, ptr @print_fmt_musb_regb, ptr @trace_event_fields_musb_regw, ptr @trace_event_type_funcs_musb_regw, ptr @print_fmt_musb_regw, ptr @trace_event_fields_musb_regl, ptr @trace_event_type_funcs_musb_regl, ptr @print_fmt_musb_regl, ptr @trace_event_fields_musb_isr, ptr @trace_event_type_funcs_musb_isr, ptr @print_fmt_musb_isr, ptr @trace_event_fields_musb_urb, ptr @trace_event_type_funcs_musb_urb, ptr @print_fmt_musb_urb, ptr @trace_event_fields_musb_req, ptr @trace_event_type_funcs_musb_req, ptr @print_fmt_musb_req, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__musb__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_log to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_log to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_log to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_log to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_state to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_state to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_state to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_regb to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_regb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_regb to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_readb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_writeb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_regw to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_regw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_regw to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_readw to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_writew to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_regl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_regl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_regl to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_isr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_isr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_isr to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_isr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_urb to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_urb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_urb to i32), i32 233, i32 288, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_urb_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_urb_gb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_urb_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_urb_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_urb_enq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_urb_deq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_musb_req to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_musb_req to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_musb_req to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_gb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_tx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_rx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_enq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_musb_req_deq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_log(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_log, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %vaf) #10
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
define dso_local i32 @__traceiter_musb_state(ptr nocapture readnone %__data, ptr noundef %musb, i8 noundef zeroext %devctl, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_state, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, i8 noundef zeroext %devctl, ptr noundef %desc) #10
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
define dso_local i32 @__traceiter_musb_readb(ptr nocapture readnone %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_readb, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_musb_writeb(ptr nocapture readnone %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_writeb, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_musb_readw(ptr nocapture readnone %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_readw, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_musb_writew(ptr nocapture readnone %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_writew, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_musb_readl(ptr nocapture readnone %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_readl, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_musb_writel(ptr nocapture readnone %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_writel, i32 0, i32 7), align 4
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
  %data7 = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data7, align 4
  tail call void %2(ptr noundef %4, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #10
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

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
define dso_local i32 @__traceiter_musb_isr(ptr nocapture readnone %__data, ptr noundef %musb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_isr, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb) #10
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
define dso_local i32 @__traceiter_musb_urb_start(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_urb_start, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %urb) #10
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
define dso_local i32 @__traceiter_musb_urb_gb(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_urb_gb, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %urb) #10
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
define dso_local i32 @__traceiter_musb_urb_rx(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_urb_rx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %urb) #10
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
define dso_local i32 @__traceiter_musb_urb_tx(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_urb_tx, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %urb) #10
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
define dso_local i32 @__traceiter_musb_urb_enq(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_urb_enq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %urb) #10
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
define dso_local i32 @__traceiter_musb_urb_deq(ptr nocapture readnone %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_urb_deq, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %musb, ptr noundef %urb) #10
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
define dso_local i32 @__traceiter_musb_req_gb(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_gb, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_tx(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_tx, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_rx(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_rx, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_alloc(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_alloc, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_free(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_free, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_start(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_start, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_enq(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_enq, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_musb_req_deq(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_req_deq, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_musb_log(ptr noundef %__data, ptr nocapture noundef readonly %musb, ptr nocapture noundef readonly %vaf) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_musb_log.exit_crit_edge

if.end.trace_event_get_offsets_musb_log.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_log.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str, ptr %8
  br label %trace_event_get_offsets_musb_log.exit

trace_event_get_offsets_musb_log.exit:            ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_musb_log.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_musb_log.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 517
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_musb_log.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_musb_log.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_musb_log.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_musb_log.exit
  %add8.i = add i32 %call4.i, 17
  %or11.i = or i32 %add8.i, 32768000
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or11.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %11 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %14, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %18, %if.end.i37 ], [ %14, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %19 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %__data_loc_msg, align 4
  %and13 = and i32 %20, 65535
  %add.ptr14 = getelementptr i8, ptr %call3, i32 %and13
  %21 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %23 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %va, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack = load i32, ptr %24, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = call i32 @vsnprintf(ptr noundef %add.ptr14, i32 noundef 500, ptr noundef %22, [1 x i32] %26)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_musb_log.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_log(ptr noundef %__data, ptr nocapture noundef readonly %musb, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_musb_log.exit_crit_edge

entry.trace_event_get_offsets_musb_log.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_log.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_musb_log.exit

trace_event_get_offsets_musb_log.exit:            ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_musb_log.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_musb_log.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65552
  %add8.i = add i32 %call4.i, 17
  %or11.i = or i32 %add8.i, 32768000
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !282) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_musb_log.exit.if.end_crit_edge

trace_event_get_offsets_musb_log.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_musb_log.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_musb_log.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i55.not = icmp eq ptr %21, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_musb_log.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 528
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or11.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %35 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %38, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %tobool20.not = icmp eq ptr %40, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %42, %if.end.i59 ], [ %38, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %43 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__data_loc_msg, align 4
  %and25 = and i32 %44, 65535
  %add.ptr26 = getelementptr i8, ptr %call13, i32 %and25
  %45 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %47 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %va, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack = load i32, ptr %48, align 4
  %50 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call27 = call i32 @vsnprintf(ptr noundef %add.ptr26, i32 noundef 500, ptr noundef %46, [1 x i32] %50)
  %51 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rctx, align 4
  %53 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %52, ptr noundef %__data, i64 noundef 1, ptr noundef %54, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_state(ptr noundef %__data, ptr nocapture noundef readonly %musb, i8 noundef zeroext %devctl, ptr noundef readonly %desc) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_musb_state.exit_crit_edge

if.end.trace_event_get_offsets_musb_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_state.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i40 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i40, ptr @.str, ptr %8
  br label %trace_event_get_offsets_musb_state.exit

trace_event_get_offsets_musb_state.exit:          ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_musb_state.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_musb_state.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %tobool8.not.i = icmp eq ptr %desc, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %desc
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #13
  %add14.i = add i32 %call13.i, 1
  %add21.i = add i32 %call4.i, 21
  %add = add i32 %add21.i, %add14.i
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_musb_state.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_musb_state.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_musb_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_musb_state.exit
  %shl18.i = shl i32 %add14.i, 16
  %or20.i = or i32 %shl18.i, %add21.i
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_desc = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %__data_loc_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or20.i, ptr %__data_loc_desc, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %11 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i41 = icmp eq ptr %14, null
  br i1 %tobool.not.i41, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i46

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i46:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i46, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %18, %if.end.i46 ], [ %14, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %devctl13 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %call3, i32 0, i32 2
  %19 = ptrtoint ptr %devctl13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %devctl, ptr %devctl13, align 4
  %20 = ptrtoint ptr %__data_loc_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %__data_loc_desc, align 4
  %and15 = and i32 %21, 65535
  %add.ptr16 = getelementptr i8, ptr %call3, i32 %and15
  %call22 = call ptr @strcpy(ptr noundef %add.ptr16, ptr noundef nonnull %spec.select.i) #14
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_musb_state.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_state(ptr noundef %__data, ptr nocapture noundef readonly %musb, i8 noundef zeroext %devctl, ptr noundef readonly %desc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_musb_state.exit_crit_edge

entry.trace_event_get_offsets_musb_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_state.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_musb_state.exit

trace_event_get_offsets_musb_state.exit:          ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_musb_state.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_musb_state.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %shl.i = add i32 %add.i, 65536
  %or.i = or i32 %shl.i, 20
  %tobool8.not.i = icmp eq ptr %desc, null
  %spec.select.i = select i1 %tobool8.not.i, ptr @.str, ptr %desc
  %call13.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #13
  %add14.i = add i32 %call13.i, 1
  %add16.i = add i32 %call4.i, 21
  %shl18.i = shl i32 %add14.i, 16
  %or20.i = or i32 %shl18.i, %add16.i
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !282) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_musb_state.exit.if.end_crit_edge

trace_event_get_offsets_musb_state.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_musb_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_musb_state.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i64.not = icmp eq ptr %21, null
  br i1 %tobool.not.i64.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_musb_state.exit.if.end_crit_edge
  %add21.i = add i32 %call4.i, 32
  %add12 = add i32 %add21.i, %add14.i
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_desc = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %__data_loc_desc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or20.i, ptr %__data_loc_desc, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %35 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i65 = icmp eq ptr %38, null
  br i1 %tobool.not.i65, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %tobool21.not = icmp eq ptr %40, null
  br i1 %tobool21.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i68

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i68:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i68, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %42, %if.end.i68 ], [ %38, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %devctl25 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %call13, i32 0, i32 2
  %43 = ptrtoint ptr %devctl25 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %devctl, ptr %devctl25, align 4
  %44 = ptrtoint ptr %__data_loc_desc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %__data_loc_desc, align 4
  %and27 = and i32 %45, 65535
  %add.ptr28 = getelementptr i8, ptr %call13, i32 %and27
  %call34 = call ptr @strcpy(ptr noundef %add.ptr28, ptr noundef nonnull %spec.select.i) #14
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_regb(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %caller6 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %caller6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %caller, ptr %caller6, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %addr7, align 4
  %offset8 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %offset, ptr %offset8, align 4
  %data9 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %data9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %data, ptr %data9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_regb(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
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
  %24 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %caller17 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %caller17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %caller, ptr %caller17, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %addr18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %addr, ptr %addr18, align 4
  %offset19 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %offset19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %offset, ptr %offset19, align 4
  %data20 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %data20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %data, ptr %data20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_regw(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %caller6 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %caller6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %caller, ptr %caller6, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %addr7, align 4
  %offset8 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %offset, ptr %offset8, align 4
  %data9 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %data9 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %data, ptr %data9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_regw(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
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
  %24 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %caller17 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %caller17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %caller, ptr %caller17, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %addr18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %addr, ptr %addr18, align 4
  %offset19 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %offset19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %offset, ptr %offset19, align 4
  %data20 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %data20 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %data, ptr %data20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_regl(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %caller6 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %caller6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %caller, ptr %caller6, align 4
  %addr7 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %addr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %addr7, align 4
  %offset8 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %offset8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %offset, ptr %offset8, align 4
  %data9 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %data, ptr %data9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_regl(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
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
  %24 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %caller17 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %caller17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %caller, ptr %caller17, align 4
  %addr18 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %addr18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %addr, ptr %addr18, align 4
  %offset19 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %offset19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %offset, ptr %offset19, align 4
  %data20 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %data, ptr %data20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_isr(ptr noundef %__data, ptr nocapture noundef readonly %musb) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_musb_isr.exit_crit_edge

if.end.trace_event_get_offsets_musb_isr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_isr.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i31 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i31, ptr @.str, ptr %8
  br label %trace_event_get_offsets_musb_isr.exit

trace_event_get_offsets_musb_isr.exit:            ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_musb_isr.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_musb_isr.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_musb_isr.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_musb_isr.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_musb_isr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_musb_isr.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65554
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 18
  %10 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %13, null
  br i1 %tobool.not.i32, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i37

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i37:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i37, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i37 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %int_usb = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 32
  %18 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %int_usb, align 1
  %int_usb12 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call3, i32 0, i32 2
  %20 = ptrtoint ptr %int_usb12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %int_usb12, align 4
  %int_tx = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 34
  %21 = ptrtoint ptr %int_tx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %int_tx, align 4
  %int_tx13 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call3, i32 0, i32 3
  %23 = ptrtoint ptr %int_tx13 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %int_tx13, align 2
  %int_rx = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 33
  %24 = ptrtoint ptr %int_rx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %int_rx, align 2
  %int_rx14 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call3, i32 0, i32 4
  %26 = ptrtoint ptr %int_rx14 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %int_rx14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_musb_isr.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_isr(ptr noundef %__data, ptr nocapture noundef readonly %musb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_musb_isr.exit_crit_edge

entry.trace_event_get_offsets_musb_isr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_isr.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_musb_isr.exit

trace_event_get_offsets_musb_isr.exit:            ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_musb_isr.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_musb_isr.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65554
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !282) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_musb_isr.exit.if.end_crit_edge

trace_event_get_offsets_musb_isr.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_musb_isr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_musb_isr.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i55.not = icmp eq ptr %21, null
  br i1 %tobool.not.i55.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_musb_isr.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 18
  %34 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i56 = icmp eq ptr %37, null
  br i1 %tobool.not.i56, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i59

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i59:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i59, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i59 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %int_usb = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 32
  %42 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %int_usb, align 1
  %int_usb24 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call13, i32 0, i32 2
  %44 = ptrtoint ptr %int_usb24 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %int_usb24, align 4
  %int_tx = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 34
  %45 = ptrtoint ptr %int_tx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %int_tx, align 4
  %int_tx25 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call13, i32 0, i32 3
  %47 = ptrtoint ptr %int_tx25 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %int_tx25, align 2
  %int_rx = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 33
  %48 = ptrtoint ptr %int_rx to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %int_rx, align 2
  %int_rx26 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %call13, i32 0, i32 4
  %50 = ptrtoint ptr %int_rx26 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %int_rx26, align 4
  %51 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rctx, align 4
  %53 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %52, ptr noundef %__data, i64 noundef 1, ptr noundef %54, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_urb(ptr noundef %__data, ptr nocapture noundef readonly %musb, ptr noundef %urb) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_musb_urb.exit_crit_edge

if.end.trace_event_get_offsets_musb_urb.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_urb.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i37 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i37, ptr @.str, ptr %8
  br label %trace_event_get_offsets_musb_urb.exit

trace_event_get_offsets_musb_urb.exit:            ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_musb_urb.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_musb_urb.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add = add i32 %call4.i, 37
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_musb_urb.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_musb_urb.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_musb_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_musb_urb.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65572
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 36
  %10 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i38 = icmp eq ptr %13, null
  br i1 %tobool.not.i38, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i43

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i43:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i43, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i43 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %urb12 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %urb12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %urb, ptr %urb12, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %19 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe, align 4
  %pipe13 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 3
  %21 = ptrtoint ptr %pipe13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pipe13, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %status14 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %status14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %status14, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %25 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags, align 4
  %flag = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 5
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flag, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_buffer_length, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 6
  %30 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %buf_len, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %31 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_length, align 4
  %actual_len = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call3, i32 0, i32 7
  %33 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %actual_len, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_musb_urb.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_urb(ptr noundef %__data, ptr nocapture noundef readonly %musb, ptr noundef %urb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %controller.i = getelementptr inbounds %struct.musb, ptr %musb, i32 0, i32 25
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_musb_urb.exit_crit_edge

entry.trace_event_get_offsets_musb_urb.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %trace_event_get_offsets_musb_urb.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_musb_urb.exit

trace_event_get_offsets_musb_urb.exit:            ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_musb_urb.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_musb_urb.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #13
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65572
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !282) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_musb_urb.exit.if.end_crit_edge

trace_event_get_offsets_musb_urb.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_musb_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_musb_urb.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i61.not = icmp eq ptr %21, null
  br i1 %tobool.not.i61.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_musb_urb.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 48
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 36
  %34 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %controller.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i62 = icmp eq ptr %37, null
  br i1 %tobool.not.i62, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i65

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end.i65:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i65, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i65 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #14
  %urb24 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %urb24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %urb, ptr %urb24, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %43 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pipe, align 4
  %pipe25 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 3
  %45 = ptrtoint ptr %pipe25 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pipe25, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  %status26 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 4
  %48 = ptrtoint ptr %status26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %status26, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %49 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_flags, align 4
  %flag = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 5
  %51 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %flag, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %transfer_buffer_length, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 6
  %54 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %buf_len, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %55 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %actual_length, align 4
  %actual_len = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %call13, i32 0, i32 7
  %57 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %actual_len, align 4
  %58 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rctx, align 4
  %60 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %59, ptr noundef %__data, i64 noundef 1, ptr noundef %61, ptr noundef %17, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_req(ptr noundef %__data, ptr noundef %req) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !292

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !293

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %req6 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req, ptr %req6, align 4
  %tx = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx, align 4
  %is_tx = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %is_tx, align 4
  %epnum = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 5
  %7 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %epnum, align 1
  %epnum7 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %epnum7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %epnum7, align 1
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %status9 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %status9, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf_len, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %16 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual, align 4
  %actual_len = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %actual_len, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %19 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero13 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %zero13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.clear, ptr %zero13, align 4
  %bf.load15 = load i32, ptr %zero, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 12
  %bf.clear17 = and i32 %bf.lshr16, 1
  %short_not_ok18 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 8
  %21 = ptrtoint ptr %short_not_ok18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.clear17, ptr %short_not_ok18, align 4
  %bf.load20 = load i32, ptr %zero, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 14
  %bf.clear22 = and i32 %bf.lshr21, 1
  %no_interrupt23 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call3, i32 0, i32 9
  %22 = ptrtoint ptr %no_interrupt23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.clear22, ptr %no_interrupt23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_musb_req(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #10
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #10
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !294
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #10
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
  %24 = call i32 @llvm.read_register.i32(metadata !282) #10
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %req17 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %req17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req, ptr %req17, align 4
  %tx = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 4
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx, align 4
  %is_tx = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %is_tx, align 4
  %epnum = getelementptr inbounds %struct.musb_request, ptr %req, i32 0, i32 5
  %31 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %epnum, align 1
  %epnum18 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %epnum18 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %epnum18, align 1
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %status20 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %status20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %status20, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %37 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %buf_len, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %40 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual, align 4
  %actual_len = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %actual_len, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %43 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero24 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %zero24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.clear, ptr %zero24, align 4
  %bf.load26 = load i32, ptr %zero, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 12
  %bf.clear28 = and i32 %bf.lshr27, 1
  %short_not_ok29 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 8
  %45 = ptrtoint ptr %short_not_ok29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.clear28, ptr %short_not_ok29, align 4
  %bf.load31 = load i32, ptr %zero, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 14
  %bf.clear33 = and i32 %bf.lshr32, 1
  %no_interrupt34 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %call13, i32 0, i32 9
  %46 = ptrtoint ptr %no_interrupt34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.clear33, ptr %no_interrupt34, align 4
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_log(ptr noundef %__data, ptr noundef %musb, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %musb to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_state(ptr noundef %__data, ptr noundef %musb, i8 noundef zeroext %devctl, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %musb to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %devctl to i64
  %1 = ptrtoint ptr %desc to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_regb(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %caller to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %addr to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %offset to i64
  %conv12 = zext i8 %data to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_regw(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %caller to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %addr to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %offset to i64
  %conv12 = zext i16 %data to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_regl(ptr noundef %__data, ptr noundef %caller, ptr noundef %addr, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %caller to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %addr to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %offset to i64
  %conv12 = zext i32 %data to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_isr(ptr noundef %__data, ptr noundef %musb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %musb to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_urb(ptr noundef %__data, ptr noundef %musb, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %musb to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %urb to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_musb_req(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @musb_dbg(ptr noundef %musb, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !294
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  call fastcc void @trace_musb_log(ptr noundef %musb, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_musb_log(ptr noundef %musb, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_log, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_musb_log, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !295

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !292

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !282) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !296
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_log, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %musb, ptr noundef %vaf) #10
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !297
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !297
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !292

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !282) #10
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !298
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_musb_log, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_musb_log.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_musb_log.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 38, ptr noundef nonnull @.str.53) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !299
  %38 = tail call i32 @llvm.read_register.i32(metadata !282) #10
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_log(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_msg, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef %add.ptr2) #10
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_state(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %devctl = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %devctl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %devctl, align 4
  %conv = zext i8 %5 to i32
  %__data_loc_desc = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_desc, align 4
  %and1 = and i32 %7, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.8, ptr noundef %add.ptr, i32 noundef %conv, ptr noundef %add.ptr2) #10
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_regb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %caller = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caller, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %conv) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_regw(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %caller = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caller, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 4
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.18, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %conv) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_regl(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %caller = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caller, align 4
  %addr = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %offset = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %data = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %9) #10
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_isr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %int_usb = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %int_usb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %int_usb, align 4
  %conv = zext i8 %5 to i32
  %int_tx = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %int_tx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %int_tx, align 2
  %conv1 = zext i16 %7 to i32
  %int_rx = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %int_rx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %int_rx, align 4
  %conv2 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #10
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_urb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %urb = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %pipe = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %7, 8
  %and1 = and i32 %shr, 127
  %shr3 = lshr i32 %7, 15
  %and4 = and i32 %shr3, 15
  %and6 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %cond = select i1 %tobool.not, ptr @.str.35, ptr @.str.34
  %flag = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flag, align 4
  %actual_len = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_len, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_len, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.33, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %and1, i32 noundef %and4, ptr noundef nonnull %cond, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  %call7 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_req(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %req = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %epnum = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %epnum to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epnum, align 1
  %conv = zext i8 %5 to i32
  %is_tx = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.45, ptr @.str.44
  %zero = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.47, ptr @.str.46
  %short_not_ok = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %short_not_ok to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %short_not_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.49, ptr @.str.48
  %no_interrupt = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %no_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.51, ptr @.str.50
  %actual_len = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_len, align 4
  %buf_len = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_len, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull %cond3, ptr noundef nonnull %cond5, ptr noundef nonnull %cond7, i32 noundef %15, i32 noundef %17, i32 noundef %19) #10
  %call8 = tail call i32 @trace_handle_return(ptr noundef %seq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !281}
!llvm.named.register.sp = !{!282}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @__tracepoint_musb_log, !1, !"__tracepoint_musb_log", i1 false, i1 false}
!1 = !{!"../drivers/usb/musb/./musb_trace.h", i32 26, i32 1}
!2 = !{ptr @__tracepoint_ptr_musb_log, !1, !"__tracepoint_ptr_musb_log", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_musb_log, !1, !"__SCK__tp_func_musb_log", i1 false, i1 false}
!4 = !{ptr @__tracepoint_musb_state, !5, !"__tracepoint_musb_state", i1 false, i1 false}
!5 = !{!"../drivers/usb/musb/./musb_trace.h", i32 40, i32 1}
!6 = !{ptr @__tracepoint_ptr_musb_state, !5, !"__tracepoint_ptr_musb_state", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_musb_state, !5, !"__SCK__tp_func_musb_state", i1 false, i1 false}
!8 = !{ptr @__tracepoint_musb_readb, !9, !"__tracepoint_musb_readb", i1 false, i1 false}
!9 = !{!"../drivers/usb/musb/./musb_trace.h", i32 77, i32 1}
!10 = !{ptr @__tracepoint_ptr_musb_readb, !9, !"__tracepoint_ptr_musb_readb", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_musb_readb, !9, !"__SCK__tp_func_musb_readb", i1 false, i1 false}
!12 = !{ptr @__tracepoint_musb_writeb, !13, !"__tracepoint_musb_writeb", i1 false, i1 false}
!13 = !{!"../drivers/usb/musb/./musb_trace.h", i32 83, i32 1}
!14 = !{ptr @__tracepoint_ptr_musb_writeb, !13, !"__tracepoint_ptr_musb_writeb", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_musb_writeb, !13, !"__SCK__tp_func_musb_writeb", i1 false, i1 false}
!16 = !{ptr @__tracepoint_musb_readw, !17, !"__tracepoint_musb_readw", i1 false, i1 false}
!17 = !{!"../drivers/usb/musb/./musb_trace.h", i32 109, i32 1}
!18 = !{ptr @__tracepoint_ptr_musb_readw, !17, !"__tracepoint_ptr_musb_readw", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_musb_readw, !17, !"__SCK__tp_func_musb_readw", i1 false, i1 false}
!20 = !{ptr @__tracepoint_musb_writew, !21, !"__tracepoint_musb_writew", i1 false, i1 false}
!21 = !{!"../drivers/usb/musb/./musb_trace.h", i32 115, i32 1}
!22 = !{ptr @__tracepoint_ptr_musb_writew, !21, !"__tracepoint_ptr_musb_writew", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_musb_writew, !21, !"__SCK__tp_func_musb_writew", i1 false, i1 false}
!24 = !{ptr @__tracepoint_musb_readl, !25, !"__tracepoint_musb_readl", i1 false, i1 false}
!25 = !{!"../drivers/usb/musb/./musb_trace.h", i32 141, i32 1}
!26 = !{ptr @__tracepoint_ptr_musb_readl, !25, !"__tracepoint_ptr_musb_readl", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_musb_readl, !25, !"__SCK__tp_func_musb_readl", i1 false, i1 false}
!28 = !{ptr @__tracepoint_musb_writel, !29, !"__tracepoint_musb_writel", i1 false, i1 false}
!29 = !{!"../drivers/usb/musb/./musb_trace.h", i32 147, i32 1}
!30 = !{ptr @__tracepoint_ptr_musb_writel, !29, !"__tracepoint_ptr_musb_writel", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_musb_writel, !29, !"__SCK__tp_func_musb_writel", i1 false, i1 false}
!32 = !{ptr @__tracepoint_musb_isr, !33, !"__tracepoint_musb_isr", i1 false, i1 false}
!33 = !{!"../drivers/usb/musb/./musb_trace.h", i32 153, i32 1}
!34 = !{ptr @__tracepoint_ptr_musb_isr, !33, !"__tracepoint_ptr_musb_isr", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_musb_isr, !33, !"__SCK__tp_func_musb_isr", i1 false, i1 false}
!36 = !{ptr @__tracepoint_musb_urb_start, !37, !"__tracepoint_musb_urb_start", i1 false, i1 false}
!37 = !{!"../drivers/usb/musb/./musb_trace.h", i32 206, i32 1}
!38 = !{ptr @__tracepoint_ptr_musb_urb_start, !37, !"__tracepoint_ptr_musb_urb_start", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_musb_urb_start, !37, !"__SCK__tp_func_musb_urb_start", i1 false, i1 false}
!40 = !{ptr @__tracepoint_musb_urb_gb, !41, !"__tracepoint_musb_urb_gb", i1 false, i1 false}
!41 = !{!"../drivers/usb/musb/./musb_trace.h", i32 211, i32 1}
!42 = !{ptr @__tracepoint_ptr_musb_urb_gb, !41, !"__tracepoint_ptr_musb_urb_gb", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_musb_urb_gb, !41, !"__SCK__tp_func_musb_urb_gb", i1 false, i1 false}
!44 = !{ptr @__tracepoint_musb_urb_rx, !45, !"__tracepoint_musb_urb_rx", i1 false, i1 false}
!45 = !{!"../drivers/usb/musb/./musb_trace.h", i32 216, i32 1}
!46 = !{ptr @__tracepoint_ptr_musb_urb_rx, !45, !"__tracepoint_ptr_musb_urb_rx", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_musb_urb_rx, !45, !"__SCK__tp_func_musb_urb_rx", i1 false, i1 false}
!48 = !{ptr @__tracepoint_musb_urb_tx, !49, !"__tracepoint_musb_urb_tx", i1 false, i1 false}
!49 = !{!"../drivers/usb/musb/./musb_trace.h", i32 221, i32 1}
!50 = !{ptr @__tracepoint_ptr_musb_urb_tx, !49, !"__tracepoint_ptr_musb_urb_tx", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_musb_urb_tx, !49, !"__SCK__tp_func_musb_urb_tx", i1 false, i1 false}
!52 = !{ptr @__tracepoint_musb_urb_enq, !53, !"__tracepoint_musb_urb_enq", i1 false, i1 false}
!53 = !{!"../drivers/usb/musb/./musb_trace.h", i32 226, i32 1}
!54 = !{ptr @__tracepoint_ptr_musb_urb_enq, !53, !"__tracepoint_ptr_musb_urb_enq", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_musb_urb_enq, !53, !"__SCK__tp_func_musb_urb_enq", i1 false, i1 false}
!56 = !{ptr @__tracepoint_musb_urb_deq, !57, !"__tracepoint_musb_urb_deq", i1 false, i1 false}
!57 = !{!"../drivers/usb/musb/./musb_trace.h", i32 231, i32 1}
!58 = !{ptr @__tracepoint_ptr_musb_urb_deq, !57, !"__tracepoint_ptr_musb_urb_deq", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_musb_urb_deq, !57, !"__SCK__tp_func_musb_urb_deq", i1 false, i1 false}
!60 = !{ptr @__tracepoint_musb_req_gb, !61, !"__tracepoint_musb_req_gb", i1 false, i1 false}
!61 = !{!"../drivers/usb/musb/./musb_trace.h", i32 272, i32 1}
!62 = !{ptr @__tracepoint_ptr_musb_req_gb, !61, !"__tracepoint_ptr_musb_req_gb", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_musb_req_gb, !61, !"__SCK__tp_func_musb_req_gb", i1 false, i1 false}
!64 = !{ptr @__tracepoint_musb_req_tx, !65, !"__tracepoint_musb_req_tx", i1 false, i1 false}
!65 = !{!"../drivers/usb/musb/./musb_trace.h", i32 277, i32 1}
!66 = !{ptr @__tracepoint_ptr_musb_req_tx, !65, !"__tracepoint_ptr_musb_req_tx", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_musb_req_tx, !65, !"__SCK__tp_func_musb_req_tx", i1 false, i1 false}
!68 = !{ptr @__tracepoint_musb_req_rx, !69, !"__tracepoint_musb_req_rx", i1 false, i1 false}
!69 = !{!"../drivers/usb/musb/./musb_trace.h", i32 282, i32 1}
!70 = !{ptr @__tracepoint_ptr_musb_req_rx, !69, !"__tracepoint_ptr_musb_req_rx", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_musb_req_rx, !69, !"__SCK__tp_func_musb_req_rx", i1 false, i1 false}
!72 = !{ptr @__tracepoint_musb_req_alloc, !73, !"__tracepoint_musb_req_alloc", i1 false, i1 false}
!73 = !{!"../drivers/usb/musb/./musb_trace.h", i32 287, i32 1}
!74 = !{ptr @__tracepoint_ptr_musb_req_alloc, !73, !"__tracepoint_ptr_musb_req_alloc", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_musb_req_alloc, !73, !"__SCK__tp_func_musb_req_alloc", i1 false, i1 false}
!76 = !{ptr @__tracepoint_musb_req_free, !77, !"__tracepoint_musb_req_free", i1 false, i1 false}
!77 = !{!"../drivers/usb/musb/./musb_trace.h", i32 292, i32 1}
!78 = !{ptr @__tracepoint_ptr_musb_req_free, !77, !"__tracepoint_ptr_musb_req_free", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_musb_req_free, !77, !"__SCK__tp_func_musb_req_free", i1 false, i1 false}
!80 = !{ptr @__tracepoint_musb_req_start, !81, !"__tracepoint_musb_req_start", i1 false, i1 false}
!81 = !{!"../drivers/usb/musb/./musb_trace.h", i32 297, i32 1}
!82 = !{ptr @__tracepoint_ptr_musb_req_start, !81, !"__tracepoint_ptr_musb_req_start", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_musb_req_start, !81, !"__SCK__tp_func_musb_req_start", i1 false, i1 false}
!84 = !{ptr @__tracepoint_musb_req_enq, !85, !"__tracepoint_musb_req_enq", i1 false, i1 false}
!85 = !{!"../drivers/usb/musb/./musb_trace.h", i32 302, i32 1}
!86 = !{ptr @__tracepoint_ptr_musb_req_enq, !85, !"__tracepoint_ptr_musb_req_enq", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_musb_req_enq, !85, !"__SCK__tp_func_musb_req_enq", i1 false, i1 false}
!88 = !{ptr @__tracepoint_musb_req_deq, !89, !"__tracepoint_musb_req_deq", i1 false, i1 false}
!89 = !{!"../drivers/usb/musb/./musb_trace.h", i32 307, i32 1}
!90 = !{ptr @__tracepoint_ptr_musb_req_deq, !89, !"__tracepoint_ptr_musb_req_deq", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_musb_req_deq, !89, !"__SCK__tp_func_musb_req_deq", i1 false, i1 false}
!92 = !{ptr @event_class_musb_log, !1, !"event_class_musb_log", i1 false, i1 false}
!93 = !{ptr @event_musb_log, !1, !"event_musb_log", i1 false, i1 false}
!94 = !{ptr @__event_musb_log, !1, !"__event_musb_log", i1 false, i1 false}
!95 = !{ptr @event_class_musb_state, !5, !"event_class_musb_state", i1 false, i1 false}
!96 = !{ptr @event_musb_state, !5, !"event_musb_state", i1 false, i1 false}
!97 = !{ptr @__event_musb_state, !5, !"__event_musb_state", i1 false, i1 false}
!98 = !{ptr @event_class_musb_regb, !99, !"event_class_musb_regb", i1 false, i1 false}
!99 = !{!"../drivers/usb/musb/./musb_trace.h", i32 57, i32 1}
!100 = !{ptr @event_musb_readb, !9, !"event_musb_readb", i1 false, i1 false}
!101 = !{ptr @__event_musb_readb, !9, !"__event_musb_readb", i1 false, i1 false}
!102 = !{ptr @event_musb_writeb, !13, !"event_musb_writeb", i1 false, i1 false}
!103 = !{ptr @__event_musb_writeb, !13, !"__event_musb_writeb", i1 false, i1 false}
!104 = !{ptr @event_class_musb_regw, !105, !"event_class_musb_regw", i1 false, i1 false}
!105 = !{!"../drivers/usb/musb/./musb_trace.h", i32 89, i32 1}
!106 = !{ptr @event_musb_readw, !17, !"event_musb_readw", i1 false, i1 false}
!107 = !{ptr @__event_musb_readw, !17, !"__event_musb_readw", i1 false, i1 false}
!108 = !{ptr @event_musb_writew, !21, !"event_musb_writew", i1 false, i1 false}
!109 = !{ptr @__event_musb_writew, !21, !"__event_musb_writew", i1 false, i1 false}
!110 = !{ptr @event_class_musb_regl, !111, !"event_class_musb_regl", i1 false, i1 false}
!111 = !{!"../drivers/usb/musb/./musb_trace.h", i32 121, i32 1}
!112 = !{ptr @event_musb_readl, !25, !"event_musb_readl", i1 false, i1 false}
!113 = !{ptr @__event_musb_readl, !25, !"__event_musb_readl", i1 false, i1 false}
!114 = !{ptr @event_musb_writel, !29, !"event_musb_writel", i1 false, i1 false}
!115 = !{ptr @__event_musb_writel, !29, !"__event_musb_writel", i1 false, i1 false}
!116 = !{ptr @event_class_musb_isr, !33, !"event_class_musb_isr", i1 false, i1 false}
!117 = !{ptr @event_musb_isr, !33, !"event_musb_isr", i1 false, i1 false}
!118 = !{ptr @__event_musb_isr, !33, !"__event_musb_isr", i1 false, i1 false}
!119 = !{ptr @event_class_musb_urb, !120, !"event_class_musb_urb", i1 false, i1 false}
!120 = !{!"../drivers/usb/musb/./musb_trace.h", i32 174, i32 1}
!121 = !{ptr @event_musb_urb_start, !37, !"event_musb_urb_start", i1 false, i1 false}
!122 = !{ptr @__event_musb_urb_start, !37, !"__event_musb_urb_start", i1 false, i1 false}
!123 = !{ptr @event_musb_urb_gb, !41, !"event_musb_urb_gb", i1 false, i1 false}
!124 = !{ptr @__event_musb_urb_gb, !41, !"__event_musb_urb_gb", i1 false, i1 false}
!125 = !{ptr @event_musb_urb_rx, !45, !"event_musb_urb_rx", i1 false, i1 false}
!126 = !{ptr @__event_musb_urb_rx, !45, !"__event_musb_urb_rx", i1 false, i1 false}
!127 = !{ptr @event_musb_urb_tx, !49, !"event_musb_urb_tx", i1 false, i1 false}
!128 = !{ptr @__event_musb_urb_tx, !49, !"__event_musb_urb_tx", i1 false, i1 false}
!129 = !{ptr @event_musb_urb_enq, !53, !"event_musb_urb_enq", i1 false, i1 false}
!130 = !{ptr @__event_musb_urb_enq, !53, !"__event_musb_urb_enq", i1 false, i1 false}
!131 = !{ptr @event_musb_urb_deq, !57, !"event_musb_urb_deq", i1 false, i1 false}
!132 = !{ptr @__event_musb_urb_deq, !57, !"__event_musb_urb_deq", i1 false, i1 false}
!133 = !{ptr @event_class_musb_req, !134, !"event_class_musb_req", i1 false, i1 false}
!134 = !{!"../drivers/usb/musb/./musb_trace.h", i32 236, i32 1}
!135 = !{ptr @event_musb_req_gb, !61, !"event_musb_req_gb", i1 false, i1 false}
!136 = !{ptr @__event_musb_req_gb, !61, !"__event_musb_req_gb", i1 false, i1 false}
!137 = !{ptr @event_musb_req_tx, !65, !"event_musb_req_tx", i1 false, i1 false}
!138 = !{ptr @__event_musb_req_tx, !65, !"__event_musb_req_tx", i1 false, i1 false}
!139 = !{ptr @event_musb_req_rx, !69, !"event_musb_req_rx", i1 false, i1 false}
!140 = !{ptr @__event_musb_req_rx, !69, !"__event_musb_req_rx", i1 false, i1 false}
!141 = !{ptr @event_musb_req_alloc, !73, !"event_musb_req_alloc", i1 false, i1 false}
!142 = !{ptr @__event_musb_req_alloc, !73, !"__event_musb_req_alloc", i1 false, i1 false}
!143 = !{ptr @event_musb_req_free, !77, !"event_musb_req_free", i1 false, i1 false}
!144 = !{ptr @__event_musb_req_free, !77, !"__event_musb_req_free", i1 false, i1 false}
!145 = !{ptr @event_musb_req_start, !81, !"event_musb_req_start", i1 false, i1 false}
!146 = !{ptr @__event_musb_req_start, !81, !"__event_musb_req_start", i1 false, i1 false}
!147 = !{ptr @event_musb_req_enq, !85, !"event_musb_req_enq", i1 false, i1 false}
!148 = !{ptr @__event_musb_req_enq, !85, !"__event_musb_req_enq", i1 false, i1 false}
!149 = !{ptr @event_musb_req_deq, !89, !"event_musb_req_deq", i1 false, i1 false}
!150 = !{ptr @__event_musb_req_deq, !89, !"__event_musb_req_deq", i1 false, i1 false}
!151 = !{ptr @__bpf_trace_tp_map_musb_log, !1, !"__bpf_trace_tp_map_musb_log", i1 false, i1 false}
!152 = !{ptr @__bpf_trace_tp_map_musb_state, !5, !"__bpf_trace_tp_map_musb_state", i1 false, i1 false}
!153 = !{ptr @__bpf_trace_tp_map_musb_readb, !9, !"__bpf_trace_tp_map_musb_readb", i1 false, i1 false}
!154 = !{ptr @__bpf_trace_tp_map_musb_writeb, !13, !"__bpf_trace_tp_map_musb_writeb", i1 false, i1 false}
!155 = !{ptr @__bpf_trace_tp_map_musb_readw, !17, !"__bpf_trace_tp_map_musb_readw", i1 false, i1 false}
!156 = !{ptr @__bpf_trace_tp_map_musb_writew, !21, !"__bpf_trace_tp_map_musb_writew", i1 false, i1 false}
!157 = !{ptr @__bpf_trace_tp_map_musb_readl, !25, !"__bpf_trace_tp_map_musb_readl", i1 false, i1 false}
!158 = !{ptr @__bpf_trace_tp_map_musb_writel, !29, !"__bpf_trace_tp_map_musb_writel", i1 false, i1 false}
!159 = !{ptr @__bpf_trace_tp_map_musb_isr, !33, !"__bpf_trace_tp_map_musb_isr", i1 false, i1 false}
!160 = !{ptr @__bpf_trace_tp_map_musb_urb_start, !37, !"__bpf_trace_tp_map_musb_urb_start", i1 false, i1 false}
!161 = !{ptr @__bpf_trace_tp_map_musb_urb_gb, !41, !"__bpf_trace_tp_map_musb_urb_gb", i1 false, i1 false}
!162 = !{ptr @__bpf_trace_tp_map_musb_urb_rx, !45, !"__bpf_trace_tp_map_musb_urb_rx", i1 false, i1 false}
!163 = !{ptr @__bpf_trace_tp_map_musb_urb_tx, !49, !"__bpf_trace_tp_map_musb_urb_tx", i1 false, i1 false}
!164 = !{ptr @__bpf_trace_tp_map_musb_urb_enq, !53, !"__bpf_trace_tp_map_musb_urb_enq", i1 false, i1 false}
!165 = !{ptr @__bpf_trace_tp_map_musb_urb_deq, !57, !"__bpf_trace_tp_map_musb_urb_deq", i1 false, i1 false}
!166 = !{ptr @__bpf_trace_tp_map_musb_req_gb, !61, !"__bpf_trace_tp_map_musb_req_gb", i1 false, i1 false}
!167 = !{ptr @__bpf_trace_tp_map_musb_req_tx, !65, !"__bpf_trace_tp_map_musb_req_tx", i1 false, i1 false}
!168 = !{ptr @__bpf_trace_tp_map_musb_req_rx, !69, !"__bpf_trace_tp_map_musb_req_rx", i1 false, i1 false}
!169 = !{ptr @__bpf_trace_tp_map_musb_req_alloc, !73, !"__bpf_trace_tp_map_musb_req_alloc", i1 false, i1 false}
!170 = !{ptr @__bpf_trace_tp_map_musb_req_free, !77, !"__bpf_trace_tp_map_musb_req_free", i1 false, i1 false}
!171 = !{ptr @__bpf_trace_tp_map_musb_req_start, !81, !"__bpf_trace_tp_map_musb_req_start", i1 false, i1 false}
!172 = !{ptr @__bpf_trace_tp_map_musb_req_enq, !85, !"__bpf_trace_tp_map_musb_req_enq", i1 false, i1 false}
!173 = !{ptr @__bpf_trace_tp_map_musb_req_deq, !89, !"__bpf_trace_tp_map_musb_req_deq", i1 false, i1 false}
!174 = !{ptr @__tpstrtab_musb_log, !1, !"__tpstrtab_musb_log", i1 false, i1 false}
!175 = !{ptr @__tpstrtab_musb_state, !5, !"__tpstrtab_musb_state", i1 false, i1 false}
!176 = !{ptr @__tpstrtab_musb_readb, !9, !"__tpstrtab_musb_readb", i1 false, i1 false}
!177 = !{ptr @__tpstrtab_musb_writeb, !13, !"__tpstrtab_musb_writeb", i1 false, i1 false}
!178 = !{ptr @__tpstrtab_musb_readw, !17, !"__tpstrtab_musb_readw", i1 false, i1 false}
!179 = !{ptr @__tpstrtab_musb_writew, !21, !"__tpstrtab_musb_writew", i1 false, i1 false}
!180 = !{ptr @__tpstrtab_musb_readl, !25, !"__tpstrtab_musb_readl", i1 false, i1 false}
!181 = !{ptr @__tpstrtab_musb_writel, !29, !"__tpstrtab_musb_writel", i1 false, i1 false}
!182 = !{ptr @__tpstrtab_musb_isr, !33, !"__tpstrtab_musb_isr", i1 false, i1 false}
!183 = !{ptr @__tpstrtab_musb_urb_start, !37, !"__tpstrtab_musb_urb_start", i1 false, i1 false}
!184 = !{ptr @__tpstrtab_musb_urb_gb, !41, !"__tpstrtab_musb_urb_gb", i1 false, i1 false}
!185 = !{ptr @__tpstrtab_musb_urb_rx, !45, !"__tpstrtab_musb_urb_rx", i1 false, i1 false}
!186 = !{ptr @__tpstrtab_musb_urb_tx, !49, !"__tpstrtab_musb_urb_tx", i1 false, i1 false}
!187 = !{ptr @__tpstrtab_musb_urb_enq, !53, !"__tpstrtab_musb_urb_enq", i1 false, i1 false}
!188 = !{ptr @__tpstrtab_musb_urb_deq, !57, !"__tpstrtab_musb_urb_deq", i1 false, i1 false}
!189 = !{ptr @__tpstrtab_musb_req_gb, !61, !"__tpstrtab_musb_req_gb", i1 false, i1 false}
!190 = !{ptr @__tpstrtab_musb_req_tx, !65, !"__tpstrtab_musb_req_tx", i1 false, i1 false}
!191 = !{ptr @__tpstrtab_musb_req_rx, !69, !"__tpstrtab_musb_req_rx", i1 false, i1 false}
!192 = !{ptr @__tpstrtab_musb_req_alloc, !73, !"__tpstrtab_musb_req_alloc", i1 false, i1 false}
!193 = !{ptr @__tpstrtab_musb_req_free, !77, !"__tpstrtab_musb_req_free", i1 false, i1 false}
!194 = !{ptr @__tpstrtab_musb_req_start, !81, !"__tpstrtab_musb_req_start", i1 false, i1 false}
!195 = !{ptr @__tpstrtab_musb_req_enq, !85, !"__tpstrtab_musb_req_enq", i1 false, i1 false}
!196 = !{ptr @__tpstrtab_musb_req_deq, !89, !"__tpstrtab_musb_req_deq", i1 false, i1 false}
!197 = !{ptr @str__musb__trace_system_name, !198, !"str__musb__trace_system_name", i1 false, i1 false}
!198 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!199 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @trace_event_fields_musb_log, !1, !"trace_event_fields_musb_log", i1 false, i1 false}
!204 = !{ptr @trace_event_type_funcs_musb_log, !1, !"trace_event_type_funcs_musb_log", i1 false, i1 false}
!205 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @print_fmt_musb_log, !1, !"print_fmt_musb_log", i1 false, i1 false}
!207 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @trace_event_fields_musb_state, !5, !"trace_event_fields_musb_state", i1 false, i1 false}
!211 = !{ptr @trace_event_type_funcs_musb_state, !5, !"trace_event_type_funcs_musb_state", i1 false, i1 false}
!212 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @print_fmt_musb_state, !5, !"print_fmt_musb_state", i1 false, i1 false}
!214 = !{ptr @.str.9, !99, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.10, !99, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.11, !99, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.12, !99, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.13, !99, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.14, !99, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.15, !99, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @trace_event_fields_musb_regb, !99, !"trace_event_fields_musb_regb", i1 false, i1 false}
!222 = !{ptr @trace_event_type_funcs_musb_regb, !99, !"trace_event_type_funcs_musb_regb", i1 false, i1 false}
!223 = !{ptr @.str.16, !99, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @print_fmt_musb_regb, !99, !"print_fmt_musb_regb", i1 false, i1 false}
!225 = !{ptr @.str.17, !105, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @trace_event_fields_musb_regw, !105, !"trace_event_fields_musb_regw", i1 false, i1 false}
!227 = !{ptr @trace_event_type_funcs_musb_regw, !105, !"trace_event_type_funcs_musb_regw", i1 false, i1 false}
!228 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @print_fmt_musb_regw, !105, !"print_fmt_musb_regw", i1 false, i1 false}
!230 = !{ptr @.str.19, !111, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @trace_event_fields_musb_regl, !111, !"trace_event_fields_musb_regl", i1 false, i1 false}
!232 = !{ptr @trace_event_type_funcs_musb_regl, !111, !"trace_event_type_funcs_musb_regl", i1 false, i1 false}
!233 = !{ptr @.str.20, !111, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @print_fmt_musb_regl, !111, !"print_fmt_musb_regl", i1 false, i1 false}
!235 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @trace_event_fields_musb_isr, !33, !"trace_event_fields_musb_isr", i1 false, i1 false}
!239 = !{ptr @trace_event_type_funcs_musb_isr, !33, !"trace_event_type_funcs_musb_isr", i1 false, i1 false}
!240 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @print_fmt_musb_isr, !33, !"print_fmt_musb_isr", i1 false, i1 false}
!242 = !{ptr @.str.25, !120, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.26, !120, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.27, !120, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.28, !120, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.29, !120, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.31, !120, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @trace_event_fields_musb_urb, !120, !"trace_event_fields_musb_urb", i1 false, i1 false}
!251 = !{ptr @trace_event_type_funcs_musb_urb, !120, !"trace_event_type_funcs_musb_urb", i1 false, i1 false}
!252 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.34, !120, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @print_fmt_musb_urb, !120, !"print_fmt_musb_urb", i1 false, i1 false}
!256 = !{ptr @.str.36, !134, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.41, !134, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @trace_event_fields_musb_req, !134, !"trace_event_fields_musb_req", i1 false, i1 false}
!264 = !{ptr @trace_event_type_funcs_musb_req, !134, !"trace_event_type_funcs_musb_req", i1 false, i1 false}
!265 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @print_fmt_musb_req, !134, !"print_fmt_musb_req", i1 false, i1 false}
!275 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!276 = !{ptr @.str.52, !1, !"<string literal>", i1 false, i1 false}
!277 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!278 = !{ptr @.str.53, !1, !"<string literal>", i1 false, i1 false}
!279 = distinct !{null, !280, !"__already_done", i1 false, i1 false}
!280 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!281 = !{ptr @.str.54, !280, !"<string literal>", i1 false, i1 false}
!282 = !{!"sp"}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{!"branch_weights", i32 1, i32 2000}
!294 = !{!"auto-init"}
!295 = !{i64 2148851417, i64 2148851422, i64 2148851435, i64 2148851479, i64 2148851513, i64 2148851534}
!296 = !{i64 2155435412}
!297 = !{i64 2155435609}
!298 = !{i64 2149191976}
!299 = !{i64 2149193012}
