; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/trace.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.trace_event_raw_udc_log_gadget = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_udc_log_ep = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [0 x i8] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.trace_event_raw_udc_log_req = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [0 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_usb_gadget_frame_number = internal constant [24 x i8] c"usb_gadget_frame_number\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_frame_number = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_frame_number }, align 4
@__tracepoint_usb_gadget_frame_number = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_frame_number, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_frame_number, ptr null, ptr @__traceiter_usb_gadget_frame_number, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_frame_number = internal constant ptr @__tracepoint_usb_gadget_frame_number, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_wakeup = internal constant [18 x i8] c"usb_gadget_wakeup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_wakeup = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_wakeup }, align 4
@__tracepoint_usb_gadget_wakeup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_wakeup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_wakeup, ptr null, ptr @__traceiter_usb_gadget_wakeup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_wakeup = internal constant ptr @__tracepoint_usb_gadget_wakeup, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_set_selfpowered = internal constant [27 x i8] c"usb_gadget_set_selfpowered\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_set_selfpowered = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_set_selfpowered }, align 4
@__tracepoint_usb_gadget_set_selfpowered = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_set_selfpowered, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_set_selfpowered, ptr null, ptr @__traceiter_usb_gadget_set_selfpowered, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_set_selfpowered = internal constant ptr @__tracepoint_usb_gadget_set_selfpowered, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_clear_selfpowered = internal constant [29 x i8] c"usb_gadget_clear_selfpowered\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_clear_selfpowered = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_clear_selfpowered }, align 4
@__tracepoint_usb_gadget_clear_selfpowered = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_clear_selfpowered, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_clear_selfpowered, ptr null, ptr @__traceiter_usb_gadget_clear_selfpowered, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_clear_selfpowered = internal constant ptr @__tracepoint_usb_gadget_clear_selfpowered, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_vbus_connect = internal constant [24 x i8] c"usb_gadget_vbus_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_vbus_connect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_vbus_connect }, align 4
@__tracepoint_usb_gadget_vbus_connect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_vbus_connect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_vbus_connect, ptr null, ptr @__traceiter_usb_gadget_vbus_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_vbus_connect = internal constant ptr @__tracepoint_usb_gadget_vbus_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_vbus_draw = internal constant [21 x i8] c"usb_gadget_vbus_draw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_vbus_draw = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_vbus_draw }, align 4
@__tracepoint_usb_gadget_vbus_draw = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_vbus_draw, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_vbus_draw, ptr null, ptr @__traceiter_usb_gadget_vbus_draw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_vbus_draw = internal constant ptr @__tracepoint_usb_gadget_vbus_draw, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_vbus_disconnect = internal constant [27 x i8] c"usb_gadget_vbus_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_vbus_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_vbus_disconnect }, align 4
@__tracepoint_usb_gadget_vbus_disconnect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_vbus_disconnect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_vbus_disconnect, ptr null, ptr @__traceiter_usb_gadget_vbus_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_vbus_disconnect = internal constant ptr @__tracepoint_usb_gadget_vbus_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_connect = internal constant [19 x i8] c"usb_gadget_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_connect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_connect }, align 4
@__tracepoint_usb_gadget_connect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_connect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_connect, ptr null, ptr @__traceiter_usb_gadget_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_connect = internal constant ptr @__tracepoint_usb_gadget_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_disconnect = internal constant [22 x i8] c"usb_gadget_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_disconnect }, align 4
@__tracepoint_usb_gadget_disconnect = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_disconnect, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_disconnect, ptr null, ptr @__traceiter_usb_gadget_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_disconnect = internal constant ptr @__tracepoint_usb_gadget_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_deactivate = internal constant [22 x i8] c"usb_gadget_deactivate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_deactivate = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_deactivate }, align 4
@__tracepoint_usb_gadget_deactivate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_deactivate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_deactivate, ptr null, ptr @__traceiter_usb_gadget_deactivate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_deactivate = internal constant ptr @__tracepoint_usb_gadget_deactivate, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_activate = internal constant [20 x i8] c"usb_gadget_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_activate = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_activate }, align 4
@__tracepoint_usb_gadget_activate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_activate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_activate, ptr null, ptr @__traceiter_usb_gadget_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_activate = internal constant ptr @__tracepoint_usb_gadget_activate, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_set_maxpacket_limit = internal constant [27 x i8] c"usb_ep_set_maxpacket_limit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_set_maxpacket_limit = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_set_maxpacket_limit }, align 4
@__tracepoint_usb_ep_set_maxpacket_limit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_set_maxpacket_limit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_set_maxpacket_limit, ptr null, ptr @__traceiter_usb_ep_set_maxpacket_limit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_set_maxpacket_limit = internal constant ptr @__tracepoint_usb_ep_set_maxpacket_limit, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_enable = internal constant [14 x i8] c"usb_ep_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_enable = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_enable }, align 4
@__tracepoint_usb_ep_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_enable, ptr null, ptr @__traceiter_usb_ep_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_enable = internal constant ptr @__tracepoint_usb_ep_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_disable = internal constant [15 x i8] c"usb_ep_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_disable = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_disable }, align 4
@__tracepoint_usb_ep_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_disable, ptr null, ptr @__traceiter_usb_ep_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_disable = internal constant ptr @__tracepoint_usb_ep_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_set_halt = internal constant [16 x i8] c"usb_ep_set_halt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_set_halt = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_set_halt }, align 4
@__tracepoint_usb_ep_set_halt = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_set_halt, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_set_halt, ptr null, ptr @__traceiter_usb_ep_set_halt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_set_halt = internal constant ptr @__tracepoint_usb_ep_set_halt, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_clear_halt = internal constant [18 x i8] c"usb_ep_clear_halt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_clear_halt = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_clear_halt }, align 4
@__tracepoint_usb_ep_clear_halt = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_clear_halt, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_clear_halt, ptr null, ptr @__traceiter_usb_ep_clear_halt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_clear_halt = internal constant ptr @__tracepoint_usb_ep_clear_halt, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_set_wedge = internal constant [17 x i8] c"usb_ep_set_wedge\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_set_wedge = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_set_wedge }, align 4
@__tracepoint_usb_ep_set_wedge = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_set_wedge, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_set_wedge, ptr null, ptr @__traceiter_usb_ep_set_wedge, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_set_wedge = internal constant ptr @__tracepoint_usb_ep_set_wedge, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_fifo_status = internal constant [19 x i8] c"usb_ep_fifo_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_fifo_status = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_fifo_status }, align 4
@__tracepoint_usb_ep_fifo_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_fifo_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_fifo_status, ptr null, ptr @__traceiter_usb_ep_fifo_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_fifo_status = internal constant ptr @__tracepoint_usb_ep_fifo_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_fifo_flush = internal constant [18 x i8] c"usb_ep_fifo_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_fifo_flush = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_fifo_flush }, align 4
@__tracepoint_usb_ep_fifo_flush = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_fifo_flush, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_fifo_flush, ptr null, ptr @__traceiter_usb_ep_fifo_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_fifo_flush = internal constant ptr @__tracepoint_usb_ep_fifo_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_alloc_request = internal constant [21 x i8] c"usb_ep_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_alloc_request }, align 4
@__tracepoint_usb_ep_alloc_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_alloc_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_alloc_request, ptr null, ptr @__traceiter_usb_ep_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_alloc_request = internal constant ptr @__tracepoint_usb_ep_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_free_request = internal constant [20 x i8] c"usb_ep_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_free_request }, align 4
@__tracepoint_usb_ep_free_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_free_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_free_request, ptr null, ptr @__traceiter_usb_ep_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_free_request = internal constant ptr @__tracepoint_usb_ep_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_queue = internal constant [13 x i8] c"usb_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_queue }, align 4
@__tracepoint_usb_ep_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_queue, ptr null, ptr @__traceiter_usb_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_queue = internal constant ptr @__tracepoint_usb_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_dequeue = internal constant [15 x i8] c"usb_ep_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_dequeue }, align 4
@__tracepoint_usb_ep_dequeue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_ep_dequeue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_ep_dequeue, ptr null, ptr @__traceiter_usb_ep_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_dequeue = internal constant ptr @__tracepoint_usb_ep_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_giveback_request = internal constant [28 x i8] c"usb_gadget_giveback_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_giveback_request = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_giveback_request }, align 4
@__tracepoint_usb_gadget_giveback_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_usb_gadget_giveback_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_usb_gadget_giveback_request, ptr null, ptr @__traceiter_usb_gadget_giveback_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_giveback_request = internal constant ptr @__tracepoint_usb_gadget_giveback_request, section "__tracepoints_ptrs", align 4
@str__gadget__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gadget\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_udc_log_gadget = internal global { [20 x %struct.trace_event_fields], [96 x i8] } { [20 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.95 { %struct.anon.96 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [96 x i8] zeroinitializer }, align 32
@event_class_udc_log_gadget = internal global %struct.trace_event_class { ptr @str__gadget__trace_system_name, ptr @trace_event_raw_event_udc_log_gadget, ptr @perf_trace_udc_log_gadget, ptr @trace_event_reg, ptr @trace_event_fields_udc_log_gadget, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_udc_log_gadget, i64 24), ptr getelementptr (i8, ptr @event_class_udc_log_gadget, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_udc_log_gadget = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_udc_log_gadget, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_udc_log_gadget = internal global { [729 x i8], [167 x i8] } { [729 x i8] c"\22speed %d/%d state %d %dmA [%s%s%s%s%s%s%s%s%s%s%s%s%s%s] --> %d\22, REC->speed, REC->max_speed, REC->state, REC->mA, REC->sg_supported ? \22sg:\22 : \22\22, REC->is_otg ? \22OTG:\22 : \22\22, REC->is_a_peripheral ? \22a_peripheral:\22 : \22\22, REC->b_hnp_enable ? \22b_hnp:\22 : \22\22, REC->a_hnp_support ? \22a_hnp:\22 : \22\22, REC->hnp_polling_support ? \22hnp_poll:\22 : \22\22, REC->host_request_flag ? \22hostreq:\22 : \22\22, REC->quirk_ep_out_aligned_size ? \22out_aligned:\22 : \22\22, REC->quirk_altset_not_supp ? \22no_altset:\22 : \22\22, REC->quirk_stall_not_supp ? \22no_stall:\22 : \22\22, REC->quirk_zlp_not_supp ? \22no_zlp\22 : \22\22, REC->is_selfpowered ? \22self-powered:\22 : \22bus-powered:\22, REC->deactivated ? \22deactivated:\22 : \22activated:\22, REC->connected ? \22connected\22 : \22disconnected\22, REC->ret\00", [167 x i8] zeroinitializer }, align 32
@event_usb_gadget_frame_number = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_frame_number }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_frame_number = internal global ptr @event_usb_gadget_frame_number, section "_ftrace_events", align 4
@event_usb_gadget_wakeup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_wakeup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_wakeup = internal global ptr @event_usb_gadget_wakeup, section "_ftrace_events", align 4
@event_usb_gadget_set_selfpowered = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_set_selfpowered }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_set_selfpowered = internal global ptr @event_usb_gadget_set_selfpowered, section "_ftrace_events", align 4
@event_usb_gadget_clear_selfpowered = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_clear_selfpowered }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_clear_selfpowered = internal global ptr @event_usb_gadget_clear_selfpowered, section "_ftrace_events", align 4
@event_usb_gadget_vbus_connect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_vbus_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_vbus_connect = internal global ptr @event_usb_gadget_vbus_connect, section "_ftrace_events", align 4
@event_usb_gadget_vbus_draw = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_vbus_draw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_vbus_draw = internal global ptr @event_usb_gadget_vbus_draw, section "_ftrace_events", align 4
@event_usb_gadget_vbus_disconnect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_vbus_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_vbus_disconnect = internal global ptr @event_usb_gadget_vbus_disconnect, section "_ftrace_events", align 4
@event_usb_gadget_connect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_connect = internal global ptr @event_usb_gadget_connect, section "_ftrace_events", align 4
@event_usb_gadget_disconnect = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_disconnect = internal global ptr @event_usb_gadget_disconnect, section "_ftrace_events", align 4
@event_usb_gadget_deactivate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_deactivate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_deactivate = internal global ptr @event_usb_gadget_deactivate, section "_ftrace_events", align 4
@event_usb_gadget_activate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.97 { ptr @__tracepoint_usb_gadget_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_activate = internal global ptr @event_usb_gadget_activate, section "_ftrace_events", align 4
@trace_event_fields_udc_log_ep = internal global { [11 x %struct.trace_event_fields], [88 x i8] } { [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.95 { %struct.anon.96 { ptr @.str.50, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.95 { %struct.anon.96 { ptr @.str.52, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.95 { %struct.anon.96 { ptr @.str.53, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [88 x i8] zeroinitializer }, align 32
@event_class_udc_log_ep = internal global %struct.trace_event_class { ptr @str__gadget__trace_system_name, ptr @trace_event_raw_event_udc_log_ep, ptr @perf_trace_udc_log_ep, ptr @trace_event_reg, ptr @trace_event_fields_udc_log_ep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_udc_log_ep, i64 24), ptr getelementptr (i8, ptr @event_class_udc_log_ep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_udc_log_ep = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_udc_log_ep, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_udc_log_ep = internal global { [264 x i8], [88 x i8] } { [264 x i8] c"\22%s: mps %d/%d streams %d mult %d burst %d addr %02x %s%s --> %d\22, __get_str(name), REC->maxpacket, REC->maxpacket_limit, REC->max_streams, REC->mult, REC->maxburst, REC->address, REC->claimed ? \22claimed:\22 : \22released:\22, REC->enabled ? \22enabled\22 : \22disabled\22, ret\00", [88 x i8] zeroinitializer }, align 32
@event_usb_ep_set_maxpacket_limit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_set_maxpacket_limit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_set_maxpacket_limit = internal global ptr @event_usb_ep_set_maxpacket_limit, section "_ftrace_events", align 4
@event_usb_ep_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_enable = internal global ptr @event_usb_ep_enable, section "_ftrace_events", align 4
@event_usb_ep_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_disable = internal global ptr @event_usb_ep_disable, section "_ftrace_events", align 4
@event_usb_ep_set_halt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_set_halt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_set_halt = internal global ptr @event_usb_ep_set_halt, section "_ftrace_events", align 4
@event_usb_ep_clear_halt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_clear_halt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_clear_halt = internal global ptr @event_usb_ep_clear_halt, section "_ftrace_events", align 4
@event_usb_ep_set_wedge = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_set_wedge }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_set_wedge = internal global ptr @event_usb_ep_set_wedge, section "_ftrace_events", align 4
@event_usb_ep_fifo_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_fifo_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_fifo_status = internal global ptr @event_usb_ep_fifo_status, section "_ftrace_events", align 4
@event_usb_ep_fifo_flush = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.97 { ptr @__tracepoint_usb_ep_fifo_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_fifo_flush = internal global ptr @event_usb_ep_fifo_flush, section "_ftrace_events", align 4
@trace_event_fields_udc_log_req = internal global { [13 x %struct.trace_event_fields], [72 x i8] } { [13 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.95 { %struct.anon.96 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.62, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.63, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.64, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.95 { %struct.anon.96 { ptr @.str.66, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.95 { %struct.anon.96 { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [72 x i8] zeroinitializer }, align 32
@event_class_udc_log_req = internal global %struct.trace_event_class { ptr @str__gadget__trace_system_name, ptr @trace_event_raw_event_udc_log_req, ptr @perf_trace_udc_log_req, ptr @trace_event_reg, ptr @trace_event_fields_udc_log_req, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_udc_log_req, i64 24), ptr getelementptr (i8, ptr @event_class_udc_log_req, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_udc_log_req = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_udc_log_req, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_udc_log_req = internal global { [281 x i8], [71 x i8] } { [281 x i8] c"\22%s: req %p length %d/%d sgs %d/%d stream %d %s%s%s status %d --> %d\22, __get_str(name),REC->req, REC->actual, REC->length, REC->num_mapped_sgs, REC->num_sgs, REC->stream_id, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22i\22 : \22I\22, REC->status, REC->ret\00", [71 x i8] zeroinitializer }, align 32
@event_usb_ep_alloc_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.97 { ptr @__tracepoint_usb_ep_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_alloc_request = internal global ptr @event_usb_ep_alloc_request, section "_ftrace_events", align 4
@event_usb_ep_free_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.97 { ptr @__tracepoint_usb_ep_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_free_request = internal global ptr @event_usb_ep_free_request, section "_ftrace_events", align 4
@event_usb_ep_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.97 { ptr @__tracepoint_usb_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_queue = internal global ptr @event_usb_ep_queue, section "_ftrace_events", align 4
@event_usb_ep_dequeue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.97 { ptr @__tracepoint_usb_ep_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_ep_dequeue = internal global ptr @event_usb_ep_dequeue, section "_ftrace_events", align 4
@event_usb_gadget_giveback_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.97 { ptr @__tracepoint_usb_gadget_giveback_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_usb_gadget_giveback_request = internal global ptr @event_usb_gadget_giveback_request, section "_ftrace_events", align 4
@__bpf_trace_tp_map_usb_gadget_frame_number = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_frame_number, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_wakeup = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_wakeup, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_set_selfpowered = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_set_selfpowered, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_clear_selfpowered = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_clear_selfpowered, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_vbus_connect = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_vbus_connect, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_vbus_draw = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_vbus_draw, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_vbus_disconnect = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_vbus_disconnect, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_connect = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_connect, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_disconnect = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_disconnect, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_deactivate = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_deactivate, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_activate = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_activate, ptr @__bpf_trace_udc_log_gadget, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_set_maxpacket_limit = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_set_maxpacket_limit, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_enable = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_enable, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_disable = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_disable, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_set_halt = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_set_halt, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_clear_halt = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_clear_halt, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_set_wedge = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_set_wedge, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_fifo_status = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_fifo_status, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_fifo_flush = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_fifo_flush, ptr @__bpf_trace_udc_log_ep, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_alloc_request = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_alloc_request, ptr @__bpf_trace_udc_log_req, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_free_request = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_free_request, ptr @__bpf_trace_udc_log_req, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_queue = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_queue, ptr @__bpf_trace_udc_log_req, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_ep_dequeue = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_ep_dequeue, ptr @__bpf_trace_udc_log_req, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_usb_gadget_giveback_request = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_usb_gadget_giveback_request, ptr @__bpf_trace_udc_log_req, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum usb_device_speed\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_speed\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum usb_device_state\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mA\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sg_supported\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"is_otg\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"is_a_peripheral\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b_hnp_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"a_hnp_support\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hnp_polling_support\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host_request_flag\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"quirk_ep_out_aligned_size\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"quirk_altset_not_supp\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"quirk_stall_not_supp\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"quirk_zlp_not_supp\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_selfpowered\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"deactivated\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connected\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"speed %d/%d state %d %dmA [%s%s%s%s%s%s%s%s%s%s%s%s%s%s] --> %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sg:\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OTG:\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"a_peripheral:\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b_hnp:\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a_hnp:\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hnp_poll:\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hostreq:\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"out_aligned:\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no_altset:\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no_stall:\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"no_zlp\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"self-powered:\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bus-powered:\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deactivated:\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"activated:\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"maxpacket\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxpacket_limit\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_streams\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mult\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxburst\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"claimed\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: mps %d/%d streams %d mult %d burst %d addr %02x %s%s --> %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"claimed:\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"released:\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actual\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"num_sgs\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_mapped_sgs\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stream_id\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"short_not_ok\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct usb_request *\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"req\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: req %p length %d/%d sgs %d/%d stream %d %s%s%s status %d --> %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_ = private constant [34 x i8] c"../drivers/usb/gadget/udc/trace.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [31 x i8] c"str__gadget__trace_system_name\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 36, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [34 x i8] c"trace_event_fields_udc_log_gadget\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_udc_log_gadget\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [25 x i8] c"print_fmt_udc_log_gadget\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"event_usb_gadget_frame_number\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 84, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"event_usb_gadget_wakeup\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 89, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [33 x i8] c"event_usb_gadget_set_selfpowered\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 94, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [35 x i8] c"event_usb_gadget_clear_selfpowered\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 99, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"event_usb_gadget_vbus_connect\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 104, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"event_usb_gadget_vbus_draw\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 109, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [33 x i8] c"event_usb_gadget_vbus_disconnect\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 114, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"event_usb_gadget_connect\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 119, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"event_usb_gadget_disconnect\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 124, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"event_usb_gadget_deactivate\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 129, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"event_usb_gadget_activate\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 134, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"trace_event_fields_udc_log_ep\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_udc_log_ep\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"print_fmt_udc_log_ep\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [33 x i8] c"event_usb_ep_set_maxpacket_limit\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 173, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"event_usb_ep_enable\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 178, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"event_usb_ep_disable\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 183, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"event_usb_ep_set_halt\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 188, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [24 x i8] c"event_usb_ep_clear_halt\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 193, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"event_usb_ep_set_wedge\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 198, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"event_usb_ep_fifo_status\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 203, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"event_usb_ep_fifo_flush\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 208, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant [31 x i8] c"trace_event_fields_udc_log_req\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_udc_log_req\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"print_fmt_udc_log_req\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [27 x i8] c"event_usb_ep_alloc_request\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 254, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"event_usb_ep_free_request\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 259, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"event_usb_ep_queue\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 264, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"event_usb_ep_dequeue\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 269, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [34 x i8] c"event_usb_gadget_giveback_request\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 274, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 20, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 139, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [36 x i8] c"../drivers/usb/gadget/udc/./trace.h\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 213, i32 1 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__bpf_trace_tp_map_usb_ep_alloc_request, ptr @__bpf_trace_tp_map_usb_ep_clear_halt, ptr @__bpf_trace_tp_map_usb_ep_dequeue, ptr @__bpf_trace_tp_map_usb_ep_disable, ptr @__bpf_trace_tp_map_usb_ep_enable, ptr @__bpf_trace_tp_map_usb_ep_fifo_flush, ptr @__bpf_trace_tp_map_usb_ep_fifo_status, ptr @__bpf_trace_tp_map_usb_ep_free_request, ptr @__bpf_trace_tp_map_usb_ep_queue, ptr @__bpf_trace_tp_map_usb_ep_set_halt, ptr @__bpf_trace_tp_map_usb_ep_set_maxpacket_limit, ptr @__bpf_trace_tp_map_usb_ep_set_wedge, ptr @__bpf_trace_tp_map_usb_gadget_activate, ptr @__bpf_trace_tp_map_usb_gadget_clear_selfpowered, ptr @__bpf_trace_tp_map_usb_gadget_connect, ptr @__bpf_trace_tp_map_usb_gadget_deactivate, ptr @__bpf_trace_tp_map_usb_gadget_disconnect, ptr @__bpf_trace_tp_map_usb_gadget_frame_number, ptr @__bpf_trace_tp_map_usb_gadget_giveback_request, ptr @__bpf_trace_tp_map_usb_gadget_set_selfpowered, ptr @__bpf_trace_tp_map_usb_gadget_vbus_connect, ptr @__bpf_trace_tp_map_usb_gadget_vbus_disconnect, ptr @__bpf_trace_tp_map_usb_gadget_vbus_draw, ptr @__bpf_trace_tp_map_usb_gadget_wakeup, ptr @__event_usb_ep_alloc_request, ptr @__event_usb_ep_clear_halt, ptr @__event_usb_ep_dequeue, ptr @__event_usb_ep_disable, ptr @__event_usb_ep_enable, ptr @__event_usb_ep_fifo_flush, ptr @__event_usb_ep_fifo_status, ptr @__event_usb_ep_free_request, ptr @__event_usb_ep_queue, ptr @__event_usb_ep_set_halt, ptr @__event_usb_ep_set_maxpacket_limit, ptr @__event_usb_ep_set_wedge, ptr @__event_usb_gadget_activate, ptr @__event_usb_gadget_clear_selfpowered, ptr @__event_usb_gadget_connect, ptr @__event_usb_gadget_deactivate, ptr @__event_usb_gadget_disconnect, ptr @__event_usb_gadget_frame_number, ptr @__event_usb_gadget_giveback_request, ptr @__event_usb_gadget_set_selfpowered, ptr @__event_usb_gadget_vbus_connect, ptr @__event_usb_gadget_vbus_disconnect, ptr @__event_usb_gadget_vbus_draw, ptr @__event_usb_gadget_wakeup, ptr @__tracepoint_ptr_usb_ep_alloc_request, ptr @__tracepoint_ptr_usb_ep_clear_halt, ptr @__tracepoint_ptr_usb_ep_dequeue, ptr @__tracepoint_ptr_usb_ep_disable, ptr @__tracepoint_ptr_usb_ep_enable, ptr @__tracepoint_ptr_usb_ep_fifo_flush, ptr @__tracepoint_ptr_usb_ep_fifo_status, ptr @__tracepoint_ptr_usb_ep_free_request, ptr @__tracepoint_ptr_usb_ep_queue, ptr @__tracepoint_ptr_usb_ep_set_halt, ptr @__tracepoint_ptr_usb_ep_set_maxpacket_limit, ptr @__tracepoint_ptr_usb_ep_set_wedge, ptr @__tracepoint_ptr_usb_gadget_activate, ptr @__tracepoint_ptr_usb_gadget_clear_selfpowered, ptr @__tracepoint_ptr_usb_gadget_connect, ptr @__tracepoint_ptr_usb_gadget_deactivate, ptr @__tracepoint_ptr_usb_gadget_disconnect, ptr @__tracepoint_ptr_usb_gadget_frame_number, ptr @__tracepoint_ptr_usb_gadget_giveback_request, ptr @__tracepoint_ptr_usb_gadget_set_selfpowered, ptr @__tracepoint_ptr_usb_gadget_vbus_connect, ptr @__tracepoint_ptr_usb_gadget_vbus_disconnect, ptr @__tracepoint_ptr_usb_gadget_vbus_draw, ptr @__tracepoint_ptr_usb_gadget_wakeup, ptr @__tracepoint_usb_ep_alloc_request, ptr @__tracepoint_usb_ep_clear_halt, ptr @__tracepoint_usb_ep_dequeue, ptr @__tracepoint_usb_ep_disable, ptr @__tracepoint_usb_ep_enable, ptr @__tracepoint_usb_ep_fifo_flush, ptr @__tracepoint_usb_ep_fifo_status, ptr @__tracepoint_usb_ep_free_request, ptr @__tracepoint_usb_ep_queue, ptr @__tracepoint_usb_ep_set_halt, ptr @__tracepoint_usb_ep_set_maxpacket_limit, ptr @__tracepoint_usb_ep_set_wedge, ptr @__tracepoint_usb_gadget_activate, ptr @__tracepoint_usb_gadget_clear_selfpowered, ptr @__tracepoint_usb_gadget_connect, ptr @__tracepoint_usb_gadget_deactivate, ptr @__tracepoint_usb_gadget_disconnect, ptr @__tracepoint_usb_gadget_frame_number, ptr @__tracepoint_usb_gadget_giveback_request, ptr @__tracepoint_usb_gadget_set_selfpowered, ptr @__tracepoint_usb_gadget_vbus_connect, ptr @__tracepoint_usb_gadget_vbus_disconnect, ptr @__tracepoint_usb_gadget_vbus_draw, ptr @__tracepoint_usb_gadget_wakeup, ptr @event_class_udc_log_ep, ptr @event_class_udc_log_gadget, ptr @event_class_udc_log_req, ptr @event_usb_ep_alloc_request, ptr @event_usb_ep_clear_halt, ptr @event_usb_ep_dequeue, ptr @event_usb_ep_disable, ptr @event_usb_ep_enable, ptr @event_usb_ep_fifo_flush, ptr @event_usb_ep_fifo_status, ptr @event_usb_ep_free_request, ptr @event_usb_ep_queue, ptr @event_usb_ep_set_halt, ptr @event_usb_ep_set_maxpacket_limit, ptr @event_usb_ep_set_wedge, ptr @event_usb_gadget_activate, ptr @event_usb_gadget_clear_selfpowered, ptr @event_usb_gadget_connect, ptr @event_usb_gadget_deactivate, ptr @event_usb_gadget_disconnect, ptr @event_usb_gadget_frame_number, ptr @event_usb_gadget_giveback_request, ptr @event_usb_gadget_set_selfpowered, ptr @event_usb_gadget_vbus_connect, ptr @event_usb_gadget_vbus_disconnect, ptr @event_usb_gadget_vbus_draw, ptr @event_usb_gadget_wakeup, ptr @str__gadget__trace_system_name, ptr @trace_event_fields_udc_log_gadget, ptr @trace_event_type_funcs_udc_log_gadget, ptr @print_fmt_udc_log_gadget, ptr @trace_event_fields_udc_log_ep, ptr @trace_event_type_funcs_udc_log_ep, ptr @print_fmt_udc_log_ep, ptr @trace_event_fields_udc_log_req, ptr @trace_event_type_funcs_udc_log_req, ptr @print_fmt_udc_log_req, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__gadget__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_udc_log_gadget to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_udc_log_gadget to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_udc_log_gadget to i32), i32 729, i32 896, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_frame_number to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_wakeup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_set_selfpowered to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_clear_selfpowered to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_vbus_connect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_vbus_draw to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_vbus_disconnect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_connect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_disconnect to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_deactivate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_activate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_udc_log_ep to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_udc_log_ep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_udc_log_ep to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_set_maxpacket_limit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_set_halt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_clear_halt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_set_wedge to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_fifo_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_fifo_flush to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_udc_log_req to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_udc_log_req to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_udc_log_req to i32), i32 281, i32 352, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_alloc_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_free_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_ep_dequeue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_usb_gadget_giveback_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_frame_number(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_frame_number, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_wakeup(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_wakeup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_set_selfpowered(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_set_selfpowered, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_clear_selfpowered(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_clear_selfpowered, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_vbus_connect(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_vbus_connect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_vbus_draw(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_vbus_draw, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_vbus_disconnect(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_vbus_disconnect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_connect(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_connect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_disconnect(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_deactivate(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_deactivate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_activate(ptr nocapture readnone %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_activate, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %g, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_set_maxpacket_limit(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_set_maxpacket_limit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_enable(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_enable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_disable(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_disable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_set_halt(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_set_halt, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_clear_halt(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_clear_halt, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_set_wedge(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_set_wedge, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_fifo_status(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_fifo_status, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_fifo_flush(ptr nocapture readnone %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_fifo_flush, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_alloc_request(ptr nocapture readnone %__data, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_alloc_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_free_request(ptr nocapture readnone %__data, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_free_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_queue(ptr nocapture readnone %__data, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_dequeue(ptr nocapture readnone %__data, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_ep_dequeue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_giveback_request(ptr nocapture readnone %__data, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_usb_gadget_giveback_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %2(ptr noundef %4, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #6
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_udc_log_gadget(ptr noundef %__data, ptr nocapture noundef readonly %g, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !295

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !296

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 84) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 5
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 8
  %speed6 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %speed6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %speed6, align 4
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 6
  %6 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed, align 4
  %max_speed7 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %max_speed7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_speed7, align 4
  %state = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 9
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %state8 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %state8, align 4
  %mA = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 15
  %12 = ptrtoint ptr %mA to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mA, align 4
  %mA9 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %mA9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mA9, align 4
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 17
  %15 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %sg_supported, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  %sg_supported10 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %sg_supported10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bf.lshr, ptr %sg_supported10, align 4
  %bf.load11 = load i32, ptr %sg_supported, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 30
  %bf.clear = and i32 %bf.lshr12, 1
  %is_otg13 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %is_otg13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.clear, ptr %is_otg13, align 4
  %bf.load14 = load i32, ptr %sg_supported, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 29
  %bf.clear16 = and i32 %bf.lshr15, 1
  %is_a_peripheral17 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 7
  %18 = ptrtoint ptr %is_a_peripheral17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.clear16, ptr %is_a_peripheral17, align 4
  %bf.load18 = load i32, ptr %sg_supported, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 28
  %bf.clear20 = and i32 %bf.lshr19, 1
  %b_hnp_enable21 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 8
  %19 = ptrtoint ptr %b_hnp_enable21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.clear20, ptr %b_hnp_enable21, align 4
  %bf.load22 = load i32, ptr %sg_supported, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 27
  %bf.clear24 = and i32 %bf.lshr23, 1
  %a_hnp_support25 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 9
  %20 = ptrtoint ptr %a_hnp_support25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.clear24, ptr %a_hnp_support25, align 4
  %bf.load26 = load i32, ptr %sg_supported, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 25
  %bf.clear28 = and i32 %bf.lshr27, 1
  %hnp_polling_support29 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 10
  %21 = ptrtoint ptr %hnp_polling_support29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.clear28, ptr %hnp_polling_support29, align 4
  %bf.load30 = load i32, ptr %sg_supported, align 4
  %bf.lshr31 = lshr i32 %bf.load30, 24
  %bf.clear32 = and i32 %bf.lshr31, 1
  %host_request_flag33 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 11
  %22 = ptrtoint ptr %host_request_flag33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.clear32, ptr %host_request_flag33, align 4
  %bf.load34 = load i32, ptr %sg_supported, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 23
  %bf.clear36 = and i32 %bf.lshr35, 1
  %quirk_ep_out_aligned_size37 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 12
  %23 = ptrtoint ptr %quirk_ep_out_aligned_size37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.clear36, ptr %quirk_ep_out_aligned_size37, align 4
  %bf.load38 = load i32, ptr %sg_supported, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 22
  %bf.clear40 = and i32 %bf.lshr39, 1
  %quirk_altset_not_supp41 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 13
  %24 = ptrtoint ptr %quirk_altset_not_supp41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.clear40, ptr %quirk_altset_not_supp41, align 4
  %bf.load42 = load i32, ptr %sg_supported, align 4
  %bf.lshr43 = lshr i32 %bf.load42, 21
  %bf.clear44 = and i32 %bf.lshr43, 1
  %quirk_stall_not_supp45 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 14
  %25 = ptrtoint ptr %quirk_stall_not_supp45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %bf.clear44, ptr %quirk_stall_not_supp45, align 4
  %bf.load46 = load i32, ptr %sg_supported, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 20
  %bf.clear48 = and i32 %bf.lshr47, 1
  %quirk_zlp_not_supp49 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 15
  %26 = ptrtoint ptr %quirk_zlp_not_supp49 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %bf.clear48, ptr %quirk_zlp_not_supp49, align 4
  %bf.load50 = load i32, ptr %sg_supported, align 4
  %bf.lshr51 = lshr i32 %bf.load50, 18
  %bf.clear52 = and i32 %bf.lshr51, 1
  %is_selfpowered53 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 16
  %27 = ptrtoint ptr %is_selfpowered53 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %bf.clear52, ptr %is_selfpowered53, align 4
  %bf.load54 = load i32, ptr %sg_supported, align 4
  %bf.lshr55 = lshr i32 %bf.load54, 17
  %bf.clear56 = and i32 %bf.lshr55, 1
  %deactivated57 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 17
  %28 = ptrtoint ptr %deactivated57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.clear56, ptr %deactivated57, align 4
  %bf.load58 = load i32, ptr %sg_supported, align 4
  %bf.lshr59 = lshr i32 %bf.load58, 16
  %bf.clear60 = and i32 %bf.lshr59, 1
  %connected61 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 18
  %29 = ptrtoint ptr %connected61 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.clear60, ptr %connected61, align 4
  %ret62 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call3, i32 0, i32 19
  %30 = ptrtoint ptr %ret62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ret, ptr %ret62, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_udc_log_gadget(ptr noundef %__data, ptr nocapture noundef readonly %g, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !297
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !285) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !285) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %speed = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 5
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed, align 8
  %speed17 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %speed17, align 4
  %max_speed = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 6
  %30 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_speed, align 4
  %max_speed18 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %max_speed18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_speed18, align 4
  %state = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 9
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 8
  %state19 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %state19, align 4
  %mA = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 15
  %36 = ptrtoint ptr %mA to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mA, align 4
  %mA20 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %mA20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mA20, align 4
  %sg_supported = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 17
  %39 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load = load i32, ptr %sg_supported, align 4
  %bf.lshr = lshr i32 %bf.load, 31
  %sg_supported21 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %sg_supported21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %bf.lshr, ptr %sg_supported21, align 4
  %bf.load22 = load i32, ptr %sg_supported, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 30
  %bf.clear = and i32 %bf.lshr23, 1
  %is_otg24 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %is_otg24 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bf.clear, ptr %is_otg24, align 4
  %bf.load25 = load i32, ptr %sg_supported, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 29
  %bf.clear27 = and i32 %bf.lshr26, 1
  %is_a_peripheral28 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 7
  %42 = ptrtoint ptr %is_a_peripheral28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bf.clear27, ptr %is_a_peripheral28, align 4
  %bf.load29 = load i32, ptr %sg_supported, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 28
  %bf.clear31 = and i32 %bf.lshr30, 1
  %b_hnp_enable32 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 8
  %43 = ptrtoint ptr %b_hnp_enable32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.clear31, ptr %b_hnp_enable32, align 4
  %bf.load33 = load i32, ptr %sg_supported, align 4
  %bf.lshr34 = lshr i32 %bf.load33, 27
  %bf.clear35 = and i32 %bf.lshr34, 1
  %a_hnp_support36 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 9
  %44 = ptrtoint ptr %a_hnp_support36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.clear35, ptr %a_hnp_support36, align 4
  %bf.load37 = load i32, ptr %sg_supported, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 25
  %bf.clear39 = and i32 %bf.lshr38, 1
  %hnp_polling_support40 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 10
  %45 = ptrtoint ptr %hnp_polling_support40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.clear39, ptr %hnp_polling_support40, align 4
  %bf.load41 = load i32, ptr %sg_supported, align 4
  %bf.lshr42 = lshr i32 %bf.load41, 24
  %bf.clear43 = and i32 %bf.lshr42, 1
  %host_request_flag44 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 11
  %46 = ptrtoint ptr %host_request_flag44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.clear43, ptr %host_request_flag44, align 4
  %bf.load45 = load i32, ptr %sg_supported, align 4
  %bf.lshr46 = lshr i32 %bf.load45, 23
  %bf.clear47 = and i32 %bf.lshr46, 1
  %quirk_ep_out_aligned_size48 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 12
  %47 = ptrtoint ptr %quirk_ep_out_aligned_size48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.clear47, ptr %quirk_ep_out_aligned_size48, align 4
  %bf.load49 = load i32, ptr %sg_supported, align 4
  %bf.lshr50 = lshr i32 %bf.load49, 22
  %bf.clear51 = and i32 %bf.lshr50, 1
  %quirk_altset_not_supp52 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 13
  %48 = ptrtoint ptr %quirk_altset_not_supp52 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %bf.clear51, ptr %quirk_altset_not_supp52, align 4
  %bf.load53 = load i32, ptr %sg_supported, align 4
  %bf.lshr54 = lshr i32 %bf.load53, 21
  %bf.clear55 = and i32 %bf.lshr54, 1
  %quirk_stall_not_supp56 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 14
  %49 = ptrtoint ptr %quirk_stall_not_supp56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bf.clear55, ptr %quirk_stall_not_supp56, align 4
  %bf.load57 = load i32, ptr %sg_supported, align 4
  %bf.lshr58 = lshr i32 %bf.load57, 20
  %bf.clear59 = and i32 %bf.lshr58, 1
  %quirk_zlp_not_supp60 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 15
  %50 = ptrtoint ptr %quirk_zlp_not_supp60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bf.clear59, ptr %quirk_zlp_not_supp60, align 4
  %bf.load61 = load i32, ptr %sg_supported, align 4
  %bf.lshr62 = lshr i32 %bf.load61, 18
  %bf.clear63 = and i32 %bf.lshr62, 1
  %is_selfpowered64 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 16
  %51 = ptrtoint ptr %is_selfpowered64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bf.clear63, ptr %is_selfpowered64, align 4
  %bf.load65 = load i32, ptr %sg_supported, align 4
  %bf.lshr66 = lshr i32 %bf.load65, 17
  %bf.clear67 = and i32 %bf.lshr66, 1
  %deactivated68 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 17
  %52 = ptrtoint ptr %deactivated68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %bf.clear67, ptr %deactivated68, align 4
  %bf.load69 = load i32, ptr %sg_supported, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 16
  %bf.clear71 = and i32 %bf.lshr70, 1
  %connected72 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 18
  %53 = ptrtoint ptr %connected72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %bf.clear71, ptr %connected72, align 4
  %ret73 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %call13, i32 0, i32 19
  %54 = ptrtoint ptr %ret73 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %ret, ptr %ret73, align 4
  %55 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rctx, align 4
  %57 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 84, i32 noundef %56, ptr noundef %__data, i64 noundef 1, ptr noundef %58, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_udc_log_ep(ptr noundef %__data, ptr nocapture noundef readonly %ep, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !295

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !296

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 552) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554472, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 40
  %name7 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name7, align 4
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %5)
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxpacket9 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %maxpacket9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %maxpacket9, align 4
  %bf.load10 = load i56, ptr %maxpacket, align 2
  %bf.lshr11 = lshr i56 %bf.load10, 24
  %8 = trunc i56 %bf.lshr11 to i32
  %bf.cast12 = and i32 %8, 65535
  %maxpacket_limit13 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %maxpacket_limit13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast12, ptr %maxpacket_limit13, align 4
  %bf.load14 = load i56, ptr %maxpacket, align 2
  %10 = trunc i56 %bf.load14 to i32
  %11 = lshr i32 %10, 8
  %bf.cast17 = and i32 %11, 65535
  %max_streams18 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %max_streams18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.cast17, ptr %max_streams18, align 4
  %bf.load19 = load i56, ptr %maxpacket, align 2
  %13 = trunc i56 %bf.load19 to i32
  %14 = lshr i32 %13, 6
  %bf.cast22 = and i32 %14, 3
  %mult23 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %mult23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bf.cast22, ptr %mult23, align 4
  %bf.load24 = load i56, ptr %maxpacket, align 2
  %16 = trunc i56 %bf.load24 to i32
  %17 = lshr i32 %16, 1
  %bf.cast27 = and i32 %17, 31
  %maxburst28 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %maxburst28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.cast27, ptr %maxburst28, align 4
  %address = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 8
  %19 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %address, align 1
  %address29 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %address29 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %address29, align 4
  %claimed = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 5
  %22 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %claimed, align 4, !range !298
  %claimed31 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 8
  %24 = ptrtoint ptr %claimed31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %claimed31, align 1
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 6
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled, align 1, !range !298
  %enabled33 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 9
  %27 = ptrtoint ptr %enabled33 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %enabled33, align 2
  %ret35 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call3, i32 0, i32 10
  %28 = ptrtoint ptr %ret35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret, ptr %ret35, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_udc_log_ep(ptr noundef %__data, ptr nocapture noundef readonly %ep, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !297
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !285) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 556, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !285) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 33554472, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 40
  %name19 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %28 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name19, align 4
  %call20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %29)
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %30 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %30, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxpacket21 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %maxpacket21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bf.cast, ptr %maxpacket21, align 4
  %bf.load22 = load i56, ptr %maxpacket, align 2
  %bf.lshr23 = lshr i56 %bf.load22, 24
  %32 = trunc i56 %bf.lshr23 to i32
  %bf.cast24 = and i32 %32, 65535
  %maxpacket_limit25 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %maxpacket_limit25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bf.cast24, ptr %maxpacket_limit25, align 4
  %bf.load26 = load i56, ptr %maxpacket, align 2
  %34 = trunc i56 %bf.load26 to i32
  %35 = lshr i32 %34, 8
  %bf.cast29 = and i32 %35, 65535
  %max_streams30 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %max_streams30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bf.cast29, ptr %max_streams30, align 4
  %bf.load31 = load i56, ptr %maxpacket, align 2
  %37 = trunc i56 %bf.load31 to i32
  %38 = lshr i32 %37, 6
  %bf.cast34 = and i32 %38, 3
  %mult35 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %mult35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bf.cast34, ptr %mult35, align 4
  %bf.load36 = load i56, ptr %maxpacket, align 2
  %40 = trunc i56 %bf.load36 to i32
  %41 = lshr i32 %40, 1
  %bf.cast39 = and i32 %41, 31
  %maxburst40 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %maxburst40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bf.cast39, ptr %maxburst40, align 4
  %address = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 8
  %43 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %address, align 1
  %address41 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %address41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %address41, align 4
  %claimed = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 5
  %46 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %claimed, align 4, !range !298
  %claimed43 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 8
  %48 = ptrtoint ptr %claimed43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %claimed43, align 1
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 6
  %49 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %enabled, align 1, !range !298
  %enabled45 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 9
  %51 = ptrtoint ptr %enabled45 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %enabled45, align 2
  %ret47 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %call13, i32 0, i32 10
  %52 = ptrtoint ptr %ret47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %ret, ptr %ret47, align 4
  %53 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rctx, align 4
  %55 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 556, i32 noundef %54, ptr noundef %__data, i64 noundef 1, ptr noundef %56, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_udc_log_req(ptr noundef %__data, ptr nocapture noundef readonly %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #6
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !295

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !296

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #6
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 568) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554488, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 56
  %name7 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name7, align 4
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %5)
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %length9 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %length9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %length9, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %9 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual, align 4
  %actual10 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %actual10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %actual10, align 4
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sgs, align 4
  %num_sgs11 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %num_sgs11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_sgs11, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_mapped_sgs, align 4
  %num_mapped_sgs12 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %num_mapped_sgs12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_mapped_sgs12, align 4
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %18 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %stream_id13 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 6
  %19 = ptrtoint ptr %stream_id13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.lshr, ptr %stream_id13, align 4
  %bf.load14 = load i32, ptr %stream_id, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 14
  %bf.clear = and i32 %bf.lshr15, 1
  %no_interrupt16 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %no_interrupt16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.clear, ptr %no_interrupt16, align 4
  %bf.load17 = load i32, ptr %stream_id, align 4
  %bf.lshr18 = lshr i32 %bf.load17, 13
  %bf.clear19 = and i32 %bf.lshr18, 1
  %zero20 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 8
  %21 = ptrtoint ptr %zero20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bf.clear19, ptr %zero20, align 4
  %bf.load21 = load i32, ptr %stream_id, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 12
  %bf.clear23 = and i32 %bf.lshr22, 1
  %short_not_ok24 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 9
  %22 = ptrtoint ptr %short_not_ok24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.clear23, ptr %short_not_ok24, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %status25 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 10
  %25 = ptrtoint ptr %status25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %status25, align 4
  %ret26 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 11
  %26 = ptrtoint ptr %ret26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ret, ptr %ret26, align 4
  %req27 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call3, i32 0, i32 12
  %27 = ptrtoint ptr %req27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req, ptr %req27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_udc_log_req(ptr noundef %__data, ptr nocapture noundef readonly %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #6
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #6
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !297
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !285) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 572, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !285) #6
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 33554488, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 56
  %name19 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %28 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name19, align 4
  %call20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %29)
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  %length21 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %length21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %length21, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %33 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual, align 4
  %actual22 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %actual22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %actual22, align 4
  %num_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 4
  %36 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_sgs, align 4
  %num_sgs23 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %num_sgs23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %num_sgs23, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 5
  %39 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_mapped_sgs, align 4
  %num_mapped_sgs24 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %num_mapped_sgs24 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %num_mapped_sgs24, align 4
  %stream_id = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 6
  %42 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load = load i32, ptr %stream_id, align 4
  %bf.lshr = lshr i32 %bf.load, 16
  %stream_id25 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 6
  %43 = ptrtoint ptr %stream_id25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bf.lshr, ptr %stream_id25, align 4
  %bf.load26 = load i32, ptr %stream_id, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 14
  %bf.clear = and i32 %bf.lshr27, 1
  %no_interrupt28 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %no_interrupt28 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.clear, ptr %no_interrupt28, align 4
  %bf.load29 = load i32, ptr %stream_id, align 4
  %bf.lshr30 = lshr i32 %bf.load29, 13
  %bf.clear31 = and i32 %bf.lshr30, 1
  %zero32 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 8
  %45 = ptrtoint ptr %zero32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bf.clear31, ptr %zero32, align 4
  %bf.load33 = load i32, ptr %stream_id, align 4
  %bf.lshr34 = lshr i32 %bf.load33, 12
  %bf.clear35 = and i32 %bf.lshr34, 1
  %short_not_ok36 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 9
  %46 = ptrtoint ptr %short_not_ok36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.clear35, ptr %short_not_ok36, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 4
  %status37 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 10
  %49 = ptrtoint ptr %status37 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %status37, align 4
  %ret38 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 11
  %50 = ptrtoint ptr %ret38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %ret, ptr %ret38, align 4
  %req39 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %call13, i32 0, i32 12
  %51 = ptrtoint ptr %req39 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %req, ptr %req39, align 4
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 572, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %11, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_udc_log_gadget(ptr noundef %__data, ptr noundef %g, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %g to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_udc_log_ep(ptr noundef %__data, ptr noundef %ep, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ep to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ret to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_udc_log_req(ptr noundef %__data, ptr noundef %ep, ptr noundef %req, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ep to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %req to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %ret to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_udc_log_gadget(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %speed = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %max_speed = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed, align 4
  %state = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %mA = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mA to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mA, align 4
  %sg_supported = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %sg_supported to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %is_otg = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %is_otg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_otg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.25, ptr @.str.26
  %is_a_peripheral = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %is_a_peripheral to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %is_a_peripheral, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.25, ptr @.str.27
  %b_hnp_enable = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %b_hnp_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %b_hnp_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.25, ptr @.str.28
  %a_hnp_support = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %a_hnp_support to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %a_hnp_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp eq i32 %19, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.25, ptr @.str.29
  %hnp_polling_support = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %hnp_polling_support to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hnp_polling_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not = icmp eq i32 %21, 0
  %cond10 = select i1 %tobool9.not, ptr @.str.25, ptr @.str.30
  %host_request_flag = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %host_request_flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_request_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not = icmp eq i32 %23, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.25, ptr @.str.31
  %quirk_ep_out_aligned_size = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %quirk_ep_out_aligned_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirk_ep_out_aligned_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  %cond14 = select i1 %tobool13.not, ptr @.str.25, ptr @.str.32
  %quirk_altset_not_supp = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %quirk_altset_not_supp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirk_altset_not_supp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not = icmp eq i32 %27, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.25, ptr @.str.33
  %quirk_stall_not_supp = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %quirk_stall_not_supp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quirk_stall_not_supp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool17.not = icmp eq i32 %29, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.25, ptr @.str.34
  %quirk_zlp_not_supp = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %quirk_zlp_not_supp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirk_zlp_not_supp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not = icmp eq i32 %31, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.25, ptr @.str.35
  %is_selfpowered = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %is_selfpowered to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %is_selfpowered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool21.not = icmp eq i32 %33, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.37, ptr @.str.36
  %deactivated = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %deactivated to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %deactivated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool23.not = icmp eq i32 %35, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.39, ptr @.str.38
  %connected = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 18
  %36 = ptrtoint ptr %connected to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool25.not = icmp eq i32 %37, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.40, ptr @.str.20
  %ret27 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %1, i32 0, i32 19
  %38 = ptrtoint ptr %ret27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ret27, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, ptr noundef nonnull %cond4, ptr noundef nonnull %cond6, ptr noundef nonnull %cond8, ptr noundef nonnull %cond10, ptr noundef nonnull %cond12, ptr noundef nonnull %cond14, ptr noundef nonnull %cond16, ptr noundef nonnull %cond18, ptr noundef nonnull %cond20, ptr noundef nonnull %cond22, ptr noundef nonnull %cond24, ptr noundef nonnull %cond26, i32 noundef %39) #6
  %call28 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_udc_log_ep(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %maxpacket = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxpacket, align 4
  %maxpacket_limit = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %maxpacket_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxpacket_limit, align 4
  %max_streams = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max_streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_streams, align 4
  %mult = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mult, align 4
  %maxburst = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxburst, align 4
  %address = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %address, align 4
  %conv = zext i8 %15 to i32
  %claimed = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %claimed, align 1, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool.not, ptr @.str.56, ptr @.str.55
  %enabled = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled, align 2, !range !298
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp eq i8 %19, 0
  %cond4 = select i1 %tobool2.not, ptr @.str.57, ptr @.str.53
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.54, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull %cond4, i32 noundef 1) #6
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_udc_log_req(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %req = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %num_mapped_sgs = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %num_mapped_sgs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mapped_sgs, align 4
  %num_sgs = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sgs, align 4
  %stream_id = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_id, align 4
  %zero = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %cond = select i1 %tobool.not, ptr @.str.71, ptr @.str.70
  %short_not_ok = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %short_not_ok to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %short_not_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not = icmp eq i32 %19, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.73, ptr @.str.72
  %no_interrupt = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %no_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not = icmp eq i32 %21, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.75, ptr @.str.74
  %status = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %ret5 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %ret5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret5, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.69, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, ptr noundef nonnull %cond4, i32 noundef %23, i32 noundef %25) #6
  %call6 = tail call i32 @trace_handle_return(ptr noundef %seq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!llvm.named.register.sp = !{!285}
!llvm.module.flags = !{!286, !287, !288, !289, !290, !291, !292, !293}
!llvm.ident = !{!294}

!0 = !{ptr @__tracepoint_usb_gadget_frame_number, !1, !"__tracepoint_usb_gadget_frame_number", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 84, i32 1}
!2 = !{ptr @__tracepoint_ptr_usb_gadget_frame_number, !1, !"__tracepoint_ptr_usb_gadget_frame_number", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_usb_gadget_frame_number, !1, !"__SCK__tp_func_usb_gadget_frame_number", i1 false, i1 false}
!4 = !{ptr @__tracepoint_usb_gadget_wakeup, !5, !"__tracepoint_usb_gadget_wakeup", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 89, i32 1}
!6 = !{ptr @__tracepoint_ptr_usb_gadget_wakeup, !5, !"__tracepoint_ptr_usb_gadget_wakeup", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_usb_gadget_wakeup, !5, !"__SCK__tp_func_usb_gadget_wakeup", i1 false, i1 false}
!8 = !{ptr @__tracepoint_usb_gadget_set_selfpowered, !9, !"__tracepoint_usb_gadget_set_selfpowered", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 94, i32 1}
!10 = !{ptr @__tracepoint_ptr_usb_gadget_set_selfpowered, !9, !"__tracepoint_ptr_usb_gadget_set_selfpowered", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_usb_gadget_set_selfpowered, !9, !"__SCK__tp_func_usb_gadget_set_selfpowered", i1 false, i1 false}
!12 = !{ptr @__tracepoint_usb_gadget_clear_selfpowered, !13, !"__tracepoint_usb_gadget_clear_selfpowered", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 99, i32 1}
!14 = !{ptr @__tracepoint_ptr_usb_gadget_clear_selfpowered, !13, !"__tracepoint_ptr_usb_gadget_clear_selfpowered", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_usb_gadget_clear_selfpowered, !13, !"__SCK__tp_func_usb_gadget_clear_selfpowered", i1 false, i1 false}
!16 = !{ptr @__tracepoint_usb_gadget_vbus_connect, !17, !"__tracepoint_usb_gadget_vbus_connect", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 104, i32 1}
!18 = !{ptr @__tracepoint_ptr_usb_gadget_vbus_connect, !17, !"__tracepoint_ptr_usb_gadget_vbus_connect", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_usb_gadget_vbus_connect, !17, !"__SCK__tp_func_usb_gadget_vbus_connect", i1 false, i1 false}
!20 = !{ptr @__tracepoint_usb_gadget_vbus_draw, !21, !"__tracepoint_usb_gadget_vbus_draw", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 109, i32 1}
!22 = !{ptr @__tracepoint_ptr_usb_gadget_vbus_draw, !21, !"__tracepoint_ptr_usb_gadget_vbus_draw", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_usb_gadget_vbus_draw, !21, !"__SCK__tp_func_usb_gadget_vbus_draw", i1 false, i1 false}
!24 = !{ptr @__tracepoint_usb_gadget_vbus_disconnect, !25, !"__tracepoint_usb_gadget_vbus_disconnect", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 114, i32 1}
!26 = !{ptr @__tracepoint_ptr_usb_gadget_vbus_disconnect, !25, !"__tracepoint_ptr_usb_gadget_vbus_disconnect", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_usb_gadget_vbus_disconnect, !25, !"__SCK__tp_func_usb_gadget_vbus_disconnect", i1 false, i1 false}
!28 = !{ptr @__tracepoint_usb_gadget_connect, !29, !"__tracepoint_usb_gadget_connect", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 119, i32 1}
!30 = !{ptr @__tracepoint_ptr_usb_gadget_connect, !29, !"__tracepoint_ptr_usb_gadget_connect", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_usb_gadget_connect, !29, !"__SCK__tp_func_usb_gadget_connect", i1 false, i1 false}
!32 = !{ptr @__tracepoint_usb_gadget_disconnect, !33, !"__tracepoint_usb_gadget_disconnect", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 124, i32 1}
!34 = !{ptr @__tracepoint_ptr_usb_gadget_disconnect, !33, !"__tracepoint_ptr_usb_gadget_disconnect", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_usb_gadget_disconnect, !33, !"__SCK__tp_func_usb_gadget_disconnect", i1 false, i1 false}
!36 = !{ptr @__tracepoint_usb_gadget_deactivate, !37, !"__tracepoint_usb_gadget_deactivate", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 129, i32 1}
!38 = !{ptr @__tracepoint_ptr_usb_gadget_deactivate, !37, !"__tracepoint_ptr_usb_gadget_deactivate", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_usb_gadget_deactivate, !37, !"__SCK__tp_func_usb_gadget_deactivate", i1 false, i1 false}
!40 = !{ptr @__tracepoint_usb_gadget_activate, !41, !"__tracepoint_usb_gadget_activate", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 134, i32 1}
!42 = !{ptr @__tracepoint_ptr_usb_gadget_activate, !41, !"__tracepoint_ptr_usb_gadget_activate", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_usb_gadget_activate, !41, !"__SCK__tp_func_usb_gadget_activate", i1 false, i1 false}
!44 = !{ptr @__tracepoint_usb_ep_set_maxpacket_limit, !45, !"__tracepoint_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 173, i32 1}
!46 = !{ptr @__tracepoint_ptr_usb_ep_set_maxpacket_limit, !45, !"__tracepoint_ptr_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_usb_ep_set_maxpacket_limit, !45, !"__SCK__tp_func_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!48 = !{ptr @__tracepoint_usb_ep_enable, !49, !"__tracepoint_usb_ep_enable", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 178, i32 1}
!50 = !{ptr @__tracepoint_ptr_usb_ep_enable, !49, !"__tracepoint_ptr_usb_ep_enable", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_usb_ep_enable, !49, !"__SCK__tp_func_usb_ep_enable", i1 false, i1 false}
!52 = !{ptr @__tracepoint_usb_ep_disable, !53, !"__tracepoint_usb_ep_disable", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 183, i32 1}
!54 = !{ptr @__tracepoint_ptr_usb_ep_disable, !53, !"__tracepoint_ptr_usb_ep_disable", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_usb_ep_disable, !53, !"__SCK__tp_func_usb_ep_disable", i1 false, i1 false}
!56 = !{ptr @__tracepoint_usb_ep_set_halt, !57, !"__tracepoint_usb_ep_set_halt", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 188, i32 1}
!58 = !{ptr @__tracepoint_ptr_usb_ep_set_halt, !57, !"__tracepoint_ptr_usb_ep_set_halt", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_usb_ep_set_halt, !57, !"__SCK__tp_func_usb_ep_set_halt", i1 false, i1 false}
!60 = !{ptr @__tracepoint_usb_ep_clear_halt, !61, !"__tracepoint_usb_ep_clear_halt", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 193, i32 1}
!62 = !{ptr @__tracepoint_ptr_usb_ep_clear_halt, !61, !"__tracepoint_ptr_usb_ep_clear_halt", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_usb_ep_clear_halt, !61, !"__SCK__tp_func_usb_ep_clear_halt", i1 false, i1 false}
!64 = !{ptr @__tracepoint_usb_ep_set_wedge, !65, !"__tracepoint_usb_ep_set_wedge", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 198, i32 1}
!66 = !{ptr @__tracepoint_ptr_usb_ep_set_wedge, !65, !"__tracepoint_ptr_usb_ep_set_wedge", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_usb_ep_set_wedge, !65, !"__SCK__tp_func_usb_ep_set_wedge", i1 false, i1 false}
!68 = !{ptr @__tracepoint_usb_ep_fifo_status, !69, !"__tracepoint_usb_ep_fifo_status", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 203, i32 1}
!70 = !{ptr @__tracepoint_ptr_usb_ep_fifo_status, !69, !"__tracepoint_ptr_usb_ep_fifo_status", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_usb_ep_fifo_status, !69, !"__SCK__tp_func_usb_ep_fifo_status", i1 false, i1 false}
!72 = !{ptr @__tracepoint_usb_ep_fifo_flush, !73, !"__tracepoint_usb_ep_fifo_flush", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 208, i32 1}
!74 = !{ptr @__tracepoint_ptr_usb_ep_fifo_flush, !73, !"__tracepoint_ptr_usb_ep_fifo_flush", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_usb_ep_fifo_flush, !73, !"__SCK__tp_func_usb_ep_fifo_flush", i1 false, i1 false}
!76 = !{ptr @__tracepoint_usb_ep_alloc_request, !77, !"__tracepoint_usb_ep_alloc_request", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 254, i32 1}
!78 = !{ptr @__tracepoint_ptr_usb_ep_alloc_request, !77, !"__tracepoint_ptr_usb_ep_alloc_request", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_usb_ep_alloc_request, !77, !"__SCK__tp_func_usb_ep_alloc_request", i1 false, i1 false}
!80 = !{ptr @__tracepoint_usb_ep_free_request, !81, !"__tracepoint_usb_ep_free_request", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 259, i32 1}
!82 = !{ptr @__tracepoint_ptr_usb_ep_free_request, !81, !"__tracepoint_ptr_usb_ep_free_request", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_usb_ep_free_request, !81, !"__SCK__tp_func_usb_ep_free_request", i1 false, i1 false}
!84 = !{ptr @__tracepoint_usb_ep_queue, !85, !"__tracepoint_usb_ep_queue", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 264, i32 1}
!86 = !{ptr @__tracepoint_ptr_usb_ep_queue, !85, !"__tracepoint_ptr_usb_ep_queue", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_usb_ep_queue, !85, !"__SCK__tp_func_usb_ep_queue", i1 false, i1 false}
!88 = !{ptr @__tracepoint_usb_ep_dequeue, !89, !"__tracepoint_usb_ep_dequeue", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 269, i32 1}
!90 = !{ptr @__tracepoint_ptr_usb_ep_dequeue, !89, !"__tracepoint_ptr_usb_ep_dequeue", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_usb_ep_dequeue, !89, !"__SCK__tp_func_usb_ep_dequeue", i1 false, i1 false}
!92 = !{ptr @__tracepoint_usb_gadget_giveback_request, !93, !"__tracepoint_usb_gadget_giveback_request", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 274, i32 1}
!94 = !{ptr @__tracepoint_ptr_usb_gadget_giveback_request, !93, !"__tracepoint_ptr_usb_gadget_giveback_request", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_usb_gadget_giveback_request, !93, !"__SCK__tp_func_usb_gadget_giveback_request", i1 false, i1 false}
!96 = !{ptr @event_class_udc_log_gadget, !97, !"event_class_udc_log_gadget", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 20, i32 1}
!98 = !{ptr @event_usb_gadget_frame_number, !1, !"event_usb_gadget_frame_number", i1 false, i1 false}
!99 = !{ptr @__event_usb_gadget_frame_number, !1, !"__event_usb_gadget_frame_number", i1 false, i1 false}
!100 = !{ptr @event_usb_gadget_wakeup, !5, !"event_usb_gadget_wakeup", i1 false, i1 false}
!101 = !{ptr @__event_usb_gadget_wakeup, !5, !"__event_usb_gadget_wakeup", i1 false, i1 false}
!102 = !{ptr @event_usb_gadget_set_selfpowered, !9, !"event_usb_gadget_set_selfpowered", i1 false, i1 false}
!103 = !{ptr @__event_usb_gadget_set_selfpowered, !9, !"__event_usb_gadget_set_selfpowered", i1 false, i1 false}
!104 = !{ptr @event_usb_gadget_clear_selfpowered, !13, !"event_usb_gadget_clear_selfpowered", i1 false, i1 false}
!105 = !{ptr @__event_usb_gadget_clear_selfpowered, !13, !"__event_usb_gadget_clear_selfpowered", i1 false, i1 false}
!106 = !{ptr @event_usb_gadget_vbus_connect, !17, !"event_usb_gadget_vbus_connect", i1 false, i1 false}
!107 = !{ptr @__event_usb_gadget_vbus_connect, !17, !"__event_usb_gadget_vbus_connect", i1 false, i1 false}
!108 = !{ptr @event_usb_gadget_vbus_draw, !21, !"event_usb_gadget_vbus_draw", i1 false, i1 false}
!109 = !{ptr @__event_usb_gadget_vbus_draw, !21, !"__event_usb_gadget_vbus_draw", i1 false, i1 false}
!110 = !{ptr @event_usb_gadget_vbus_disconnect, !25, !"event_usb_gadget_vbus_disconnect", i1 false, i1 false}
!111 = !{ptr @__event_usb_gadget_vbus_disconnect, !25, !"__event_usb_gadget_vbus_disconnect", i1 false, i1 false}
!112 = !{ptr @event_usb_gadget_connect, !29, !"event_usb_gadget_connect", i1 false, i1 false}
!113 = !{ptr @__event_usb_gadget_connect, !29, !"__event_usb_gadget_connect", i1 false, i1 false}
!114 = !{ptr @event_usb_gadget_disconnect, !33, !"event_usb_gadget_disconnect", i1 false, i1 false}
!115 = !{ptr @__event_usb_gadget_disconnect, !33, !"__event_usb_gadget_disconnect", i1 false, i1 false}
!116 = !{ptr @event_usb_gadget_deactivate, !37, !"event_usb_gadget_deactivate", i1 false, i1 false}
!117 = !{ptr @__event_usb_gadget_deactivate, !37, !"__event_usb_gadget_deactivate", i1 false, i1 false}
!118 = !{ptr @event_usb_gadget_activate, !41, !"event_usb_gadget_activate", i1 false, i1 false}
!119 = !{ptr @__event_usb_gadget_activate, !41, !"__event_usb_gadget_activate", i1 false, i1 false}
!120 = !{ptr @event_class_udc_log_ep, !121, !"event_class_udc_log_ep", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 139, i32 1}
!122 = !{ptr @event_usb_ep_set_maxpacket_limit, !45, !"event_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!123 = !{ptr @__event_usb_ep_set_maxpacket_limit, !45, !"__event_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!124 = !{ptr @event_usb_ep_enable, !49, !"event_usb_ep_enable", i1 false, i1 false}
!125 = !{ptr @__event_usb_ep_enable, !49, !"__event_usb_ep_enable", i1 false, i1 false}
!126 = !{ptr @event_usb_ep_disable, !53, !"event_usb_ep_disable", i1 false, i1 false}
!127 = !{ptr @__event_usb_ep_disable, !53, !"__event_usb_ep_disable", i1 false, i1 false}
!128 = !{ptr @event_usb_ep_set_halt, !57, !"event_usb_ep_set_halt", i1 false, i1 false}
!129 = !{ptr @__event_usb_ep_set_halt, !57, !"__event_usb_ep_set_halt", i1 false, i1 false}
!130 = !{ptr @event_usb_ep_clear_halt, !61, !"event_usb_ep_clear_halt", i1 false, i1 false}
!131 = !{ptr @__event_usb_ep_clear_halt, !61, !"__event_usb_ep_clear_halt", i1 false, i1 false}
!132 = !{ptr @event_usb_ep_set_wedge, !65, !"event_usb_ep_set_wedge", i1 false, i1 false}
!133 = !{ptr @__event_usb_ep_set_wedge, !65, !"__event_usb_ep_set_wedge", i1 false, i1 false}
!134 = !{ptr @event_usb_ep_fifo_status, !69, !"event_usb_ep_fifo_status", i1 false, i1 false}
!135 = !{ptr @__event_usb_ep_fifo_status, !69, !"__event_usb_ep_fifo_status", i1 false, i1 false}
!136 = !{ptr @event_usb_ep_fifo_flush, !73, !"event_usb_ep_fifo_flush", i1 false, i1 false}
!137 = !{ptr @__event_usb_ep_fifo_flush, !73, !"__event_usb_ep_fifo_flush", i1 false, i1 false}
!138 = !{ptr @event_class_udc_log_req, !139, !"event_class_udc_log_req", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/udc/./trace.h", i32 213, i32 1}
!140 = !{ptr @event_usb_ep_alloc_request, !77, !"event_usb_ep_alloc_request", i1 false, i1 false}
!141 = !{ptr @__event_usb_ep_alloc_request, !77, !"__event_usb_ep_alloc_request", i1 false, i1 false}
!142 = !{ptr @event_usb_ep_free_request, !81, !"event_usb_ep_free_request", i1 false, i1 false}
!143 = !{ptr @__event_usb_ep_free_request, !81, !"__event_usb_ep_free_request", i1 false, i1 false}
!144 = !{ptr @event_usb_ep_queue, !85, !"event_usb_ep_queue", i1 false, i1 false}
!145 = !{ptr @__event_usb_ep_queue, !85, !"__event_usb_ep_queue", i1 false, i1 false}
!146 = !{ptr @event_usb_ep_dequeue, !89, !"event_usb_ep_dequeue", i1 false, i1 false}
!147 = !{ptr @__event_usb_ep_dequeue, !89, !"__event_usb_ep_dequeue", i1 false, i1 false}
!148 = !{ptr @event_usb_gadget_giveback_request, !93, !"event_usb_gadget_giveback_request", i1 false, i1 false}
!149 = !{ptr @__event_usb_gadget_giveback_request, !93, !"__event_usb_gadget_giveback_request", i1 false, i1 false}
!150 = !{ptr @__bpf_trace_tp_map_usb_gadget_frame_number, !1, !"__bpf_trace_tp_map_usb_gadget_frame_number", i1 false, i1 false}
!151 = !{ptr @__bpf_trace_tp_map_usb_gadget_wakeup, !5, !"__bpf_trace_tp_map_usb_gadget_wakeup", i1 false, i1 false}
!152 = !{ptr @__bpf_trace_tp_map_usb_gadget_set_selfpowered, !9, !"__bpf_trace_tp_map_usb_gadget_set_selfpowered", i1 false, i1 false}
!153 = !{ptr @__bpf_trace_tp_map_usb_gadget_clear_selfpowered, !13, !"__bpf_trace_tp_map_usb_gadget_clear_selfpowered", i1 false, i1 false}
!154 = !{ptr @__bpf_trace_tp_map_usb_gadget_vbus_connect, !17, !"__bpf_trace_tp_map_usb_gadget_vbus_connect", i1 false, i1 false}
!155 = !{ptr @__bpf_trace_tp_map_usb_gadget_vbus_draw, !21, !"__bpf_trace_tp_map_usb_gadget_vbus_draw", i1 false, i1 false}
!156 = !{ptr @__bpf_trace_tp_map_usb_gadget_vbus_disconnect, !25, !"__bpf_trace_tp_map_usb_gadget_vbus_disconnect", i1 false, i1 false}
!157 = !{ptr @__bpf_trace_tp_map_usb_gadget_connect, !29, !"__bpf_trace_tp_map_usb_gadget_connect", i1 false, i1 false}
!158 = !{ptr @__bpf_trace_tp_map_usb_gadget_disconnect, !33, !"__bpf_trace_tp_map_usb_gadget_disconnect", i1 false, i1 false}
!159 = !{ptr @__bpf_trace_tp_map_usb_gadget_deactivate, !37, !"__bpf_trace_tp_map_usb_gadget_deactivate", i1 false, i1 false}
!160 = !{ptr @__bpf_trace_tp_map_usb_gadget_activate, !41, !"__bpf_trace_tp_map_usb_gadget_activate", i1 false, i1 false}
!161 = !{ptr @__bpf_trace_tp_map_usb_ep_set_maxpacket_limit, !45, !"__bpf_trace_tp_map_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!162 = !{ptr @__bpf_trace_tp_map_usb_ep_enable, !49, !"__bpf_trace_tp_map_usb_ep_enable", i1 false, i1 false}
!163 = !{ptr @__bpf_trace_tp_map_usb_ep_disable, !53, !"__bpf_trace_tp_map_usb_ep_disable", i1 false, i1 false}
!164 = !{ptr @__bpf_trace_tp_map_usb_ep_set_halt, !57, !"__bpf_trace_tp_map_usb_ep_set_halt", i1 false, i1 false}
!165 = !{ptr @__bpf_trace_tp_map_usb_ep_clear_halt, !61, !"__bpf_trace_tp_map_usb_ep_clear_halt", i1 false, i1 false}
!166 = !{ptr @__bpf_trace_tp_map_usb_ep_set_wedge, !65, !"__bpf_trace_tp_map_usb_ep_set_wedge", i1 false, i1 false}
!167 = !{ptr @__bpf_trace_tp_map_usb_ep_fifo_status, !69, !"__bpf_trace_tp_map_usb_ep_fifo_status", i1 false, i1 false}
!168 = !{ptr @__bpf_trace_tp_map_usb_ep_fifo_flush, !73, !"__bpf_trace_tp_map_usb_ep_fifo_flush", i1 false, i1 false}
!169 = !{ptr @__bpf_trace_tp_map_usb_ep_alloc_request, !77, !"__bpf_trace_tp_map_usb_ep_alloc_request", i1 false, i1 false}
!170 = !{ptr @__bpf_trace_tp_map_usb_ep_free_request, !81, !"__bpf_trace_tp_map_usb_ep_free_request", i1 false, i1 false}
!171 = !{ptr @__bpf_trace_tp_map_usb_ep_queue, !85, !"__bpf_trace_tp_map_usb_ep_queue", i1 false, i1 false}
!172 = !{ptr @__bpf_trace_tp_map_usb_ep_dequeue, !89, !"__bpf_trace_tp_map_usb_ep_dequeue", i1 false, i1 false}
!173 = !{ptr @__bpf_trace_tp_map_usb_gadget_giveback_request, !93, !"__bpf_trace_tp_map_usb_gadget_giveback_request", i1 false, i1 false}
!174 = !{ptr @__tpstrtab_usb_gadget_frame_number, !1, !"__tpstrtab_usb_gadget_frame_number", i1 false, i1 false}
!175 = !{ptr @__tpstrtab_usb_gadget_wakeup, !5, !"__tpstrtab_usb_gadget_wakeup", i1 false, i1 false}
!176 = !{ptr @__tpstrtab_usb_gadget_set_selfpowered, !9, !"__tpstrtab_usb_gadget_set_selfpowered", i1 false, i1 false}
!177 = !{ptr @__tpstrtab_usb_gadget_clear_selfpowered, !13, !"__tpstrtab_usb_gadget_clear_selfpowered", i1 false, i1 false}
!178 = !{ptr @__tpstrtab_usb_gadget_vbus_connect, !17, !"__tpstrtab_usb_gadget_vbus_connect", i1 false, i1 false}
!179 = !{ptr @__tpstrtab_usb_gadget_vbus_draw, !21, !"__tpstrtab_usb_gadget_vbus_draw", i1 false, i1 false}
!180 = !{ptr @__tpstrtab_usb_gadget_vbus_disconnect, !25, !"__tpstrtab_usb_gadget_vbus_disconnect", i1 false, i1 false}
!181 = !{ptr @__tpstrtab_usb_gadget_connect, !29, !"__tpstrtab_usb_gadget_connect", i1 false, i1 false}
!182 = !{ptr @__tpstrtab_usb_gadget_disconnect, !33, !"__tpstrtab_usb_gadget_disconnect", i1 false, i1 false}
!183 = !{ptr @__tpstrtab_usb_gadget_deactivate, !37, !"__tpstrtab_usb_gadget_deactivate", i1 false, i1 false}
!184 = !{ptr @__tpstrtab_usb_gadget_activate, !41, !"__tpstrtab_usb_gadget_activate", i1 false, i1 false}
!185 = !{ptr @__tpstrtab_usb_ep_set_maxpacket_limit, !45, !"__tpstrtab_usb_ep_set_maxpacket_limit", i1 false, i1 false}
!186 = !{ptr @__tpstrtab_usb_ep_enable, !49, !"__tpstrtab_usb_ep_enable", i1 false, i1 false}
!187 = !{ptr @__tpstrtab_usb_ep_disable, !53, !"__tpstrtab_usb_ep_disable", i1 false, i1 false}
!188 = !{ptr @__tpstrtab_usb_ep_set_halt, !57, !"__tpstrtab_usb_ep_set_halt", i1 false, i1 false}
!189 = !{ptr @__tpstrtab_usb_ep_clear_halt, !61, !"__tpstrtab_usb_ep_clear_halt", i1 false, i1 false}
!190 = !{ptr @__tpstrtab_usb_ep_set_wedge, !65, !"__tpstrtab_usb_ep_set_wedge", i1 false, i1 false}
!191 = !{ptr @__tpstrtab_usb_ep_fifo_status, !69, !"__tpstrtab_usb_ep_fifo_status", i1 false, i1 false}
!192 = !{ptr @__tpstrtab_usb_ep_fifo_flush, !73, !"__tpstrtab_usb_ep_fifo_flush", i1 false, i1 false}
!193 = !{ptr @__tpstrtab_usb_ep_alloc_request, !77, !"__tpstrtab_usb_ep_alloc_request", i1 false, i1 false}
!194 = !{ptr @__tpstrtab_usb_ep_free_request, !81, !"__tpstrtab_usb_ep_free_request", i1 false, i1 false}
!195 = !{ptr @__tpstrtab_usb_ep_queue, !85, !"__tpstrtab_usb_ep_queue", i1 false, i1 false}
!196 = !{ptr @__tpstrtab_usb_ep_dequeue, !89, !"__tpstrtab_usb_ep_dequeue", i1 false, i1 false}
!197 = !{ptr @__tpstrtab_usb_gadget_giveback_request, !93, !"__tpstrtab_usb_gadget_giveback_request", i1 false, i1 false}
!198 = !{ptr @str__gadget__trace_system_name, !199, !"str__gadget__trace_system_name", i1 false, i1 false}
!199 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!200 = !{ptr @.str, !97, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.1, !97, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.2, !97, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.3, !97, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.4, !97, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.5, !97, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.6, !97, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.7, !97, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.8, !97, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.9, !97, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.10, !97, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.11, !97, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.12, !97, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.14, !97, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.15, !97, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.16, !97, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.17, !97, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.18, !97, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.19, !97, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.20, !97, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @trace_event_fields_udc_log_gadget, !97, !"trace_event_fields_udc_log_gadget", i1 false, i1 false}
!224 = !{ptr @trace_event_type_funcs_udc_log_gadget, !97, !"trace_event_type_funcs_udc_log_gadget", i1 false, i1 false}
!225 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @print_fmt_udc_log_gadget, !97, !"print_fmt_udc_log_gadget", i1 false, i1 false}
!244 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @trace_event_fields_udc_log_ep, !121, !"trace_event_fields_udc_log_ep", i1 false, i1 false}
!258 = !{ptr @trace_event_type_funcs_udc_log_ep, !121, !"trace_event_type_funcs_udc_log_ep", i1 false, i1 false}
!259 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @print_fmt_udc_log_ep, !121, !"print_fmt_udc_log_ep", i1 false, i1 false}
!264 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @trace_event_fields_udc_log_req, !139, !"trace_event_fields_udc_log_req", i1 false, i1 false}
!276 = !{ptr @trace_event_type_funcs_udc_log_req, !139, !"trace_event_type_funcs_udc_log_req", i1 false, i1 false}
!277 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @print_fmt_udc_log_req, !139, !"print_fmt_udc_log_req", i1 false, i1 false}
!285 = !{!"sp"}
!286 = !{i32 1, !"wchar_size", i32 2}
!287 = !{i32 1, !"min_enum_size", i32 4}
!288 = !{i32 8, !"branch-target-enforcement", i32 0}
!289 = !{i32 8, !"sign-return-address", i32 0}
!290 = !{i32 8, !"sign-return-address-all", i32 0}
!291 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!292 = !{i32 7, !"uwtable", i32 1}
!293 = !{i32 7, !"frame-pointer", i32 2}
!294 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!295 = !{!"branch_weights", i32 2000, i32 1}
!296 = !{!"branch_weights", i32 1, i32 2000}
!297 = !{!"auto-init"}
!298 = !{i8 0, i8 2}
