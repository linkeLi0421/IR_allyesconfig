; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-trace.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__tracepoint_xhci_dbg_quirks\22, \22a\22\09"
module asm "\09.weak\09__crc___tracepoint_xhci_dbg_quirks\09\09\09\09"
module asm "\09.long\09__crc___tracepoint_xhci_dbg_quirks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_xhci_dbg_quirks\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__traceiter_xhci_dbg_quirks\22, \22a\22\09"
module asm "\09.weak\09__crc___traceiter_xhci_dbg_quirks\09\09\09\09"
module asm "\09.long\09__crc___traceiter_xhci_dbg_quirks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_xhci_dbg_quirks\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__SCK__tp_func_xhci_dbg_quirks\22, \22a\22\09"
module asm "\09.weak\09__crc___SCK__tp_func_xhci_dbg_quirks\09\09\09\09"
module asm "\09.long\09__crc___SCK__tp_func_xhci_dbg_quirks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_xhci_dbg_quirks\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.101, %struct.trace_event, ptr, ptr, %union.anon.102, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
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
%union.anon.135 = type { %struct.bpf_raw_event_map }
%union.anon.136 = type { %struct.bpf_raw_event_map }
%union.anon.137 = type { %struct.bpf_raw_event_map }
%union.anon.138 = type { %struct.bpf_raw_event_map }
%union.anon.139 = type { %struct.bpf_raw_event_map }
%union.anon.140 = type { %struct.bpf_raw_event_map }
%union.anon.141 = type { %struct.bpf_raw_event_map }
%union.anon.142 = type { %struct.bpf_raw_event_map }
%union.anon.143 = type { %struct.bpf_raw_event_map }
%union.anon.144 = type { %struct.bpf_raw_event_map }
%union.anon.145 = type { %struct.bpf_raw_event_map }
%union.anon.146 = type { %struct.bpf_raw_event_map }
%union.anon.147 = type { %struct.bpf_raw_event_map }
%union.anon.148 = type { %struct.bpf_raw_event_map }
%union.anon.149 = type { %struct.bpf_raw_event_map }
%union.anon.150 = type { %struct.bpf_raw_event_map }
%union.anon.151 = type { %struct.bpf_raw_event_map }
%union.anon.152 = type { %struct.bpf_raw_event_map }
%union.anon.153 = type { %struct.bpf_raw_event_map }
%union.anon.154 = type { %struct.bpf_raw_event_map }
%union.anon.155 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_xhci_log_msg = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.trace_event_raw_xhci_log_ctx = type { %struct.trace_entry, i32, i32, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.trace_event_raw_xhci_log_trb = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.trace_event_raw_xhci_log_free_virt_dev = type { %struct.trace_entry, ptr, i64, i64, i8, i8, i16, [0 x i8] }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_xhci_log_virt_dev = type { %struct.trace_entry, ptr, i64, i64, i32, i32, i32, i8, i8, i32, [0 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.trace_event_raw_xhci_log_urb = type { %struct.trace_entry, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.trace_event_raw_xhci_log_ep_ctx = type { %struct.trace_entry, i32, i32, i64, i32, i32, [0 x i8] }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.trace_event_raw_xhci_log_slot_ctx = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.trace_event_raw_xhci_log_ctrl_ctx = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.xhci_input_control_ctx = type { i32, i32, [6 x i32] }
%struct.trace_event_raw_xhci_log_ring = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.trace_event_raw_xhci_log_portsc = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xhci_log_doorbell = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xhci_dbc_log_request = type { %struct.trace_entry, ptr, i8, i32, i32, i32, [0 x i8] }
%struct.dbc_request = type { ptr, i32, i32, ptr, %struct.list_head, i32, i32, ptr, %struct.list_head, i32, ptr, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_xhci_dbg_address = internal constant [17 x i8] c"xhci_dbg_address\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_address = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_address }, align 4
@__tracepoint_xhci_dbg_address = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_address, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_address, ptr null, ptr @__traceiter_xhci_dbg_address, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_address = internal constant ptr @__tracepoint_xhci_dbg_address, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_context_change = internal constant [24 x i8] c"xhci_dbg_context_change\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_context_change = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_context_change }, align 4
@__tracepoint_xhci_dbg_context_change = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_context_change, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_context_change, ptr null, ptr @__traceiter_xhci_dbg_context_change, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_context_change = internal constant ptr @__tracepoint_xhci_dbg_context_change, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_quirks = internal constant [16 x i8] c"xhci_dbg_quirks\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_quirks = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_quirks }, align 4
@__tracepoint_xhci_dbg_quirks = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_quirks, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_quirks, ptr null, ptr @__traceiter_xhci_dbg_quirks, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_quirks = internal constant ptr @__tracepoint_xhci_dbg_quirks, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_reset_ep = internal constant [18 x i8] c"xhci_dbg_reset_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_reset_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_reset_ep }, align 4
@__tracepoint_xhci_dbg_reset_ep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_reset_ep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_reset_ep, ptr null, ptr @__traceiter_xhci_dbg_reset_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_reset_ep = internal constant ptr @__tracepoint_xhci_dbg_reset_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_cancel_urb = internal constant [20 x i8] c"xhci_dbg_cancel_urb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_cancel_urb = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_cancel_urb }, align 4
@__tracepoint_xhci_dbg_cancel_urb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_cancel_urb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_cancel_urb, ptr null, ptr @__traceiter_xhci_dbg_cancel_urb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_cancel_urb = internal constant ptr @__tracepoint_xhci_dbg_cancel_urb, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_init = internal constant [14 x i8] c"xhci_dbg_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_init = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_init }, align 4
@__tracepoint_xhci_dbg_init = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_init, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_init, ptr null, ptr @__traceiter_xhci_dbg_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_init = internal constant ptr @__tracepoint_xhci_dbg_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_ring_expansion = internal constant [24 x i8] c"xhci_dbg_ring_expansion\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_ring_expansion = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_ring_expansion }, align 4
@__tracepoint_xhci_dbg_ring_expansion = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbg_ring_expansion, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_ring_expansion, ptr null, ptr @__traceiter_xhci_dbg_ring_expansion, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_ring_expansion = internal constant ptr @__tracepoint_xhci_dbg_ring_expansion, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_address_ctx = internal constant [17 x i8] c"xhci_address_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_address_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_address_ctx }, align 4
@__tracepoint_xhci_address_ctx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_address_ctx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_address_ctx, ptr null, ptr @__traceiter_xhci_address_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_address_ctx = internal constant ptr @__tracepoint_xhci_address_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_event = internal constant [18 x i8] c"xhci_handle_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_event = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_event }, align 4
@__tracepoint_xhci_handle_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_event, ptr null, ptr @__traceiter_xhci_handle_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_event = internal constant ptr @__tracepoint_xhci_handle_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_command = internal constant [20 x i8] c"xhci_handle_command\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_command = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_command }, align 4
@__tracepoint_xhci_handle_command = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_command, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_command, ptr null, ptr @__traceiter_xhci_handle_command, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_command = internal constant ptr @__tracepoint_xhci_handle_command, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_transfer = internal constant [21 x i8] c"xhci_handle_transfer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_transfer = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_transfer }, align 4
@__tracepoint_xhci_handle_transfer = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_transfer, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_transfer, ptr null, ptr @__traceiter_xhci_handle_transfer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_transfer = internal constant ptr @__tracepoint_xhci_handle_transfer, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_queue_trb = internal constant [15 x i8] c"xhci_queue_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_queue_trb = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_queue_trb }, align 4
@__tracepoint_xhci_queue_trb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_queue_trb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_queue_trb, ptr null, ptr @__traceiter_xhci_queue_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_queue_trb = internal constant ptr @__tracepoint_xhci_queue_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_handle_event = internal constant [22 x i8] c"xhci_dbc_handle_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_handle_event = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_handle_event }, align 4
@__tracepoint_xhci_dbc_handle_event = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_handle_event, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_handle_event, ptr null, ptr @__traceiter_xhci_dbc_handle_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_handle_event = internal constant ptr @__tracepoint_xhci_dbc_handle_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_handle_transfer = internal constant [25 x i8] c"xhci_dbc_handle_transfer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_handle_transfer = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_handle_transfer }, align 4
@__tracepoint_xhci_dbc_handle_transfer = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_handle_transfer, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_handle_transfer, ptr null, ptr @__traceiter_xhci_dbc_handle_transfer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_handle_transfer = internal constant ptr @__tracepoint_xhci_dbc_handle_transfer, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_gadget_ep_queue = internal constant [25 x i8] c"xhci_dbc_gadget_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_gadget_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_gadget_ep_queue }, align 4
@__tracepoint_xhci_dbc_gadget_ep_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_gadget_ep_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_gadget_ep_queue, ptr null, ptr @__traceiter_xhci_dbc_gadget_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_gadget_ep_queue = internal constant ptr @__tracepoint_xhci_dbc_gadget_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_free_virt_device = internal constant [22 x i8] c"xhci_free_virt_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_free_virt_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_free_virt_device }, align 4
@__tracepoint_xhci_free_virt_device = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_free_virt_device, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_free_virt_device, ptr null, ptr @__traceiter_xhci_free_virt_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_free_virt_device = internal constant ptr @__tracepoint_xhci_free_virt_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_alloc_virt_device = internal constant [23 x i8] c"xhci_alloc_virt_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_alloc_virt_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_alloc_virt_device }, align 4
@__tracepoint_xhci_alloc_virt_device = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_alloc_virt_device, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_alloc_virt_device, ptr null, ptr @__traceiter_xhci_alloc_virt_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_alloc_virt_device = internal constant ptr @__tracepoint_xhci_alloc_virt_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_setup_device = internal constant [18 x i8] c"xhci_setup_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_setup_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_setup_device }, align 4
@__tracepoint_xhci_setup_device = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_setup_device, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_setup_device, ptr null, ptr @__traceiter_xhci_setup_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_setup_device = internal constant ptr @__tracepoint_xhci_setup_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_setup_addressable_virt_device = internal constant [35 x i8] c"xhci_setup_addressable_virt_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_setup_addressable_virt_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_setup_addressable_virt_device }, align 4
@__tracepoint_xhci_setup_addressable_virt_device = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_setup_addressable_virt_device, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_setup_addressable_virt_device, ptr null, ptr @__traceiter_xhci_setup_addressable_virt_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_setup_addressable_virt_device = internal constant ptr @__tracepoint_xhci_setup_addressable_virt_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_stop_device = internal constant [17 x i8] c"xhci_stop_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_stop_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_stop_device }, align 4
@__tracepoint_xhci_stop_device = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_stop_device, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_stop_device, ptr null, ptr @__traceiter_xhci_stop_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_stop_device = internal constant ptr @__tracepoint_xhci_stop_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_urb_enqueue = internal constant [17 x i8] c"xhci_urb_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_urb_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_urb_enqueue }, align 4
@__tracepoint_xhci_urb_enqueue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_urb_enqueue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_urb_enqueue, ptr null, ptr @__traceiter_xhci_urb_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_urb_enqueue = internal constant ptr @__tracepoint_xhci_urb_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_urb_giveback = internal constant [18 x i8] c"xhci_urb_giveback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_urb_giveback = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_urb_giveback }, align 4
@__tracepoint_xhci_urb_giveback = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_urb_giveback, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_urb_giveback, ptr null, ptr @__traceiter_xhci_urb_giveback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_urb_giveback = internal constant ptr @__tracepoint_xhci_urb_giveback, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_urb_dequeue = internal constant [17 x i8] c"xhci_urb_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_urb_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_urb_dequeue }, align 4
@__tracepoint_xhci_urb_dequeue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_urb_dequeue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_urb_dequeue, ptr null, ptr @__traceiter_xhci_urb_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_urb_dequeue = internal constant ptr @__tracepoint_xhci_urb_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_stop_ep = internal constant [24 x i8] c"xhci_handle_cmd_stop_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_stop_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_stop_ep }, align 4
@__tracepoint_xhci_handle_cmd_stop_ep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_stop_ep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_stop_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_stop_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_stop_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_stop_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_set_deq_ep = internal constant [27 x i8] c"xhci_handle_cmd_set_deq_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_set_deq_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_set_deq_ep }, align 4
@__tracepoint_xhci_handle_cmd_set_deq_ep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_set_deq_ep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_set_deq_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_set_deq_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_set_deq_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_reset_ep = internal constant [25 x i8] c"xhci_handle_cmd_reset_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_reset_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_reset_ep }, align 4
@__tracepoint_xhci_handle_cmd_reset_ep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_reset_ep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_reset_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_reset_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_reset_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_reset_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_config_ep = internal constant [26 x i8] c"xhci_handle_cmd_config_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_config_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_config_ep }, align 4
@__tracepoint_xhci_handle_cmd_config_ep = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_config_ep, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_config_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_config_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_config_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_config_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_add_endpoint = internal constant [18 x i8] c"xhci_add_endpoint\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_add_endpoint = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_add_endpoint }, align 4
@__tracepoint_xhci_add_endpoint = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_add_endpoint, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_add_endpoint, ptr null, ptr @__traceiter_xhci_add_endpoint, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_add_endpoint = internal constant ptr @__tracepoint_xhci_add_endpoint, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_alloc_dev = internal constant [15 x i8] c"xhci_alloc_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_alloc_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_alloc_dev }, align 4
@__tracepoint_xhci_alloc_dev = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_alloc_dev, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_alloc_dev, ptr null, ptr @__traceiter_xhci_alloc_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_alloc_dev = internal constant ptr @__tracepoint_xhci_alloc_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_free_dev = internal constant [14 x i8] c"xhci_free_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_free_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_free_dev }, align 4
@__tracepoint_xhci_free_dev = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_free_dev, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_free_dev, ptr null, ptr @__traceiter_xhci_free_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_free_dev = internal constant ptr @__tracepoint_xhci_free_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_disable_slot = internal constant [29 x i8] c"xhci_handle_cmd_disable_slot\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_disable_slot = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_disable_slot }, align 4
@__tracepoint_xhci_handle_cmd_disable_slot = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_disable_slot, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_disable_slot, ptr null, ptr @__traceiter_xhci_handle_cmd_disable_slot, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_disable_slot = internal constant ptr @__tracepoint_xhci_handle_cmd_disable_slot, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_discover_or_reset_device = internal constant [30 x i8] c"xhci_discover_or_reset_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_discover_or_reset_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_discover_or_reset_device }, align 4
@__tracepoint_xhci_discover_or_reset_device = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_discover_or_reset_device, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_discover_or_reset_device, ptr null, ptr @__traceiter_xhci_discover_or_reset_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_discover_or_reset_device = internal constant ptr @__tracepoint_xhci_discover_or_reset_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_setup_device_slot = internal constant [23 x i8] c"xhci_setup_device_slot\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_setup_device_slot = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_setup_device_slot }, align 4
@__tracepoint_xhci_setup_device_slot = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_setup_device_slot, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_setup_device_slot, ptr null, ptr @__traceiter_xhci_setup_device_slot, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_setup_device_slot = internal constant ptr @__tracepoint_xhci_setup_device_slot, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_addr_dev = internal constant [25 x i8] c"xhci_handle_cmd_addr_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_addr_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_addr_dev }, align 4
@__tracepoint_xhci_handle_cmd_addr_dev = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_addr_dev, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_addr_dev, ptr null, ptr @__traceiter_xhci_handle_cmd_addr_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_addr_dev = internal constant ptr @__tracepoint_xhci_handle_cmd_addr_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_reset_dev = internal constant [26 x i8] c"xhci_handle_cmd_reset_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_reset_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_reset_dev }, align 4
@__tracepoint_xhci_handle_cmd_reset_dev = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_reset_dev, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_reset_dev, ptr null, ptr @__traceiter_xhci_handle_cmd_reset_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_reset_dev = internal constant ptr @__tracepoint_xhci_handle_cmd_reset_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_set_deq = internal constant [24 x i8] c"xhci_handle_cmd_set_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_set_deq = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_set_deq }, align 4
@__tracepoint_xhci_handle_cmd_set_deq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_cmd_set_deq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_set_deq, ptr null, ptr @__traceiter_xhci_handle_cmd_set_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_set_deq = internal constant ptr @__tracepoint_xhci_handle_cmd_set_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_configure_endpoint = internal constant [24 x i8] c"xhci_configure_endpoint\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_configure_endpoint = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_configure_endpoint }, align 4
@__tracepoint_xhci_configure_endpoint = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_configure_endpoint, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_configure_endpoint, ptr null, ptr @__traceiter_xhci_configure_endpoint, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_configure_endpoint = internal constant ptr @__tracepoint_xhci_configure_endpoint, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_address_ctrl_ctx = internal constant [22 x i8] c"xhci_address_ctrl_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_address_ctrl_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_address_ctrl_ctx }, align 4
@__tracepoint_xhci_address_ctrl_ctx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_address_ctrl_ctx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_address_ctrl_ctx, ptr null, ptr @__traceiter_xhci_address_ctrl_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_address_ctrl_ctx = internal constant ptr @__tracepoint_xhci_address_ctrl_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_configure_endpoint_ctrl_ctx = internal constant [33 x i8] c"xhci_configure_endpoint_ctrl_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_configure_endpoint_ctrl_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_configure_endpoint_ctrl_ctx }, align 4
@__tracepoint_xhci_configure_endpoint_ctrl_ctx = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_configure_endpoint_ctrl_ctx, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_configure_endpoint_ctrl_ctx, ptr null, ptr @__traceiter_xhci_configure_endpoint_ctrl_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_configure_endpoint_ctrl_ctx = internal constant ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_alloc = internal constant [16 x i8] c"xhci_ring_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_alloc }, align 4
@__tracepoint_xhci_ring_alloc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_ring_alloc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_ring_alloc, ptr null, ptr @__traceiter_xhci_ring_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_alloc = internal constant ptr @__tracepoint_xhci_ring_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_free = internal constant [15 x i8] c"xhci_ring_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_free = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_free }, align 4
@__tracepoint_xhci_ring_free = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_ring_free, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_ring_free, ptr null, ptr @__traceiter_xhci_ring_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_free = internal constant ptr @__tracepoint_xhci_ring_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_expansion = internal constant [20 x i8] c"xhci_ring_expansion\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_expansion = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_expansion }, align 4
@__tracepoint_xhci_ring_expansion = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_ring_expansion, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_ring_expansion, ptr null, ptr @__traceiter_xhci_ring_expansion, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_expansion = internal constant ptr @__tracepoint_xhci_ring_expansion, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_inc_enq = internal constant [13 x i8] c"xhci_inc_enq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_inc_enq = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_inc_enq }, align 4
@__tracepoint_xhci_inc_enq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_inc_enq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_inc_enq, ptr null, ptr @__traceiter_xhci_inc_enq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_inc_enq = internal constant ptr @__tracepoint_xhci_inc_enq, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_inc_deq = internal constant [13 x i8] c"xhci_inc_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_inc_deq = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_inc_deq }, align 4
@__tracepoint_xhci_inc_deq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_inc_deq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_inc_deq, ptr null, ptr @__traceiter_xhci_inc_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_inc_deq = internal constant ptr @__tracepoint_xhci_inc_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_port_status = internal constant [24 x i8] c"xhci_handle_port_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_port_status = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_port_status }, align 4
@__tracepoint_xhci_handle_port_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_handle_port_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_handle_port_status, ptr null, ptr @__traceiter_xhci_handle_port_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_port_status = internal constant ptr @__tracepoint_xhci_handle_port_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_get_port_status = internal constant [21 x i8] c"xhci_get_port_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_get_port_status = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_get_port_status }, align 4
@__tracepoint_xhci_get_port_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_get_port_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_get_port_status, ptr null, ptr @__traceiter_xhci_get_port_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_get_port_status = internal constant ptr @__tracepoint_xhci_get_port_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_hub_status_data = internal constant [21 x i8] c"xhci_hub_status_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_hub_status_data = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_hub_status_data }, align 4
@__tracepoint_xhci_hub_status_data = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_hub_status_data, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_hub_status_data, ptr null, ptr @__traceiter_xhci_hub_status_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_hub_status_data = internal constant ptr @__tracepoint_xhci_hub_status_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_ep_doorbell = internal constant [22 x i8] c"xhci_ring_ep_doorbell\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_ep_doorbell = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_ep_doorbell }, align 4
@__tracepoint_xhci_ring_ep_doorbell = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_ring_ep_doorbell, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_ring_ep_doorbell, ptr null, ptr @__traceiter_xhci_ring_ep_doorbell, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_ep_doorbell = internal constant ptr @__tracepoint_xhci_ring_ep_doorbell, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_host_doorbell = internal constant [24 x i8] c"xhci_ring_host_doorbell\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_host_doorbell = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_host_doorbell }, align 4
@__tracepoint_xhci_ring_host_doorbell = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_ring_host_doorbell, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_ring_host_doorbell, ptr null, ptr @__traceiter_xhci_ring_host_doorbell, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_host_doorbell = internal constant ptr @__tracepoint_xhci_ring_host_doorbell, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_alloc_request = internal constant [23 x i8] c"xhci_dbc_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_alloc_request }, align 4
@__tracepoint_xhci_dbc_alloc_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_alloc_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_alloc_request, ptr null, ptr @__traceiter_xhci_dbc_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_alloc_request = internal constant ptr @__tracepoint_xhci_dbc_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_free_request = internal constant [22 x i8] c"xhci_dbc_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_free_request }, align 4
@__tracepoint_xhci_dbc_free_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_free_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_free_request, ptr null, ptr @__traceiter_xhci_dbc_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_free_request = internal constant ptr @__tracepoint_xhci_dbc_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_queue_request = internal constant [23 x i8] c"xhci_dbc_queue_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_queue_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_queue_request }, align 4
@__tracepoint_xhci_dbc_queue_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_queue_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_queue_request, ptr null, ptr @__traceiter_xhci_dbc_queue_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_queue_request = internal constant ptr @__tracepoint_xhci_dbc_queue_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_giveback_request = internal constant [26 x i8] c"xhci_dbc_giveback_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_giveback_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_giveback_request }, align 4
@__tracepoint_xhci_dbc_giveback_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_xhci_dbc_giveback_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_giveback_request, ptr null, ptr @__traceiter_xhci_dbc_giveback_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_giveback_request = internal constant ptr @__tracepoint_xhci_dbc_giveback_request, section "__tracepoints_ptrs", align 4
@str__xhci_hcd__trace_system_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci-hcd\00", [23 x i8] zeroinitializer }, align 32
@trace_event_fields_xhci_log_msg = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xhci_log_msg = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_msg, ptr @perf_trace_xhci_log_msg, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_msg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_msg, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_msg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_msg = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_msg, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_msg = internal global { [21 x i8], [43 x i8] } { [21 x i8] c"\22%s\22, __get_str(msg)\00", [43 x i8] zeroinitializer }, align 32
@event_xhci_dbg_address = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_address }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_address = internal global ptr @event_xhci_dbg_address, section "_ftrace_events", align 4
@event_xhci_dbg_context_change = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_context_change }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_context_change = internal global ptr @event_xhci_dbg_context_change, section "_ftrace_events", align 4
@event_xhci_dbg_quirks = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_quirks }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_quirks = internal global ptr @event_xhci_dbg_quirks, section "_ftrace_events", align 4
@event_xhci_dbg_reset_ep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_reset_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_reset_ep = internal global ptr @event_xhci_dbg_reset_ep, section "_ftrace_events", align 4
@event_xhci_dbg_cancel_urb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_cancel_urb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_cancel_urb = internal global ptr @event_xhci_dbg_cancel_urb, section "_ftrace_events", align 4
@event_xhci_dbg_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_init = internal global ptr @event_xhci_dbg_init, section "_ftrace_events", align 4
@event_xhci_dbg_ring_expansion = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.101 { ptr @__tracepoint_xhci_dbg_ring_expansion }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbg_ring_expansion = internal global ptr @event_xhci_dbg_ring_expansion, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ctx = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.99 { %struct.anon.100 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.99 { %struct.anon.100 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.99 { %struct.anon.100 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.99 { %struct.anon.100 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_xhci_log_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ctx, ptr @perf_trace_xhci_log_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ctx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ctx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_ctx = internal global { [128 x i8], [32 x i8] } { [128 x i8] c"\22ctx_64=%d, ctx_type=%u, ctx_dma=@%llx, ctx_va=@%p\22, REC->ctx_64, REC->ctx_type, (unsigned long long) REC->ctx_dma, REC->ctx_va\00", [32 x i8] zeroinitializer }, align 32
@event_xhci_address_ctx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ctx, %union.anon.101 { ptr @__tracepoint_xhci_address_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ctx }, ptr @print_fmt_xhci_log_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_address_ctx = internal global ptr @event_xhci_address_ctx, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_trb = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_xhci_log_trb = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_trb, ptr @perf_trace_xhci_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_trb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_trb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_trb = internal global { [133 x i8], [59 x i8] } { [133 x i8] c"\22%s: %s\22, xhci_ring_type_string(REC->type), xhci_decode_trb(__get_str(str), 500, REC->field0, REC->field1, REC->field2, REC->field3)\00", [59 x i8] zeroinitializer }, align 32
@event_xhci_handle_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_handle_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_event = internal global ptr @event_xhci_handle_event, section "_ftrace_events", align 4
@event_xhci_handle_command = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_handle_command }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_command = internal global ptr @event_xhci_handle_command, section "_ftrace_events", align 4
@event_xhci_handle_transfer = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_handle_transfer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_transfer = internal global ptr @event_xhci_handle_transfer, section "_ftrace_events", align 4
@event_xhci_queue_trb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_queue_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_queue_trb = internal global ptr @event_xhci_queue_trb, section "_ftrace_events", align 4
@event_xhci_dbc_handle_event = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_dbc_handle_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_handle_event = internal global ptr @event_xhci_dbc_handle_event, section "_ftrace_events", align 4
@event_xhci_dbc_handle_transfer = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_dbc_handle_transfer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_handle_transfer = internal global ptr @event_xhci_dbc_handle_transfer, section "_ftrace_events", align 4
@event_xhci_dbc_gadget_ep_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.101 { ptr @__tracepoint_xhci_dbc_gadget_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_gadget_ep_queue = internal global ptr @event_xhci_dbc_gadget_ep_queue, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_free_virt_dev = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.120, %union.anon.99 { %struct.anon.100 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.99 { %struct.anon.100 { ptr @.str.123, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.99 { %struct.anon.100 { ptr @.str.124, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.99 { %struct.anon.100 { ptr @.str.126, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.99 { %struct.anon.100 { ptr @.str.127, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.128, %union.anon.99 { %struct.anon.100 { ptr @.str.129, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_xhci_log_free_virt_dev = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_free_virt_dev, ptr @perf_trace_xhci_log_free_virt_dev, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_free_virt_dev, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_free_virt_dev, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_free_virt_dev, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_free_virt_dev = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_free_virt_dev, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_free_virt_dev = internal global { [155 x i8], [37 x i8] } { [155 x i8] c"\22vdev %p ctx %llx | %llx fake_port %d real_port %d current_mel %d\22, REC->vdev, REC->in_ctx, REC->out_ctx, REC->fake_port, REC->real_port, REC->current_mel\00", [37 x i8] zeroinitializer }, align 32
@event_xhci_free_virt_device = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_free_virt_dev, %union.anon.101 { ptr @__tracepoint_xhci_free_virt_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_free_virt_dev }, ptr @print_fmt_xhci_log_free_virt_dev, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_free_virt_device = internal global ptr @event_xhci_free_virt_device, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_virt_dev = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.120, %union.anon.99 { %struct.anon.100 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.99 { %struct.anon.100 { ptr @.str.123, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.99 { %struct.anon.100 { ptr @.str.124, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.131, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.132, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.133, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.99 { %struct.anon.100 { ptr @.str.134, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.99 { %struct.anon.100 { ptr @.str.135, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xhci_log_virt_dev = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_virt_dev, ptr @perf_trace_xhci_log_virt_dev, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_virt_dev, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_virt_dev, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_virt_dev, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_virt_dev = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_virt_dev, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_virt_dev = internal global { [191 x i8], [33 x i8] } { [191 x i8] c"\22vdev %p ctx %llx | %llx num %d state %d speed %d port %d level %d slot %d\22, REC->vdev, REC->in_ctx, REC->out_ctx, REC->devnum, REC->state, REC->speed, REC->portnum, REC->level, REC->slot_id\00", [33 x i8] zeroinitializer }, align 32
@event_xhci_alloc_virt_device = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.101 { ptr @__tracepoint_xhci_alloc_virt_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_alloc_virt_device = internal global ptr @event_xhci_alloc_virt_device, section "_ftrace_events", align 4
@event_xhci_setup_device = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.101 { ptr @__tracepoint_xhci_setup_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_setup_device = internal global ptr @event_xhci_setup_device, section "_ftrace_events", align 4
@event_xhci_setup_addressable_virt_device = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.101 { ptr @__tracepoint_xhci_setup_addressable_virt_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_setup_addressable_virt_device = internal global ptr @event_xhci_setup_addressable_virt_device, section "_ftrace_events", align 4
@event_xhci_stop_device = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.101 { ptr @__tracepoint_xhci_stop_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_stop_device = internal global ptr @event_xhci_stop_device, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_urb = internal global { [14 x %struct.trace_event_fields], [80 x i8] } { [14 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.120, %union.anon.99 { %struct.anon.100 { ptr @.str.137, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.139, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.140, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.141, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.142, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.143, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.144, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.145, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.146, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.147, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.148, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [80 x i8] zeroinitializer }, align 32
@event_class_xhci_log_urb = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_urb, ptr @perf_trace_xhci_log_urb, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_urb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_urb, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_urb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_urb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_urb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_urb = internal global { [333 x i8], [83 x i8] } { [333 x i8] c"\22ep%d%s-%s: urb %p pipe %u slot %d length %d/%d sgs %d/%d stream %d flags %08x\22, REC->epnum, REC->dir_in ? \22in\22 : \22out\22, __print_symbolic(REC->type, { 3, \22intr\22 }, { 0, \22control\22 }, { 2, \22bulk\22 }, { 1, \22isoc\22 }), REC->urb, REC->pipe, REC->slot_id, REC->actual, REC->length, REC->num_mapped_sgs, REC->num_sgs, REC->stream, REC->flags\00", [83 x i8] zeroinitializer }, align 32
@event_xhci_urb_enqueue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_urb, %union.anon.101 { ptr @__tracepoint_xhci_urb_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_urb }, ptr @print_fmt_xhci_log_urb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_urb_enqueue = internal global ptr @event_xhci_urb_enqueue, section "_ftrace_events", align 4
@event_xhci_urb_giveback = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_urb, %union.anon.101 { ptr @__tracepoint_xhci_urb_giveback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_urb }, ptr @print_fmt_xhci_log_urb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_urb_giveback = internal global ptr @event_xhci_urb_giveback, section "_ftrace_events", align 4
@event_xhci_urb_dequeue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_urb, %union.anon.101 { ptr @__tracepoint_xhci_urb_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_urb }, ptr @print_fmt_xhci_log_urb, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_urb_dequeue = internal global ptr @event_xhci_urb_dequeue, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ep_ctx = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.156, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.157, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.158, %union.anon.99 { %struct.anon.100 { ptr @.str.159, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.160, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xhci_log_ep_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ep_ctx, ptr @perf_trace_xhci_log_ep_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ep_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ep_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ep_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ep_ctx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ep_ctx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_ep_ctx = internal global { [92 x i8], [36 x i8] } { [92 x i8] c"\22%s\22, xhci_decode_ep_context(__get_str(str), REC->info, REC->info2, REC->deq, REC->tx_info)\00", [36 x i8] zeroinitializer }, align 32
@event_xhci_handle_cmd_stop_ep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_stop_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_stop_ep = internal global ptr @event_xhci_handle_cmd_stop_ep, section "_ftrace_events", align 4
@event_xhci_handle_cmd_set_deq_ep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_set_deq_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_set_deq_ep = internal global ptr @event_xhci_handle_cmd_set_deq_ep, section "_ftrace_events", align 4
@event_xhci_handle_cmd_reset_ep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_reset_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_reset_ep = internal global ptr @event_xhci_handle_cmd_reset_ep, section "_ftrace_events", align 4
@event_xhci_handle_cmd_config_ep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_config_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_config_ep = internal global ptr @event_xhci_handle_cmd_config_ep, section "_ftrace_events", align 4
@event_xhci_add_endpoint = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.101 { ptr @__tracepoint_xhci_add_endpoint }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_add_endpoint = internal global ptr @event_xhci_add_endpoint, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_slot_ctx = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.156, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.157, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.181, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.132, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xhci_log_slot_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_slot_ctx, ptr @perf_trace_xhci_log_slot_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_slot_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_slot_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_slot_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_slot_ctx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_slot_ctx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_slot_ctx = internal global { [96 x i8], [32 x i8] } { [96 x i8] c"\22%s\22, xhci_decode_slot_context(__get_str(str), REC->info, REC->info2, REC->tt_info, REC->state)\00", [32 x i8] zeroinitializer }, align 32
@event_xhci_alloc_dev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_alloc_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_alloc_dev = internal global ptr @event_xhci_alloc_dev, section "_ftrace_events", align 4
@event_xhci_free_dev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_free_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_free_dev = internal global ptr @event_xhci_free_dev, section "_ftrace_events", align 4
@event_xhci_handle_cmd_disable_slot = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_disable_slot }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_disable_slot = internal global ptr @event_xhci_handle_cmd_disable_slot, section "_ftrace_events", align 4
@event_xhci_discover_or_reset_device = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_discover_or_reset_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_discover_or_reset_device = internal global ptr @event_xhci_discover_or_reset_device, section "_ftrace_events", align 4
@event_xhci_setup_device_slot = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_setup_device_slot }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_setup_device_slot = internal global ptr @event_xhci_setup_device_slot, section "_ftrace_events", align 4
@event_xhci_handle_cmd_addr_dev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_addr_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_addr_dev = internal global ptr @event_xhci_handle_cmd_addr_dev, section "_ftrace_events", align 4
@event_xhci_handle_cmd_reset_dev = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_reset_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_reset_dev = internal global ptr @event_xhci_handle_cmd_reset_dev, section "_ftrace_events", align 4
@event_xhci_handle_cmd_set_deq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_handle_cmd_set_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_cmd_set_deq = internal global ptr @event_xhci_handle_cmd_set_deq, section "_ftrace_events", align 4
@event_xhci_configure_endpoint = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.101 { ptr @__tracepoint_xhci_configure_endpoint }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_configure_endpoint = internal global ptr @event_xhci_configure_endpoint, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ctrl_ctx = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.197, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.198, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_xhci_log_ctrl_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ctrl_ctx, ptr @perf_trace_xhci_log_ctrl_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ctrl_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ctrl_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ctrl_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ctrl_ctx = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ctrl_ctx, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_ctrl_ctx = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\22%s\22, xhci_decode_ctrl_ctx(__get_str(str), REC->drop, REC->add)\00", [32 x i8] zeroinitializer }, align 32
@event_xhci_address_ctrl_ctx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ctrl_ctx, %union.anon.101 { ptr @__tracepoint_xhci_address_ctrl_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ctrl_ctx }, ptr @print_fmt_xhci_log_ctrl_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_address_ctrl_ctx = internal global ptr @event_xhci_address_ctrl_ctx, section "_ftrace_events", align 4
@event_xhci_configure_endpoint_ctrl_ctx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ctrl_ctx, %union.anon.101 { ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ctrl_ctx }, ptr @print_fmt_xhci_log_ctrl_ctx, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_configure_endpoint_ctrl_ctx = internal global ptr @event_xhci_configure_endpoint_ctrl_ctx, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ring = internal global { [12 x %struct.trace_event_fields], [64 x i8] } { [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.120, %union.anon.99 { %struct.anon.100 { ptr @.str.205, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.206, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.159, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.207, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.99 { %struct.anon.100 { ptr @.str.208, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.209, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.210, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.211, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.212, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.213, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [64 x i8] zeroinitializer }, align 32
@event_class_xhci_log_ring = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ring, ptr @perf_trace_xhci_log_ring, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ring, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ring, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ring, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ring = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ring, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_ring = internal global { [276 x i8], [76 x i8] } { [276 x i8] c"\22%s %p: enq %pad(%pad) deq %pad(%pad) segs %d stream %d free_trbs %d bounce %d cycle %d\22, xhci_ring_type_string(REC->type), REC->ring, &REC->enq, &REC->enq_seg, &REC->deq, &REC->deq_seg, REC->num_segs, REC->stream_id, REC->num_trbs_free, REC->bounce_buf_len, REC->cycle_state\00", [76 x i8] zeroinitializer }, align 32
@event_xhci_ring_alloc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.101 { ptr @__tracepoint_xhci_ring_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_ring_alloc = internal global ptr @event_xhci_ring_alloc, section "_ftrace_events", align 4
@event_xhci_ring_free = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.101 { ptr @__tracepoint_xhci_ring_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_ring_free = internal global ptr @event_xhci_ring_free, section "_ftrace_events", align 4
@event_xhci_ring_expansion = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.101 { ptr @__tracepoint_xhci_ring_expansion }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_ring_expansion = internal global ptr @event_xhci_ring_expansion, section "_ftrace_events", align 4
@event_xhci_inc_enq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.101 { ptr @__tracepoint_xhci_inc_enq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_inc_enq = internal global ptr @event_xhci_inc_enq, section "_ftrace_events", align 4
@event_xhci_inc_deq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.101 { ptr @__tracepoint_xhci_inc_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_inc_deq = internal global ptr @event_xhci_inc_deq, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_portsc = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.134, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.215, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_xhci_log_portsc = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_portsc, ptr @perf_trace_xhci_log_portsc, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_portsc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_portsc, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_portsc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_portsc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_portsc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_portsc = internal global { [77 x i8], [51 x i8] } { [77 x i8] c"\22port-%d: %s\22, REC->portnum, xhci_decode_portsc(__get_str(str), REC->portsc)\00", [51 x i8] zeroinitializer }, align 32
@event_xhci_handle_port_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_portsc, %union.anon.101 { ptr @__tracepoint_xhci_handle_port_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_portsc }, ptr @print_fmt_xhci_log_portsc, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_handle_port_status = internal global ptr @event_xhci_handle_port_status, section "_ftrace_events", align 4
@event_xhci_get_port_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_portsc, %union.anon.101 { ptr @__tracepoint_xhci_get_port_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_portsc }, ptr @print_fmt_xhci_log_portsc, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_get_port_status = internal global ptr @event_xhci_get_port_status, section "_ftrace_events", align 4
@event_xhci_hub_status_data = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_portsc, %union.anon.101 { ptr @__tracepoint_xhci_hub_status_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_portsc }, ptr @print_fmt_xhci_log_portsc, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_hub_status_data = internal global ptr @event_xhci_hub_status_data, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_doorbell = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.252, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.99 { %struct.anon.100 { ptr @.str.253, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.99 { %struct.anon.100 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_xhci_log_doorbell = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_doorbell, ptr @perf_trace_xhci_log_doorbell, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_doorbell, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_doorbell, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_doorbell, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_doorbell = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_doorbell, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_log_doorbell = internal global { [87 x i8], [41 x i8] } { [87 x i8] c"\22Ring doorbell for %s\22, xhci_decode_doorbell(__get_str(str), REC->slot, REC->doorbell)\00", [41 x i8] zeroinitializer }, align 32
@event_xhci_ring_ep_doorbell = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_doorbell, %union.anon.101 { ptr @__tracepoint_xhci_ring_ep_doorbell }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_doorbell }, ptr @print_fmt_xhci_log_doorbell, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_ring_ep_doorbell = internal global ptr @event_xhci_ring_ep_doorbell, section "_ftrace_events", align 4
@event_xhci_ring_host_doorbell = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_doorbell, %union.anon.101 { ptr @__tracepoint_xhci_ring_host_doorbell }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_doorbell }, ptr @print_fmt_xhci_log_doorbell, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_ring_host_doorbell = internal global ptr @event_xhci_ring_host_doorbell, section "_ftrace_events", align 4
@trace_event_fields_xhci_dbc_log_request = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.261, %union.anon.99 { %struct.anon.100 { ptr @.str.262, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.263, %union.anon.99 { %struct.anon.100 { ptr @.str.264, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.146, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.99 { %struct.anon.100 { ptr @.str.145, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.99 { %struct.anon.100 { ptr @.str.141, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_xhci_dbc_log_request = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_dbc_log_request, ptr @perf_trace_xhci_dbc_log_request, ptr @trace_event_reg, ptr @trace_event_fields_xhci_dbc_log_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_dbc_log_request, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_dbc_log_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_dbc_log_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_xhci_dbc_log_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_xhci_dbc_log_request = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22%s: req %p length %u/%u ==> %d\22, REC->dir ? \22bulk-in\22 : \22bulk-out\22, REC->req, REC->actual, REC->length, REC->status\00", [43 x i8] zeroinitializer }, align 32
@event_xhci_dbc_alloc_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.101 { ptr @__tracepoint_xhci_dbc_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_alloc_request = internal global ptr @event_xhci_dbc_alloc_request, section "_ftrace_events", align 4
@event_xhci_dbc_free_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.101 { ptr @__tracepoint_xhci_dbc_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_free_request = internal global ptr @event_xhci_dbc_free_request, section "_ftrace_events", align 4
@event_xhci_dbc_queue_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.101 { ptr @__tracepoint_xhci_dbc_queue_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_queue_request = internal global ptr @event_xhci_dbc_queue_request, section "_ftrace_events", align 4
@event_xhci_dbc_giveback_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.101 { ptr @__tracepoint_xhci_dbc_giveback_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.102 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_xhci_dbc_giveback_request = internal global ptr @event_xhci_dbc_giveback_request, section "_ftrace_events", align 4
@__bpf_trace_tp_map_xhci_dbg_address = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_address, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbg_context_change = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_context_change, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbg_quirks = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_quirks, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbg_reset_ep = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_reset_ep, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbg_cancel_urb = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_cancel_urb, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbg_init = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_init, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbg_ring_expansion = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbg_ring_expansion, ptr @__bpf_trace_xhci_log_msg, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_address_ctx = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_address_ctx, ptr @__bpf_trace_xhci_log_ctx, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_event = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_event, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_command = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_command, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_transfer = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_transfer, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_queue_trb = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_queue_trb, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_handle_event = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_handle_event, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_handle_transfer = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_handle_transfer, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_gadget_ep_queue = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_gadget_ep_queue, ptr @__bpf_trace_xhci_log_trb, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_free_virt_device = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_free_virt_device, ptr @__bpf_trace_xhci_log_free_virt_dev, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_alloc_virt_device = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_alloc_virt_device, ptr @__bpf_trace_xhci_log_virt_dev, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_setup_device = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_setup_device, ptr @__bpf_trace_xhci_log_virt_dev, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_setup_addressable_virt_device = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_setup_addressable_virt_device, ptr @__bpf_trace_xhci_log_virt_dev, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_stop_device = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_stop_device, ptr @__bpf_trace_xhci_log_virt_dev, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_urb_enqueue = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_urb_enqueue, ptr @__bpf_trace_xhci_log_urb, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_urb_giveback = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_urb_giveback, ptr @__bpf_trace_xhci_log_urb, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_urb_dequeue = internal global %union.anon.125 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_urb_dequeue, ptr @__bpf_trace_xhci_log_urb, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_stop_ep = internal global %union.anon.126 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_stop_ep, ptr @__bpf_trace_xhci_log_ep_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_set_deq_ep = internal global %union.anon.127 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, ptr @__bpf_trace_xhci_log_ep_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_reset_ep = internal global %union.anon.128 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_reset_ep, ptr @__bpf_trace_xhci_log_ep_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_config_ep = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_config_ep, ptr @__bpf_trace_xhci_log_ep_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_add_endpoint = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_add_endpoint, ptr @__bpf_trace_xhci_log_ep_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_alloc_dev = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_alloc_dev, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_free_dev = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_free_dev, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_disable_slot = internal global %union.anon.133 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_disable_slot, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_discover_or_reset_device = internal global %union.anon.134 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_discover_or_reset_device, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_setup_device_slot = internal global %union.anon.135 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_setup_device_slot, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_addr_dev = internal global %union.anon.136 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_addr_dev, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_reset_dev = internal global %union.anon.137 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_reset_dev, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_cmd_set_deq = internal global %union.anon.138 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_cmd_set_deq, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_configure_endpoint = internal global %union.anon.139 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_configure_endpoint, ptr @__bpf_trace_xhci_log_slot_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_address_ctrl_ctx = internal global %union.anon.140 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_address_ctrl_ctx, ptr @__bpf_trace_xhci_log_ctrl_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_configure_endpoint_ctrl_ctx = internal global %union.anon.141 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, ptr @__bpf_trace_xhci_log_ctrl_ctx, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_ring_alloc = internal global %union.anon.142 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_ring_alloc, ptr @__bpf_trace_xhci_log_ring, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_ring_free = internal global %union.anon.143 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_ring_free, ptr @__bpf_trace_xhci_log_ring, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_ring_expansion = internal global %union.anon.144 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_ring_expansion, ptr @__bpf_trace_xhci_log_ring, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_inc_enq = internal global %union.anon.145 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_inc_enq, ptr @__bpf_trace_xhci_log_ring, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_inc_deq = internal global %union.anon.146 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_inc_deq, ptr @__bpf_trace_xhci_log_ring, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_handle_port_status = internal global %union.anon.147 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_handle_port_status, ptr @__bpf_trace_xhci_log_portsc, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_get_port_status = internal global %union.anon.148 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_get_port_status, ptr @__bpf_trace_xhci_log_portsc, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_hub_status_data = internal global %union.anon.149 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_hub_status_data, ptr @__bpf_trace_xhci_log_portsc, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_ring_ep_doorbell = internal global %union.anon.150 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_ring_ep_doorbell, ptr @__bpf_trace_xhci_log_doorbell, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_ring_host_doorbell = internal global %union.anon.151 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_ring_host_doorbell, ptr @__bpf_trace_xhci_log_doorbell, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_alloc_request = internal global %union.anon.152 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_alloc_request, ptr @__bpf_trace_xhci_dbc_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_free_request = internal global %union.anon.153 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_free_request, ptr @__bpf_trace_xhci_dbc_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_queue_request = internal global %union.anon.154 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_queue_request, ptr @__bpf_trace_xhci_dbc_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_xhci_dbc_giveback_request = internal global %union.anon.155 { %struct.bpf_raw_event_map { ptr @__tracepoint_xhci_dbc_giveback_request, ptr @__bpf_trace_xhci_dbc_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__kstrtab___tracepoint_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_xhci_dbg_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_xhci_dbg_quirks to i32), ptr @__kstrtab___tracepoint_xhci_dbg_quirks, ptr @__kstrtabns___tracepoint_xhci_dbg_quirks }, section "___ksymtab_gpl+__tracepoint_xhci_dbg_quirks", align 4
@__kstrtab___traceiter_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_xhci_dbg_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_xhci_dbg_quirks to i32), ptr @__kstrtab___traceiter_xhci_dbg_quirks, ptr @__kstrtabns___traceiter_xhci_dbg_quirks }, section "___ksymtab_gpl+__traceiter_xhci_dbg_quirks", align 4
@__kstrtab___SCK__tp_func_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_xhci_dbg_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_xhci_dbg_quirks to i32), ptr @__kstrtab___SCK__tp_func_xhci_dbg_quirks, ptr @__kstrtabns___SCK__tp_func_xhci_dbg_quirks }, section "___ksymtab_gpl+__SCK__tp_func_xhci_dbg_quirks", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ctx_64\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctx_type\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma_addr_t\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctx_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"u8 *\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ctx_va\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctx_ep_num\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slot_id\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__data_loc u32[]\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctx_data\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ctx_64=%d, ctx_type=%u, ctx_dma=@%llx, ctx_va=@%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"field0\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"field1\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"field2\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"field3\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"str\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CTRL\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ISOC\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BULK\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTR\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STREAM\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CMD\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EVENT\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"LINK %08x%08x intr %d type '%s' flags %c:%c:%c:%c\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"TRB %08x%08x status '%s' len %d slot %d ep %d type '%s' flags %c:%c\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"bRequestType %02x bRequest %02x wValue %02x%02x wIndex %02x%02x wLength %d length %d TD size %d intr %d type '%s' flags %c:%c:%c\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c:%c\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: flags %c\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: slot %d flags %c\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ctx %08x%08x slot %d flags %c:%c\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ctx %08x%08x slot %d flags %c\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ctx %08x%08x slot %d ep %d flags %c:%c\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: slot %d sp %d ep %d flags %c\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: deq %08x%08x stream %d slot %d ep %d flags %c\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: event %08x%08x vf intr %d vf id %d flags %c\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: belt %d flags %c\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ctx %08x%08x slot %d speed %d flags %c\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: info %08x%08x%08x pkt type %d roothub port %d flags %c\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"type '%s' -> raw %08x %08x %08x %08x\00", [59 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Setup Stage\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Data Stage\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Status Stage\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Isoch\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Link\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Event Data\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"No-Op\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enable Slot Command\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disable Slot Command\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Address Device Command\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Configure Endpoint Command\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Evaluate Context Command\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reset Endpoint Command\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stop Ring Command\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set TR Dequeue Pointer Command\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reset Device Command\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Force Event Command\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Negotiate Bandwidth Command\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Set Latency Tolerance Value Command\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Get Port Bandwidth Command\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Force Header Command\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No-Op Command\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Transfer Event\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Command Completion Event\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Port Status Change Event\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bandwidth Request Event\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Doorbell Event\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Host Controller Event\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device Notification Event\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MFINDEX Wrap Event\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NEC Command Completion Event\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NET Get Firmware Revision Command\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Success\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Data Buffer Error\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Babble Detected\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB Transaction Error\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TRB Error\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Stall Error\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Resource Error\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bandwidth Error\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No Slots Available Error\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid Stream Type Error\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Slot Not Enabled Error\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Endpoint Not Enabled Error\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Short Packet\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Ring Underrun\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Ring Overrun\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VF Event Ring Full Error\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Parameter Error\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bandwidth Overrun Error\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Context State Error\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No Ping Response Error\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Event Ring Full Error\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Incompatible Device Error\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Missed Service Error\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Command Ring Stopped\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Command Aborted\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stopped - Length Invalid\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Stopped - Short Packet\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Max Exit Latency Too Large Error\00", [63 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Isoch Buffer Overrun\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Event Lost Error\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Undefined Error\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid Stream ID Error\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Secondary Bandwidth Error\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Split Transaction Error\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Unknown!!\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdev\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unsigned long long\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"out_ctx\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in_ctx\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fake_port\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"real_port\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"current_mel\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"vdev %p ctx %llx | %llx fake_port %d real_port %d current_mel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"devnum\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"portnum\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"vdev %p ctx %llx | %llx num %d state %d speed %d port %d level %d slot %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"urb\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stream\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_mapped_sgs\00", [17 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_sgs\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actual\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"epnum\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dir_in\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ep%d%s-%s: urb %p pipe %u slot %d length %d/%d sgs %d/%d stream %d flags %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@trace_raw_output_xhci_log_urb.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.152 }, %struct.trace_print_flags { i32 0, ptr @.str.153 }, %struct.trace_print_flags { i32 2, ptr @.str.154 }, %struct.trace_print_flags { i32 1, ptr @.str.155 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"info2\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"deq\00", [28 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_info\00", [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"State %s mult %d max P. Streams %d %s\00", [58 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LSA \00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.164 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"interval %d us max ESIT payload %d CErr %d \00", [52 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Type %s %sburst %d maxp %d deq %016llx \00", [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HID\00", [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"avg trb len %d\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"halted\00", [25 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Isoc OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bulk OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Int OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Isoc IN\00", [24 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bulk IN\00", [24 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Int IN\00", [25 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tt_info\00", [24 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RS %05x %s%s%s Ctx Entries %d MEL %d us Port# %d/%d\00", [44 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low-speed\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"super-speed\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"super-speed plus\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UNKNOWN speed\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" multi-TT\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" Hub\00", [27 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c" [TT Slot %d Port# %d TTT %d Intr %d] Addr %d State %s\00", [41 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enabled/disabled\00", [47 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"addressed\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"configured\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"drop\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Drop:\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %d%s\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Add:%s%s\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" slot\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ep0\00", [27 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ring\00", [27 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"enq\00", [28 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enq_seg\00", [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deq_seg\00", [24 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_segs\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stream_id\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cycle_state\00", [20 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"num_trbs_free\00", [18 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bounce_buf_len\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s %p: enq %pad(%pad) deq %pad(%pad) segs %d stream %d free_trbs %d bounce %d cycle %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"portsc\00", [25 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"port-%d: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s %s Link:%s PortSpeed:%d \00", [33 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Powered\00", [24 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Powered-off\00", [20 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Not-connected\00", [18 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OverCurrent \00", [19 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"In-Reset \00", [22 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Change: \00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CSC \00", [27 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PEC \00", [27 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WRC \00", [27 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OCC \00", [27 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PRC \00", [27 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLC \00", [27 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CEC \00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CAS \00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Wake: \00", [25 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WCE \00", [27 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WDE \00", [27 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WOE \00", [27 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U0\00", [29 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U1\00", [29 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U2\00", [29 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U3\00", [29 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxDetect\00", [23 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Polling\00", [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hot Reset\00", [22 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Compliance mode\00", [16 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test mode\00", [22 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Resume\00", [25 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slot\00", [27 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"doorbell\00", [23 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ring doorbell for %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Command Ring %d\00", [16 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Slot %d \00", [23 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%d%s\00", [25 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Reserved %d\00", [20 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Vendor Defined %d\00", [46 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" Stream %d\00", [21 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct dbc_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: req %p length %u/%u ==> %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bulk-in\00", [24 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bulk-out\00", [23 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@switch.table.trace_raw_output_xhci_log_trb = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [36 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_trb.268 = internal constant { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.119, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [44 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_trb.269 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_trb.270 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_trb.271 = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [36 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_trb.272 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [56 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_trb.273 = internal constant { [56 x ptr], [32 x i8] } { [56 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.81, ptr @.str.82, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_ep_ctx = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.172, ptr @.str.173, ptr @.str.173, ptr @.str.173, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_ep_ctx.274 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], [32 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_slot_ctx = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187], [44 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_slot_ctx.275 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195], [16 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_ring = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [36 x i8] zeroinitializer }, align 32
@switch.table.trace_raw_output_xhci_log_portsc = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.223, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.251, ptr @.str.251, ptr @.str.251, ptr @.str.250], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [33 x i64] [i64 31, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39]
@___asan_gen_ = private constant [33 x i8] c"../drivers/usb/host/xhci-trace.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [33 x i8] c"str__xhci_hcd__trace_system_name\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 36, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [32 x i8] c"trace_event_fields_xhci_log_msg\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_xhci_log_msg\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [23 x i8] c"print_fmt_xhci_log_msg\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [23 x i8] c"event_xhci_dbg_address\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 38, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant [30 x i8] c"event_xhci_dbg_context_change\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 43, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant [22 x i8] c"event_xhci_dbg_quirks\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 48, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant [24 x i8] c"event_xhci_dbg_reset_ep\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 53, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"event_xhci_dbg_cancel_urb\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 58, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c"event_xhci_dbg_init\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 63, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant [30 x i8] c"event_xhci_dbg_ring_expansion\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 68, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [32 x i8] c"trace_event_fields_xhci_log_ctx\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_xhci_log_ctx\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [23 x i8] c"print_fmt_xhci_log_ctx\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [23 x i8] c"event_xhci_address_ctx\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 108, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant [32 x i8] c"trace_event_fields_xhci_log_trb\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_xhci_log_trb\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [23 x i8] c"print_fmt_xhci_log_trb\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [24 x i8] c"event_xhci_handle_event\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 138, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [26 x i8] c"event_xhci_handle_command\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 143, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant [27 x i8] c"event_xhci_handle_transfer\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 148, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant [21 x i8] c"event_xhci_queue_trb\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 153, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [28 x i8] c"event_xhci_dbc_handle_event\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 158, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant [31 x i8] c"event_xhci_dbc_handle_transfer\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 163, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant [31 x i8] c"event_xhci_dbc_gadget_ep_queue\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 168, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant [42 x i8] c"trace_event_fields_xhci_log_free_virt_dev\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_xhci_log_free_virt_dev\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [33 x i8] c"print_fmt_xhci_log_free_virt_dev\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [28 x i8] c"event_xhci_free_virt_device\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 199, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant [37 x i8] c"trace_event_fields_xhci_log_virt_dev\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_xhci_log_virt_dev\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [28 x i8] c"print_fmt_xhci_log_virt_dev\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [29 x i8] c"event_xhci_alloc_virt_device\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 236, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant [24 x i8] c"event_xhci_setup_device\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 241, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant [41 x i8] c"event_xhci_setup_addressable_virt_device\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 246, i32 1 }
@___asan_gen_.381 = private unnamed_addr constant [23 x i8] c"event_xhci_stop_device\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 251, i32 1 }
@___asan_gen_.384 = private unnamed_addr constant [32 x i8] c"trace_event_fields_xhci_log_urb\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_xhci_log_urb\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [23 x i8] c"print_fmt_xhci_log_urb\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [23 x i8] c"event_xhci_urb_enqueue\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 302, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant [24 x i8] c"event_xhci_urb_giveback\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 307, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [23 x i8] c"event_xhci_urb_dequeue\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 312, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [35 x i8] c"trace_event_fields_xhci_log_ep_ctx\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_xhci_log_ep_ctx\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [26 x i8] c"print_fmt_xhci_log_ep_ctx\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [30 x i8] c"event_xhci_handle_cmd_stop_ep\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 338, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant [33 x i8] c"event_xhci_handle_cmd_set_deq_ep\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 343, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant [31 x i8] c"event_xhci_handle_cmd_reset_ep\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 348, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [32 x i8] c"event_xhci_handle_cmd_config_ep\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 353, i32 1 }
@___asan_gen_.423 = private unnamed_addr constant [24 x i8] c"event_xhci_add_endpoint\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 358, i32 1 }
@___asan_gen_.426 = private unnamed_addr constant [37 x i8] c"trace_event_fields_xhci_log_slot_ctx\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_xhci_log_slot_ctx\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [28 x i8] c"print_fmt_xhci_log_slot_ctx\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [21 x i8] c"event_xhci_alloc_dev\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 385, i32 1 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c"event_xhci_free_dev\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 390, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant [35 x i8] c"event_xhci_handle_cmd_disable_slot\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 395, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant [36 x i8] c"event_xhci_discover_or_reset_device\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 400, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [29 x i8] c"event_xhci_setup_device_slot\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 405, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [31 x i8] c"event_xhci_handle_cmd_addr_dev\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 410, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant [32 x i8] c"event_xhci_handle_cmd_reset_dev\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 415, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant [30 x i8] c"event_xhci_handle_cmd_set_deq\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 420, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant [30 x i8] c"event_xhci_configure_endpoint\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 425, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant [37 x i8] c"trace_event_fields_xhci_log_ctrl_ctx\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_xhci_log_ctrl_ctx\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [28 x i8] c"print_fmt_xhci_log_ctrl_ctx\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [28 x i8] c"event_xhci_address_ctrl_ctx\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 446, i32 1 }
@___asan_gen_.474 = private unnamed_addr constant [39 x i8] c"event_xhci_configure_endpoint_ctrl_ctx\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 451, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant [33 x i8] c"trace_event_fields_xhci_log_ring\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_xhci_log_ring\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [24 x i8] c"print_fmt_xhci_log_ring\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [22 x i8] c"event_xhci_ring_alloc\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 497, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c"event_xhci_ring_free\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 502, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant [26 x i8] c"event_xhci_ring_expansion\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 507, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"event_xhci_inc_enq\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 512, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant [19 x i8] c"event_xhci_inc_deq\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 517, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant [35 x i8] c"trace_event_fields_xhci_log_portsc\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_xhci_log_portsc\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [26 x i8] c"print_fmt_xhci_log_portsc\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [30 x i8] c"event_xhci_handle_port_status\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 540, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant [27 x i8] c"event_xhci_get_port_status\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 545, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant [27 x i8] c"event_xhci_hub_status_data\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 550, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant [37 x i8] c"trace_event_fields_xhci_log_doorbell\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_xhci_log_doorbell\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [28 x i8] c"print_fmt_xhci_log_doorbell\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [28 x i8] c"event_xhci_ring_ep_doorbell\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 572, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant [30 x i8] c"event_xhci_ring_host_doorbell\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 577, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant [40 x i8] c"trace_event_fields_xhci_dbc_log_request\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_xhci_dbc_log_request\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [31 x i8] c"print_fmt_xhci_dbc_log_request\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [29 x i8] c"event_xhci_dbc_alloc_request\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 606, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant [28 x i8] c"event_xhci_dbc_free_request\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 611, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant [29 x i8] c"event_xhci_dbc_queue_request\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 616, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant [32 x i8] c"event_xhci_dbc_giveback_request\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 621, i32 1 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 28, i32 1 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 73, i32 1 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 114, i32 1 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1597, i32 10 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1599, i32 10 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1601, i32 10 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1603, i32 10 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1605, i32 10 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1607, i32 10 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1609, i32 10 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1612, i32 9 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2250, i32 4 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2267, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2280, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2298, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2312, i32 5 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2326, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2343, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2350, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2357, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2375, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2383, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2394, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2404, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2422, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2431, i32 4 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2438, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2447, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2456, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1435, i32 10 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1437, i32 10 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1439, i32 10 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1441, i32 10 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1443, i32 10 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1445, i32 10 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1447, i32 10 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1449, i32 10 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1451, i32 10 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1453, i32 10 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1455, i32 10 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1457, i32 10 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1459, i32 10 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1461, i32 10 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1463, i32 10 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1465, i32 10 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1467, i32 10 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1469, i32 10 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1471, i32 10 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1473, i32 10 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1475, i32 10 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1477, i32 10 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1479, i32 10 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1481, i32 10 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1483, i32 10 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1485, i32 10 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1487, i32 10 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1489, i32 10 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1491, i32 10 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1493, i32 10 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1495, i32 10 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1497, i32 10 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1499, i32 10 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1136, i32 10 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1138, i32 10 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1140, i32 10 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1142, i32 10 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1144, i32 10 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1146, i32 10 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1148, i32 10 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1150, i32 10 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1152, i32 10 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1154, i32 10 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1156, i32 10 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1158, i32 10 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1160, i32 10 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1162, i32 10 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1164, i32 10 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1166, i32 10 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1168, i32 10 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1170, i32 10 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1172, i32 10 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1174, i32 10 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1176, i32 10 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1178, i32 10 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1180, i32 10 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1182, i32 10 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1184, i32 10 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1186, i32 10 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1188, i32 10 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1190, i32 10 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1192, i32 10 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1194, i32 10 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1196, i32 10 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1198, i32 10 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1200, i32 10 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1202, i32 10 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1204, i32 10 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1206, i32 10 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 1208, i32 10 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 173, i32 1 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 204, i32 1 }
@___asan_gen_.1011 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 256, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 317, i32 1 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2756, i32 21 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2758, i32 20 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2758, i32 29 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2760, i32 28 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2763, i32 28 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2764, i32 40 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2767, i32 28 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2683, i32 10 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2685, i32 10 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2687, i32 10 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2689, i32 10 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2691, i32 10 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2693, i32 10 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2701, i32 10 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2703, i32 10 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2705, i32 10 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2707, i32 10 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2709, i32 10 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2711, i32 10 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2713, i32 10 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 363, i32 1 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2504, i32 21 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2509, i32 9 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2512, i32 9 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2515, i32 9 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2518, i32 9 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2521, i32 9 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2524, i32 9 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2526, i32 10 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2527, i32 10 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2533, i32 28 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2230, i32 10 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2232, i32 10 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2234, i32 10 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2236, i32 10 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2238, i32 10 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 430, i32 1 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2471, i32 22 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2473, i32 30 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2476, i32 29 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2480, i32 29 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2481, i32 31 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2482, i32 30 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 456, i32 1 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 522, i32 1 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2582, i32 21 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2583, i32 31 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2583, i32 43 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2584, i32 33 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2584, i32 47 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2585, i32 29 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2585, i32 41 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2590, i32 29 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2592, i32 29 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2594, i32 28 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2596, i32 29 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2598, i32 29 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2600, i32 29 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2602, i32 29 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2604, i32 29 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2606, i32 29 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2608, i32 29 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2610, i32 29 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2612, i32 28 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2614, i32 29 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2616, i32 29 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2618, i32 29 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2547, i32 10 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2549, i32 10 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2551, i32 10 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2553, i32 10 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2557, i32 10 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2559, i32 10 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2561, i32 10 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2563, i32 10 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2565, i32 10 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2567, i32 10 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2569, i32 10 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2571, i32 10 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2575, i32 9 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 555, i32 1 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2661, i32 16 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2664, i32 21 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2666, i32 28 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2670, i32 28 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2672, i32 28 }
@___asan_gen_.1339 = private unnamed_addr constant [27 x i8] c"../drivers/usb/host/xhci.h\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1339, i32 2674, i32 28 }
@___asan_gen_.1359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant [35 x i8] c"../drivers/usb/host/./xhci-trace.h\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1360, i32 582, i32 1 }
@___asan_gen_.1362 = private unnamed_addr constant [43 x i8] c"switch.table.trace_raw_output_xhci_log_trb\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_xhci_log_trb.268\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_xhci_log_trb.269\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_xhci_log_trb.270\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_xhci_log_trb.271\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_xhci_log_trb.272\00", align 1
@___asan_gen_.1368 = private unnamed_addr constant [47 x i8] c"switch.table.trace_raw_output_xhci_log_trb.273\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant [46 x i8] c"switch.table.trace_raw_output_xhci_log_ep_ctx\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant [50 x i8] c"switch.table.trace_raw_output_xhci_log_ep_ctx.274\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant [48 x i8] c"switch.table.trace_raw_output_xhci_log_slot_ctx\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant [52 x i8] c"switch.table.trace_raw_output_xhci_log_slot_ctx.275\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant [44 x i8] c"switch.table.trace_raw_output_xhci_log_ring\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant [46 x i8] c"switch.table.trace_raw_output_xhci_log_portsc\00", align 1
@llvm.compiler.used = appending global [603 x ptr] [ptr @__bpf_trace_tp_map_xhci_add_endpoint, ptr @__bpf_trace_tp_map_xhci_address_ctrl_ctx, ptr @__bpf_trace_tp_map_xhci_address_ctx, ptr @__bpf_trace_tp_map_xhci_alloc_dev, ptr @__bpf_trace_tp_map_xhci_alloc_virt_device, ptr @__bpf_trace_tp_map_xhci_configure_endpoint, ptr @__bpf_trace_tp_map_xhci_configure_endpoint_ctrl_ctx, ptr @__bpf_trace_tp_map_xhci_dbc_alloc_request, ptr @__bpf_trace_tp_map_xhci_dbc_free_request, ptr @__bpf_trace_tp_map_xhci_dbc_gadget_ep_queue, ptr @__bpf_trace_tp_map_xhci_dbc_giveback_request, ptr @__bpf_trace_tp_map_xhci_dbc_handle_event, ptr @__bpf_trace_tp_map_xhci_dbc_handle_transfer, ptr @__bpf_trace_tp_map_xhci_dbc_queue_request, ptr @__bpf_trace_tp_map_xhci_dbg_address, ptr @__bpf_trace_tp_map_xhci_dbg_cancel_urb, ptr @__bpf_trace_tp_map_xhci_dbg_context_change, ptr @__bpf_trace_tp_map_xhci_dbg_init, ptr @__bpf_trace_tp_map_xhci_dbg_quirks, ptr @__bpf_trace_tp_map_xhci_dbg_reset_ep, ptr @__bpf_trace_tp_map_xhci_dbg_ring_expansion, ptr @__bpf_trace_tp_map_xhci_discover_or_reset_device, ptr @__bpf_trace_tp_map_xhci_free_dev, ptr @__bpf_trace_tp_map_xhci_free_virt_device, ptr @__bpf_trace_tp_map_xhci_get_port_status, ptr @__bpf_trace_tp_map_xhci_handle_cmd_addr_dev, ptr @__bpf_trace_tp_map_xhci_handle_cmd_config_ep, ptr @__bpf_trace_tp_map_xhci_handle_cmd_disable_slot, ptr @__bpf_trace_tp_map_xhci_handle_cmd_reset_dev, ptr @__bpf_trace_tp_map_xhci_handle_cmd_reset_ep, ptr @__bpf_trace_tp_map_xhci_handle_cmd_set_deq, ptr @__bpf_trace_tp_map_xhci_handle_cmd_set_deq_ep, ptr @__bpf_trace_tp_map_xhci_handle_cmd_stop_ep, ptr @__bpf_trace_tp_map_xhci_handle_command, ptr @__bpf_trace_tp_map_xhci_handle_event, ptr @__bpf_trace_tp_map_xhci_handle_port_status, ptr @__bpf_trace_tp_map_xhci_handle_transfer, ptr @__bpf_trace_tp_map_xhci_hub_status_data, ptr @__bpf_trace_tp_map_xhci_inc_deq, ptr @__bpf_trace_tp_map_xhci_inc_enq, ptr @__bpf_trace_tp_map_xhci_queue_trb, ptr @__bpf_trace_tp_map_xhci_ring_alloc, ptr @__bpf_trace_tp_map_xhci_ring_ep_doorbell, ptr @__bpf_trace_tp_map_xhci_ring_expansion, ptr @__bpf_trace_tp_map_xhci_ring_free, ptr @__bpf_trace_tp_map_xhci_ring_host_doorbell, ptr @__bpf_trace_tp_map_xhci_setup_addressable_virt_device, ptr @__bpf_trace_tp_map_xhci_setup_device, ptr @__bpf_trace_tp_map_xhci_setup_device_slot, ptr @__bpf_trace_tp_map_xhci_stop_device, ptr @__bpf_trace_tp_map_xhci_urb_dequeue, ptr @__bpf_trace_tp_map_xhci_urb_enqueue, ptr @__bpf_trace_tp_map_xhci_urb_giveback, ptr @__event_xhci_add_endpoint, ptr @__event_xhci_address_ctrl_ctx, ptr @__event_xhci_address_ctx, ptr @__event_xhci_alloc_dev, ptr @__event_xhci_alloc_virt_device, ptr @__event_xhci_configure_endpoint, ptr @__event_xhci_configure_endpoint_ctrl_ctx, ptr @__event_xhci_dbc_alloc_request, ptr @__event_xhci_dbc_free_request, ptr @__event_xhci_dbc_gadget_ep_queue, ptr @__event_xhci_dbc_giveback_request, ptr @__event_xhci_dbc_handle_event, ptr @__event_xhci_dbc_handle_transfer, ptr @__event_xhci_dbc_queue_request, ptr @__event_xhci_dbg_address, ptr @__event_xhci_dbg_cancel_urb, ptr @__event_xhci_dbg_context_change, ptr @__event_xhci_dbg_init, ptr @__event_xhci_dbg_quirks, ptr @__event_xhci_dbg_reset_ep, ptr @__event_xhci_dbg_ring_expansion, ptr @__event_xhci_discover_or_reset_device, ptr @__event_xhci_free_dev, ptr @__event_xhci_free_virt_device, ptr @__event_xhci_get_port_status, ptr @__event_xhci_handle_cmd_addr_dev, ptr @__event_xhci_handle_cmd_config_ep, ptr @__event_xhci_handle_cmd_disable_slot, ptr @__event_xhci_handle_cmd_reset_dev, ptr @__event_xhci_handle_cmd_reset_ep, ptr @__event_xhci_handle_cmd_set_deq, ptr @__event_xhci_handle_cmd_set_deq_ep, ptr @__event_xhci_handle_cmd_stop_ep, ptr @__event_xhci_handle_command, ptr @__event_xhci_handle_event, ptr @__event_xhci_handle_port_status, ptr @__event_xhci_handle_transfer, ptr @__event_xhci_hub_status_data, ptr @__event_xhci_inc_deq, ptr @__event_xhci_inc_enq, ptr @__event_xhci_queue_trb, ptr @__event_xhci_ring_alloc, ptr @__event_xhci_ring_ep_doorbell, ptr @__event_xhci_ring_expansion, ptr @__event_xhci_ring_free, ptr @__event_xhci_ring_host_doorbell, ptr @__event_xhci_setup_addressable_virt_device, ptr @__event_xhci_setup_device, ptr @__event_xhci_setup_device_slot, ptr @__event_xhci_stop_device, ptr @__event_xhci_urb_dequeue, ptr @__event_xhci_urb_enqueue, ptr @__event_xhci_urb_giveback, ptr @__ksymtab___SCK__tp_func_xhci_dbg_quirks, ptr @__ksymtab___traceiter_xhci_dbg_quirks, ptr @__ksymtab___tracepoint_xhci_dbg_quirks, ptr @__tracepoint_ptr_xhci_add_endpoint, ptr @__tracepoint_ptr_xhci_address_ctrl_ctx, ptr @__tracepoint_ptr_xhci_address_ctx, ptr @__tracepoint_ptr_xhci_alloc_dev, ptr @__tracepoint_ptr_xhci_alloc_virt_device, ptr @__tracepoint_ptr_xhci_configure_endpoint, ptr @__tracepoint_ptr_xhci_configure_endpoint_ctrl_ctx, ptr @__tracepoint_ptr_xhci_dbc_alloc_request, ptr @__tracepoint_ptr_xhci_dbc_free_request, ptr @__tracepoint_ptr_xhci_dbc_gadget_ep_queue, ptr @__tracepoint_ptr_xhci_dbc_giveback_request, ptr @__tracepoint_ptr_xhci_dbc_handle_event, ptr @__tracepoint_ptr_xhci_dbc_handle_transfer, ptr @__tracepoint_ptr_xhci_dbc_queue_request, ptr @__tracepoint_ptr_xhci_dbg_address, ptr @__tracepoint_ptr_xhci_dbg_cancel_urb, ptr @__tracepoint_ptr_xhci_dbg_context_change, ptr @__tracepoint_ptr_xhci_dbg_init, ptr @__tracepoint_ptr_xhci_dbg_quirks, ptr @__tracepoint_ptr_xhci_dbg_reset_ep, ptr @__tracepoint_ptr_xhci_dbg_ring_expansion, ptr @__tracepoint_ptr_xhci_discover_or_reset_device, ptr @__tracepoint_ptr_xhci_free_dev, ptr @__tracepoint_ptr_xhci_free_virt_device, ptr @__tracepoint_ptr_xhci_get_port_status, ptr @__tracepoint_ptr_xhci_handle_cmd_addr_dev, ptr @__tracepoint_ptr_xhci_handle_cmd_config_ep, ptr @__tracepoint_ptr_xhci_handle_cmd_disable_slot, ptr @__tracepoint_ptr_xhci_handle_cmd_reset_dev, ptr @__tracepoint_ptr_xhci_handle_cmd_reset_ep, ptr @__tracepoint_ptr_xhci_handle_cmd_set_deq, ptr @__tracepoint_ptr_xhci_handle_cmd_set_deq_ep, ptr @__tracepoint_ptr_xhci_handle_cmd_stop_ep, ptr @__tracepoint_ptr_xhci_handle_command, ptr @__tracepoint_ptr_xhci_handle_event, ptr @__tracepoint_ptr_xhci_handle_port_status, ptr @__tracepoint_ptr_xhci_handle_transfer, ptr @__tracepoint_ptr_xhci_hub_status_data, ptr @__tracepoint_ptr_xhci_inc_deq, ptr @__tracepoint_ptr_xhci_inc_enq, ptr @__tracepoint_ptr_xhci_queue_trb, ptr @__tracepoint_ptr_xhci_ring_alloc, ptr @__tracepoint_ptr_xhci_ring_ep_doorbell, ptr @__tracepoint_ptr_xhci_ring_expansion, ptr @__tracepoint_ptr_xhci_ring_free, ptr @__tracepoint_ptr_xhci_ring_host_doorbell, ptr @__tracepoint_ptr_xhci_setup_addressable_virt_device, ptr @__tracepoint_ptr_xhci_setup_device, ptr @__tracepoint_ptr_xhci_setup_device_slot, ptr @__tracepoint_ptr_xhci_stop_device, ptr @__tracepoint_ptr_xhci_urb_dequeue, ptr @__tracepoint_ptr_xhci_urb_enqueue, ptr @__tracepoint_ptr_xhci_urb_giveback, ptr @__tracepoint_xhci_add_endpoint, ptr @__tracepoint_xhci_address_ctrl_ctx, ptr @__tracepoint_xhci_address_ctx, ptr @__tracepoint_xhci_alloc_dev, ptr @__tracepoint_xhci_alloc_virt_device, ptr @__tracepoint_xhci_configure_endpoint, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, ptr @__tracepoint_xhci_dbc_alloc_request, ptr @__tracepoint_xhci_dbc_free_request, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, ptr @__tracepoint_xhci_dbc_giveback_request, ptr @__tracepoint_xhci_dbc_handle_event, ptr @__tracepoint_xhci_dbc_handle_transfer, ptr @__tracepoint_xhci_dbc_queue_request, ptr @__tracepoint_xhci_dbg_address, ptr @__tracepoint_xhci_dbg_cancel_urb, ptr @__tracepoint_xhci_dbg_context_change, ptr @__tracepoint_xhci_dbg_init, ptr @__tracepoint_xhci_dbg_quirks, ptr @__tracepoint_xhci_dbg_reset_ep, ptr @__tracepoint_xhci_dbg_ring_expansion, ptr @__tracepoint_xhci_discover_or_reset_device, ptr @__tracepoint_xhci_free_dev, ptr @__tracepoint_xhci_free_virt_device, ptr @__tracepoint_xhci_get_port_status, ptr @__tracepoint_xhci_handle_cmd_addr_dev, ptr @__tracepoint_xhci_handle_cmd_config_ep, ptr @__tracepoint_xhci_handle_cmd_disable_slot, ptr @__tracepoint_xhci_handle_cmd_reset_dev, ptr @__tracepoint_xhci_handle_cmd_reset_ep, ptr @__tracepoint_xhci_handle_cmd_set_deq, ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, ptr @__tracepoint_xhci_handle_cmd_stop_ep, ptr @__tracepoint_xhci_handle_command, ptr @__tracepoint_xhci_handle_event, ptr @__tracepoint_xhci_handle_port_status, ptr @__tracepoint_xhci_handle_transfer, ptr @__tracepoint_xhci_hub_status_data, ptr @__tracepoint_xhci_inc_deq, ptr @__tracepoint_xhci_inc_enq, ptr @__tracepoint_xhci_queue_trb, ptr @__tracepoint_xhci_ring_alloc, ptr @__tracepoint_xhci_ring_ep_doorbell, ptr @__tracepoint_xhci_ring_expansion, ptr @__tracepoint_xhci_ring_free, ptr @__tracepoint_xhci_ring_host_doorbell, ptr @__tracepoint_xhci_setup_addressable_virt_device, ptr @__tracepoint_xhci_setup_device, ptr @__tracepoint_xhci_setup_device_slot, ptr @__tracepoint_xhci_stop_device, ptr @__tracepoint_xhci_urb_dequeue, ptr @__tracepoint_xhci_urb_enqueue, ptr @__tracepoint_xhci_urb_giveback, ptr @event_class_xhci_dbc_log_request, ptr @event_class_xhci_log_ctrl_ctx, ptr @event_class_xhci_log_ctx, ptr @event_class_xhci_log_doorbell, ptr @event_class_xhci_log_ep_ctx, ptr @event_class_xhci_log_free_virt_dev, ptr @event_class_xhci_log_msg, ptr @event_class_xhci_log_portsc, ptr @event_class_xhci_log_ring, ptr @event_class_xhci_log_slot_ctx, ptr @event_class_xhci_log_trb, ptr @event_class_xhci_log_urb, ptr @event_class_xhci_log_virt_dev, ptr @event_xhci_add_endpoint, ptr @event_xhci_address_ctrl_ctx, ptr @event_xhci_address_ctx, ptr @event_xhci_alloc_dev, ptr @event_xhci_alloc_virt_device, ptr @event_xhci_configure_endpoint, ptr @event_xhci_configure_endpoint_ctrl_ctx, ptr @event_xhci_dbc_alloc_request, ptr @event_xhci_dbc_free_request, ptr @event_xhci_dbc_gadget_ep_queue, ptr @event_xhci_dbc_giveback_request, ptr @event_xhci_dbc_handle_event, ptr @event_xhci_dbc_handle_transfer, ptr @event_xhci_dbc_queue_request, ptr @event_xhci_dbg_address, ptr @event_xhci_dbg_cancel_urb, ptr @event_xhci_dbg_context_change, ptr @event_xhci_dbg_init, ptr @event_xhci_dbg_quirks, ptr @event_xhci_dbg_reset_ep, ptr @event_xhci_dbg_ring_expansion, ptr @event_xhci_discover_or_reset_device, ptr @event_xhci_free_dev, ptr @event_xhci_free_virt_device, ptr @event_xhci_get_port_status, ptr @event_xhci_handle_cmd_addr_dev, ptr @event_xhci_handle_cmd_config_ep, ptr @event_xhci_handle_cmd_disable_slot, ptr @event_xhci_handle_cmd_reset_dev, ptr @event_xhci_handle_cmd_reset_ep, ptr @event_xhci_handle_cmd_set_deq, ptr @event_xhci_handle_cmd_set_deq_ep, ptr @event_xhci_handle_cmd_stop_ep, ptr @event_xhci_handle_command, ptr @event_xhci_handle_event, ptr @event_xhci_handle_port_status, ptr @event_xhci_handle_transfer, ptr @event_xhci_hub_status_data, ptr @event_xhci_inc_deq, ptr @event_xhci_inc_enq, ptr @event_xhci_queue_trb, ptr @event_xhci_ring_alloc, ptr @event_xhci_ring_ep_doorbell, ptr @event_xhci_ring_expansion, ptr @event_xhci_ring_free, ptr @event_xhci_ring_host_doorbell, ptr @event_xhci_setup_addressable_virt_device, ptr @event_xhci_setup_device, ptr @event_xhci_setup_device_slot, ptr @event_xhci_stop_device, ptr @event_xhci_urb_dequeue, ptr @event_xhci_urb_enqueue, ptr @event_xhci_urb_giveback, ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_fields_xhci_log_msg, ptr @trace_event_type_funcs_xhci_log_msg, ptr @print_fmt_xhci_log_msg, ptr @trace_event_fields_xhci_log_ctx, ptr @trace_event_type_funcs_xhci_log_ctx, ptr @print_fmt_xhci_log_ctx, ptr @trace_event_fields_xhci_log_trb, ptr @trace_event_type_funcs_xhci_log_trb, ptr @print_fmt_xhci_log_trb, ptr @trace_event_fields_xhci_log_free_virt_dev, ptr @trace_event_type_funcs_xhci_log_free_virt_dev, ptr @print_fmt_xhci_log_free_virt_dev, ptr @trace_event_fields_xhci_log_virt_dev, ptr @trace_event_type_funcs_xhci_log_virt_dev, ptr @print_fmt_xhci_log_virt_dev, ptr @trace_event_fields_xhci_log_urb, ptr @trace_event_type_funcs_xhci_log_urb, ptr @print_fmt_xhci_log_urb, ptr @trace_event_fields_xhci_log_ep_ctx, ptr @trace_event_type_funcs_xhci_log_ep_ctx, ptr @print_fmt_xhci_log_ep_ctx, ptr @trace_event_fields_xhci_log_slot_ctx, ptr @trace_event_type_funcs_xhci_log_slot_ctx, ptr @print_fmt_xhci_log_slot_ctx, ptr @trace_event_fields_xhci_log_ctrl_ctx, ptr @trace_event_type_funcs_xhci_log_ctrl_ctx, ptr @print_fmt_xhci_log_ctrl_ctx, ptr @trace_event_fields_xhci_log_ring, ptr @trace_event_type_funcs_xhci_log_ring, ptr @print_fmt_xhci_log_ring, ptr @trace_event_fields_xhci_log_portsc, ptr @trace_event_type_funcs_xhci_log_portsc, ptr @print_fmt_xhci_log_portsc, ptr @trace_event_fields_xhci_log_doorbell, ptr @trace_event_type_funcs_xhci_log_doorbell, ptr @print_fmt_xhci_log_doorbell, ptr @trace_event_fields_xhci_dbc_log_request, ptr @trace_event_type_funcs_xhci_dbc_log_request, ptr @print_fmt_xhci_dbc_log_request, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @trace_raw_output_xhci_log_urb.symbols, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @switch.table.trace_raw_output_xhci_log_trb, ptr @switch.table.trace_raw_output_xhci_log_trb.268, ptr @switch.table.trace_raw_output_xhci_log_trb.269, ptr @switch.table.trace_raw_output_xhci_log_trb.270, ptr @switch.table.trace_raw_output_xhci_log_trb.271, ptr @switch.table.trace_raw_output_xhci_log_trb.272, ptr @switch.table.trace_raw_output_xhci_log_trb.273, ptr @switch.table.trace_raw_output_xhci_log_ep_ctx, ptr @switch.table.trace_raw_output_xhci_log_ep_ctx.274, ptr @switch.table.trace_raw_output_xhci_log_slot_ctx, ptr @switch.table.trace_raw_output_xhci_log_slot_ctx.275, ptr @switch.table.trace_raw_output_xhci_log_ring, ptr @switch.table.trace_raw_output_xhci_log_portsc], section "llvm.metadata"
@0 = internal global [375 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__xhci_hcd__trace_system_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_msg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_msg to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_address to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_context_change to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_quirks to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_reset_ep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_cancel_urb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbg_ring_expansion to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_ctx to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_ctx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_ctx to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_address_ctx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_trb to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_trb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_trb to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_command to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_transfer to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_queue_trb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_handle_event to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_handle_transfer to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_gadget_ep_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_free_virt_dev to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_free_virt_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_free_virt_dev to i32), i32 155, i32 192, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_free_virt_device to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_virt_dev to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_virt_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_virt_dev to i32), i32 191, i32 224, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_alloc_virt_device to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_setup_device to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_setup_addressable_virt_device to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_stop_device to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_urb to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_urb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_urb to i32), i32 333, i32 416, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_urb_enqueue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_urb_giveback to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_urb_dequeue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_ep_ctx to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_ep_ctx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_ep_ctx to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_stop_ep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_set_deq_ep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_reset_ep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_config_ep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_add_endpoint to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_slot_ctx to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_slot_ctx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_slot_ctx to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_alloc_dev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_free_dev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_disable_slot to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_discover_or_reset_device to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_setup_device_slot to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_addr_dev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_reset_dev to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_cmd_set_deq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_configure_endpoint to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_ctrl_ctx to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_ctrl_ctx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_ctrl_ctx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_address_ctrl_ctx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_configure_endpoint_ctrl_ctx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_ring to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_ring to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_ring to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_ring_alloc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_ring_free to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_ring_expansion to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_inc_enq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_inc_deq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_portsc to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_portsc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_portsc to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_handle_port_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_get_port_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_hub_status_data to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_log_doorbell to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_log_doorbell to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_log_doorbell to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_ring_ep_doorbell to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_ring_host_doorbell to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_xhci_dbc_log_request to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_xhci_dbc_log_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_xhci_dbc_log_request to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_alloc_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_free_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_queue_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_xhci_dbc_giveback_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_xhci_log_urb.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb.268 to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb.269 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb.270 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb.271 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb.272 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_trb.273 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_ep_ctx to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_ep_ctx.274 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_slot_ctx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_slot_ctx.275 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_ring to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.trace_raw_output_xhci_log_portsc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_address(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_address, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_context_change(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_quirks(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_reset_ep(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_reset_ep, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_cancel_urb(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_cancel_urb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_init(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_ring_expansion(ptr nocapture readnone %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vaf) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_address_ctx(ptr nocapture readnone %__data, ptr noundef %xhci, ptr noundef %ctx, i32 noundef %ep_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_address_ctx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %xhci, ptr noundef %ctx, i32 noundef %ep_num) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_event(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_command(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_command, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_transfer(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_transfer, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_queue_trb(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_queue_trb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_handle_event(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_handle_event, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_handle_transfer(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_handle_transfer, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_gadget_ep_queue(ptr nocapture readnone %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring, ptr noundef %trb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_free_virt_device(ptr nocapture readnone %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_free_virt_device, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vdev) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_alloc_virt_device(ptr nocapture readnone %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_alloc_virt_device, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vdev) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_setup_device(ptr nocapture readnone %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_setup_device, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vdev) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_setup_addressable_virt_device(ptr nocapture readnone %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_setup_addressable_virt_device, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vdev) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_stop_device(ptr nocapture readnone %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_stop_device, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %vdev) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_urb_enqueue(ptr nocapture readnone %__data, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_urb_enqueue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %urb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_urb_giveback(ptr nocapture readnone %__data, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_urb_giveback, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %urb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_urb_dequeue(ptr nocapture readnone %__data, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_urb_dequeue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %urb) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_stop_ep(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_stop_ep, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_set_deq_ep(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_reset_ep(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_reset_ep, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_config_ep(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_config_ep, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_add_endpoint(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_add_endpoint, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_alloc_dev(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_alloc_dev, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_free_dev(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_free_dev, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_disable_slot(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_disable_slot, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_discover_or_reset_device(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_discover_or_reset_device, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_setup_device_slot(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_setup_device_slot, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_addr_dev(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_addr_dev, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_reset_dev(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_reset_dev, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_set_deq(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_cmd_set_deq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_configure_endpoint(ptr nocapture readnone %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_configure_endpoint, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_address_ctrl_ctx(ptr nocapture readnone %__data, ptr noundef %ctrl_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_address_ctrl_ctx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctrl_ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_configure_endpoint_ctrl_ctx(ptr nocapture readnone %__data, ptr noundef %ctrl_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ctrl_ctx) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_alloc(ptr nocapture readnone %__data, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_ring_alloc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_free(ptr nocapture readnone %__data, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_ring_free, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_expansion(ptr nocapture readnone %__data, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_ring_expansion, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_inc_enq(ptr nocapture readnone %__data, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_inc_enq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_inc_deq(ptr nocapture readnone %__data, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_inc_deq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %ring) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_port_status(ptr nocapture readnone %__data, i32 noundef %portnum, i32 noundef %portsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_handle_port_status, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, i32 noundef %portnum, i32 noundef %portsc) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_get_port_status(ptr nocapture readnone %__data, i32 noundef %portnum, i32 noundef %portsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_get_port_status, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, i32 noundef %portnum, i32 noundef %portsc) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_hub_status_data(ptr nocapture readnone %__data, i32 noundef %portnum, i32 noundef %portsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_hub_status_data, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, i32 noundef %portnum, i32 noundef %portsc) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_ep_doorbell(ptr nocapture readnone %__data, i32 noundef %slot, i32 noundef %doorbell) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_ring_ep_doorbell, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, i32 noundef %slot, i32 noundef %doorbell) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_host_doorbell(ptr nocapture readnone %__data, i32 noundef %slot, i32 noundef %doorbell) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, i32 noundef %slot, i32 noundef %doorbell) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_alloc_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_alloc_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_free_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_free_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_queue_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_queue_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_giveback_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_xhci_dbc_giveback_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_msg(ptr noundef %__data, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 512) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_xhci_log_msg, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768012, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %6 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %va, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %7, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef %5, [1 x i32] %9)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_msg(ptr noundef %__data, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 516, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_xhci_log_msg, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768012, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %28 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %30 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %va, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %31, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef %29, [1 x i32] %33)
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 516, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ctx(ptr noundef %__data, ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %ctx, i32 noundef %ep_num) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %3 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hcc_params.i, align 8
  %and.i43 = shl i32 %4, 3
  %add.i = and i32 %and.i43, 32
  %mul.i = or i32 %add.i, 8
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  %conv.i = zext i1 %cmp.i to i32
  %add2.i = add i32 %ep_num, 1
  %add3.i = add i32 %add2.i, %conv.i
  %mul4.i = mul i32 %add3.i, %mul.i
  %mul5.i = shl i32 %mul4.i, 2
  %add = add i32 %mul5.i, 36
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl i32 %mul4.i, 18
  %or.i = or i32 %shl.i, 36
  %__data_loc_ctx_data = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %__data_loc_ctx_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_ctx_data, align 4
  %8 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xhci, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hcc_params.i, align 8
  %and = and i32 %13, 4
  %ctx_64 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 1
  %14 = ptrtoint ptr %ctx_64 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %ctx_64, align 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctx, align 4
  %ctx_type = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %ctx_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %ctx_type, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 3
  %18 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma, align 4
  %ctx_dma = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ctx_dma, align 4
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 2
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bytes, align 4
  %ctx_va = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 4
  %23 = ptrtoint ptr %ctx_va to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %ctx_va, align 4
  %slot_id = getelementptr i8, ptr %11, i32 1152
  %24 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slot_id, align 8
  %slot_id7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 6
  %26 = ptrtoint ptr %slot_id7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %slot_id7, align 4
  %ctx_ep_num = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call3, i32 0, i32 5
  %27 = ptrtoint ptr %ctx_ep_num to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ep_num, ptr %ctx_ep_num, align 4
  %add.ptr10 = getelementptr i8, ptr %call3, i32 36
  %28 = load ptr, ptr %bytes, align 4
  %29 = load i32, ptr %hcc_params.i, align 8
  %and13 = shl i32 %29, 5
  %add14 = and i32 %and13, 128
  %mul = or i32 %add14, 32
  %30 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp = icmp eq i32 %30, 2
  %conv = zext i1 %cmp to i32
  %add17 = add i32 %add2.i, %conv
  %mul18 = mul i32 %add17, %mul
  %31 = call ptr @memcpy(ptr %add.ptr10, ptr %28, i32 %mul18)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ctx(ptr noundef %__data, ptr nocapture noundef readonly %xhci, ptr nocapture noundef readonly %ctx, i32 noundef %ep_num) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %hcc_params.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 10
  %2 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hcc_params.i, align 8
  %and.i = shl i32 %3, 3
  %add.i = and i32 %and.i, 32
  %mul.i = or i32 %add.i, 8
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  %conv.i = zext i1 %cmp.i to i32
  %add2.i = add i32 %ep_num, 1
  %add3.i = add i32 %add2.i, %conv.i
  %mul4.i = mul i32 %add3.i, %mul.i
  %mul5.i = shl i32 %mul4.i, 2
  %shl.i = shl i32 %mul4.i, 18
  %or.i = or i32 %shl.i, 36
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !942) #7
  %and.i68 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i68 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %16 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %17, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i.not = icmp eq ptr %19, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %mul5.i, 47
  %and = and i32 %add12, -24
  %sub = add nsw i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #7
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_ctx_data = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 7
  %31 = ptrtoint ptr %__data_loc_ctx_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_ctx_data, align 4
  %32 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xhci, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %hcc_params.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hcc_params.i, align 8
  %and19 = and i32 %37, 4
  %ctx_64 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 1
  %38 = ptrtoint ptr %ctx_64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and19, ptr %ctx_64, align 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctx, align 4
  %ctx_type = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 2
  %41 = ptrtoint ptr %ctx_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ctx_type, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 3
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma, align 4
  %ctx_dma = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 3
  %44 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ctx_dma, align 4
  %bytes = getelementptr inbounds %struct.xhci_container_ctx, ptr %ctx, i32 0, i32 2
  %45 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bytes, align 4
  %ctx_va = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 4
  %47 = ptrtoint ptr %ctx_va to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %ctx_va, align 4
  %slot_id = getelementptr i8, ptr %35, i32 1152
  %48 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slot_id, align 8
  %slot_id20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 6
  %50 = ptrtoint ptr %slot_id20 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %slot_id20, align 4
  %ctx_ep_num = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %call13, i32 0, i32 5
  %51 = ptrtoint ptr %ctx_ep_num to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %ep_num, ptr %ctx_ep_num, align 4
  %add.ptr23 = getelementptr i8, ptr %call13, i32 36
  %52 = load ptr, ptr %bytes, align 4
  %53 = load i32, ptr %hcc_params.i, align 8
  %and26 = shl i32 %53, 5
  %add27 = and i32 %and26, 128
  %mul = or i32 %add27, 32
  %54 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp = icmp eq i32 %54, 2
  %conv = zext i1 %cmp to i32
  %add30 = add i32 %add2.i, %conv
  %mul31 = mul i32 %add30, %mul
  %55 = call ptr @memcpy(ptr %add.ptr23, ptr %52, i32 %mul31)
  %56 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rctx, align 4
  %58 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %57, ptr noundef %__data, i64 noundef 1, ptr noundef %59, ptr noundef %15, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_trb(ptr noundef %__data, ptr nocapture noundef readonly %ring, ptr nocapture noundef readonly %trb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 532) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call3, i32 0, i32 6
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768032, ptr %__data_loc_str, align 4
  %type = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 14
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %type6, align 4
  %7 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trb, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %field0 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %field0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %field0, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr %trb, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %field1 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %field1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field1, align 4
  %arrayidx10 = getelementptr [4 x i32], ptr %trb, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %field2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %field2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %field2, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr %trb, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %field3 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call3, i32 0, i32 5
  %22 = ptrtoint ptr %field3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %field3, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_trb(ptr noundef %__data, ptr nocapture noundef readonly %ring, ptr nocapture noundef readonly %trb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 532, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call13, i32 0, i32 6
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768032, ptr %__data_loc_str, align 4
  %type = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 14
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %type17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %type17, align 4
  %31 = ptrtoint ptr %trb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %trb, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %field0 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %field0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %field0, align 4
  %arrayidx20 = getelementptr [4 x i32], ptr %trb, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx20, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %field1 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call13, i32 0, i32 3
  %38 = ptrtoint ptr %field1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %field1, align 4
  %arrayidx22 = getelementptr [4 x i32], ptr %trb, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx22, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %field2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %field2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %field2, align 4
  %arrayidx24 = getelementptr [4 x i32], ptr %trb, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx24, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %field3 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %call13, i32 0, i32 5
  %46 = ptrtoint ptr %field3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %field3, align 4
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 532, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_free_virt_dev(ptr noundef %__data, ptr noundef %vdev) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vdev6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %vdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vdev, ptr %vdev6, align 8
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 3
  %4 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ctx, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  %conv = zext i32 %7 to i64
  %in_ctx7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %in_ctx7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %in_ctx7, align 8
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 2
  %9 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_ctx, align 4
  %dma8 = getelementptr inbounds %struct.xhci_container_ctx, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dma8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma8, align 4
  %conv9 = zext i32 %12 to i64
  %out_ctx10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %out_ctx10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv9, ptr %out_ctx10, align 8
  %fake_port = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 5
  %14 = ptrtoint ptr %fake_port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fake_port, align 4
  %fake_port11 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %fake_port11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %fake_port11, align 8
  %real_port = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 6
  %17 = ptrtoint ptr %real_port to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %real_port, align 1
  %real_port12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %real_port12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %real_port12, align 1
  %current_mel = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 10
  %20 = ptrtoint ptr %current_mel to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %current_mel, align 4
  %current_mel13 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %current_mel13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %current_mel13, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_free_virt_dev(ptr noundef %__data, ptr noundef %vdev) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %vdev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vdev, ptr %vdev17, align 8
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 3
  %28 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_ctx, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma, align 4
  %conv = zext i32 %31 to i64
  %in_ctx18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %in_ctx18 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %in_ctx18, align 8
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 2
  %33 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out_ctx, align 4
  %dma19 = getelementptr inbounds %struct.xhci_container_ctx, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dma19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma19, align 4
  %conv20 = zext i32 %36 to i64
  %out_ctx21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %out_ctx21 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv20, ptr %out_ctx21, align 8
  %fake_port = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 5
  %38 = ptrtoint ptr %fake_port to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fake_port, align 4
  %fake_port22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %fake_port22 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %fake_port22, align 8
  %real_port = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 6
  %41 = ptrtoint ptr %real_port to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %real_port, align 1
  %real_port23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %real_port23 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %real_port23, align 1
  %current_mel = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 10
  %44 = ptrtoint ptr %current_mel to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %current_mel, align 4
  %current_mel24 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %current_mel24 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %current_mel24, align 2
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_virt_dev(ptr noundef %__data, ptr noundef %vdev) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 56) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vdev6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %vdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vdev, ptr %vdev6, align 8
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 3
  %4 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ctx, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  %conv = zext i32 %7 to i64
  %in_ctx7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %in_ctx7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %in_ctx7, align 8
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 2
  %9 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_ctx, align 4
  %dma8 = getelementptr inbounds %struct.xhci_container_ctx, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dma8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma8, align 4
  %conv9 = zext i32 %12 to i64
  %out_ctx10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %out_ctx10 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv9, ptr %out_ctx10, align 8
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 1
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %devnum11 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %devnum11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %devnum11, align 8
  %19 = load ptr, ptr %udev, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  %state13 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 5
  %22 = ptrtoint ptr %state13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %state13, align 4
  %23 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 4
  %speed15 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 6
  %26 = ptrtoint ptr %speed15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %speed15, align 8
  %27 = load ptr, ptr %udev, align 4
  %portnum = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %portnum, align 2
  %portnum17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 7
  %30 = ptrtoint ptr %portnum17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %portnum17, align 4
  %31 = load ptr, ptr %udev, align 4
  %level = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %level, align 1
  %level19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 8
  %34 = ptrtoint ptr %level19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %level19, align 1
  %35 = load ptr, ptr %udev, align 4
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 43
  %36 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slot_id, align 8
  %slot_id21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call3, i32 0, i32 9
  %38 = ptrtoint ptr %slot_id21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %slot_id21, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_virt_dev(ptr noundef %__data, ptr noundef %vdev) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vdev17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %vdev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vdev, ptr %vdev17, align 8
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 3
  %28 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_ctx, align 4
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma, align 4
  %conv = zext i32 %31 to i64
  %in_ctx18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %in_ctx18 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %in_ctx18, align 8
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 2
  %33 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out_ctx, align 4
  %dma19 = getelementptr inbounds %struct.xhci_container_ctx, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dma19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma19, align 4
  %conv20 = zext i32 %36 to i64
  %out_ctx21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %out_ctx21 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv20, ptr %out_ctx21, align 8
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %vdev, i32 0, i32 1
  %38 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %devnum22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 4
  %42 = ptrtoint ptr %devnum22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %devnum22, align 8
  %43 = load ptr, ptr %udev, align 4
  %state = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state, align 8
  %state24 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 5
  %46 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %state24, align 4
  %47 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %speed, align 4
  %speed26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 6
  %50 = ptrtoint ptr %speed26 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %speed26, align 8
  %51 = load ptr, ptr %udev, align 4
  %portnum = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %portnum, align 2
  %portnum28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 7
  %54 = ptrtoint ptr %portnum28 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %portnum28, align 4
  %55 = load ptr, ptr %udev, align 4
  %level = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 26
  %56 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %level, align 1
  %level30 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 8
  %58 = ptrtoint ptr %level30 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %level30, align 1
  %59 = load ptr, ptr %udev, align 4
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 43
  %60 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %slot_id, align 8
  %slot_id32 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %call13, i32 0, i32 9
  %62 = ptrtoint ptr %slot_id32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %slot_id32, align 8
  %63 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rctx, align 4
  %65 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %64, ptr noundef %__data, i64 noundef 1, ptr noundef %66, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_urb(ptr noundef %__data, ptr noundef %urb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 60) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %urb6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %urb6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %urb, ptr %urb6, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe, align 4
  %pipe7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %pipe7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pipe7, align 4
  %stream_id = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 11
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_id, align 4
  %stream = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %stream, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %status8 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %status8, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %13 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_flags, align 4
  %flags = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flags, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 17
  %16 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_mapped_sgs, align 4
  %num_mapped_sgs9 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %num_mapped_sgs9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_mapped_sgs9, align 4
  %num_sgs = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %19 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sgs, align 4
  %num_sgs10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %num_sgs10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_sgs10, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_buffer_length, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 8
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 9
  %27 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %actual, align 4
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %28 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ep, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i, align 1
  %32 = and i8 %31, 15
  %and.i50 = zext i8 %32 to i32
  %epnum = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 10
  %33 = ptrtoint ptr %epnum to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i50, ptr %epnum, align 4
  %34 = load ptr, ptr %ep, align 4
  %bEndpointAddress.i51 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %bEndpointAddress.i51 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bEndpointAddress.i51, align 1
  %.lobit.i = lshr i8 %36, 7
  %37 = zext i8 %.lobit.i to i32
  %dir_in = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 11
  %38 = ptrtoint ptr %dir_in to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dir_in, align 4
  %39 = load ptr, ptr %ep, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bmAttributes.i, align 1
  %42 = and i8 %41, 3
  %and.i52 = zext i8 %42 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 12
  %43 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and.i52, ptr %type, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 43
  %46 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slot_id, align 8
  %slot_id18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call3, i32 0, i32 13
  %48 = ptrtoint ptr %slot_id18 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %slot_id18, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_urb(ptr noundef %__data, ptr noundef %urb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %urb17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %urb17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %urb, ptr %urb17, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %28 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pipe, align 4
  %pipe18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %pipe18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pipe18, align 4
  %stream_id = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 11
  %31 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream_id, align 4
  %stream = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %stream, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %status19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %status19, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %37 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %transfer_flags, align 4
  %flags = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %flags, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 17
  %40 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_mapped_sgs, align 4
  %num_mapped_sgs20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %num_mapped_sgs20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %num_mapped_sgs20, align 4
  %num_sgs = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %43 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_sgs, align 4
  %num_sgs21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %num_sgs21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %num_sgs21, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %46 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %transfer_buffer_length, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 8
  %48 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %length, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %49 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %actual_length, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 9
  %51 = ptrtoint ptr %actual to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %actual, align 4
  %ep = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %52 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ep, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bEndpointAddress.i, align 1
  %56 = and i8 %55, 15
  %and.i73 = zext i8 %56 to i32
  %epnum = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 10
  %57 = ptrtoint ptr %epnum to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i73, ptr %epnum, align 4
  %58 = load ptr, ptr %ep, align 4
  %bEndpointAddress.i74 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %bEndpointAddress.i74 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bEndpointAddress.i74, align 1
  %.lobit.i = lshr i8 %60, 7
  %61 = zext i8 %.lobit.i to i32
  %dir_in = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 11
  %62 = ptrtoint ptr %dir_in to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %dir_in, align 4
  %63 = load ptr, ptr %ep, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bmAttributes.i, align 1
  %66 = and i8 %65, 3
  %and.i75 = zext i8 %66 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 12
  %67 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i75, ptr %type, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 43
  %70 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %slot_id, align 8
  %slot_id29 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %call13, i32 0, i32 13
  %72 = ptrtoint ptr %slot_id29 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %slot_id29, align 4
  %73 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rctx, align 4
  %75 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 60, i32 noundef %74, ptr noundef %__data, i64 noundef 1, ptr noundef %76, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ep_ctx(ptr noundef %__data, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 532) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768032, ptr %__data_loc_str, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 8
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %info = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %info, align 8
  %ep_info2 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ep_info2, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %info2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %info2, align 4
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ctx, i32 0, i32 2
  %12 = ptrtoint ptr %deq to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %deq, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  %deq6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call3, i32 0, i32 3
  %15 = ptrtoint ptr %deq6 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %deq6, align 8
  %tx_info = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ctx, i32 0, i32 3
  %16 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_info, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %tx_info7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call3, i32 0, i32 4
  %19 = ptrtoint ptr %tx_info7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_info7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ep_ctx(ptr noundef %__data, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 532, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call13, i32 0, i32 5
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768032, ptr %__data_loc_str, align 4
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %info = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %info, align 8
  %ep_info2 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ctx, i32 0, i32 1
  %32 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ep_info2, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %info2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %info2, align 4
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ctx, i32 0, i32 2
  %36 = ptrtoint ptr %deq to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %deq, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %deq17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call13, i32 0, i32 3
  %39 = ptrtoint ptr %deq17 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %deq17, align 8
  %tx_info = getelementptr inbounds %struct.xhci_ep_ctx, ptr %ctx, i32 0, i32 3
  %40 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_info, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %tx_info18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %call13, i32 0, i32 4
  %43 = ptrtoint ptr %tx_info18 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tx_info18, align 8
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 532, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_slot_ctx(ptr noundef %__data, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 528) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768028, ptr %__data_loc_str, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %info = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %info, align 4
  %dev_info2 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %dev_info2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_info2, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %info2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %info2, align 4
  %tt_info7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %tt_info7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tt_info7, align 4
  %dev_state = getelementptr inbounds %struct.xhci_slot_ctx, ptr %ctx, i32 0, i32 3
  %13 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_state, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %state = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %state, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_slot_ctx(ptr noundef %__data, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 532, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call13, i32 0, i32 5
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768028, ptr %__data_loc_str, align 4
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %info = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %info, align 4
  %dev_info2 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %ctx, i32 0, i32 1
  %32 = ptrtoint ptr %dev_info2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_info2, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %info2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %info2, align 4
  %tt_info18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %tt_info18 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tt_info18, align 4
  %dev_state = getelementptr inbounds %struct.xhci_slot_ctx, ptr %ctx, i32 0, i32 3
  %37 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_state, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %state = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %state, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 532, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ctrl_ctx(ptr noundef %__data, ptr nocapture noundef readonly %ctrl_ctx) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %4 = ptrtoint ptr %ctrl_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_ctx, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %drop = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %drop to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %drop, align 4
  %add_flags = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %ctrl_ctx, i32 0, i32 1
  %8 = ptrtoint ptr %add_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add_flags, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %add6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %add6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %add6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ctrl_ctx(ptr noundef %__data, ptr nocapture noundef readonly %ctrl_ctx) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %28 = ptrtoint ptr %ctrl_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctrl_ctx, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %drop = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %drop to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %drop, align 4
  %add_flags = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %ctrl_ctx, i32 0, i32 1
  %32 = ptrtoint ptr %add_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add_flags, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %add17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %call13, i32 0, i32 2
  %35 = ptrtoint ptr %add17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add17, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ring(ptr noundef %__data, ptr noundef %ring) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 52) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ring6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %ring6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ring, ptr %ring6, align 4
  %type = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 14
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %type7, align 4
  %num_segs = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 10
  %7 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_segs, align 4
  %num_segs8 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %num_segs8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %num_segs8, align 4
  %stream_id = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 9
  %10 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_id, align 4
  %stream_id9 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 8
  %12 = ptrtoint ptr %stream_id9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %stream_id9, align 4
  %enq_seg = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 3
  %13 = ptrtoint ptr %enq_seg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enq_seg, align 4
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  %enq_seg10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %enq_seg10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %enq_seg10, align 4
  %deq_seg = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 5
  %18 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %deq_seg, align 4
  %dma11 = getelementptr inbounds %struct.xhci_segment, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dma11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma11, align 4
  %deq_seg12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %deq_seg12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %deq_seg12, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 7
  %23 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cycle_state, align 4
  %cycle_state13 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 9
  %25 = ptrtoint ptr %cycle_state13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %cycle_state13, align 4
  %num_trbs_free = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 11
  %26 = ptrtoint ptr %num_trbs_free to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_trbs_free, align 4
  %num_trbs_free14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 10
  %28 = ptrtoint ptr %num_trbs_free14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_trbs_free14, align 4
  %bounce_buf_len = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 13
  %29 = ptrtoint ptr %bounce_buf_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bounce_buf_len, align 4
  %bounce_buf_len15 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 11
  %31 = ptrtoint ptr %bounce_buf_len15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bounce_buf_len15, align 4
  %32 = load ptr, ptr %enq_seg, align 4
  %enqueue = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 2
  %33 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enqueue, align 4
  %call17 = call i32 @xhci_trb_virt_to_dma(ptr noundef %32, ptr noundef %34) #7
  %enq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 3
  %35 = ptrtoint ptr %enq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call17, ptr %enq, align 4
  %36 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %deq_seg, align 4
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 4
  %38 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dequeue, align 4
  %call19 = call i32 @xhci_trb_virt_to_dma(ptr noundef %37, ptr noundef %39) #7
  %deq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call3, i32 0, i32 4
  %40 = ptrtoint ptr %deq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call19, ptr %deq, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ring(ptr noundef %__data, ptr noundef %ring) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %ring17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 2
  %27 = ptrtoint ptr %ring17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ring, ptr %ring17, align 4
  %type = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 14
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %type18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 1
  %30 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %type18, align 4
  %num_segs = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 10
  %31 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_segs, align 4
  %num_segs19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 7
  %33 = ptrtoint ptr %num_segs19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %num_segs19, align 4
  %stream_id = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 9
  %34 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream_id, align 4
  %stream_id20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 8
  %36 = ptrtoint ptr %stream_id20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %stream_id20, align 4
  %enq_seg = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 3
  %37 = ptrtoint ptr %enq_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %enq_seg, align 4
  %dma = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma, align 4
  %enq_seg21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %enq_seg21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %enq_seg21, align 4
  %deq_seg = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 5
  %42 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %deq_seg, align 4
  %dma22 = getelementptr inbounds %struct.xhci_segment, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dma22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma22, align 4
  %deq_seg23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %deq_seg23 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %deq_seg23, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 7
  %47 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cycle_state, align 4
  %cycle_state24 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 9
  %49 = ptrtoint ptr %cycle_state24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %cycle_state24, align 4
  %num_trbs_free = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 11
  %50 = ptrtoint ptr %num_trbs_free to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_trbs_free, align 4
  %num_trbs_free25 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 10
  %52 = ptrtoint ptr %num_trbs_free25 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num_trbs_free25, align 4
  %bounce_buf_len = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 13
  %53 = ptrtoint ptr %bounce_buf_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bounce_buf_len, align 4
  %bounce_buf_len26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 11
  %55 = ptrtoint ptr %bounce_buf_len26 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %bounce_buf_len26, align 4
  %56 = load ptr, ptr %enq_seg, align 4
  %enqueue = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 2
  %57 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %enqueue, align 4
  %call28 = call i32 @xhci_trb_virt_to_dma(ptr noundef %56, ptr noundef %58) #7
  %enq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 3
  %59 = ptrtoint ptr %enq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call28, ptr %enq, align 4
  %60 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %deq_seg, align 4
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %ring, i32 0, i32 4
  %62 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dequeue, align 4
  %call30 = call i32 @xhci_trb_virt_to_dma(ptr noundef %61, ptr noundef %63) #7
  %deq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %call13, i32 0, i32 4
  %64 = ptrtoint ptr %deq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call30, ptr %deq, align 4
  %65 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rctx, align 4
  %67 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %66, ptr noundef %__data, i64 noundef 1, ptr noundef %68, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_portsc(ptr noundef %__data, i32 noundef %portnum, i32 noundef %portsc) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %portnum6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %portnum6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %portnum, ptr %portnum6, align 4
  %portsc7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %portsc7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %portsc, ptr %portsc7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_portsc(ptr noundef %__data, i32 noundef %portnum, i32 noundef %portsc) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %portnum17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %portnum17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %portnum, ptr %portnum17, align 4
  %portsc18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %portsc18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %portsc, ptr %portsc18, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_doorbell(ptr noundef %__data, i32 noundef %slot, i32 noundef %doorbell) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 520) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768020, ptr %__data_loc_str, align 4
  %slot6 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %slot6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %slot, ptr %slot6, align 4
  %doorbell7 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %doorbell7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %doorbell, ptr %doorbell7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_doorbell(ptr noundef %__data, i32 noundef %slot, i32 noundef %doorbell) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32768020, ptr %__data_loc_str, align 4
  %slot17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %call13, i32 0, i32 1
  %28 = ptrtoint ptr %slot17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %slot, ptr %slot17, align 4
  %doorbell18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %doorbell18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %doorbell, ptr %doorbell18, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 524, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_dbc_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !952

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !953

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %req6 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %req, ptr %req6, align 4
  %direction = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %direction, align 4
  %dir = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call3, i32 0, i32 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.load.lobit, ptr %dir, align 4
  %actual = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %actual8 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %actual8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %actual8, align 4
  %length = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %length9 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %length9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %length9, align 4
  %status = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %status10 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %status10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_xhci_dbc_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !954
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !954
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !942) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !942) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %req17 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %req17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req, ptr %req17, align 4
  %direction = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 11
  %28 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %direction, align 4
  %dir = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call13, i32 0, i32 2
  %bf.load.lobit = lshr i8 %bf.load, 7
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %bf.load.lobit, ptr %dir, align 4
  %actual = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 6
  %30 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actual, align 4
  %actual19 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %actual19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %actual19, align 4
  %length = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %length20 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %length20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %length20, align 4
  %status = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 5
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %status21 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %status21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %status21, align 4
  %39 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rctx, align 4
  %41 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %40, ptr noundef %__data, i64 noundef 1, ptr noundef %42, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_msg(ptr noundef %__data, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %vaf to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_ctx(ptr noundef %__data, ptr noundef %xhci, ptr noundef %ctx, i32 noundef %ep_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %xhci to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %ctx to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %ep_num to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_trb(ptr noundef %__data, ptr noundef %ring, ptr noundef %trb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ring to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %trb to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_free_virt_dev(ptr noundef %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %vdev to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_virt_dev(ptr noundef %__data, ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %vdev to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_urb(ptr noundef %__data, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %urb to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_ep_ctx(ptr noundef %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_slot_ctx(ptr noundef %__data, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ctx to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_ctrl_ctx(ptr noundef %__data, ptr noundef %ctrl_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ctrl_ctx to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_ring(ptr noundef %__data, ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ring to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_portsc(ptr noundef %__data, i32 noundef %portnum, i32 noundef %portsc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %portnum to i64
  %conv4 = zext i32 %portsc to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_log_doorbell(ptr noundef %__data, i32 noundef %slot, i32 noundef %doorbell) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %slot to i64
  %conv4 = zext i32 %doorbell to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_xhci_dbc_log_request(ptr noundef %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %req to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_msg(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_xhci_log_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_msg, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %add.ptr) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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
define internal i32 @trace_raw_output_xhci_log_ctx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %ctx_64 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx_64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx_64, align 4
  %ctx_type = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ctx_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx_type, align 4
  %ctx_dma = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx_dma, align 4
  %conv = zext i32 %7 to i64
  %ctx_va = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctx_va to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx_va, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %5, i64 noundef %conv, ptr noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_trb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %type = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %switch.lookup, label %if.end.xhci_ring_type_string.exit_crit_edge

if.end.xhci_ring_type_string.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_ring_type_string.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %xhci_ring_type_string.exit

xhci_ring_type_string.exit:                       ; preds = %switch.lookup, %if.end.xhci_ring_type_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.31, %if.end.xhci_ring_type_string.exit_crit_edge ]
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %field0 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %field0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field0, align 4
  %field1 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field1, align 4
  %field2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %field2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field2, align 4
  %field3 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %field3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field3, align 4
  %and.i = lshr i32 %15, 10
  %shr.i = and i32 %and.i, 63
  %16 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %sw.default.i [
    i32 6, label %sw.bb.i
    i32 32, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge
    i32 33, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge41
    i32 34, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge42
    i32 35, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge43
    i32 36, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge44
    i32 37, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge45
    i32 38, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge46
    i32 39, label %xhci_ring_type_string.exit.sw.bb14.i_crit_edge47
    i32 2, label %sw.bb33.i
    i32 3, label %sw.bb65.i
    i32 4, label %sw.bb95.i
    i32 1, label %xhci_ring_type_string.exit.sw.bb116.i_crit_edge
    i32 5, label %xhci_ring_type_string.exit.sw.bb116.i_crit_edge48
    i32 7, label %xhci_ring_type_string.exit.sw.bb116.i_crit_edge49
    i32 8, label %xhci_ring_type_string.exit.sw.bb116.i_crit_edge50
    i32 23, label %xhci_ring_type_string.exit.sw.bb149.i_crit_edge
    i32 9, label %xhci_ring_type_string.exit.sw.bb149.i_crit_edge51
    i32 10, label %xhci_ring_type_string.exit.sw.bb156.i_crit_edge
    i32 19, label %xhci_ring_type_string.exit.sw.bb156.i_crit_edge52
    i32 11, label %sw.bb165.i
    i32 12, label %sw.bb177.i
    i32 13, label %sw.bb189.i
    i32 14, label %sw.bb198.i
    i32 15, label %sw.bb214.i
    i32 16, label %sw.bb229.i
    i32 17, label %sw.bb244.i
    i32 18, label %sw.bb253.i
    i32 20, label %sw.bb264.i
    i32 21, label %sw.bb273.i
    i32 22, label %sw.bb284.i
  ]

xhci_ring_type_string.exit.sw.bb156.i_crit_edge52: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i

xhci_ring_type_string.exit.sw.bb156.i_crit_edge:  ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb156.i

xhci_ring_type_string.exit.sw.bb149.i_crit_edge51: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb149.i

xhci_ring_type_string.exit.sw.bb149.i_crit_edge:  ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb149.i

xhci_ring_type_string.exit.sw.bb116.i_crit_edge50: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb116.i

xhci_ring_type_string.exit.sw.bb116.i_crit_edge49: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb116.i

xhci_ring_type_string.exit.sw.bb116.i_crit_edge48: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb116.i

xhci_ring_type_string.exit.sw.bb116.i_crit_edge:  ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb116.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge47: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge46: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge45: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge44: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge43: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge42: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge41: ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

xhci_ring_type_string.exit.sw.bb14.i_crit_edge:   ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

sw.bb.i:                                          ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr1.i = lshr i32 %13, 22
  %and3.i = and i32 %15, 32
  %17 = xor i32 %and3.i, 105
  %and4.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, i32 99, i32 67
  %and7.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, i32 116, i32 84
  %and10.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond12.i = select i1 %tobool11.not.i, i32 99, i32 67
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.32, i32 noundef %11, i32 noundef %9, i32 noundef %shr1.i, ptr noundef nonnull @.str.55, i32 noundef %17, i32 noundef %cond6.i, i32 noundef %cond9.i, i32 noundef %cond12.i) #7
  br label %xhci_decode_trb.exit

sw.bb14.i:                                        ; preds = %xhci_ring_type_string.exit.sw.bb14.i_crit_edge, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge41, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge42, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge43, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge44, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge45, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge46, %xhci_ring_type_string.exit.sw.bb14.i_crit_edge47
  %shr16.i = lshr i32 %13, 24
  %conv17.i = trunc i32 %shr16.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %conv17.i)
  %18 = icmp ult i8 %conv17.i, 37
  br i1 %18, label %switch.lookup19, label %sw.bb14.i.xhci_trb_comp_code_string.exit.i_crit_edge

sw.bb14.i.xhci_trb_comp_code_string.exit.i_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_trb_comp_code_string.exit.i

switch.lookup19:                                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ashr i32 %13, 24
  %switch.gep20 = getelementptr inbounds [37 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.268, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load21 = load ptr, ptr %switch.gep20, align 4
  br label %xhci_trb_comp_code_string.exit.i

xhci_trb_comp_code_string.exit.i:                 ; preds = %switch.lookup19, %sw.bb14.i.xhci_trb_comp_code_string.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load21, %switch.lookup19 ], [ @.str.119, %sw.bb14.i.xhci_trb_comp_code_string.exit.i_crit_edge ]
  %and19.i = and i32 %13, 16777215
  %shr21.i = lshr i32 %15, 24
  %and22.i = lshr i32 %15, 16
  %shr23.i = and i32 %and22.i, 31
  %trunc205.i = trunc i32 %and.i to i6
  %switch.tableidx = xor i6 %trunc205.i, -32
  %21 = sext i6 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %22 = icmp ult i6 %switch.tableidx, 8
  br i1 %22, label %switch.lookup22, label %xhci_trb_comp_code_string.exit.i.xhci_trb_type_string.exit.i_crit_edge

xhci_trb_comp_code_string.exit.i.xhci_trb_type_string.exit.i_crit_edge: ; preds = %xhci_trb_comp_code_string.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_trb_type_string.exit.i

switch.lookup22:                                  ; preds = %xhci_trb_comp_code_string.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = sext i6 %switch.tableidx to i32
  %switch.gep23 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.269, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load24 = load ptr, ptr %switch.gep23, align 4
  br label %xhci_trb_type_string.exit.i

xhci_trb_type_string.exit.i:                      ; preds = %switch.lookup22, %xhci_trb_comp_code_string.exit.i.xhci_trb_type_string.exit.i_crit_edge
  %retval.0.i34.i = phi ptr [ %switch.load24, %switch.lookup22 ], [ @.str.31, %xhci_trb_comp_code_string.exit.i.xhci_trb_type_string.exit.i_crit_edge ]
  %and26.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %cond28.i = select i1 %tobool27.not.i, i32 101, i32 69
  %and29.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  %cond31.i = select i1 %tobool30.not.i, i32 99, i32 67
  %call32.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.33, i32 noundef %11, i32 noundef %9, ptr noundef nonnull %retval.0.i.i, i32 noundef %and19.i, i32 noundef %shr21.i, i32 noundef %shr23.i, ptr noundef nonnull %retval.0.i34.i, i32 noundef %cond28.i, i32 noundef %cond31.i) #7
  br label %xhci_decode_trb.exit

sw.bb33.i:                                        ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and34.i = and i32 %9, 255
  %and35.i = lshr i32 %9, 8
  %shr36.i = and i32 %and35.i, 255
  %shr38.i = lshr i32 %9, 24
  %and39.i = lshr i32 %9, 16
  %shr40.i = and i32 %and39.i, 255
  %and41.i = lshr i32 %11, 8
  %shr42.i = and i32 %and41.i, 255
  %and43.i = and i32 %11, 255
  %and44.i = lshr i32 %11, 16
  %and48.i = and i32 %13, 131071
  %and49.i = lshr i32 %13, 17
  %shr50.i = and i32 %and49.i, 31
  %shr51.i = lshr i32 %13, 22
  %and55.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %cond57.i = select i1 %tobool56.not.i, i32 105, i32 73
  %and58.i = and i32 %15, 32
  %25 = xor i32 %and58.i, 105
  %and61.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %cond63.i = select i1 %tobool62.not.i, i32 99, i32 67
  %call64.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.34, i32 noundef %and34.i, i32 noundef %shr36.i, i32 noundef %shr38.i, i32 noundef %shr40.i, i32 noundef %shr42.i, i32 noundef %and43.i, i32 noundef %and44.i, i32 noundef %and48.i, i32 noundef %shr50.i, i32 noundef %shr51.i, ptr noundef nonnull @.str.51, i32 noundef %cond57.i, i32 noundef %25, i32 noundef %cond63.i) #7
  br label %xhci_decode_trb.exit

sw.bb65.i:                                        ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and66.i = and i32 %13, 131071
  %and67.i = lshr i32 %13, 17
  %shr68.i = and i32 %and67.i, 31
  %shr69.i = lshr i32 %13, 22
  %and73.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %cond75.i = select i1 %tobool74.not.i, i32 105, i32 73
  %and76.i = and i32 %15, 32
  %26 = xor i32 %and76.i, 105
  %and79.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  %cond81.i = select i1 %tobool80.not.i, i32 99, i32 67
  %and82.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  %cond84.i = select i1 %tobool83.not.i, i32 115, i32 83
  %and85.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  %cond87.i = select i1 %tobool86.not.i, i32 105, i32 73
  %and88.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  %cond90.i = select i1 %tobool89.not.i, i32 101, i32 69
  %and91.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %cond93.i = select i1 %tobool92.not.i, i32 99, i32 67
  %call94.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %9, i32 noundef %and66.i, i32 noundef %shr68.i, i32 noundef %shr69.i, ptr noundef nonnull @.str.52, i32 noundef %cond75.i, i32 noundef %26, i32 noundef %cond81.i, i32 noundef %cond84.i, i32 noundef %cond87.i, i32 noundef %cond90.i, i32 noundef %cond93.i) #7
  br label %xhci_decode_trb.exit

sw.bb95.i:                                        ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and96.i = and i32 %13, 131071
  %and97.i = lshr i32 %13, 17
  %shr98.i = and i32 %and97.i, 31
  %shr99.i = lshr i32 %13, 22
  %and103.i = and i32 %15, 32
  %27 = xor i32 %and103.i, 105
  %and106.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  %cond108.i = select i1 %tobool107.not.i, i32 99, i32 67
  %and109.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  %cond111.i = select i1 %tobool110.not.i, i32 101, i32 69
  %and112.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  %cond114.i = select i1 %tobool113.not.i, i32 99, i32 67
  %call115.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.36, i32 noundef %11, i32 noundef %9, i32 noundef %and96.i, i32 noundef %shr98.i, i32 noundef %shr99.i, ptr noundef nonnull @.str.53, i32 noundef %27, i32 noundef %cond108.i, i32 noundef %cond111.i, i32 noundef %cond114.i) #7
  br label %xhci_decode_trb.exit

sw.bb116.i:                                       ; preds = %xhci_ring_type_string.exit.sw.bb116.i_crit_edge, %xhci_ring_type_string.exit.sw.bb116.i_crit_edge48, %xhci_ring_type_string.exit.sw.bb116.i_crit_edge49, %xhci_ring_type_string.exit.sw.bb116.i_crit_edge50
  %and117.i = and i32 %13, 131071
  %and118.i = lshr i32 %13, 17
  %shr119.i = and i32 %and118.i, 31
  %shr120.i = lshr i32 %13, 22
  %trunc204.i = trunc i32 %and.i to i6
  %switch.tableidx26 = add i6 %trunc204.i, -1
  %28 = sext i6 %switch.tableidx26 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %29 = icmp ult i6 %switch.tableidx26, 8
  br i1 %29, label %switch.lookup25, label %sw.bb116.i.xhci_trb_type_string.exit75.i_crit_edge

sw.bb116.i.xhci_trb_type_string.exit75.i_crit_edge: ; preds = %sw.bb116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_trb_type_string.exit75.i

switch.lookup25:                                  ; preds = %sw.bb116.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = sext i6 %switch.tableidx26 to i32
  %switch.gep27 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.270, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load28 = load ptr, ptr %switch.gep27, align 4
  br label %xhci_trb_type_string.exit75.i

xhci_trb_type_string.exit75.i:                    ; preds = %switch.lookup25, %sw.bb116.i.xhci_trb_type_string.exit75.i_crit_edge
  %retval.0.i74.i = phi ptr [ %switch.load28, %switch.lookup25 ], [ @.str.31, %sw.bb116.i.xhci_trb_type_string.exit75.i_crit_edge ]
  %and124.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  %cond126.i = select i1 %tobool125.not.i, i32 98, i32 66
  %and127.i = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  %cond129.i = select i1 %tobool128.not.i, i32 105, i32 73
  %and130.i = and i32 %15, 32
  %32 = xor i32 %and130.i, 105
  %and133.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  %cond135.i = select i1 %tobool134.not.i, i32 99, i32 67
  %and136.i = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  %cond138.i = select i1 %tobool137.not.i, i32 115, i32 83
  %and139.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  %cond141.i = select i1 %tobool140.not.i, i32 105, i32 73
  %and142.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  %cond144.i = select i1 %tobool143.not.i, i32 101, i32 69
  %and145.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i)
  %tobool146.not.i = icmp eq i32 %and145.i, 0
  %cond147.i = select i1 %tobool146.not.i, i32 99, i32 67
  %call148.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.37, i32 noundef %11, i32 noundef %9, i32 noundef %and117.i, i32 noundef %shr119.i, i32 noundef %shr120.i, ptr noundef nonnull %retval.0.i74.i, i32 noundef %cond126.i, i32 noundef %cond129.i, i32 noundef %32, i32 noundef %cond135.i, i32 noundef %cond138.i, i32 noundef %cond141.i, i32 noundef %cond144.i, i32 noundef %cond147.i) #7
  br label %xhci_decode_trb.exit

sw.bb149.i:                                       ; preds = %xhci_ring_type_string.exit.sw.bb149.i_crit_edge, %xhci_ring_type_string.exit.sw.bb149.i_crit_edge51
  %trunc203.i = trunc i32 %and.i to i6
  %switch.tableidx30 = add i6 %trunc203.i, -9
  %33 = sext i6 %switch.tableidx30 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %33)
  %34 = icmp ult i6 %switch.tableidx30, 15
  br i1 %34, label %switch.lookup29, label %sw.bb149.i.xhci_trb_type_string.exit110.i_crit_edge

sw.bb149.i.xhci_trb_type_string.exit110.i_crit_edge: ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_trb_type_string.exit110.i

switch.lookup29:                                  ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = sext i6 %switch.tableidx30 to i32
  %switch.gep31 = getelementptr inbounds [15 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.271, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load32 = load ptr, ptr %switch.gep31, align 4
  br label %xhci_trb_type_string.exit110.i

xhci_trb_type_string.exit110.i:                   ; preds = %switch.lookup29, %sw.bb149.i.xhci_trb_type_string.exit110.i_crit_edge
  %retval.0.i109.i = phi ptr [ %switch.load32, %switch.lookup29 ], [ @.str.31, %sw.bb149.i.xhci_trb_type_string.exit110.i_crit_edge ]
  %and152.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i)
  %tobool153.not.i = icmp eq i32 %and152.i, 0
  %cond154.i = select i1 %tobool153.not.i, i32 99, i32 67
  %call155.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.38, ptr noundef nonnull %retval.0.i109.i, i32 noundef %cond154.i) #7
  br label %xhci_decode_trb.exit

sw.bb156.i:                                       ; preds = %xhci_ring_type_string.exit.sw.bb156.i_crit_edge, %xhci_ring_type_string.exit.sw.bb156.i_crit_edge52
  %trunc.i = trunc i32 %and.i to i6
  %switch.tableidx34 = add i6 %trunc.i, -10
  %37 = sext i6 %switch.tableidx34 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %37)
  %38 = icmp ult i6 %switch.tableidx34, 10
  br i1 %38, label %switch.lookup33, label %sw.bb156.i.xhci_trb_type_string.exit145.i_crit_edge

sw.bb156.i.xhci_trb_type_string.exit145.i_crit_edge: ; preds = %sw.bb156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_trb_type_string.exit145.i

switch.lookup33:                                  ; preds = %sw.bb156.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = sext i6 %switch.tableidx34 to i32
  %switch.gep35 = getelementptr inbounds [10 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.272, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load36 = load ptr, ptr %switch.gep35, align 4
  br label %xhci_trb_type_string.exit145.i

xhci_trb_type_string.exit145.i:                   ; preds = %switch.lookup33, %sw.bb156.i.xhci_trb_type_string.exit145.i_crit_edge
  %retval.0.i144.i = phi ptr [ %switch.load36, %switch.lookup33 ], [ @.str.31, %sw.bb156.i.xhci_trb_type_string.exit145.i_crit_edge ]
  %shr160.i = lshr i32 %15, 24
  %and161.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  %cond163.i = select i1 %tobool162.not.i, i32 99, i32 67
  %call164.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.39, ptr noundef nonnull %retval.0.i144.i, i32 noundef %shr160.i, i32 noundef %cond163.i) #7
  br label %xhci_decode_trb.exit

sw.bb165.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr169.i = lshr i32 %15, 24
  %and170.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  %cond172.i = select i1 %tobool171.not.i, i32 98, i32 66
  %and173.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i)
  %tobool174.not.i = icmp eq i32 %and173.i, 0
  %cond175.i = select i1 %tobool174.not.i, i32 99, i32 67
  %call176.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.60, i32 noundef %11, i32 noundef %9, i32 noundef %shr169.i, i32 noundef %cond172.i, i32 noundef %cond175.i) #7
  br label %xhci_decode_trb.exit

sw.bb177.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr181.i = lshr i32 %15, 24
  %and182.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %tobool183.not.i = icmp eq i32 %and182.i, 0
  %cond184.i = select i1 %tobool183.not.i, i32 100, i32 68
  %and185.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.i)
  %tobool186.not.i = icmp eq i32 %and185.i, 0
  %cond187.i = select i1 %tobool186.not.i, i32 99, i32 67
  %call188.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.61, i32 noundef %11, i32 noundef %9, i32 noundef %shr181.i, i32 noundef %cond184.i, i32 noundef %cond187.i) #7
  br label %xhci_decode_trb.exit

sw.bb189.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr193.i = lshr i32 %15, 24
  %and194.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  %cond196.i = select i1 %tobool195.not.i, i32 99, i32 67
  %call197.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.62, i32 noundef %11, i32 noundef %9, i32 noundef %shr193.i, i32 noundef %cond196.i) #7
  br label %xhci_decode_trb.exit

sw.bb198.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr202.i = lshr i32 %15, 24
  %and203.i = lshr i32 %15, 16
  %shr204.i = and i32 %and203.i, 31
  %and207.i = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i)
  %tobool208.not.i = icmp eq i32 %and207.i, 0
  %cond209.i = select i1 %tobool208.not.i, i32 116, i32 84
  %and210.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210.i)
  %tobool211.not.i = icmp eq i32 %and210.i, 0
  %cond212.i = select i1 %tobool211.not.i, i32 99, i32 67
  %call213.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.63, i32 noundef %11, i32 noundef %9, i32 noundef %shr202.i, i32 noundef %shr204.i, i32 noundef %cond209.i, i32 noundef %cond212.i) #7
  br label %xhci_decode_trb.exit

sw.bb214.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr218.i = lshr i32 %15, 24
  %and219.i = lshr i32 %15, 23
  %shr220.i = and i32 %and219.i, 1
  %and221.i = lshr i32 %15, 16
  %shr222.i = and i32 %and221.i, 31
  %and225.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225.i)
  %tobool226.not.i = icmp eq i32 %and225.i, 0
  %cond227.i = select i1 %tobool226.not.i, i32 99, i32 67
  %call228.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.64, i32 noundef %shr218.i, i32 noundef %shr220.i, i32 noundef %shr222.i, i32 noundef %cond227.i) #7
  br label %xhci_decode_trb.exit

sw.bb229.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr233.i = lshr i32 %13, 16
  %shr235.i = lshr i32 %15, 24
  %and236.i = lshr i32 %15, 16
  %shr237.i = and i32 %and236.i, 31
  %and240.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240.i)
  %tobool241.not.i = icmp eq i32 %and240.i, 0
  %cond242.i = select i1 %tobool241.not.i, i32 99, i32 67
  %call243.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.65, i32 noundef %11, i32 noundef %9, i32 noundef %shr233.i, i32 noundef %shr235.i, i32 noundef %shr237.i, i32 noundef %cond242.i) #7
  br label %xhci_decode_trb.exit

sw.bb244.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr248.i = lshr i32 %15, 24
  %and249.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249.i)
  %tobool250.not.i = icmp eq i32 %and249.i, 0
  %cond251.i = select i1 %tobool250.not.i, i32 99, i32 67
  %call252.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.66, i32 noundef %shr248.i, i32 noundef %cond251.i) #7
  br label %xhci_decode_trb.exit

sw.bb253.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr257.i = lshr i32 %13, 22
  %and258.i = lshr i32 %15, 16
  %shr259.i = and i32 %and258.i, 255
  %and260.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260.i)
  %tobool261.not.i = icmp eq i32 %and260.i, 0
  %cond262.i = select i1 %tobool261.not.i, i32 99, i32 67
  %call263.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.67, i32 noundef %11, i32 noundef %9, i32 noundef %shr257.i, i32 noundef %shr259.i, i32 noundef %cond262.i) #7
  br label %xhci_decode_trb.exit

sw.bb264.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and267.i = lshr i32 %15, 16
  %shr268.i = and i32 %and267.i, 4095
  %and269.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269.i)
  %tobool270.not.i = icmp eq i32 %and269.i, 0
  %cond271.i = select i1 %tobool270.not.i, i32 99, i32 67
  %call272.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.69, i32 noundef %shr268.i, i32 noundef %cond271.i) #7
  br label %xhci_decode_trb.exit

sw.bb273.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shr277.i = lshr i32 %15, 24
  %and278.i = lshr i32 %15, 16
  %shr279.i = and i32 %and278.i, 15
  %and280.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280.i)
  %tobool281.not.i = icmp eq i32 %and280.i, 0
  %cond282.i = select i1 %tobool281.not.i, i32 99, i32 67
  %call283.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.70, i32 noundef %11, i32 noundef %9, i32 noundef %shr277.i, i32 noundef %shr279.i, i32 noundef %cond282.i) #7
  br label %xhci_decode_trb.exit

sw.bb284.i:                                       ; preds = %xhci_ring_type_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and287.i = and i32 %9, -32
  %and288.i = and i32 %9, 31
  %shr290.i = lshr i32 %15, 24
  %and291.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291.i)
  %tobool292.not.i = icmp eq i32 %and291.i, 0
  %cond293.i = select i1 %tobool292.not.i, i32 99, i32 67
  %call294.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.71, i32 noundef %13, i32 noundef %11, i32 noundef %and287.i, i32 noundef %and288.i, i32 noundef %shr290.i, i32 noundef %cond293.i) #7
  br label %xhci_decode_trb.exit

sw.default.i:                                     ; preds = %xhci_ring_type_string.exit
  %trunc206.i = trunc i32 %and.i to i6
  %switch.tableidx38 = xor i6 %trunc206.i, -32
  %41 = sext i6 %switch.tableidx38 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %41)
  %42 = icmp ult i6 %switch.tableidx38, -8
  br i1 %42, label %switch.lookup37, label %sw.default.i.xhci_trb_type_string.exit202.i_crit_edge

sw.default.i.xhci_trb_type_string.exit202.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_trb_type_string.exit202.i

switch.lookup37:                                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = zext i6 %switch.tableidx38 to i32
  %switch.gep39 = getelementptr inbounds [56 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.273, i32 0, i32 %43
  %44 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load40 = load ptr, ptr %switch.gep39, align 4
  br label %xhci_trb_type_string.exit202.i

xhci_trb_type_string.exit202.i:                   ; preds = %switch.lookup37, %sw.default.i.xhci_trb_type_string.exit202.i_crit_edge
  %retval.0.i201.i = phi ptr [ %switch.load40, %switch.lookup37 ], [ @.str.31, %sw.default.i.xhci_trb_type_string.exit202.i_crit_edge ]
  %call297.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 500, ptr noundef nonnull @.str.49, ptr noundef nonnull %retval.0.i201.i, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  br label %xhci_decode_trb.exit

xhci_decode_trb.exit:                             ; preds = %xhci_trb_type_string.exit202.i, %sw.bb284.i, %sw.bb273.i, %sw.bb264.i, %sw.bb253.i, %sw.bb244.i, %sw.bb229.i, %sw.bb214.i, %sw.bb198.i, %sw.bb189.i, %sw.bb177.i, %sw.bb165.i, %xhci_trb_type_string.exit145.i, %xhci_trb_type_string.exit110.i, %xhci_trb_type_string.exit75.i, %sw.bb95.i, %sw.bb65.i, %sw.bb33.i, %xhci_trb_type_string.exit.i, %sw.bb.i
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, ptr noundef nonnull %retval.0.i, ptr noundef %add.ptr) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_decode_trb.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %xhci_decode_trb.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_free_virt_dev(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vdev = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %in_ctx = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %in_ctx, align 8
  %out_ctx = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %out_ctx, align 8
  %fake_port = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fake_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fake_port, align 8
  %conv = zext i8 %9 to i32
  %real_port = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %real_port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %real_port, align 1
  %conv1 = zext i8 %11 to i32
  %current_mel = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %current_mel to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %current_mel, align 2
  %conv2 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.130, ptr noundef %3, i64 noundef %5, i64 noundef %7, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_virt_dev(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vdev = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %in_ctx = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %in_ctx, align 8
  %out_ctx = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %out_ctx, align 8
  %devnum = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %devnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devnum, align 8
  %state = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %speed = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 8
  %portnum = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %portnum, align 4
  %conv = zext i8 %15 to i32
  %level = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %level, align 1
  %conv1 = zext i8 %17 to i32
  %slot_id = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot_id, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.136, ptr noundef %3, i64 noundef %5, i64 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, i32 noundef %conv1, i32 noundef %19) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_urb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %epnum = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %epnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %epnum, align 4
  %dir_in = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dir_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, ptr @.str.151, ptr @.str.150
  %type = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_xhci_log_urb.symbols) #7
  %urb = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb, align 4
  %pipe = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 4
  %slot_id = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slot_id, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_mapped_sgs, align 4
  %num_sgs = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_sgs, align 4
  %stream = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  %flags2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags2, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.149, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef %call1, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #7
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ep_ctx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %info = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 8
  %info2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info2, align 4
  %deq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %deq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %deq, align 8
  %tx_info = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_info, align 8
  %12 = lshr i32 %5, 8
  %shl.i = and i32 %12, 16711680
  %shr1.i = lshr i32 %11, 16
  %or.i = or i32 %shr1.i, %shl.i
  %and4.i = lshr i32 %5, 10
  %conv6.i = and i32 %and4.i, 31
  %shr7.i = lshr i32 %5, 16
  %13 = and i32 %12, 3
  %conv12.i = add nuw nsw i32 %13, 1
  %and13.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  %14 = lshr i32 %7, 1
  %conv17.i = and i32 %14, 3
  %switch.tableidx = and i32 %5, 7
  %15 = xor i32 %switch.tableidx, 4
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ep_ctx, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %cond.i = select i1 %tobool.not.i, ptr @.str.163, ptr @.str.162
  %call38.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.161, ptr noundef nonnull %switch.load, i32 noundef %conv12.i, i32 noundef %conv6.i, ptr noundef nonnull %cond.i) #7
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call38.i
  %conv39.i = and i32 %shr7.i, 255
  %mul.i = shl i32 125, %conv39.i
  %call42.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.164, i32 noundef %mul.i, i32 noundef %or.i, i32 noundef %conv17.i) #7
  %17 = lshr i32 %7, 3
  %switch.tableidx16 = and i32 %17, 7
  %18 = xor i32 %switch.tableidx16, 4
  %switch.gep18 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ep_ctx.274, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load19 = load ptr, ptr %switch.gep18, align 4
  %add43.i = add i32 %call42.i, %call38.i
  %add.ptr44.i = getelementptr i8, ptr %add.ptr, i32 %add43.i
  %shr29.i = lshr i32 %7, 16
  %shr26.i = lshr i32 %7, 8
  %and21.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond48.i = select i1 %tobool22.not.i, ptr @.str.163, ptr @.str.166
  %conv49.i = and i32 %shr26.i, 255
  %call51.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr44.i, ptr noundef nonnull @.str.165, ptr noundef nonnull %switch.load19, ptr noundef nonnull %cond48.i, i32 noundef %conv49.i, i32 noundef %shr29.i, i64 noundef %9) #7
  %add52.i = add i32 %call51.i, %add43.i
  %add.ptr53.i = getelementptr i8, ptr %add.ptr, i32 %add52.i
  %conv54.i = and i32 %11, 65535
  %call55.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr53.i, ptr noundef nonnull @.str.167, i32 noundef %conv54.i) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %add.ptr) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_slot_ctx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %info = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %info2 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %info2, align 4
  %tt_info = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %tt_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tt_info, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %and.i = and i32 %5, 15728640
  %12 = add nsw i32 %and.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %12)
  %13 = icmp ult i32 %12, 5242880
  br i1 %13, label %switch.lookup, label %if.end.sw.epilog.i_crit_edge

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = lshr exact i32 %12, 20
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.trace_raw_output_xhci_log_slot_ctx, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.sw.epilog.i_crit_edge
  %s.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.188, %if.end.sw.epilog.i_crit_edge ]
  %and3.i = and i32 %5, 1048575
  %and2.i = and i32 %5, 33554432
  %and1.i = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.163, ptr @.str.189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not.i = icmp eq i32 %and1.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.163, ptr @.str.190
  %shr.i = lshr i32 %5, 27
  %and11.i = and i32 %7, 65535
  %shr12.i = lshr i32 %7, 16
  %and13.i = and i32 %shr12.i, 255
  %shr15.i = lshr i32 %7, 24
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.182, i32 noundef %and3.i, ptr noundef nonnull %s.0.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond9.i, i32 noundef %shr.i, i32 noundef %and11.i, i32 noundef %and13.i, i32 noundef %shr15.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %11)
  %16 = icmp ult i32 %11, 536870912
  br i1 %16, label %switch.lookup16, label %sw.epilog.i.xhci_decode_slot_context.exit_crit_edge

sw.epilog.i.xhci_decode_slot_context.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_decode_slot_context.exit

switch.lookup16:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr25.i = lshr i32 %11, 27
  %switch.gep17 = getelementptr inbounds [4 x ptr], ptr @switch.table.trace_raw_output_xhci_log_slot_ctx.275, i32 0, i32 %shr25.i
  %17 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load18 = load ptr, ptr %switch.gep17, align 4
  br label %xhci_decode_slot_context.exit

xhci_decode_slot_context.exit:                    ; preds = %switch.lookup16, %sw.epilog.i.xhci_decode_slot_context.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load18, %switch.lookup16 ], [ @.str.196, %sw.epilog.i.xhci_decode_slot_context.exit_crit_edge ]
  %and23.i = and i32 %11, 255
  %shr21.i = lshr i32 %9, 22
  %and19.i = lshr i32 %9, 16
  %shr20.i = and i32 %and19.i, 3
  %and17.i = lshr i32 %9, 8
  %shr18.i = and i32 %and17.i, 255
  %and16.i = and i32 %9, 255
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call.i
  %call27.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.191, i32 noundef %and16.i, i32 noundef %shr18.i, i32 noundef %shr20.i, i32 noundef %shr21.i, i32 noundef %and23.i, ptr noundef nonnull %retval.0.i.i) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %add.ptr) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_decode_slot_context.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %xhci_decode_slot_context.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ctrl_ctx(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  %drop.addr.i = alloca i32, align 4
  %add.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %drop = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %drop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drop, align 4
  %add = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %add to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drop.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add.addr.i)
  %8 = ptrtoint ptr %drop.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %drop.addr.i, align 4
  %9 = ptrtoint ptr %add.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %add.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %10 = call ptr @memcpy(ptr %add.ptr, ptr @.str.199, i32 6)
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %drop.addr.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i)
  %cmp58.i = icmp ult i32 %call1.i, 32
  br i1 %cmp58.i, label %if.then.i.for.body.i_crit_edge, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %ret.060.i = phi i32 [ %add4.i, %for.body.i.for.body.i_crit_edge ], [ 5, %if.then.i.for.body.i_crit_edge ]
  %bit.059.i = phi i32 [ %call6.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.then.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %ret.060.i
  %div57.i = lshr i32 %bit.059.i, 1
  %rem.i = and i32 %bit.059.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool2.not.i = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %tobool2.not.i, ptr @.str.151, ptr @.str.150
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.200, i32 noundef %div57.i, ptr noundef nonnull %cond.i) #7
  %add4.i = add i32 %call3.i, %ret.060.i
  %add5.i = add nuw nsw i32 %bit.059.i, 1
  %call6.i = call i32 @_find_next_bit_be(ptr noundef nonnull %drop.addr.i, i32 noundef 32, i32 noundef %add5.i) #7
  %cmp.i = icmp ult i32 %call6.i, 32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ 5, %if.then.i.for.end.i_crit_edge ], [ %add4.i, %for.body.i.for.end.i_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %add.ptr, i32 %ret.0.lcssa.i
  %11 = call ptr @memcpy(ptr %add.ptr7.i, ptr @.str.201, i32 3)
  %add9.i = add i32 %ret.0.lcssa.i, 2
  %12 = ptrtoint ptr %add.addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr.i = load i32, ptr %add.addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %if.end.if.end.i_crit_edge
  %13 = phi i32 [ %.pr.i, %for.end.i ], [ %7, %if.end.if.end.i_crit_edge ]
  %ret.1.i = phi i32 [ %add9.i, %for.end.i ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %if.end.i.xhci_decode_ctrl_ctx.exit_crit_edge, label %if.then11.i

if.end.i.xhci_decode_ctrl_ctx.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_decode_ctrl_ctx.exit

if.then11.i:                                      ; preds = %if.end.i
  %add.ptr12.i = getelementptr i8, ptr %add.ptr, i32 %ret.1.i
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.163, ptr @.str.203
  %and15.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.163, ptr @.str.204
  %call18.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr12.i, ptr noundef nonnull @.str.202, ptr noundef nonnull %cond14.i, ptr noundef nonnull %cond17.i) #7
  %14 = ptrtoint ptr %add.addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.addr.i, align 4
  %and20.i = and i32 %15, -4
  store i32 %and20.i, ptr %add.addr.i, align 4
  %call21.i = call i32 @_find_next_bit_be(ptr noundef nonnull %add.addr.i, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call21.i)
  %cmp2361.i = icmp ult i32 %call21.i, 32
  br i1 %cmp2361.i, label %for.body24.preheader.i, label %if.then11.i.xhci_decode_ctrl_ctx.exit_crit_edge

if.then11.i.xhci_decode_ctrl_ctx.exit_crit_edge:  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_decode_ctrl_ctx.exit

for.body24.preheader.i:                           ; preds = %if.then11.i
  %add19.i = add i32 %call18.i, %ret.1.i
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %for.body24.preheader.i
  %ret.263.i = phi i32 [ %add31.i, %for.body24.i.for.body24.i_crit_edge ], [ %add19.i, %for.body24.preheader.i ]
  %bit.162.i = phi i32 [ %call34.i, %for.body24.i.for.body24.i_crit_edge ], [ %call21.i, %for.body24.preheader.i ]
  %add.ptr25.i = getelementptr i8, ptr %add.ptr, i32 %ret.263.i
  %div2656.i = lshr i32 %bit.162.i, 1
  %rem27.i = and i32 %bit.162.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem27.i)
  %tobool28.not.i = icmp eq i32 %rem27.i, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.151, ptr @.str.150
  %call30.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr25.i, ptr noundef nonnull @.str.200, i32 noundef %div2656.i, ptr noundef nonnull %cond29.i) #7
  %add31.i = add i32 %call30.i, %ret.263.i
  %add33.i = add nuw nsw i32 %bit.162.i, 1
  %call34.i = call i32 @_find_next_bit_be(ptr noundef nonnull %add.addr.i, i32 noundef 32, i32 noundef %add33.i) #7
  %cmp23.i = icmp ult i32 %call34.i, 32
  br i1 %cmp23.i, label %for.body24.i.for.body24.i_crit_edge, label %for.body24.i.xhci_decode_ctrl_ctx.exit_crit_edge

for.body24.i.xhci_decode_ctrl_ctx.exit_crit_edge: ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_decode_ctrl_ctx.exit

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.i

xhci_decode_ctrl_ctx.exit:                        ; preds = %for.body24.i.xhci_decode_ctrl_ctx.exit_crit_edge, %if.then11.i.xhci_decode_ctrl_ctx.exit_crit_edge, %if.end.i.xhci_decode_ctrl_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drop.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add.addr.i)
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.2, ptr noundef %add.ptr) #7
  %call2 = call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_decode_ctrl_ctx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %xhci_decode_ctrl_ctx.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ring(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %type = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %switch.lookup, label %if.end.xhci_ring_type_string.exit_crit_edge

if.end.xhci_ring_type_string.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_ring_type_string.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ring, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %xhci_ring_type_string.exit

xhci_ring_type_string.exit:                       ; preds = %switch.lookup, %if.end.xhci_ring_type_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.31, %if.end.xhci_ring_type_string.exit_crit_edge ]
  %ring = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 4
  %enq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 3
  %enq_seg = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 5
  %deq = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 4
  %deq_seg = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 6
  %num_segs = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_segs, align 4
  %stream_id = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_id, align 4
  %num_trbs_free = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %num_trbs_free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_trbs_free, align 4
  %bounce_buf_len = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %bounce_buf_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bounce_buf_len, align 4
  %cycle_state = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cycle_state, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.214, ptr noundef nonnull %retval.0.i, ptr noundef %7, ptr noundef %enq, ptr noundef %enq_seg, ptr noundef %deq, ptr noundef %deq_seg, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_ring_type_string.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %xhci_ring_type_string.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_portsc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %portnum = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %portnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portnum, align 4
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %5, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %portsc = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %portsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portsc, align 4
  %and.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.219, ptr @.str.218
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %cond3.i = select i1 %tobool2.not.i, ptr @.str.221, ptr @.str.220
  %and4.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, ptr @.str.223, ptr @.str.222
  %and.i.i = lshr i32 %7, 5
  %8 = and i32 %and.i.i, 15
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_xhci_log_portsc, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %shr.i = lshr i32 %7, 10
  %and7.i = and i32 %shr.i, 15
  %call8.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.217, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond3.i, ptr noundef nonnull %cond6.i, ptr noundef nonnull %switch.load, i32 noundef %and7.i) #7
  %and9.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call8.i
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr @.str.224, i32 13)
  %add.i = add i32 %call8.i, 12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %add.i, %if.then.i ], [ %call8.i, %if.end.if.end.i_crit_edge ]
  %and12.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then14.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr15.i = getelementptr i8, ptr %add.ptr, i32 %ret.0.i
  %11 = call ptr @memcpy(ptr %add.ptr15.i, ptr @.str.225, i32 10)
  %add17.i = add i32 %ret.0.i, 9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end.i.if.end18.i_crit_edge
  %ret.1.i = phi i32 [ %add17.i, %if.then14.i ], [ %ret.0.i, %if.end.i.if.end18.i_crit_edge ]
  %add.ptr19.i = getelementptr i8, ptr %add.ptr, i32 %ret.1.i
  %12 = call ptr @memcpy(ptr %add.ptr19.i, ptr @.str.226, i32 9)
  %add21.i = add i32 %ret.1.i, 8
  %and22.i = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end28.i_crit_edge, label %if.then24.i

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25.i = getelementptr i8, ptr %add.ptr, i32 %add21.i
  %13 = call ptr @memcpy(ptr %add.ptr25.i, ptr @.str.227, i32 5)
  %add27.i = add i32 %ret.1.i, 12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end18.i.if.end28.i_crit_edge
  %ret.2.i = phi i32 [ %add27.i, %if.then24.i ], [ %add21.i, %if.end18.i.if.end28.i_crit_edge ]
  %and29.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then31.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr32.i = getelementptr i8, ptr %add.ptr, i32 %ret.2.i
  %14 = call ptr @memcpy(ptr %add.ptr32.i, ptr @.str.228, i32 5)
  %add34.i = add i32 %ret.2.i, 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end35.i_crit_edge
  %ret.3.i = phi i32 [ %add34.i, %if.then31.i ], [ %ret.2.i, %if.end28.i.if.end35.i_crit_edge ]
  %and36.i = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end42.i_crit_edge, label %if.then38.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr39.i = getelementptr i8, ptr %add.ptr, i32 %ret.3.i
  %15 = call ptr @memcpy(ptr %add.ptr39.i, ptr @.str.229, i32 5)
  %add41.i = add i32 %ret.3.i, 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end42.i_crit_edge
  %ret.4.i = phi i32 [ %add41.i, %if.then38.i ], [ %ret.3.i, %if.end35.i.if.end42.i_crit_edge ]
  %and43.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then45.i

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr46.i = getelementptr i8, ptr %add.ptr, i32 %ret.4.i
  %16 = call ptr @memcpy(ptr %add.ptr46.i, ptr @.str.230, i32 5)
  %add48.i = add i32 %ret.4.i, 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end49.i_crit_edge
  %ret.5.i = phi i32 [ %add48.i, %if.then45.i ], [ %ret.4.i, %if.end42.i.if.end49.i_crit_edge ]
  %and50.i = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end49.i.if.end56.i_crit_edge, label %if.then52.i

if.end49.i.if.end56.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr53.i = getelementptr i8, ptr %add.ptr, i32 %ret.5.i
  %17 = call ptr @memcpy(ptr %add.ptr53.i, ptr @.str.231, i32 5)
  %add55.i = add i32 %ret.5.i, 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end56.i_crit_edge
  %ret.6.i = phi i32 [ %add55.i, %if.then52.i ], [ %ret.5.i, %if.end49.i.if.end56.i_crit_edge ]
  %and57.i = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end63.i_crit_edge, label %if.then59.i

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr60.i = getelementptr i8, ptr %add.ptr, i32 %ret.6.i
  %18 = call ptr @memcpy(ptr %add.ptr60.i, ptr @.str.232, i32 5)
  %add62.i = add i32 %ret.6.i, 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.end56.i.if.end63.i_crit_edge
  %ret.7.i = phi i32 [ %add62.i, %if.then59.i ], [ %ret.6.i, %if.end56.i.if.end63.i_crit_edge ]
  %and64.i = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end70.i_crit_edge, label %if.then66.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr67.i = getelementptr i8, ptr %add.ptr, i32 %ret.7.i
  %19 = call ptr @memcpy(ptr %add.ptr67.i, ptr @.str.233, i32 5)
  %add69.i = add i32 %ret.7.i, 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end70.i_crit_edge
  %ret.8.i = phi i32 [ %add69.i, %if.then66.i ], [ %ret.7.i, %if.end63.i.if.end70.i_crit_edge ]
  %and71.i = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end77.i_crit_edge, label %if.then73.i

if.end70.i.if.end77.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr74.i = getelementptr i8, ptr %add.ptr, i32 %ret.8.i
  %20 = call ptr @memcpy(ptr %add.ptr74.i, ptr @.str.234, i32 5)
  %add76.i = add i32 %ret.8.i, 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then73.i, %if.end70.i.if.end77.i_crit_edge
  %ret.9.i = phi i32 [ %add76.i, %if.then73.i ], [ %ret.8.i, %if.end70.i.if.end77.i_crit_edge ]
  %add.ptr78.i = getelementptr i8, ptr %add.ptr, i32 %ret.9.i
  %21 = call ptr @memcpy(ptr %add.ptr78.i, ptr @.str.235, i32 7)
  %add80.i = add i32 %ret.9.i, 6
  %and81.i = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end77.i.if.end87.i_crit_edge, label %if.then83.i

if.end77.i.if.end87.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then83.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr84.i = getelementptr i8, ptr %add.ptr, i32 %add80.i
  %22 = call ptr @memcpy(ptr %add.ptr84.i, ptr @.str.236, i32 5)
  %add86.i = add i32 %ret.9.i, 10
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then83.i, %if.end77.i.if.end87.i_crit_edge
  %ret.10.i = phi i32 [ %add86.i, %if.then83.i ], [ %add80.i, %if.end77.i.if.end87.i_crit_edge ]
  %and88.i = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end87.i.if.end94.i_crit_edge, label %if.then90.i

if.end87.i.if.end94.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

if.then90.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr91.i = getelementptr i8, ptr %add.ptr, i32 %ret.10.i
  %23 = call ptr @memcpy(ptr %add.ptr91.i, ptr @.str.237, i32 5)
  %add93.i = add i32 %ret.10.i, 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then90.i, %if.end87.i.if.end94.i_crit_edge
  %ret.11.i = phi i32 [ %add93.i, %if.then90.i ], [ %ret.10.i, %if.end87.i.if.end94.i_crit_edge ]
  %and95.i = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.xhci_decode_portsc.exit_crit_edge, label %if.then97.i

if.end94.i.xhci_decode_portsc.exit_crit_edge:     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_decode_portsc.exit

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr98.i = getelementptr i8, ptr %add.ptr, i32 %ret.11.i
  %24 = call ptr @memcpy(ptr %add.ptr98.i, ptr @.str.238, i32 5)
  br label %xhci_decode_portsc.exit

xhci_decode_portsc.exit:                          ; preds = %if.then97.i, %if.end94.i.xhci_decode_portsc.exit_crit_edge
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.216, i32 noundef %3, ptr noundef %add.ptr) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_decode_portsc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %xhci_decode_portsc.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_doorbell(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_str = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__data_loc_str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_str, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %slot = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot, align 4
  %doorbell = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %doorbell to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %doorbell, align 4
  %shr.i = lshr i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.255, i32 noundef %7) #7
  br label %xhci_decode_doorbell.exit

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.256, i32 noundef %5) #7
  %conv4.i = and i32 %7, 255
  %8 = add nsw i32 %conv4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %9 = icmp ult i32 %8, 31
  br i1 %9, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %call3.i
  %div59.i = lshr i32 %conv4.i, 1
  %rem.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.151, ptr @.str.150
  %call13.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.257, i32 noundef %div59.i, ptr noundef nonnull %cond.i) #7
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 248, i32 %conv4.i)
  %cmp18.i = icmp ult i32 %conv4.i, 248
  %add.ptr21.i = getelementptr i8, ptr %add.ptr, i32 %call3.i
  br i1 %cmp18.i, label %if.then20.i, label %if.else24.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr21.i, ptr noundef nonnull @.str.258, i32 noundef %conv4.i) #7
  br label %if.end29.i

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr21.i, ptr noundef nonnull @.str.259, i32 noundef %conv4.i) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else24.i, %if.then20.i, %if.then10.i
  %ret.0.i = phi i32 [ %call13.i, %if.then10.i ], [ %call23.i, %if.then20.i ], [ %call27.i, %if.else24.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %tobool30.not.i = icmp ult i32 %7, 65536
  br i1 %tobool30.not.i, label %if.end29.i.xhci_decode_doorbell.exit_crit_edge, label %if.then31.i

if.end29.i.xhci_decode_doorbell.exit_crit_edge:   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_decode_doorbell.exit

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr32.i = getelementptr i8, ptr %add.ptr, i32 %ret.0.i
  %call34.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr32.i, ptr noundef nonnull @.str.260, i32 noundef %shr.i) #7
  br label %xhci_decode_doorbell.exit

xhci_decode_doorbell.exit:                        ; preds = %if.then31.i, %if.end29.i.xhci_decode_doorbell.exit_crit_edge, %if.then.i
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.254, ptr noundef %add.ptr) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %xhci_decode_doorbell.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %xhci_decode_doorbell.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_dbc_log_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dir = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dir, align 4, !range !955
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.267, ptr @.str.266
  %req = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %status = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.265, ptr noundef nonnull %cond, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 375)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 375)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !258, !259, !260, !261, !262, !264, !265, !266, !267, !268, !269, !270, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !304, !305, !306, !307, !308, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !322, !323, !324, !325, !326, !327, !328, !330, !331, !332, !333, !334, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !775, !776, !777, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !809, !810, !811, !812, !813, !815, !817, !819, !821, !823, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !909, !911, !913, !914, !915, !916, !917, !918, !919, !921, !923, !925, !927, !929, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941}
!llvm.named.register.sp = !{!942}
!llvm.module.flags = !{!943, !944, !945, !946, !947, !948, !949, !950}
!llvm.ident = !{!951}

!0 = !{ptr @__tracepoint_xhci_dbg_address, !1, !"__tracepoint_xhci_dbg_address", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/./xhci-trace.h", i32 38, i32 1}
!2 = !{ptr @__tracepoint_ptr_xhci_dbg_address, !1, !"__tracepoint_ptr_xhci_dbg_address", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_xhci_dbg_address, !1, !"__SCK__tp_func_xhci_dbg_address", i1 false, i1 false}
!4 = !{ptr @__tracepoint_xhci_dbg_context_change, !5, !"__tracepoint_xhci_dbg_context_change", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/./xhci-trace.h", i32 43, i32 1}
!6 = !{ptr @__tracepoint_ptr_xhci_dbg_context_change, !5, !"__tracepoint_ptr_xhci_dbg_context_change", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_xhci_dbg_context_change, !5, !"__SCK__tp_func_xhci_dbg_context_change", i1 false, i1 false}
!8 = !{ptr @__tracepoint_xhci_dbg_quirks, !9, !"__tracepoint_xhci_dbg_quirks", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/./xhci-trace.h", i32 48, i32 1}
!10 = !{ptr @__tracepoint_ptr_xhci_dbg_quirks, !9, !"__tracepoint_ptr_xhci_dbg_quirks", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_xhci_dbg_quirks, !9, !"__SCK__tp_func_xhci_dbg_quirks", i1 false, i1 false}
!12 = !{ptr @__tracepoint_xhci_dbg_reset_ep, !13, !"__tracepoint_xhci_dbg_reset_ep", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/./xhci-trace.h", i32 53, i32 1}
!14 = !{ptr @__tracepoint_ptr_xhci_dbg_reset_ep, !13, !"__tracepoint_ptr_xhci_dbg_reset_ep", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_xhci_dbg_reset_ep, !13, !"__SCK__tp_func_xhci_dbg_reset_ep", i1 false, i1 false}
!16 = !{ptr @__tracepoint_xhci_dbg_cancel_urb, !17, !"__tracepoint_xhci_dbg_cancel_urb", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/./xhci-trace.h", i32 58, i32 1}
!18 = !{ptr @__tracepoint_ptr_xhci_dbg_cancel_urb, !17, !"__tracepoint_ptr_xhci_dbg_cancel_urb", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_xhci_dbg_cancel_urb, !17, !"__SCK__tp_func_xhci_dbg_cancel_urb", i1 false, i1 false}
!20 = !{ptr @__tracepoint_xhci_dbg_init, !21, !"__tracepoint_xhci_dbg_init", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/./xhci-trace.h", i32 63, i32 1}
!22 = !{ptr @__tracepoint_ptr_xhci_dbg_init, !21, !"__tracepoint_ptr_xhci_dbg_init", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_xhci_dbg_init, !21, !"__SCK__tp_func_xhci_dbg_init", i1 false, i1 false}
!24 = !{ptr @__tracepoint_xhci_dbg_ring_expansion, !25, !"__tracepoint_xhci_dbg_ring_expansion", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/./xhci-trace.h", i32 68, i32 1}
!26 = !{ptr @__tracepoint_ptr_xhci_dbg_ring_expansion, !25, !"__tracepoint_ptr_xhci_dbg_ring_expansion", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_xhci_dbg_ring_expansion, !25, !"__SCK__tp_func_xhci_dbg_ring_expansion", i1 false, i1 false}
!28 = !{ptr @__tracepoint_xhci_address_ctx, !29, !"__tracepoint_xhci_address_ctx", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/./xhci-trace.h", i32 108, i32 1}
!30 = !{ptr @__tracepoint_ptr_xhci_address_ctx, !29, !"__tracepoint_ptr_xhci_address_ctx", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_xhci_address_ctx, !29, !"__SCK__tp_func_xhci_address_ctx", i1 false, i1 false}
!32 = !{ptr @__tracepoint_xhci_handle_event, !33, !"__tracepoint_xhci_handle_event", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/./xhci-trace.h", i32 138, i32 1}
!34 = !{ptr @__tracepoint_ptr_xhci_handle_event, !33, !"__tracepoint_ptr_xhci_handle_event", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_xhci_handle_event, !33, !"__SCK__tp_func_xhci_handle_event", i1 false, i1 false}
!36 = !{ptr @__tracepoint_xhci_handle_command, !37, !"__tracepoint_xhci_handle_command", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/./xhci-trace.h", i32 143, i32 1}
!38 = !{ptr @__tracepoint_ptr_xhci_handle_command, !37, !"__tracepoint_ptr_xhci_handle_command", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_xhci_handle_command, !37, !"__SCK__tp_func_xhci_handle_command", i1 false, i1 false}
!40 = !{ptr @__tracepoint_xhci_handle_transfer, !41, !"__tracepoint_xhci_handle_transfer", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/./xhci-trace.h", i32 148, i32 1}
!42 = !{ptr @__tracepoint_ptr_xhci_handle_transfer, !41, !"__tracepoint_ptr_xhci_handle_transfer", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_xhci_handle_transfer, !41, !"__SCK__tp_func_xhci_handle_transfer", i1 false, i1 false}
!44 = !{ptr @__tracepoint_xhci_queue_trb, !45, !"__tracepoint_xhci_queue_trb", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/./xhci-trace.h", i32 153, i32 1}
!46 = !{ptr @__tracepoint_ptr_xhci_queue_trb, !45, !"__tracepoint_ptr_xhci_queue_trb", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_xhci_queue_trb, !45, !"__SCK__tp_func_xhci_queue_trb", i1 false, i1 false}
!48 = !{ptr @__tracepoint_xhci_dbc_handle_event, !49, !"__tracepoint_xhci_dbc_handle_event", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/./xhci-trace.h", i32 158, i32 1}
!50 = !{ptr @__tracepoint_ptr_xhci_dbc_handle_event, !49, !"__tracepoint_ptr_xhci_dbc_handle_event", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_xhci_dbc_handle_event, !49, !"__SCK__tp_func_xhci_dbc_handle_event", i1 false, i1 false}
!52 = !{ptr @__tracepoint_xhci_dbc_handle_transfer, !53, !"__tracepoint_xhci_dbc_handle_transfer", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/./xhci-trace.h", i32 163, i32 1}
!54 = !{ptr @__tracepoint_ptr_xhci_dbc_handle_transfer, !53, !"__tracepoint_ptr_xhci_dbc_handle_transfer", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_xhci_dbc_handle_transfer, !53, !"__SCK__tp_func_xhci_dbc_handle_transfer", i1 false, i1 false}
!56 = !{ptr @__tracepoint_xhci_dbc_gadget_ep_queue, !57, !"__tracepoint_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/./xhci-trace.h", i32 168, i32 1}
!58 = !{ptr @__tracepoint_ptr_xhci_dbc_gadget_ep_queue, !57, !"__tracepoint_ptr_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_xhci_dbc_gadget_ep_queue, !57, !"__SCK__tp_func_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!60 = !{ptr @__tracepoint_xhci_free_virt_device, !61, !"__tracepoint_xhci_free_virt_device", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/./xhci-trace.h", i32 199, i32 1}
!62 = !{ptr @__tracepoint_ptr_xhci_free_virt_device, !61, !"__tracepoint_ptr_xhci_free_virt_device", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_xhci_free_virt_device, !61, !"__SCK__tp_func_xhci_free_virt_device", i1 false, i1 false}
!64 = !{ptr @__tracepoint_xhci_alloc_virt_device, !65, !"__tracepoint_xhci_alloc_virt_device", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/./xhci-trace.h", i32 236, i32 1}
!66 = !{ptr @__tracepoint_ptr_xhci_alloc_virt_device, !65, !"__tracepoint_ptr_xhci_alloc_virt_device", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_xhci_alloc_virt_device, !65, !"__SCK__tp_func_xhci_alloc_virt_device", i1 false, i1 false}
!68 = !{ptr @__tracepoint_xhci_setup_device, !69, !"__tracepoint_xhci_setup_device", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/./xhci-trace.h", i32 241, i32 1}
!70 = !{ptr @__tracepoint_ptr_xhci_setup_device, !69, !"__tracepoint_ptr_xhci_setup_device", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_xhci_setup_device, !69, !"__SCK__tp_func_xhci_setup_device", i1 false, i1 false}
!72 = !{ptr @__tracepoint_xhci_setup_addressable_virt_device, !73, !"__tracepoint_xhci_setup_addressable_virt_device", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/./xhci-trace.h", i32 246, i32 1}
!74 = !{ptr @__tracepoint_ptr_xhci_setup_addressable_virt_device, !73, !"__tracepoint_ptr_xhci_setup_addressable_virt_device", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_xhci_setup_addressable_virt_device, !73, !"__SCK__tp_func_xhci_setup_addressable_virt_device", i1 false, i1 false}
!76 = !{ptr @__tracepoint_xhci_stop_device, !77, !"__tracepoint_xhci_stop_device", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/./xhci-trace.h", i32 251, i32 1}
!78 = !{ptr @__tracepoint_ptr_xhci_stop_device, !77, !"__tracepoint_ptr_xhci_stop_device", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_xhci_stop_device, !77, !"__SCK__tp_func_xhci_stop_device", i1 false, i1 false}
!80 = !{ptr @__tracepoint_xhci_urb_enqueue, !81, !"__tracepoint_xhci_urb_enqueue", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/./xhci-trace.h", i32 302, i32 1}
!82 = !{ptr @__tracepoint_ptr_xhci_urb_enqueue, !81, !"__tracepoint_ptr_xhci_urb_enqueue", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_xhci_urb_enqueue, !81, !"__SCK__tp_func_xhci_urb_enqueue", i1 false, i1 false}
!84 = !{ptr @__tracepoint_xhci_urb_giveback, !85, !"__tracepoint_xhci_urb_giveback", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/./xhci-trace.h", i32 307, i32 1}
!86 = !{ptr @__tracepoint_ptr_xhci_urb_giveback, !85, !"__tracepoint_ptr_xhci_urb_giveback", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_xhci_urb_giveback, !85, !"__SCK__tp_func_xhci_urb_giveback", i1 false, i1 false}
!88 = !{ptr @__tracepoint_xhci_urb_dequeue, !89, !"__tracepoint_xhci_urb_dequeue", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/./xhci-trace.h", i32 312, i32 1}
!90 = !{ptr @__tracepoint_ptr_xhci_urb_dequeue, !89, !"__tracepoint_ptr_xhci_urb_dequeue", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_xhci_urb_dequeue, !89, !"__SCK__tp_func_xhci_urb_dequeue", i1 false, i1 false}
!92 = !{ptr @__tracepoint_xhci_handle_cmd_stop_ep, !93, !"__tracepoint_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!93 = !{!"../drivers/usb/host/./xhci-trace.h", i32 338, i32 1}
!94 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_stop_ep, !93, !"__tracepoint_ptr_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_xhci_handle_cmd_stop_ep, !93, !"__SCK__tp_func_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!96 = !{ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, !97, !"__tracepoint_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!97 = !{!"../drivers/usb/host/./xhci-trace.h", i32 343, i32 1}
!98 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_set_deq_ep, !97, !"__tracepoint_ptr_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_xhci_handle_cmd_set_deq_ep, !97, !"__SCK__tp_func_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!100 = !{ptr @__tracepoint_xhci_handle_cmd_reset_ep, !101, !"__tracepoint_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!101 = !{!"../drivers/usb/host/./xhci-trace.h", i32 348, i32 1}
!102 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_reset_ep, !101, !"__tracepoint_ptr_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_xhci_handle_cmd_reset_ep, !101, !"__SCK__tp_func_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!104 = !{ptr @__tracepoint_xhci_handle_cmd_config_ep, !105, !"__tracepoint_xhci_handle_cmd_config_ep", i1 false, i1 false}
!105 = !{!"../drivers/usb/host/./xhci-trace.h", i32 353, i32 1}
!106 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_config_ep, !105, !"__tracepoint_ptr_xhci_handle_cmd_config_ep", i1 false, i1 false}
!107 = !{ptr @__SCK__tp_func_xhci_handle_cmd_config_ep, !105, !"__SCK__tp_func_xhci_handle_cmd_config_ep", i1 false, i1 false}
!108 = !{ptr @__tracepoint_xhci_add_endpoint, !109, !"__tracepoint_xhci_add_endpoint", i1 false, i1 false}
!109 = !{!"../drivers/usb/host/./xhci-trace.h", i32 358, i32 1}
!110 = !{ptr @__tracepoint_ptr_xhci_add_endpoint, !109, !"__tracepoint_ptr_xhci_add_endpoint", i1 false, i1 false}
!111 = !{ptr @__SCK__tp_func_xhci_add_endpoint, !109, !"__SCK__tp_func_xhci_add_endpoint", i1 false, i1 false}
!112 = !{ptr @__tracepoint_xhci_alloc_dev, !113, !"__tracepoint_xhci_alloc_dev", i1 false, i1 false}
!113 = !{!"../drivers/usb/host/./xhci-trace.h", i32 385, i32 1}
!114 = !{ptr @__tracepoint_ptr_xhci_alloc_dev, !113, !"__tracepoint_ptr_xhci_alloc_dev", i1 false, i1 false}
!115 = !{ptr @__SCK__tp_func_xhci_alloc_dev, !113, !"__SCK__tp_func_xhci_alloc_dev", i1 false, i1 false}
!116 = !{ptr @__tracepoint_xhci_free_dev, !117, !"__tracepoint_xhci_free_dev", i1 false, i1 false}
!117 = !{!"../drivers/usb/host/./xhci-trace.h", i32 390, i32 1}
!118 = !{ptr @__tracepoint_ptr_xhci_free_dev, !117, !"__tracepoint_ptr_xhci_free_dev", i1 false, i1 false}
!119 = !{ptr @__SCK__tp_func_xhci_free_dev, !117, !"__SCK__tp_func_xhci_free_dev", i1 false, i1 false}
!120 = !{ptr @__tracepoint_xhci_handle_cmd_disable_slot, !121, !"__tracepoint_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/./xhci-trace.h", i32 395, i32 1}
!122 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_disable_slot, !121, !"__tracepoint_ptr_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!123 = !{ptr @__SCK__tp_func_xhci_handle_cmd_disable_slot, !121, !"__SCK__tp_func_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!124 = !{ptr @__tracepoint_xhci_discover_or_reset_device, !125, !"__tracepoint_xhci_discover_or_reset_device", i1 false, i1 false}
!125 = !{!"../drivers/usb/host/./xhci-trace.h", i32 400, i32 1}
!126 = !{ptr @__tracepoint_ptr_xhci_discover_or_reset_device, !125, !"__tracepoint_ptr_xhci_discover_or_reset_device", i1 false, i1 false}
!127 = !{ptr @__SCK__tp_func_xhci_discover_or_reset_device, !125, !"__SCK__tp_func_xhci_discover_or_reset_device", i1 false, i1 false}
!128 = !{ptr @__tracepoint_xhci_setup_device_slot, !129, !"__tracepoint_xhci_setup_device_slot", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/./xhci-trace.h", i32 405, i32 1}
!130 = !{ptr @__tracepoint_ptr_xhci_setup_device_slot, !129, !"__tracepoint_ptr_xhci_setup_device_slot", i1 false, i1 false}
!131 = !{ptr @__SCK__tp_func_xhci_setup_device_slot, !129, !"__SCK__tp_func_xhci_setup_device_slot", i1 false, i1 false}
!132 = !{ptr @__tracepoint_xhci_handle_cmd_addr_dev, !133, !"__tracepoint_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!133 = !{!"../drivers/usb/host/./xhci-trace.h", i32 410, i32 1}
!134 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_addr_dev, !133, !"__tracepoint_ptr_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!135 = !{ptr @__SCK__tp_func_xhci_handle_cmd_addr_dev, !133, !"__SCK__tp_func_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!136 = !{ptr @__tracepoint_xhci_handle_cmd_reset_dev, !137, !"__tracepoint_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/./xhci-trace.h", i32 415, i32 1}
!138 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_reset_dev, !137, !"__tracepoint_ptr_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!139 = !{ptr @__SCK__tp_func_xhci_handle_cmd_reset_dev, !137, !"__SCK__tp_func_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!140 = !{ptr @__tracepoint_xhci_handle_cmd_set_deq, !141, !"__tracepoint_xhci_handle_cmd_set_deq", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/./xhci-trace.h", i32 420, i32 1}
!142 = !{ptr @__tracepoint_ptr_xhci_handle_cmd_set_deq, !141, !"__tracepoint_ptr_xhci_handle_cmd_set_deq", i1 false, i1 false}
!143 = !{ptr @__SCK__tp_func_xhci_handle_cmd_set_deq, !141, !"__SCK__tp_func_xhci_handle_cmd_set_deq", i1 false, i1 false}
!144 = !{ptr @__tracepoint_xhci_configure_endpoint, !145, !"__tracepoint_xhci_configure_endpoint", i1 false, i1 false}
!145 = !{!"../drivers/usb/host/./xhci-trace.h", i32 425, i32 1}
!146 = !{ptr @__tracepoint_ptr_xhci_configure_endpoint, !145, !"__tracepoint_ptr_xhci_configure_endpoint", i1 false, i1 false}
!147 = !{ptr @__SCK__tp_func_xhci_configure_endpoint, !145, !"__SCK__tp_func_xhci_configure_endpoint", i1 false, i1 false}
!148 = !{ptr @__tracepoint_xhci_address_ctrl_ctx, !149, !"__tracepoint_xhci_address_ctrl_ctx", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/./xhci-trace.h", i32 446, i32 1}
!150 = !{ptr @__tracepoint_ptr_xhci_address_ctrl_ctx, !149, !"__tracepoint_ptr_xhci_address_ctrl_ctx", i1 false, i1 false}
!151 = !{ptr @__SCK__tp_func_xhci_address_ctrl_ctx, !149, !"__SCK__tp_func_xhci_address_ctrl_ctx", i1 false, i1 false}
!152 = !{ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, !153, !"__tracepoint_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!153 = !{!"../drivers/usb/host/./xhci-trace.h", i32 451, i32 1}
!154 = !{ptr @__tracepoint_ptr_xhci_configure_endpoint_ctrl_ctx, !153, !"__tracepoint_ptr_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!155 = !{ptr @__SCK__tp_func_xhci_configure_endpoint_ctrl_ctx, !153, !"__SCK__tp_func_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!156 = !{ptr @__tracepoint_xhci_ring_alloc, !157, !"__tracepoint_xhci_ring_alloc", i1 false, i1 false}
!157 = !{!"../drivers/usb/host/./xhci-trace.h", i32 497, i32 1}
!158 = !{ptr @__tracepoint_ptr_xhci_ring_alloc, !157, !"__tracepoint_ptr_xhci_ring_alloc", i1 false, i1 false}
!159 = !{ptr @__SCK__tp_func_xhci_ring_alloc, !157, !"__SCK__tp_func_xhci_ring_alloc", i1 false, i1 false}
!160 = !{ptr @__tracepoint_xhci_ring_free, !161, !"__tracepoint_xhci_ring_free", i1 false, i1 false}
!161 = !{!"../drivers/usb/host/./xhci-trace.h", i32 502, i32 1}
!162 = !{ptr @__tracepoint_ptr_xhci_ring_free, !161, !"__tracepoint_ptr_xhci_ring_free", i1 false, i1 false}
!163 = !{ptr @__SCK__tp_func_xhci_ring_free, !161, !"__SCK__tp_func_xhci_ring_free", i1 false, i1 false}
!164 = !{ptr @__tracepoint_xhci_ring_expansion, !165, !"__tracepoint_xhci_ring_expansion", i1 false, i1 false}
!165 = !{!"../drivers/usb/host/./xhci-trace.h", i32 507, i32 1}
!166 = !{ptr @__tracepoint_ptr_xhci_ring_expansion, !165, !"__tracepoint_ptr_xhci_ring_expansion", i1 false, i1 false}
!167 = !{ptr @__SCK__tp_func_xhci_ring_expansion, !165, !"__SCK__tp_func_xhci_ring_expansion", i1 false, i1 false}
!168 = !{ptr @__tracepoint_xhci_inc_enq, !169, !"__tracepoint_xhci_inc_enq", i1 false, i1 false}
!169 = !{!"../drivers/usb/host/./xhci-trace.h", i32 512, i32 1}
!170 = !{ptr @__tracepoint_ptr_xhci_inc_enq, !169, !"__tracepoint_ptr_xhci_inc_enq", i1 false, i1 false}
!171 = !{ptr @__SCK__tp_func_xhci_inc_enq, !169, !"__SCK__tp_func_xhci_inc_enq", i1 false, i1 false}
!172 = !{ptr @__tracepoint_xhci_inc_deq, !173, !"__tracepoint_xhci_inc_deq", i1 false, i1 false}
!173 = !{!"../drivers/usb/host/./xhci-trace.h", i32 517, i32 1}
!174 = !{ptr @__tracepoint_ptr_xhci_inc_deq, !173, !"__tracepoint_ptr_xhci_inc_deq", i1 false, i1 false}
!175 = !{ptr @__SCK__tp_func_xhci_inc_deq, !173, !"__SCK__tp_func_xhci_inc_deq", i1 false, i1 false}
!176 = !{ptr @__tracepoint_xhci_handle_port_status, !177, !"__tracepoint_xhci_handle_port_status", i1 false, i1 false}
!177 = !{!"../drivers/usb/host/./xhci-trace.h", i32 540, i32 1}
!178 = !{ptr @__tracepoint_ptr_xhci_handle_port_status, !177, !"__tracepoint_ptr_xhci_handle_port_status", i1 false, i1 false}
!179 = !{ptr @__SCK__tp_func_xhci_handle_port_status, !177, !"__SCK__tp_func_xhci_handle_port_status", i1 false, i1 false}
!180 = !{ptr @__tracepoint_xhci_get_port_status, !181, !"__tracepoint_xhci_get_port_status", i1 false, i1 false}
!181 = !{!"../drivers/usb/host/./xhci-trace.h", i32 545, i32 1}
!182 = !{ptr @__tracepoint_ptr_xhci_get_port_status, !181, !"__tracepoint_ptr_xhci_get_port_status", i1 false, i1 false}
!183 = !{ptr @__SCK__tp_func_xhci_get_port_status, !181, !"__SCK__tp_func_xhci_get_port_status", i1 false, i1 false}
!184 = !{ptr @__tracepoint_xhci_hub_status_data, !185, !"__tracepoint_xhci_hub_status_data", i1 false, i1 false}
!185 = !{!"../drivers/usb/host/./xhci-trace.h", i32 550, i32 1}
!186 = !{ptr @__tracepoint_ptr_xhci_hub_status_data, !185, !"__tracepoint_ptr_xhci_hub_status_data", i1 false, i1 false}
!187 = !{ptr @__SCK__tp_func_xhci_hub_status_data, !185, !"__SCK__tp_func_xhci_hub_status_data", i1 false, i1 false}
!188 = !{ptr @__tracepoint_xhci_ring_ep_doorbell, !189, !"__tracepoint_xhci_ring_ep_doorbell", i1 false, i1 false}
!189 = !{!"../drivers/usb/host/./xhci-trace.h", i32 572, i32 1}
!190 = !{ptr @__tracepoint_ptr_xhci_ring_ep_doorbell, !189, !"__tracepoint_ptr_xhci_ring_ep_doorbell", i1 false, i1 false}
!191 = !{ptr @__SCK__tp_func_xhci_ring_ep_doorbell, !189, !"__SCK__tp_func_xhci_ring_ep_doorbell", i1 false, i1 false}
!192 = !{ptr @__tracepoint_xhci_ring_host_doorbell, !193, !"__tracepoint_xhci_ring_host_doorbell", i1 false, i1 false}
!193 = !{!"../drivers/usb/host/./xhci-trace.h", i32 577, i32 1}
!194 = !{ptr @__tracepoint_ptr_xhci_ring_host_doorbell, !193, !"__tracepoint_ptr_xhci_ring_host_doorbell", i1 false, i1 false}
!195 = !{ptr @__SCK__tp_func_xhci_ring_host_doorbell, !193, !"__SCK__tp_func_xhci_ring_host_doorbell", i1 false, i1 false}
!196 = !{ptr @__tracepoint_xhci_dbc_alloc_request, !197, !"__tracepoint_xhci_dbc_alloc_request", i1 false, i1 false}
!197 = !{!"../drivers/usb/host/./xhci-trace.h", i32 606, i32 1}
!198 = !{ptr @__tracepoint_ptr_xhci_dbc_alloc_request, !197, !"__tracepoint_ptr_xhci_dbc_alloc_request", i1 false, i1 false}
!199 = !{ptr @__SCK__tp_func_xhci_dbc_alloc_request, !197, !"__SCK__tp_func_xhci_dbc_alloc_request", i1 false, i1 false}
!200 = !{ptr @__tracepoint_xhci_dbc_free_request, !201, !"__tracepoint_xhci_dbc_free_request", i1 false, i1 false}
!201 = !{!"../drivers/usb/host/./xhci-trace.h", i32 611, i32 1}
!202 = !{ptr @__tracepoint_ptr_xhci_dbc_free_request, !201, !"__tracepoint_ptr_xhci_dbc_free_request", i1 false, i1 false}
!203 = !{ptr @__SCK__tp_func_xhci_dbc_free_request, !201, !"__SCK__tp_func_xhci_dbc_free_request", i1 false, i1 false}
!204 = !{ptr @__tracepoint_xhci_dbc_queue_request, !205, !"__tracepoint_xhci_dbc_queue_request", i1 false, i1 false}
!205 = !{!"../drivers/usb/host/./xhci-trace.h", i32 616, i32 1}
!206 = !{ptr @__tracepoint_ptr_xhci_dbc_queue_request, !205, !"__tracepoint_ptr_xhci_dbc_queue_request", i1 false, i1 false}
!207 = !{ptr @__SCK__tp_func_xhci_dbc_queue_request, !205, !"__SCK__tp_func_xhci_dbc_queue_request", i1 false, i1 false}
!208 = !{ptr @__tracepoint_xhci_dbc_giveback_request, !209, !"__tracepoint_xhci_dbc_giveback_request", i1 false, i1 false}
!209 = !{!"../drivers/usb/host/./xhci-trace.h", i32 621, i32 1}
!210 = !{ptr @__tracepoint_ptr_xhci_dbc_giveback_request, !209, !"__tracepoint_ptr_xhci_dbc_giveback_request", i1 false, i1 false}
!211 = !{ptr @__SCK__tp_func_xhci_dbc_giveback_request, !209, !"__SCK__tp_func_xhci_dbc_giveback_request", i1 false, i1 false}
!212 = !{ptr @event_class_xhci_log_msg, !213, !"event_class_xhci_log_msg", i1 false, i1 false}
!213 = !{!"../drivers/usb/host/./xhci-trace.h", i32 28, i32 1}
!214 = !{ptr @event_xhci_dbg_address, !1, !"event_xhci_dbg_address", i1 false, i1 false}
!215 = !{ptr @__event_xhci_dbg_address, !1, !"__event_xhci_dbg_address", i1 false, i1 false}
!216 = !{ptr @event_xhci_dbg_context_change, !5, !"event_xhci_dbg_context_change", i1 false, i1 false}
!217 = !{ptr @__event_xhci_dbg_context_change, !5, !"__event_xhci_dbg_context_change", i1 false, i1 false}
!218 = !{ptr @event_xhci_dbg_quirks, !9, !"event_xhci_dbg_quirks", i1 false, i1 false}
!219 = !{ptr @__event_xhci_dbg_quirks, !9, !"__event_xhci_dbg_quirks", i1 false, i1 false}
!220 = !{ptr @event_xhci_dbg_reset_ep, !13, !"event_xhci_dbg_reset_ep", i1 false, i1 false}
!221 = !{ptr @__event_xhci_dbg_reset_ep, !13, !"__event_xhci_dbg_reset_ep", i1 false, i1 false}
!222 = !{ptr @event_xhci_dbg_cancel_urb, !17, !"event_xhci_dbg_cancel_urb", i1 false, i1 false}
!223 = !{ptr @__event_xhci_dbg_cancel_urb, !17, !"__event_xhci_dbg_cancel_urb", i1 false, i1 false}
!224 = !{ptr @event_xhci_dbg_init, !21, !"event_xhci_dbg_init", i1 false, i1 false}
!225 = !{ptr @__event_xhci_dbg_init, !21, !"__event_xhci_dbg_init", i1 false, i1 false}
!226 = !{ptr @event_xhci_dbg_ring_expansion, !25, !"event_xhci_dbg_ring_expansion", i1 false, i1 false}
!227 = !{ptr @__event_xhci_dbg_ring_expansion, !25, !"__event_xhci_dbg_ring_expansion", i1 false, i1 false}
!228 = !{ptr @event_class_xhci_log_ctx, !229, !"event_class_xhci_log_ctx", i1 false, i1 false}
!229 = !{!"../drivers/usb/host/./xhci-trace.h", i32 73, i32 1}
!230 = !{ptr @event_xhci_address_ctx, !29, !"event_xhci_address_ctx", i1 false, i1 false}
!231 = !{ptr @__event_xhci_address_ctx, !29, !"__event_xhci_address_ctx", i1 false, i1 false}
!232 = !{ptr @event_class_xhci_log_trb, !233, !"event_class_xhci_log_trb", i1 false, i1 false}
!233 = !{!"../drivers/usb/host/./xhci-trace.h", i32 114, i32 1}
!234 = !{ptr @event_xhci_handle_event, !33, !"event_xhci_handle_event", i1 false, i1 false}
!235 = !{ptr @__event_xhci_handle_event, !33, !"__event_xhci_handle_event", i1 false, i1 false}
!236 = !{ptr @event_xhci_handle_command, !37, !"event_xhci_handle_command", i1 false, i1 false}
!237 = !{ptr @__event_xhci_handle_command, !37, !"__event_xhci_handle_command", i1 false, i1 false}
!238 = !{ptr @event_xhci_handle_transfer, !41, !"event_xhci_handle_transfer", i1 false, i1 false}
!239 = !{ptr @__event_xhci_handle_transfer, !41, !"__event_xhci_handle_transfer", i1 false, i1 false}
!240 = !{ptr @event_xhci_queue_trb, !45, !"event_xhci_queue_trb", i1 false, i1 false}
!241 = !{ptr @__event_xhci_queue_trb, !45, !"__event_xhci_queue_trb", i1 false, i1 false}
!242 = !{ptr @event_xhci_dbc_handle_event, !49, !"event_xhci_dbc_handle_event", i1 false, i1 false}
!243 = !{ptr @__event_xhci_dbc_handle_event, !49, !"__event_xhci_dbc_handle_event", i1 false, i1 false}
!244 = !{ptr @event_xhci_dbc_handle_transfer, !53, !"event_xhci_dbc_handle_transfer", i1 false, i1 false}
!245 = !{ptr @__event_xhci_dbc_handle_transfer, !53, !"__event_xhci_dbc_handle_transfer", i1 false, i1 false}
!246 = !{ptr @event_xhci_dbc_gadget_ep_queue, !57, !"event_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!247 = !{ptr @__event_xhci_dbc_gadget_ep_queue, !57, !"__event_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!248 = !{ptr @event_class_xhci_log_free_virt_dev, !249, !"event_class_xhci_log_free_virt_dev", i1 false, i1 false}
!249 = !{!"../drivers/usb/host/./xhci-trace.h", i32 173, i32 1}
!250 = !{ptr @event_xhci_free_virt_device, !61, !"event_xhci_free_virt_device", i1 false, i1 false}
!251 = !{ptr @__event_xhci_free_virt_device, !61, !"__event_xhci_free_virt_device", i1 false, i1 false}
!252 = !{ptr @event_class_xhci_log_virt_dev, !253, !"event_class_xhci_log_virt_dev", i1 false, i1 false}
!253 = !{!"../drivers/usb/host/./xhci-trace.h", i32 204, i32 1}
!254 = !{ptr @event_xhci_alloc_virt_device, !65, !"event_xhci_alloc_virt_device", i1 false, i1 false}
!255 = !{ptr @__event_xhci_alloc_virt_device, !65, !"__event_xhci_alloc_virt_device", i1 false, i1 false}
!256 = !{ptr @event_xhci_setup_device, !69, !"event_xhci_setup_device", i1 false, i1 false}
!257 = !{ptr @__event_xhci_setup_device, !69, !"__event_xhci_setup_device", i1 false, i1 false}
!258 = !{ptr @event_xhci_setup_addressable_virt_device, !73, !"event_xhci_setup_addressable_virt_device", i1 false, i1 false}
!259 = !{ptr @__event_xhci_setup_addressable_virt_device, !73, !"__event_xhci_setup_addressable_virt_device", i1 false, i1 false}
!260 = !{ptr @event_xhci_stop_device, !77, !"event_xhci_stop_device", i1 false, i1 false}
!261 = !{ptr @__event_xhci_stop_device, !77, !"__event_xhci_stop_device", i1 false, i1 false}
!262 = !{ptr @event_class_xhci_log_urb, !263, !"event_class_xhci_log_urb", i1 false, i1 false}
!263 = !{!"../drivers/usb/host/./xhci-trace.h", i32 256, i32 1}
!264 = !{ptr @event_xhci_urb_enqueue, !81, !"event_xhci_urb_enqueue", i1 false, i1 false}
!265 = !{ptr @__event_xhci_urb_enqueue, !81, !"__event_xhci_urb_enqueue", i1 false, i1 false}
!266 = !{ptr @event_xhci_urb_giveback, !85, !"event_xhci_urb_giveback", i1 false, i1 false}
!267 = !{ptr @__event_xhci_urb_giveback, !85, !"__event_xhci_urb_giveback", i1 false, i1 false}
!268 = !{ptr @event_xhci_urb_dequeue, !89, !"event_xhci_urb_dequeue", i1 false, i1 false}
!269 = !{ptr @__event_xhci_urb_dequeue, !89, !"__event_xhci_urb_dequeue", i1 false, i1 false}
!270 = !{ptr @event_class_xhci_log_ep_ctx, !271, !"event_class_xhci_log_ep_ctx", i1 false, i1 false}
!271 = !{!"../drivers/usb/host/./xhci-trace.h", i32 317, i32 1}
!272 = !{ptr @event_xhci_handle_cmd_stop_ep, !93, !"event_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!273 = !{ptr @__event_xhci_handle_cmd_stop_ep, !93, !"__event_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!274 = !{ptr @event_xhci_handle_cmd_set_deq_ep, !97, !"event_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!275 = !{ptr @__event_xhci_handle_cmd_set_deq_ep, !97, !"__event_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!276 = !{ptr @event_xhci_handle_cmd_reset_ep, !101, !"event_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!277 = !{ptr @__event_xhci_handle_cmd_reset_ep, !101, !"__event_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!278 = !{ptr @event_xhci_handle_cmd_config_ep, !105, !"event_xhci_handle_cmd_config_ep", i1 false, i1 false}
!279 = !{ptr @__event_xhci_handle_cmd_config_ep, !105, !"__event_xhci_handle_cmd_config_ep", i1 false, i1 false}
!280 = !{ptr @event_xhci_add_endpoint, !109, !"event_xhci_add_endpoint", i1 false, i1 false}
!281 = !{ptr @__event_xhci_add_endpoint, !109, !"__event_xhci_add_endpoint", i1 false, i1 false}
!282 = !{ptr @event_class_xhci_log_slot_ctx, !283, !"event_class_xhci_log_slot_ctx", i1 false, i1 false}
!283 = !{!"../drivers/usb/host/./xhci-trace.h", i32 363, i32 1}
!284 = !{ptr @event_xhci_alloc_dev, !113, !"event_xhci_alloc_dev", i1 false, i1 false}
!285 = !{ptr @__event_xhci_alloc_dev, !113, !"__event_xhci_alloc_dev", i1 false, i1 false}
!286 = !{ptr @event_xhci_free_dev, !117, !"event_xhci_free_dev", i1 false, i1 false}
!287 = !{ptr @__event_xhci_free_dev, !117, !"__event_xhci_free_dev", i1 false, i1 false}
!288 = !{ptr @event_xhci_handle_cmd_disable_slot, !121, !"event_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!289 = !{ptr @__event_xhci_handle_cmd_disable_slot, !121, !"__event_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!290 = !{ptr @event_xhci_discover_or_reset_device, !125, !"event_xhci_discover_or_reset_device", i1 false, i1 false}
!291 = !{ptr @__event_xhci_discover_or_reset_device, !125, !"__event_xhci_discover_or_reset_device", i1 false, i1 false}
!292 = !{ptr @event_xhci_setup_device_slot, !129, !"event_xhci_setup_device_slot", i1 false, i1 false}
!293 = !{ptr @__event_xhci_setup_device_slot, !129, !"__event_xhci_setup_device_slot", i1 false, i1 false}
!294 = !{ptr @event_xhci_handle_cmd_addr_dev, !133, !"event_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!295 = !{ptr @__event_xhci_handle_cmd_addr_dev, !133, !"__event_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!296 = !{ptr @event_xhci_handle_cmd_reset_dev, !137, !"event_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!297 = !{ptr @__event_xhci_handle_cmd_reset_dev, !137, !"__event_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!298 = !{ptr @event_xhci_handle_cmd_set_deq, !141, !"event_xhci_handle_cmd_set_deq", i1 false, i1 false}
!299 = !{ptr @__event_xhci_handle_cmd_set_deq, !141, !"__event_xhci_handle_cmd_set_deq", i1 false, i1 false}
!300 = !{ptr @event_xhci_configure_endpoint, !145, !"event_xhci_configure_endpoint", i1 false, i1 false}
!301 = !{ptr @__event_xhci_configure_endpoint, !145, !"__event_xhci_configure_endpoint", i1 false, i1 false}
!302 = !{ptr @event_class_xhci_log_ctrl_ctx, !303, !"event_class_xhci_log_ctrl_ctx", i1 false, i1 false}
!303 = !{!"../drivers/usb/host/./xhci-trace.h", i32 430, i32 1}
!304 = !{ptr @event_xhci_address_ctrl_ctx, !149, !"event_xhci_address_ctrl_ctx", i1 false, i1 false}
!305 = !{ptr @__event_xhci_address_ctrl_ctx, !149, !"__event_xhci_address_ctrl_ctx", i1 false, i1 false}
!306 = !{ptr @event_xhci_configure_endpoint_ctrl_ctx, !153, !"event_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!307 = !{ptr @__event_xhci_configure_endpoint_ctrl_ctx, !153, !"__event_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!308 = !{ptr @event_class_xhci_log_ring, !309, !"event_class_xhci_log_ring", i1 false, i1 false}
!309 = !{!"../drivers/usb/host/./xhci-trace.h", i32 456, i32 1}
!310 = !{ptr @event_xhci_ring_alloc, !157, !"event_xhci_ring_alloc", i1 false, i1 false}
!311 = !{ptr @__event_xhci_ring_alloc, !157, !"__event_xhci_ring_alloc", i1 false, i1 false}
!312 = !{ptr @event_xhci_ring_free, !161, !"event_xhci_ring_free", i1 false, i1 false}
!313 = !{ptr @__event_xhci_ring_free, !161, !"__event_xhci_ring_free", i1 false, i1 false}
!314 = !{ptr @event_xhci_ring_expansion, !165, !"event_xhci_ring_expansion", i1 false, i1 false}
!315 = !{ptr @__event_xhci_ring_expansion, !165, !"__event_xhci_ring_expansion", i1 false, i1 false}
!316 = !{ptr @event_xhci_inc_enq, !169, !"event_xhci_inc_enq", i1 false, i1 false}
!317 = !{ptr @__event_xhci_inc_enq, !169, !"__event_xhci_inc_enq", i1 false, i1 false}
!318 = !{ptr @event_xhci_inc_deq, !173, !"event_xhci_inc_deq", i1 false, i1 false}
!319 = !{ptr @__event_xhci_inc_deq, !173, !"__event_xhci_inc_deq", i1 false, i1 false}
!320 = !{ptr @event_class_xhci_log_portsc, !321, !"event_class_xhci_log_portsc", i1 false, i1 false}
!321 = !{!"../drivers/usb/host/./xhci-trace.h", i32 522, i32 1}
!322 = !{ptr @event_xhci_handle_port_status, !177, !"event_xhci_handle_port_status", i1 false, i1 false}
!323 = !{ptr @__event_xhci_handle_port_status, !177, !"__event_xhci_handle_port_status", i1 false, i1 false}
!324 = !{ptr @event_xhci_get_port_status, !181, !"event_xhci_get_port_status", i1 false, i1 false}
!325 = !{ptr @__event_xhci_get_port_status, !181, !"__event_xhci_get_port_status", i1 false, i1 false}
!326 = !{ptr @event_xhci_hub_status_data, !185, !"event_xhci_hub_status_data", i1 false, i1 false}
!327 = !{ptr @__event_xhci_hub_status_data, !185, !"__event_xhci_hub_status_data", i1 false, i1 false}
!328 = !{ptr @event_class_xhci_log_doorbell, !329, !"event_class_xhci_log_doorbell", i1 false, i1 false}
!329 = !{!"../drivers/usb/host/./xhci-trace.h", i32 555, i32 1}
!330 = !{ptr @event_xhci_ring_ep_doorbell, !189, !"event_xhci_ring_ep_doorbell", i1 false, i1 false}
!331 = !{ptr @__event_xhci_ring_ep_doorbell, !189, !"__event_xhci_ring_ep_doorbell", i1 false, i1 false}
!332 = !{ptr @event_xhci_ring_host_doorbell, !193, !"event_xhci_ring_host_doorbell", i1 false, i1 false}
!333 = !{ptr @__event_xhci_ring_host_doorbell, !193, !"__event_xhci_ring_host_doorbell", i1 false, i1 false}
!334 = !{ptr @event_class_xhci_dbc_log_request, !335, !"event_class_xhci_dbc_log_request", i1 false, i1 false}
!335 = !{!"../drivers/usb/host/./xhci-trace.h", i32 582, i32 1}
!336 = !{ptr @event_xhci_dbc_alloc_request, !197, !"event_xhci_dbc_alloc_request", i1 false, i1 false}
!337 = !{ptr @__event_xhci_dbc_alloc_request, !197, !"__event_xhci_dbc_alloc_request", i1 false, i1 false}
!338 = !{ptr @event_xhci_dbc_free_request, !201, !"event_xhci_dbc_free_request", i1 false, i1 false}
!339 = !{ptr @__event_xhci_dbc_free_request, !201, !"__event_xhci_dbc_free_request", i1 false, i1 false}
!340 = !{ptr @event_xhci_dbc_queue_request, !205, !"event_xhci_dbc_queue_request", i1 false, i1 false}
!341 = !{ptr @__event_xhci_dbc_queue_request, !205, !"__event_xhci_dbc_queue_request", i1 false, i1 false}
!342 = !{ptr @event_xhci_dbc_giveback_request, !209, !"event_xhci_dbc_giveback_request", i1 false, i1 false}
!343 = !{ptr @__event_xhci_dbc_giveback_request, !209, !"__event_xhci_dbc_giveback_request", i1 false, i1 false}
!344 = !{ptr @__bpf_trace_tp_map_xhci_dbg_address, !1, !"__bpf_trace_tp_map_xhci_dbg_address", i1 false, i1 false}
!345 = !{ptr @__bpf_trace_tp_map_xhci_dbg_context_change, !5, !"__bpf_trace_tp_map_xhci_dbg_context_change", i1 false, i1 false}
!346 = !{ptr @__bpf_trace_tp_map_xhci_dbg_quirks, !9, !"__bpf_trace_tp_map_xhci_dbg_quirks", i1 false, i1 false}
!347 = !{ptr @__bpf_trace_tp_map_xhci_dbg_reset_ep, !13, !"__bpf_trace_tp_map_xhci_dbg_reset_ep", i1 false, i1 false}
!348 = !{ptr @__bpf_trace_tp_map_xhci_dbg_cancel_urb, !17, !"__bpf_trace_tp_map_xhci_dbg_cancel_urb", i1 false, i1 false}
!349 = !{ptr @__bpf_trace_tp_map_xhci_dbg_init, !21, !"__bpf_trace_tp_map_xhci_dbg_init", i1 false, i1 false}
!350 = !{ptr @__bpf_trace_tp_map_xhci_dbg_ring_expansion, !25, !"__bpf_trace_tp_map_xhci_dbg_ring_expansion", i1 false, i1 false}
!351 = !{ptr @__bpf_trace_tp_map_xhci_address_ctx, !29, !"__bpf_trace_tp_map_xhci_address_ctx", i1 false, i1 false}
!352 = !{ptr @__bpf_trace_tp_map_xhci_handle_event, !33, !"__bpf_trace_tp_map_xhci_handle_event", i1 false, i1 false}
!353 = !{ptr @__bpf_trace_tp_map_xhci_handle_command, !37, !"__bpf_trace_tp_map_xhci_handle_command", i1 false, i1 false}
!354 = !{ptr @__bpf_trace_tp_map_xhci_handle_transfer, !41, !"__bpf_trace_tp_map_xhci_handle_transfer", i1 false, i1 false}
!355 = !{ptr @__bpf_trace_tp_map_xhci_queue_trb, !45, !"__bpf_trace_tp_map_xhci_queue_trb", i1 false, i1 false}
!356 = !{ptr @__bpf_trace_tp_map_xhci_dbc_handle_event, !49, !"__bpf_trace_tp_map_xhci_dbc_handle_event", i1 false, i1 false}
!357 = !{ptr @__bpf_trace_tp_map_xhci_dbc_handle_transfer, !53, !"__bpf_trace_tp_map_xhci_dbc_handle_transfer", i1 false, i1 false}
!358 = !{ptr @__bpf_trace_tp_map_xhci_dbc_gadget_ep_queue, !57, !"__bpf_trace_tp_map_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!359 = !{ptr @__bpf_trace_tp_map_xhci_free_virt_device, !61, !"__bpf_trace_tp_map_xhci_free_virt_device", i1 false, i1 false}
!360 = !{ptr @__bpf_trace_tp_map_xhci_alloc_virt_device, !65, !"__bpf_trace_tp_map_xhci_alloc_virt_device", i1 false, i1 false}
!361 = !{ptr @__bpf_trace_tp_map_xhci_setup_device, !69, !"__bpf_trace_tp_map_xhci_setup_device", i1 false, i1 false}
!362 = !{ptr @__bpf_trace_tp_map_xhci_setup_addressable_virt_device, !73, !"__bpf_trace_tp_map_xhci_setup_addressable_virt_device", i1 false, i1 false}
!363 = !{ptr @__bpf_trace_tp_map_xhci_stop_device, !77, !"__bpf_trace_tp_map_xhci_stop_device", i1 false, i1 false}
!364 = !{ptr @__bpf_trace_tp_map_xhci_urb_enqueue, !81, !"__bpf_trace_tp_map_xhci_urb_enqueue", i1 false, i1 false}
!365 = !{ptr @__bpf_trace_tp_map_xhci_urb_giveback, !85, !"__bpf_trace_tp_map_xhci_urb_giveback", i1 false, i1 false}
!366 = !{ptr @__bpf_trace_tp_map_xhci_urb_dequeue, !89, !"__bpf_trace_tp_map_xhci_urb_dequeue", i1 false, i1 false}
!367 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_stop_ep, !93, !"__bpf_trace_tp_map_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!368 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_set_deq_ep, !97, !"__bpf_trace_tp_map_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!369 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_reset_ep, !101, !"__bpf_trace_tp_map_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!370 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_config_ep, !105, !"__bpf_trace_tp_map_xhci_handle_cmd_config_ep", i1 false, i1 false}
!371 = !{ptr @__bpf_trace_tp_map_xhci_add_endpoint, !109, !"__bpf_trace_tp_map_xhci_add_endpoint", i1 false, i1 false}
!372 = !{ptr @__bpf_trace_tp_map_xhci_alloc_dev, !113, !"__bpf_trace_tp_map_xhci_alloc_dev", i1 false, i1 false}
!373 = !{ptr @__bpf_trace_tp_map_xhci_free_dev, !117, !"__bpf_trace_tp_map_xhci_free_dev", i1 false, i1 false}
!374 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_disable_slot, !121, !"__bpf_trace_tp_map_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!375 = !{ptr @__bpf_trace_tp_map_xhci_discover_or_reset_device, !125, !"__bpf_trace_tp_map_xhci_discover_or_reset_device", i1 false, i1 false}
!376 = !{ptr @__bpf_trace_tp_map_xhci_setup_device_slot, !129, !"__bpf_trace_tp_map_xhci_setup_device_slot", i1 false, i1 false}
!377 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_addr_dev, !133, !"__bpf_trace_tp_map_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!378 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_reset_dev, !137, !"__bpf_trace_tp_map_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!379 = !{ptr @__bpf_trace_tp_map_xhci_handle_cmd_set_deq, !141, !"__bpf_trace_tp_map_xhci_handle_cmd_set_deq", i1 false, i1 false}
!380 = !{ptr @__bpf_trace_tp_map_xhci_configure_endpoint, !145, !"__bpf_trace_tp_map_xhci_configure_endpoint", i1 false, i1 false}
!381 = !{ptr @__bpf_trace_tp_map_xhci_address_ctrl_ctx, !149, !"__bpf_trace_tp_map_xhci_address_ctrl_ctx", i1 false, i1 false}
!382 = !{ptr @__bpf_trace_tp_map_xhci_configure_endpoint_ctrl_ctx, !153, !"__bpf_trace_tp_map_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!383 = !{ptr @__bpf_trace_tp_map_xhci_ring_alloc, !157, !"__bpf_trace_tp_map_xhci_ring_alloc", i1 false, i1 false}
!384 = !{ptr @__bpf_trace_tp_map_xhci_ring_free, !161, !"__bpf_trace_tp_map_xhci_ring_free", i1 false, i1 false}
!385 = !{ptr @__bpf_trace_tp_map_xhci_ring_expansion, !165, !"__bpf_trace_tp_map_xhci_ring_expansion", i1 false, i1 false}
!386 = !{ptr @__bpf_trace_tp_map_xhci_inc_enq, !169, !"__bpf_trace_tp_map_xhci_inc_enq", i1 false, i1 false}
!387 = !{ptr @__bpf_trace_tp_map_xhci_inc_deq, !173, !"__bpf_trace_tp_map_xhci_inc_deq", i1 false, i1 false}
!388 = !{ptr @__bpf_trace_tp_map_xhci_handle_port_status, !177, !"__bpf_trace_tp_map_xhci_handle_port_status", i1 false, i1 false}
!389 = !{ptr @__bpf_trace_tp_map_xhci_get_port_status, !181, !"__bpf_trace_tp_map_xhci_get_port_status", i1 false, i1 false}
!390 = !{ptr @__bpf_trace_tp_map_xhci_hub_status_data, !185, !"__bpf_trace_tp_map_xhci_hub_status_data", i1 false, i1 false}
!391 = !{ptr @__bpf_trace_tp_map_xhci_ring_ep_doorbell, !189, !"__bpf_trace_tp_map_xhci_ring_ep_doorbell", i1 false, i1 false}
!392 = !{ptr @__bpf_trace_tp_map_xhci_ring_host_doorbell, !193, !"__bpf_trace_tp_map_xhci_ring_host_doorbell", i1 false, i1 false}
!393 = !{ptr @__bpf_trace_tp_map_xhci_dbc_alloc_request, !197, !"__bpf_trace_tp_map_xhci_dbc_alloc_request", i1 false, i1 false}
!394 = !{ptr @__bpf_trace_tp_map_xhci_dbc_free_request, !201, !"__bpf_trace_tp_map_xhci_dbc_free_request", i1 false, i1 false}
!395 = !{ptr @__bpf_trace_tp_map_xhci_dbc_queue_request, !205, !"__bpf_trace_tp_map_xhci_dbc_queue_request", i1 false, i1 false}
!396 = !{ptr @__bpf_trace_tp_map_xhci_dbc_giveback_request, !209, !"__bpf_trace_tp_map_xhci_dbc_giveback_request", i1 false, i1 false}
!397 = !{ptr @__ksymtab___tracepoint_xhci_dbg_quirks, !398, !"__ksymtab___tracepoint_xhci_dbg_quirks", i1 false, i1 false}
!398 = !{!"../drivers/usb/host/xhci-trace.c", i32 14, i32 1}
!399 = !{ptr @__ksymtab___traceiter_xhci_dbg_quirks, !398, !"__ksymtab___traceiter_xhci_dbg_quirks", i1 false, i1 false}
!400 = !{ptr @__ksymtab___SCK__tp_func_xhci_dbg_quirks, !398, !"__ksymtab___SCK__tp_func_xhci_dbg_quirks", i1 false, i1 false}
!401 = !{ptr @__tpstrtab_xhci_dbg_address, !1, !"__tpstrtab_xhci_dbg_address", i1 false, i1 false}
!402 = !{ptr @__tpstrtab_xhci_dbg_context_change, !5, !"__tpstrtab_xhci_dbg_context_change", i1 false, i1 false}
!403 = !{ptr @__tpstrtab_xhci_dbg_quirks, !9, !"__tpstrtab_xhci_dbg_quirks", i1 false, i1 false}
!404 = !{ptr @__tpstrtab_xhci_dbg_reset_ep, !13, !"__tpstrtab_xhci_dbg_reset_ep", i1 false, i1 false}
!405 = !{ptr @__tpstrtab_xhci_dbg_cancel_urb, !17, !"__tpstrtab_xhci_dbg_cancel_urb", i1 false, i1 false}
!406 = !{ptr @__tpstrtab_xhci_dbg_init, !21, !"__tpstrtab_xhci_dbg_init", i1 false, i1 false}
!407 = !{ptr @__tpstrtab_xhci_dbg_ring_expansion, !25, !"__tpstrtab_xhci_dbg_ring_expansion", i1 false, i1 false}
!408 = !{ptr @__tpstrtab_xhci_address_ctx, !29, !"__tpstrtab_xhci_address_ctx", i1 false, i1 false}
!409 = !{ptr @__tpstrtab_xhci_handle_event, !33, !"__tpstrtab_xhci_handle_event", i1 false, i1 false}
!410 = !{ptr @__tpstrtab_xhci_handle_command, !37, !"__tpstrtab_xhci_handle_command", i1 false, i1 false}
!411 = !{ptr @__tpstrtab_xhci_handle_transfer, !41, !"__tpstrtab_xhci_handle_transfer", i1 false, i1 false}
!412 = !{ptr @__tpstrtab_xhci_queue_trb, !45, !"__tpstrtab_xhci_queue_trb", i1 false, i1 false}
!413 = !{ptr @__tpstrtab_xhci_dbc_handle_event, !49, !"__tpstrtab_xhci_dbc_handle_event", i1 false, i1 false}
!414 = !{ptr @__tpstrtab_xhci_dbc_handle_transfer, !53, !"__tpstrtab_xhci_dbc_handle_transfer", i1 false, i1 false}
!415 = !{ptr @__tpstrtab_xhci_dbc_gadget_ep_queue, !57, !"__tpstrtab_xhci_dbc_gadget_ep_queue", i1 false, i1 false}
!416 = !{ptr @__tpstrtab_xhci_free_virt_device, !61, !"__tpstrtab_xhci_free_virt_device", i1 false, i1 false}
!417 = !{ptr @__tpstrtab_xhci_alloc_virt_device, !65, !"__tpstrtab_xhci_alloc_virt_device", i1 false, i1 false}
!418 = !{ptr @__tpstrtab_xhci_setup_device, !69, !"__tpstrtab_xhci_setup_device", i1 false, i1 false}
!419 = !{ptr @__tpstrtab_xhci_setup_addressable_virt_device, !73, !"__tpstrtab_xhci_setup_addressable_virt_device", i1 false, i1 false}
!420 = !{ptr @__tpstrtab_xhci_stop_device, !77, !"__tpstrtab_xhci_stop_device", i1 false, i1 false}
!421 = !{ptr @__tpstrtab_xhci_urb_enqueue, !81, !"__tpstrtab_xhci_urb_enqueue", i1 false, i1 false}
!422 = !{ptr @__tpstrtab_xhci_urb_giveback, !85, !"__tpstrtab_xhci_urb_giveback", i1 false, i1 false}
!423 = !{ptr @__tpstrtab_xhci_urb_dequeue, !89, !"__tpstrtab_xhci_urb_dequeue", i1 false, i1 false}
!424 = !{ptr @__tpstrtab_xhci_handle_cmd_stop_ep, !93, !"__tpstrtab_xhci_handle_cmd_stop_ep", i1 false, i1 false}
!425 = !{ptr @__tpstrtab_xhci_handle_cmd_set_deq_ep, !97, !"__tpstrtab_xhci_handle_cmd_set_deq_ep", i1 false, i1 false}
!426 = !{ptr @__tpstrtab_xhci_handle_cmd_reset_ep, !101, !"__tpstrtab_xhci_handle_cmd_reset_ep", i1 false, i1 false}
!427 = !{ptr @__tpstrtab_xhci_handle_cmd_config_ep, !105, !"__tpstrtab_xhci_handle_cmd_config_ep", i1 false, i1 false}
!428 = !{ptr @__tpstrtab_xhci_add_endpoint, !109, !"__tpstrtab_xhci_add_endpoint", i1 false, i1 false}
!429 = !{ptr @__tpstrtab_xhci_alloc_dev, !113, !"__tpstrtab_xhci_alloc_dev", i1 false, i1 false}
!430 = !{ptr @__tpstrtab_xhci_free_dev, !117, !"__tpstrtab_xhci_free_dev", i1 false, i1 false}
!431 = !{ptr @__tpstrtab_xhci_handle_cmd_disable_slot, !121, !"__tpstrtab_xhci_handle_cmd_disable_slot", i1 false, i1 false}
!432 = !{ptr @__tpstrtab_xhci_discover_or_reset_device, !125, !"__tpstrtab_xhci_discover_or_reset_device", i1 false, i1 false}
!433 = !{ptr @__tpstrtab_xhci_setup_device_slot, !129, !"__tpstrtab_xhci_setup_device_slot", i1 false, i1 false}
!434 = !{ptr @__tpstrtab_xhci_handle_cmd_addr_dev, !133, !"__tpstrtab_xhci_handle_cmd_addr_dev", i1 false, i1 false}
!435 = !{ptr @__tpstrtab_xhci_handle_cmd_reset_dev, !137, !"__tpstrtab_xhci_handle_cmd_reset_dev", i1 false, i1 false}
!436 = !{ptr @__tpstrtab_xhci_handle_cmd_set_deq, !141, !"__tpstrtab_xhci_handle_cmd_set_deq", i1 false, i1 false}
!437 = !{ptr @__tpstrtab_xhci_configure_endpoint, !145, !"__tpstrtab_xhci_configure_endpoint", i1 false, i1 false}
!438 = !{ptr @__tpstrtab_xhci_address_ctrl_ctx, !149, !"__tpstrtab_xhci_address_ctrl_ctx", i1 false, i1 false}
!439 = !{ptr @__tpstrtab_xhci_configure_endpoint_ctrl_ctx, !153, !"__tpstrtab_xhci_configure_endpoint_ctrl_ctx", i1 false, i1 false}
!440 = !{ptr @__tpstrtab_xhci_ring_alloc, !157, !"__tpstrtab_xhci_ring_alloc", i1 false, i1 false}
!441 = !{ptr @__tpstrtab_xhci_ring_free, !161, !"__tpstrtab_xhci_ring_free", i1 false, i1 false}
!442 = !{ptr @__tpstrtab_xhci_ring_expansion, !165, !"__tpstrtab_xhci_ring_expansion", i1 false, i1 false}
!443 = !{ptr @__tpstrtab_xhci_inc_enq, !169, !"__tpstrtab_xhci_inc_enq", i1 false, i1 false}
!444 = !{ptr @__tpstrtab_xhci_inc_deq, !173, !"__tpstrtab_xhci_inc_deq", i1 false, i1 false}
!445 = !{ptr @__tpstrtab_xhci_handle_port_status, !177, !"__tpstrtab_xhci_handle_port_status", i1 false, i1 false}
!446 = !{ptr @__tpstrtab_xhci_get_port_status, !181, !"__tpstrtab_xhci_get_port_status", i1 false, i1 false}
!447 = !{ptr @__tpstrtab_xhci_hub_status_data, !185, !"__tpstrtab_xhci_hub_status_data", i1 false, i1 false}
!448 = !{ptr @__tpstrtab_xhci_ring_ep_doorbell, !189, !"__tpstrtab_xhci_ring_ep_doorbell", i1 false, i1 false}
!449 = !{ptr @__tpstrtab_xhci_ring_host_doorbell, !193, !"__tpstrtab_xhci_ring_host_doorbell", i1 false, i1 false}
!450 = !{ptr @__tpstrtab_xhci_dbc_alloc_request, !197, !"__tpstrtab_xhci_dbc_alloc_request", i1 false, i1 false}
!451 = !{ptr @__tpstrtab_xhci_dbc_free_request, !201, !"__tpstrtab_xhci_dbc_free_request", i1 false, i1 false}
!452 = !{ptr @__tpstrtab_xhci_dbc_queue_request, !205, !"__tpstrtab_xhci_dbc_queue_request", i1 false, i1 false}
!453 = !{ptr @__tpstrtab_xhci_dbc_giveback_request, !209, !"__tpstrtab_xhci_dbc_giveback_request", i1 false, i1 false}
!454 = !{ptr @str__xhci_hcd__trace_system_name, !455, !"str__xhci_hcd__trace_system_name", i1 false, i1 false}
!455 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!456 = !{ptr @.str, !213, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.1, !213, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @trace_event_fields_xhci_log_msg, !213, !"trace_event_fields_xhci_log_msg", i1 false, i1 false}
!459 = !{ptr @trace_event_type_funcs_xhci_log_msg, !213, !"trace_event_type_funcs_xhci_log_msg", i1 false, i1 false}
!460 = !{ptr @.str.2, !213, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @print_fmt_xhci_log_msg, !213, !"print_fmt_xhci_log_msg", i1 false, i1 false}
!462 = !{ptr @.str.3, !229, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.4, !229, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.5, !229, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.6, !229, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.7, !229, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.8, !229, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @.str.9, !229, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.10, !229, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @.str.11, !229, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.12, !229, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @.str.13, !229, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.14, !229, !"<string literal>", i1 false, i1 false}
!474 = !{ptr @trace_event_fields_xhci_log_ctx, !229, !"trace_event_fields_xhci_log_ctx", i1 false, i1 false}
!475 = !{ptr @trace_event_type_funcs_xhci_log_ctx, !229, !"trace_event_type_funcs_xhci_log_ctx", i1 false, i1 false}
!476 = !{ptr @.str.15, !229, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @print_fmt_xhci_log_ctx, !229, !"print_fmt_xhci_log_ctx", i1 false, i1 false}
!478 = !{ptr @.str.16, !233, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @.str.17, !233, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @.str.18, !233, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.19, !233, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @.str.20, !233, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.21, !233, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.22, !233, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @trace_event_fields_xhci_log_trb, !233, !"trace_event_fields_xhci_log_trb", i1 false, i1 false}
!486 = !{ptr @trace_event_type_funcs_xhci_log_trb, !233, !"trace_event_type_funcs_xhci_log_trb", i1 false, i1 false}
!487 = !{ptr @.str.23, !233, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @.str.24, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/usb/host/xhci.h", i32 1597, i32 10}
!490 = !{ptr @.str.25, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/usb/host/xhci.h", i32 1599, i32 10}
!492 = !{ptr @.str.26, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/usb/host/xhci.h", i32 1601, i32 10}
!494 = !{ptr @.str.27, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/usb/host/xhci.h", i32 1603, i32 10}
!496 = !{ptr @.str.28, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/usb/host/xhci.h", i32 1605, i32 10}
!498 = !{ptr @.str.29, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/usb/host/xhci.h", i32 1607, i32 10}
!500 = !{ptr @.str.30, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/usb/host/xhci.h", i32 1609, i32 10}
!502 = !{ptr @.str.31, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/usb/host/xhci.h", i32 1612, i32 9}
!504 = !{ptr @.str.32, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/usb/host/xhci.h", i32 2250, i32 4}
!506 = !{ptr @.str.33, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/usb/host/xhci.h", i32 2267, i32 4}
!508 = !{ptr @.str.34, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/usb/host/xhci.h", i32 2280, i32 4}
!510 = !{ptr @.str.35, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/usb/host/xhci.h", i32 2298, i32 5}
!512 = !{ptr @.str.36, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/usb/host/xhci.h", i32 2312, i32 5}
!514 = !{ptr @.str.37, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/usb/host/xhci.h", i32 2326, i32 4}
!516 = !{ptr @.str.38, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/usb/host/xhci.h", i32 2343, i32 4}
!518 = !{ptr @.str.39, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/usb/host/xhci.h", i32 2350, i32 4}
!520 = !{ptr @.str.40, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/usb/host/xhci.h", i32 2357, i32 4}
!522 = !{ptr @.str.41, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/usb/host/xhci.h", i32 2375, i32 4}
!524 = !{ptr @.str.42, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/usb/host/xhci.h", i32 2383, i32 4}
!526 = !{ptr @.str.43, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/usb/host/xhci.h", i32 2394, i32 4}
!528 = !{ptr @.str.44, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/usb/host/xhci.h", i32 2404, i32 4}
!530 = !{ptr @.str.45, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/usb/host/xhci.h", i32 2422, i32 4}
!532 = !{ptr @.str.46, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/usb/host/xhci.h", i32 2431, i32 4}
!534 = !{ptr @.str.47, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/usb/host/xhci.h", i32 2438, i32 4}
!536 = !{ptr @.str.48, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/usb/host/xhci.h", i32 2447, i32 4}
!538 = !{ptr @.str.49, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/usb/host/xhci.h", i32 2456, i32 4}
!540 = !{ptr @.str.50, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/usb/host/xhci.h", i32 1435, i32 10}
!542 = !{ptr @.str.51, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/usb/host/xhci.h", i32 1437, i32 10}
!544 = !{ptr @.str.52, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/usb/host/xhci.h", i32 1439, i32 10}
!546 = !{ptr @.str.53, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/usb/host/xhci.h", i32 1441, i32 10}
!548 = !{ptr @.str.54, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/usb/host/xhci.h", i32 1443, i32 10}
!550 = !{ptr @.str.55, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/usb/host/xhci.h", i32 1445, i32 10}
!552 = !{ptr @.str.56, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/usb/host/xhci.h", i32 1447, i32 10}
!554 = !{ptr @.str.57, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/usb/host/xhci.h", i32 1449, i32 10}
!556 = !{ptr @.str.58, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/usb/host/xhci.h", i32 1451, i32 10}
!558 = !{ptr @.str.59, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/usb/host/xhci.h", i32 1453, i32 10}
!560 = !{ptr @.str.60, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/usb/host/xhci.h", i32 1455, i32 10}
!562 = !{ptr @.str.61, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/usb/host/xhci.h", i32 1457, i32 10}
!564 = !{ptr @.str.62, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/usb/host/xhci.h", i32 1459, i32 10}
!566 = !{ptr @.str.63, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/usb/host/xhci.h", i32 1461, i32 10}
!568 = !{ptr @.str.64, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/usb/host/xhci.h", i32 1463, i32 10}
!570 = !{ptr @.str.65, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/usb/host/xhci.h", i32 1465, i32 10}
!572 = !{ptr @.str.66, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/usb/host/xhci.h", i32 1467, i32 10}
!574 = !{ptr @.str.67, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/usb/host/xhci.h", i32 1469, i32 10}
!576 = !{ptr @.str.68, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/usb/host/xhci.h", i32 1471, i32 10}
!578 = !{ptr @.str.69, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/usb/host/xhci.h", i32 1473, i32 10}
!580 = !{ptr @.str.70, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/usb/host/xhci.h", i32 1475, i32 10}
!582 = !{ptr @.str.71, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/usb/host/xhci.h", i32 1477, i32 10}
!584 = !{ptr @.str.72, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/usb/host/xhci.h", i32 1479, i32 10}
!586 = !{ptr @.str.73, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/usb/host/xhci.h", i32 1481, i32 10}
!588 = !{ptr @.str.74, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/usb/host/xhci.h", i32 1483, i32 10}
!590 = !{ptr @.str.75, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/usb/host/xhci.h", i32 1485, i32 10}
!592 = !{ptr @.str.76, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/usb/host/xhci.h", i32 1487, i32 10}
!594 = !{ptr @.str.77, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/usb/host/xhci.h", i32 1489, i32 10}
!596 = !{ptr @.str.78, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/usb/host/xhci.h", i32 1491, i32 10}
!598 = !{ptr @.str.79, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/usb/host/xhci.h", i32 1493, i32 10}
!600 = !{ptr @.str.80, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/usb/host/xhci.h", i32 1495, i32 10}
!602 = !{ptr @.str.81, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/usb/host/xhci.h", i32 1497, i32 10}
!604 = !{ptr @.str.82, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/usb/host/xhci.h", i32 1499, i32 10}
!606 = !{ptr @.str.83, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/usb/host/xhci.h", i32 1136, i32 10}
!608 = !{ptr @.str.84, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/usb/host/xhci.h", i32 1138, i32 10}
!610 = !{ptr @.str.85, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/usb/host/xhci.h", i32 1140, i32 10}
!612 = !{ptr @.str.86, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/usb/host/xhci.h", i32 1142, i32 10}
!614 = !{ptr @.str.87, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/usb/host/xhci.h", i32 1144, i32 10}
!616 = !{ptr @.str.88, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/usb/host/xhci.h", i32 1146, i32 10}
!618 = !{ptr @.str.89, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/usb/host/xhci.h", i32 1148, i32 10}
!620 = !{ptr @.str.90, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/usb/host/xhci.h", i32 1150, i32 10}
!622 = !{ptr @.str.91, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/usb/host/xhci.h", i32 1152, i32 10}
!624 = !{ptr @.str.92, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/usb/host/xhci.h", i32 1154, i32 10}
!626 = !{ptr @.str.93, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/usb/host/xhci.h", i32 1156, i32 10}
!628 = !{ptr @.str.94, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/usb/host/xhci.h", i32 1158, i32 10}
!630 = !{ptr @.str.95, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/usb/host/xhci.h", i32 1160, i32 10}
!632 = !{ptr @.str.96, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/usb/host/xhci.h", i32 1162, i32 10}
!634 = !{ptr @.str.97, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/usb/host/xhci.h", i32 1164, i32 10}
!636 = !{ptr @.str.98, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/usb/host/xhci.h", i32 1166, i32 10}
!638 = !{ptr @.str.99, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/usb/host/xhci.h", i32 1168, i32 10}
!640 = !{ptr @.str.100, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/usb/host/xhci.h", i32 1170, i32 10}
!642 = !{ptr @.str.101, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/usb/host/xhci.h", i32 1172, i32 10}
!644 = !{ptr @.str.102, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/usb/host/xhci.h", i32 1174, i32 10}
!646 = !{ptr @.str.103, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/usb/host/xhci.h", i32 1176, i32 10}
!648 = !{ptr @.str.104, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/usb/host/xhci.h", i32 1178, i32 10}
!650 = !{ptr @.str.105, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/usb/host/xhci.h", i32 1180, i32 10}
!652 = !{ptr @.str.106, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/usb/host/xhci.h", i32 1182, i32 10}
!654 = !{ptr @.str.107, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/usb/host/xhci.h", i32 1184, i32 10}
!656 = !{ptr @.str.108, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/usb/host/xhci.h", i32 1186, i32 10}
!658 = !{ptr @.str.109, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/usb/host/xhci.h", i32 1188, i32 10}
!660 = !{ptr @.str.110, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/usb/host/xhci.h", i32 1190, i32 10}
!662 = !{ptr @.str.111, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/usb/host/xhci.h", i32 1192, i32 10}
!664 = !{ptr @.str.112, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/usb/host/xhci.h", i32 1194, i32 10}
!666 = !{ptr @.str.113, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/usb/host/xhci.h", i32 1196, i32 10}
!668 = !{ptr @.str.114, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/usb/host/xhci.h", i32 1198, i32 10}
!670 = !{ptr @.str.115, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/usb/host/xhci.h", i32 1200, i32 10}
!672 = !{ptr @.str.116, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/usb/host/xhci.h", i32 1202, i32 10}
!674 = !{ptr @.str.117, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/usb/host/xhci.h", i32 1204, i32 10}
!676 = !{ptr @.str.118, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/usb/host/xhci.h", i32 1206, i32 10}
!678 = !{ptr @.str.119, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/usb/host/xhci.h", i32 1208, i32 10}
!680 = !{ptr @print_fmt_xhci_log_trb, !233, !"print_fmt_xhci_log_trb", i1 false, i1 false}
!681 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!682 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!683 = !{ptr @.str.122, !249, !"<string literal>", i1 false, i1 false}
!684 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!685 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!686 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!687 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!688 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!689 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!690 = !{ptr @.str.129, !249, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @trace_event_fields_xhci_log_free_virt_dev, !249, !"trace_event_fields_xhci_log_free_virt_dev", i1 false, i1 false}
!692 = !{ptr @trace_event_type_funcs_xhci_log_free_virt_dev, !249, !"trace_event_type_funcs_xhci_log_free_virt_dev", i1 false, i1 false}
!693 = !{ptr @.str.130, !249, !"<string literal>", i1 false, i1 false}
!694 = !{ptr @print_fmt_xhci_log_free_virt_dev, !249, !"print_fmt_xhci_log_free_virt_dev", i1 false, i1 false}
!695 = !{ptr @.str.131, !253, !"<string literal>", i1 false, i1 false}
!696 = !{ptr @.str.132, !253, !"<string literal>", i1 false, i1 false}
!697 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!698 = !{ptr @.str.134, !253, !"<string literal>", i1 false, i1 false}
!699 = !{ptr @.str.135, !253, !"<string literal>", i1 false, i1 false}
!700 = !{ptr @trace_event_fields_xhci_log_virt_dev, !253, !"trace_event_fields_xhci_log_virt_dev", i1 false, i1 false}
!701 = !{ptr @trace_event_type_funcs_xhci_log_virt_dev, !253, !"trace_event_type_funcs_xhci_log_virt_dev", i1 false, i1 false}
!702 = !{ptr @.str.136, !253, !"<string literal>", i1 false, i1 false}
!703 = !{ptr @print_fmt_xhci_log_virt_dev, !253, !"print_fmt_xhci_log_virt_dev", i1 false, i1 false}
!704 = !{ptr @.str.137, !263, !"<string literal>", i1 false, i1 false}
!705 = !{ptr @.str.138, !263, !"<string literal>", i1 false, i1 false}
!706 = !{ptr @.str.139, !263, !"<string literal>", i1 false, i1 false}
!707 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!708 = !{ptr @.str.141, !263, !"<string literal>", i1 false, i1 false}
!709 = !{ptr @.str.142, !263, !"<string literal>", i1 false, i1 false}
!710 = !{ptr @.str.143, !263, !"<string literal>", i1 false, i1 false}
!711 = !{ptr @.str.144, !263, !"<string literal>", i1 false, i1 false}
!712 = !{ptr @.str.145, !263, !"<string literal>", i1 false, i1 false}
!713 = !{ptr @.str.146, !263, !"<string literal>", i1 false, i1 false}
!714 = !{ptr @.str.147, !263, !"<string literal>", i1 false, i1 false}
!715 = !{ptr @.str.148, !263, !"<string literal>", i1 false, i1 false}
!716 = !{ptr @trace_event_fields_xhci_log_urb, !263, !"trace_event_fields_xhci_log_urb", i1 false, i1 false}
!717 = !{ptr @trace_event_type_funcs_xhci_log_urb, !263, !"trace_event_type_funcs_xhci_log_urb", i1 false, i1 false}
!718 = !{ptr @.str.149, !263, !"<string literal>", i1 false, i1 false}
!719 = !{ptr @.str.150, !263, !"<string literal>", i1 false, i1 false}
!720 = !{ptr @.str.151, !263, !"<string literal>", i1 false, i1 false}
!721 = !{ptr @.str.152, !263, !"<string literal>", i1 false, i1 false}
!722 = !{ptr @.str.153, !263, !"<string literal>", i1 false, i1 false}
!723 = !{ptr @.str.154, !263, !"<string literal>", i1 false, i1 false}
!724 = !{ptr @.str.155, !263, !"<string literal>", i1 false, i1 false}
!725 = !{ptr @trace_raw_output_xhci_log_urb.symbols, !263, !"symbols", i1 false, i1 false}
!726 = !{ptr @print_fmt_xhci_log_urb, !263, !"print_fmt_xhci_log_urb", i1 false, i1 false}
!727 = !{ptr @.str.156, !271, !"<string literal>", i1 false, i1 false}
!728 = !{ptr @.str.157, !271, !"<string literal>", i1 false, i1 false}
!729 = !{ptr @.str.158, !271, !"<string literal>", i1 false, i1 false}
!730 = !{ptr @.str.159, !271, !"<string literal>", i1 false, i1 false}
!731 = !{ptr @.str.160, !271, !"<string literal>", i1 false, i1 false}
!732 = !{ptr @trace_event_fields_xhci_log_ep_ctx, !271, !"trace_event_fields_xhci_log_ep_ctx", i1 false, i1 false}
!733 = !{ptr @trace_event_type_funcs_xhci_log_ep_ctx, !271, !"trace_event_type_funcs_xhci_log_ep_ctx", i1 false, i1 false}
!734 = !{ptr @.str.161, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/usb/host/xhci.h", i32 2756, i32 21}
!736 = !{ptr @.str.162, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/usb/host/xhci.h", i32 2758, i32 20}
!738 = !{ptr @.str.163, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/usb/host/xhci.h", i32 2758, i32 29}
!740 = !{ptr @.str.164, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/usb/host/xhci.h", i32 2760, i32 28}
!742 = !{ptr @.str.165, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/usb/host/xhci.h", i32 2763, i32 28}
!744 = !{ptr @.str.166, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/usb/host/xhci.h", i32 2764, i32 40}
!746 = !{ptr @.str.167, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/usb/host/xhci.h", i32 2767, i32 28}
!748 = !{ptr @.str.168, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/usb/host/xhci.h", i32 2683, i32 10}
!750 = !{ptr @.str.169, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/usb/host/xhci.h", i32 2685, i32 10}
!752 = !{ptr @.str.170, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/usb/host/xhci.h", i32 2687, i32 10}
!754 = !{ptr @.str.171, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/usb/host/xhci.h", i32 2689, i32 10}
!756 = !{ptr @.str.172, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/usb/host/xhci.h", i32 2691, i32 10}
!758 = !{ptr @.str.173, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/usb/host/xhci.h", i32 2693, i32 10}
!760 = !{ptr @.str.174, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/usb/host/xhci.h", i32 2701, i32 10}
!762 = !{ptr @.str.175, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/usb/host/xhci.h", i32 2703, i32 10}
!764 = !{ptr @.str.176, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/usb/host/xhci.h", i32 2705, i32 10}
!766 = !{ptr @.str.177, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/usb/host/xhci.h", i32 2707, i32 10}
!768 = !{ptr @.str.178, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../drivers/usb/host/xhci.h", i32 2709, i32 10}
!770 = !{ptr @.str.179, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/usb/host/xhci.h", i32 2711, i32 10}
!772 = !{ptr @.str.180, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/usb/host/xhci.h", i32 2713, i32 10}
!774 = !{ptr @print_fmt_xhci_log_ep_ctx, !271, !"print_fmt_xhci_log_ep_ctx", i1 false, i1 false}
!775 = !{ptr @.str.181, !283, !"<string literal>", i1 false, i1 false}
!776 = !{ptr @trace_event_fields_xhci_log_slot_ctx, !283, !"trace_event_fields_xhci_log_slot_ctx", i1 false, i1 false}
!777 = !{ptr @trace_event_type_funcs_xhci_log_slot_ctx, !283, !"trace_event_type_funcs_xhci_log_slot_ctx", i1 false, i1 false}
!778 = !{ptr @.str.182, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/usb/host/xhci.h", i32 2504, i32 21}
!780 = !{ptr @.str.183, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/usb/host/xhci.h", i32 2509, i32 9}
!782 = !{ptr @.str.184, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/usb/host/xhci.h", i32 2512, i32 9}
!784 = !{ptr @.str.185, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/usb/host/xhci.h", i32 2515, i32 9}
!786 = !{ptr @.str.186, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/usb/host/xhci.h", i32 2518, i32 9}
!788 = !{ptr @.str.187, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/usb/host/xhci.h", i32 2521, i32 9}
!790 = !{ptr @.str.188, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/usb/host/xhci.h", i32 2524, i32 9}
!792 = !{ptr @.str.189, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/usb/host/xhci.h", i32 2526, i32 10}
!794 = !{ptr @.str.190, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/usb/host/xhci.h", i32 2527, i32 10}
!796 = !{ptr @.str.191, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/usb/host/xhci.h", i32 2533, i32 28}
!798 = !{ptr @.str.192, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/usb/host/xhci.h", i32 2230, i32 10}
!800 = !{ptr @.str.193, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/usb/host/xhci.h", i32 2232, i32 10}
!802 = !{ptr @.str.194, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/usb/host/xhci.h", i32 2234, i32 10}
!804 = !{ptr @.str.195, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/usb/host/xhci.h", i32 2236, i32 10}
!806 = !{ptr @.str.196, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/usb/host/xhci.h", i32 2238, i32 10}
!808 = !{ptr @print_fmt_xhci_log_slot_ctx, !283, !"print_fmt_xhci_log_slot_ctx", i1 false, i1 false}
!809 = !{ptr @.str.197, !303, !"<string literal>", i1 false, i1 false}
!810 = !{ptr @.str.198, !303, !"<string literal>", i1 false, i1 false}
!811 = !{ptr @trace_event_fields_xhci_log_ctrl_ctx, !303, !"trace_event_fields_xhci_log_ctrl_ctx", i1 false, i1 false}
!812 = !{ptr @trace_event_type_funcs_xhci_log_ctrl_ctx, !303, !"trace_event_type_funcs_xhci_log_ctrl_ctx", i1 false, i1 false}
!813 = !{ptr @.str.199, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../drivers/usb/host/xhci.h", i32 2471, i32 22}
!815 = !{ptr @.str.200, !816, !"<string literal>", i1 false, i1 false}
!816 = !{!"../drivers/usb/host/xhci.h", i32 2473, i32 30}
!817 = !{ptr @.str.201, !818, !"<string literal>", i1 false, i1 false}
!818 = !{!"../drivers/usb/host/xhci.h", i32 2476, i32 29}
!819 = !{ptr @.str.202, !820, !"<string literal>", i1 false, i1 false}
!820 = !{!"../drivers/usb/host/xhci.h", i32 2480, i32 29}
!821 = !{ptr @.str.203, !822, !"<string literal>", i1 false, i1 false}
!822 = !{!"../drivers/usb/host/xhci.h", i32 2481, i32 31}
!823 = !{ptr @.str.204, !824, !"<string literal>", i1 false, i1 false}
!824 = !{!"../drivers/usb/host/xhci.h", i32 2482, i32 30}
!825 = !{ptr @print_fmt_xhci_log_ctrl_ctx, !303, !"print_fmt_xhci_log_ctrl_ctx", i1 false, i1 false}
!826 = !{ptr @.str.205, !309, !"<string literal>", i1 false, i1 false}
!827 = !{ptr @.str.206, !309, !"<string literal>", i1 false, i1 false}
!828 = !{ptr @.str.207, !309, !"<string literal>", i1 false, i1 false}
!829 = !{ptr @.str.208, !309, !"<string literal>", i1 false, i1 false}
!830 = !{ptr @.str.209, !309, !"<string literal>", i1 false, i1 false}
!831 = !{ptr @.str.210, !309, !"<string literal>", i1 false, i1 false}
!832 = !{ptr @.str.211, !309, !"<string literal>", i1 false, i1 false}
!833 = !{ptr @.str.212, !309, !"<string literal>", i1 false, i1 false}
!834 = !{ptr @.str.213, !309, !"<string literal>", i1 false, i1 false}
!835 = !{ptr @trace_event_fields_xhci_log_ring, !309, !"trace_event_fields_xhci_log_ring", i1 false, i1 false}
!836 = !{ptr @trace_event_type_funcs_xhci_log_ring, !309, !"trace_event_type_funcs_xhci_log_ring", i1 false, i1 false}
!837 = !{ptr @.str.214, !309, !"<string literal>", i1 false, i1 false}
!838 = !{ptr @print_fmt_xhci_log_ring, !309, !"print_fmt_xhci_log_ring", i1 false, i1 false}
!839 = !{ptr @.str.215, !321, !"<string literal>", i1 false, i1 false}
!840 = !{ptr @trace_event_fields_xhci_log_portsc, !321, !"trace_event_fields_xhci_log_portsc", i1 false, i1 false}
!841 = !{ptr @trace_event_type_funcs_xhci_log_portsc, !321, !"trace_event_type_funcs_xhci_log_portsc", i1 false, i1 false}
!842 = !{ptr @.str.216, !321, !"<string literal>", i1 false, i1 false}
!843 = !{ptr @.str.217, !844, !"<string literal>", i1 false, i1 false}
!844 = !{!"../drivers/usb/host/xhci.h", i32 2582, i32 21}
!845 = !{ptr @.str.218, !846, !"<string literal>", i1 false, i1 false}
!846 = !{!"../drivers/usb/host/xhci.h", i32 2583, i32 31}
!847 = !{ptr @.str.219, !848, !"<string literal>", i1 false, i1 false}
!848 = !{!"../drivers/usb/host/xhci.h", i32 2583, i32 43}
!849 = !{ptr @.str.220, !850, !"<string literal>", i1 false, i1 false}
!850 = !{!"../drivers/usb/host/xhci.h", i32 2584, i32 33}
!851 = !{ptr @.str.221, !852, !"<string literal>", i1 false, i1 false}
!852 = !{!"../drivers/usb/host/xhci.h", i32 2584, i32 47}
!853 = !{ptr @.str.222, !854, !"<string literal>", i1 false, i1 false}
!854 = !{!"../drivers/usb/host/xhci.h", i32 2585, i32 29}
!855 = !{ptr @.str.223, !856, !"<string literal>", i1 false, i1 false}
!856 = !{!"../drivers/usb/host/xhci.h", i32 2585, i32 41}
!857 = !{ptr @.str.224, !858, !"<string literal>", i1 false, i1 false}
!858 = !{!"../drivers/usb/host/xhci.h", i32 2590, i32 29}
!859 = !{ptr @.str.225, !860, !"<string literal>", i1 false, i1 false}
!860 = !{!"../drivers/usb/host/xhci.h", i32 2592, i32 29}
!861 = !{ptr @.str.226, !862, !"<string literal>", i1 false, i1 false}
!862 = !{!"../drivers/usb/host/xhci.h", i32 2594, i32 28}
!863 = !{ptr @.str.227, !864, !"<string literal>", i1 false, i1 false}
!864 = !{!"../drivers/usb/host/xhci.h", i32 2596, i32 29}
!865 = !{ptr @.str.228, !866, !"<string literal>", i1 false, i1 false}
!866 = !{!"../drivers/usb/host/xhci.h", i32 2598, i32 29}
!867 = !{ptr @.str.229, !868, !"<string literal>", i1 false, i1 false}
!868 = !{!"../drivers/usb/host/xhci.h", i32 2600, i32 29}
!869 = !{ptr @.str.230, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../drivers/usb/host/xhci.h", i32 2602, i32 29}
!871 = !{ptr @.str.231, !872, !"<string literal>", i1 false, i1 false}
!872 = !{!"../drivers/usb/host/xhci.h", i32 2604, i32 29}
!873 = !{ptr @.str.232, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../drivers/usb/host/xhci.h", i32 2606, i32 29}
!875 = !{ptr @.str.233, !876, !"<string literal>", i1 false, i1 false}
!876 = !{!"../drivers/usb/host/xhci.h", i32 2608, i32 29}
!877 = !{ptr @.str.234, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../drivers/usb/host/xhci.h", i32 2610, i32 29}
!879 = !{ptr @.str.235, !880, !"<string literal>", i1 false, i1 false}
!880 = !{!"../drivers/usb/host/xhci.h", i32 2612, i32 28}
!881 = !{ptr @.str.236, !882, !"<string literal>", i1 false, i1 false}
!882 = !{!"../drivers/usb/host/xhci.h", i32 2614, i32 29}
!883 = !{ptr @.str.237, !884, !"<string literal>", i1 false, i1 false}
!884 = !{!"../drivers/usb/host/xhci.h", i32 2616, i32 29}
!885 = !{ptr @.str.238, !886, !"<string literal>", i1 false, i1 false}
!886 = !{!"../drivers/usb/host/xhci.h", i32 2618, i32 29}
!887 = !{ptr @.str.239, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../drivers/usb/host/xhci.h", i32 2547, i32 10}
!889 = !{ptr @.str.240, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../drivers/usb/host/xhci.h", i32 2549, i32 10}
!891 = !{ptr @.str.241, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/usb/host/xhci.h", i32 2551, i32 10}
!893 = !{ptr @.str.242, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/usb/host/xhci.h", i32 2553, i32 10}
!895 = !{ptr @.str.243, !896, !"<string literal>", i1 false, i1 false}
!896 = !{!"../drivers/usb/host/xhci.h", i32 2557, i32 10}
!897 = !{ptr @.str.244, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/usb/host/xhci.h", i32 2559, i32 10}
!899 = !{ptr @.str.245, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/usb/host/xhci.h", i32 2561, i32 10}
!901 = !{ptr @.str.246, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/usb/host/xhci.h", i32 2563, i32 10}
!903 = !{ptr @.str.247, !904, !"<string literal>", i1 false, i1 false}
!904 = !{!"../drivers/usb/host/xhci.h", i32 2565, i32 10}
!905 = !{ptr @.str.248, !906, !"<string literal>", i1 false, i1 false}
!906 = !{!"../drivers/usb/host/xhci.h", i32 2567, i32 10}
!907 = !{ptr @.str.249, !908, !"<string literal>", i1 false, i1 false}
!908 = !{!"../drivers/usb/host/xhci.h", i32 2569, i32 10}
!909 = !{ptr @.str.250, !910, !"<string literal>", i1 false, i1 false}
!910 = !{!"../drivers/usb/host/xhci.h", i32 2571, i32 10}
!911 = !{ptr @.str.251, !912, !"<string literal>", i1 false, i1 false}
!912 = !{!"../drivers/usb/host/xhci.h", i32 2575, i32 9}
!913 = !{ptr @print_fmt_xhci_log_portsc, !321, !"print_fmt_xhci_log_portsc", i1 false, i1 false}
!914 = !{ptr @.str.252, !329, !"<string literal>", i1 false, i1 false}
!915 = !{ptr @.str.253, !329, !"<string literal>", i1 false, i1 false}
!916 = !{ptr @trace_event_fields_xhci_log_doorbell, !329, !"trace_event_fields_xhci_log_doorbell", i1 false, i1 false}
!917 = !{ptr @trace_event_type_funcs_xhci_log_doorbell, !329, !"trace_event_type_funcs_xhci_log_doorbell", i1 false, i1 false}
!918 = !{ptr @.str.254, !329, !"<string literal>", i1 false, i1 false}
!919 = !{ptr @.str.255, !920, !"<string literal>", i1 false, i1 false}
!920 = !{!"../drivers/usb/host/xhci.h", i32 2661, i32 16}
!921 = !{ptr @.str.256, !922, !"<string literal>", i1 false, i1 false}
!922 = !{!"../drivers/usb/host/xhci.h", i32 2664, i32 21}
!923 = !{ptr @.str.257, !924, !"<string literal>", i1 false, i1 false}
!924 = !{!"../drivers/usb/host/xhci.h", i32 2666, i32 28}
!925 = !{ptr @.str.258, !926, !"<string literal>", i1 false, i1 false}
!926 = !{!"../drivers/usb/host/xhci.h", i32 2670, i32 28}
!927 = !{ptr @.str.259, !928, !"<string literal>", i1 false, i1 false}
!928 = !{!"../drivers/usb/host/xhci.h", i32 2672, i32 28}
!929 = !{ptr @.str.260, !930, !"<string literal>", i1 false, i1 false}
!930 = !{!"../drivers/usb/host/xhci.h", i32 2674, i32 28}
!931 = !{ptr @print_fmt_xhci_log_doorbell, !329, !"print_fmt_xhci_log_doorbell", i1 false, i1 false}
!932 = !{ptr @.str.261, !335, !"<string literal>", i1 false, i1 false}
!933 = !{ptr @.str.262, !335, !"<string literal>", i1 false, i1 false}
!934 = !{ptr @.str.263, !335, !"<string literal>", i1 false, i1 false}
!935 = !{ptr @.str.264, !335, !"<string literal>", i1 false, i1 false}
!936 = !{ptr @trace_event_fields_xhci_dbc_log_request, !335, !"trace_event_fields_xhci_dbc_log_request", i1 false, i1 false}
!937 = !{ptr @trace_event_type_funcs_xhci_dbc_log_request, !335, !"trace_event_type_funcs_xhci_dbc_log_request", i1 false, i1 false}
!938 = !{ptr @.str.265, !335, !"<string literal>", i1 false, i1 false}
!939 = !{ptr @.str.266, !335, !"<string literal>", i1 false, i1 false}
!940 = !{ptr @.str.267, !335, !"<string literal>", i1 false, i1 false}
!941 = !{ptr @print_fmt_xhci_dbc_log_request, !335, !"print_fmt_xhci_dbc_log_request", i1 false, i1 false}
!942 = !{!"sp"}
!943 = !{i32 1, !"wchar_size", i32 2}
!944 = !{i32 1, !"min_enum_size", i32 4}
!945 = !{i32 8, !"branch-target-enforcement", i32 0}
!946 = !{i32 8, !"sign-return-address", i32 0}
!947 = !{i32 8, !"sign-return-address-all", i32 0}
!948 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!949 = !{i32 7, !"uwtable", i32 1}
!950 = !{i32 7, !"frame-pointer", i32 2}
!951 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!952 = !{!"branch_weights", i32 2000, i32 1}
!953 = !{!"branch_weights", i32 1, i32 2000}
!954 = !{!"auto-init"}
!955 = !{i8 0, i8 2}
