; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_trace.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_trace.c"
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
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.trace_event_raw_mtu3_log = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mtu3_u3_ltssm_isr = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_mtu3_u2_common_isr = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_mtu3_qmu_isr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_mtu3_log_setup = type { %struct.trace_entry, i8, i8, i16, i16, i16, [0 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.mtu3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.mtu3_ep = type { %struct.usb_ep, [12 x i8], ptr, i8, i8, i8, i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.mtu3_gpd_ring, ptr, ptr, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.mtu3_gpd_ring = type { i32, ptr, ptr, ptr, ptr }
%struct.trace_event_raw_mtu3_log_request = type { %struct.trace_entry, i32, ptr, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mtu3_log_gpd = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.qmu_gpd = type { i32, i32, i32, i32 }
%struct.trace_event_raw_mtu3_log_ep = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [0 x i8] }
%struct.__va_list = type { ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mtu3_log = internal constant [9 x i8] c"mtu3_log\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_log = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_log }, align 4
@__tracepoint_mtu3_log = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_log, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_log, ptr null, ptr @__traceiter_mtu3_log, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_log = internal constant ptr @__tracepoint_mtu3_log, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_u3_ltssm_isr = internal constant [18 x i8] c"mtu3_u3_ltssm_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_u3_ltssm_isr = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_u3_ltssm_isr }, align 4
@__tracepoint_mtu3_u3_ltssm_isr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_u3_ltssm_isr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_u3_ltssm_isr, ptr null, ptr @__traceiter_mtu3_u3_ltssm_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_u3_ltssm_isr = internal constant ptr @__tracepoint_mtu3_u3_ltssm_isr, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_u2_common_isr = internal constant [19 x i8] c"mtu3_u2_common_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_u2_common_isr = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_u2_common_isr }, align 4
@__tracepoint_mtu3_u2_common_isr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_u2_common_isr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_u2_common_isr, ptr null, ptr @__traceiter_mtu3_u2_common_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_u2_common_isr = internal constant ptr @__tracepoint_mtu3_u2_common_isr, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_qmu_isr = internal constant [13 x i8] c"mtu3_qmu_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_qmu_isr = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_qmu_isr }, align 4
@__tracepoint_mtu3_qmu_isr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_qmu_isr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_qmu_isr, ptr null, ptr @__traceiter_mtu3_qmu_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_qmu_isr = internal constant ptr @__tracepoint_mtu3_qmu_isr, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_handle_setup = internal constant [18 x i8] c"mtu3_handle_setup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_handle_setup = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_handle_setup }, align 4
@__tracepoint_mtu3_handle_setup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_handle_setup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_handle_setup, ptr null, ptr @__traceiter_mtu3_handle_setup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_handle_setup = internal constant ptr @__tracepoint_mtu3_handle_setup, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_alloc_request = internal constant [19 x i8] c"mtu3_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_alloc_request }, align 4
@__tracepoint_mtu3_alloc_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_alloc_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_alloc_request, ptr null, ptr @__traceiter_mtu3_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_alloc_request = internal constant ptr @__tracepoint_mtu3_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_free_request = internal constant [18 x i8] c"mtu3_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_free_request }, align 4
@__tracepoint_mtu3_free_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_free_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_free_request, ptr null, ptr @__traceiter_mtu3_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_free_request = internal constant ptr @__tracepoint_mtu3_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_gadget_queue = internal constant [18 x i8] c"mtu3_gadget_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_gadget_queue = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_gadget_queue }, align 4
@__tracepoint_mtu3_gadget_queue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_gadget_queue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_gadget_queue, ptr null, ptr @__traceiter_mtu3_gadget_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_gadget_queue = internal constant ptr @__tracepoint_mtu3_gadget_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_gadget_dequeue = internal constant [20 x i8] c"mtu3_gadget_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_gadget_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_gadget_dequeue }, align 4
@__tracepoint_mtu3_gadget_dequeue = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_gadget_dequeue, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_gadget_dequeue, ptr null, ptr @__traceiter_mtu3_gadget_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_gadget_dequeue = internal constant ptr @__tracepoint_mtu3_gadget_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_req_complete = internal constant [18 x i8] c"mtu3_req_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_req_complete = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_req_complete }, align 4
@__tracepoint_mtu3_req_complete = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_req_complete, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_req_complete, ptr null, ptr @__traceiter_mtu3_req_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_req_complete = internal constant ptr @__tracepoint_mtu3_req_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_prepare_gpd = internal constant [17 x i8] c"mtu3_prepare_gpd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_prepare_gpd = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_prepare_gpd }, align 4
@__tracepoint_mtu3_prepare_gpd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_prepare_gpd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_prepare_gpd, ptr null, ptr @__traceiter_mtu3_prepare_gpd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_prepare_gpd = internal constant ptr @__tracepoint_mtu3_prepare_gpd, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_complete_gpd = internal constant [18 x i8] c"mtu3_complete_gpd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_complete_gpd = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_complete_gpd }, align 4
@__tracepoint_mtu3_complete_gpd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_complete_gpd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_complete_gpd, ptr null, ptr @__traceiter_mtu3_complete_gpd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_complete_gpd = internal constant ptr @__tracepoint_mtu3_complete_gpd, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_zlp_exp_gpd = internal constant [17 x i8] c"mtu3_zlp_exp_gpd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_zlp_exp_gpd = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_zlp_exp_gpd }, align 4
@__tracepoint_mtu3_zlp_exp_gpd = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_zlp_exp_gpd, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_zlp_exp_gpd, ptr null, ptr @__traceiter_mtu3_zlp_exp_gpd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_zlp_exp_gpd = internal constant ptr @__tracepoint_mtu3_zlp_exp_gpd, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_gadget_ep_enable = internal constant [22 x i8] c"mtu3_gadget_ep_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_gadget_ep_enable = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_gadget_ep_enable }, align 4
@__tracepoint_mtu3_gadget_ep_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_gadget_ep_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_gadget_ep_enable, ptr null, ptr @__traceiter_mtu3_gadget_ep_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_gadget_ep_enable = internal constant ptr @__tracepoint_mtu3_gadget_ep_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_gadget_ep_disable = internal constant [23 x i8] c"mtu3_gadget_ep_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_gadget_ep_disable = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_gadget_ep_disable }, align 4
@__tracepoint_mtu3_gadget_ep_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_gadget_ep_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_gadget_ep_disable, ptr null, ptr @__traceiter_mtu3_gadget_ep_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_gadget_ep_disable = internal constant ptr @__tracepoint_mtu3_gadget_ep_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_mtu3_gadget_ep_set_halt = internal constant [24 x i8] c"mtu3_gadget_ep_set_halt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mtu3_gadget_ep_set_halt = dso_local global %struct.static_call_key { ptr @__traceiter_mtu3_gadget_ep_set_halt }, align 4
@__tracepoint_mtu3_gadget_ep_set_halt = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mtu3_gadget_ep_set_halt, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mtu3_gadget_ep_set_halt, ptr null, ptr @__traceiter_mtu3_gadget_ep_set_halt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mtu3_gadget_ep_set_halt = internal constant ptr @__tracepoint_mtu3_gadget_ep_set_halt, section "__tracepoints_ptrs", align 4
@str__mtu3__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mtu3_log = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mtu3_log = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_log, ptr @perf_trace_mtu3_log, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_log, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_log, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_log, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_log = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_log, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_log = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22%s: %s\22, __get_str(name), __get_str(msg)\00", [54 x i8] zeroinitializer }, align 32
@event_mtu3_log = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log, %union.anon.106 { ptr @__tracepoint_mtu3_log }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log }, ptr @print_fmt_mtu3_log, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_log = internal global ptr @event_mtu3_log, section "_ftrace_events", align 4
@trace_event_fields_mtu3_u3_ltssm_isr = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mtu3_u3_ltssm_isr = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_u3_ltssm_isr, ptr @perf_trace_mtu3_u3_ltssm_isr, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_u3_ltssm_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_u3_ltssm_isr, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_u3_ltssm_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_u3_ltssm_isr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_u3_ltssm_isr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_u3_ltssm_isr = internal global { [340 x i8], [76 x i8] } { [340 x i8] c"\22(%08x) %s %s %s %s %s %s\22, REC->intr, REC->intr & ((((1UL))) << (4)) ? \22HOT_RST\22 : \22\22, REC->intr & ((((1UL))) << (5)) ? \22WARM_RST\22 : \22\22, REC->intr & ((((1UL))) << (10)) ? \22ENT_U3\22 : \22\22, REC->intr & ((((1UL))) << (13)) ? \22EXIT_U3\22 : \22\22, REC->intr & ((((1UL))) << (15)) ? \22VBUS_RISE\22 : \22\22, REC->intr & ((((1UL))) << (16)) ? \22VBUS_FALL\22 : \22\22\00", [76 x i8] zeroinitializer }, align 32
@event_mtu3_u3_ltssm_isr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_u3_ltssm_isr, %union.anon.106 { ptr @__tracepoint_mtu3_u3_ltssm_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_u3_ltssm_isr }, ptr @print_fmt_mtu3_u3_ltssm_isr, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_u3_ltssm_isr = internal global ptr @event_mtu3_u3_ltssm_isr, section "_ftrace_events", align 4
@trace_event_fields_mtu3_u2_common_isr = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mtu3_u2_common_isr = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_u2_common_isr, ptr @perf_trace_mtu3_u2_common_isr, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_u2_common_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_u2_common_isr, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_u2_common_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_u2_common_isr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_u2_common_isr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_u2_common_isr = internal global { [173 x i8], [51 x i8] } { [173 x i8] c"\22(%08x) %s %s %s\22, REC->intr, REC->intr & ((((1UL))) << (0)) ? \22SUSPEND\22 : \22\22, REC->intr & ((((1UL))) << (1)) ? \22RESUME\22 : \22\22, REC->intr & ((((1UL))) << (2)) ? \22RESET\22 : \22\22\00", [51 x i8] zeroinitializer }, align 32
@event_mtu3_u2_common_isr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_u2_common_isr, %union.anon.106 { ptr @__tracepoint_mtu3_u2_common_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_u2_common_isr }, ptr @print_fmt_mtu3_u2_common_isr, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_u2_common_isr = internal global ptr @event_mtu3_u2_common_isr, section "_ftrace_events", align 4
@trace_event_fields_mtu3_qmu_isr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mtu3_qmu_isr = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_qmu_isr, ptr @perf_trace_mtu3_qmu_isr, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_qmu_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_qmu_isr, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_qmu_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_qmu_isr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_qmu_isr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_qmu_isr = internal global { [100 x i8], [60 x i8] } { [100 x i8] c"\22done (tx %04x, rx %04x), exp (%08x)\22, REC->done_intr & 0xffff, REC->done_intr >> 16, REC->exp_intr\00", [60 x i8] zeroinitializer }, align 32
@event_mtu3_qmu_isr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_qmu_isr, %union.anon.106 { ptr @__tracepoint_mtu3_qmu_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_qmu_isr }, ptr @print_fmt_mtu3_qmu_isr, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_qmu_isr = internal global ptr @event_mtu3_qmu_isr, section "_ftrace_events", align 4
@trace_event_fields_mtu3_log_setup = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.22, %union.anon.104 { %struct.anon.105 { ptr @.str.23, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.104 { %struct.anon.105 { ptr @.str.24, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.104 { %struct.anon.105 { ptr @.str.26, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.104 { %struct.anon.105 { ptr @.str.27, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.104 { %struct.anon.105 { ptr @.str.28, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mtu3_log_setup = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_log_setup, ptr @perf_trace_mtu3_log_setup, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_log_setup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_log_setup, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_log_setup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_log_setup = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_log_setup, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_log_setup = internal global { [109 x i8], [51 x i8] } { [109 x i8] c"\22setup - %02x %02x %04x %04x %04x\22, REC->bRequestType, REC->bRequest, REC->wValue, REC->wIndex, REC->wLength\00", [51 x i8] zeroinitializer }, align 32
@event_mtu3_handle_setup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_setup, %union.anon.106 { ptr @__tracepoint_mtu3_handle_setup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_setup }, ptr @print_fmt_mtu3_log_setup, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_handle_setup = internal global ptr @event_mtu3_handle_setup, section "_ftrace_events", align 4
@trace_event_fields_mtu3_log_request = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.104 { %struct.anon.105 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.104 { %struct.anon.105 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.104 { %struct.anon.105 { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.104 { %struct.anon.105 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.104 { %struct.anon.105 { ptr @.str.40, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_mtu3_log_request = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_log_request, ptr @perf_trace_mtu3_log_request, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_log_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_log_request, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_log_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_log_request = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_log_request, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_log_request = internal global { [173 x i8], [51 x i8] } { [173 x i8] c"\22%s: req %p gpd %p len %u/%u %s%s --> %d\22, __get_str(name), REC->mreq, REC->gpd, REC->actual, REC->length, REC->zero ? \22Z\22 : \22z\22, REC->no_interrupt ? \22i\22 : \22I\22, REC->status\00", [51 x i8] zeroinitializer }, align 32
@event_mtu3_alloc_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_request, %union.anon.106 { ptr @__tracepoint_mtu3_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_request }, ptr @print_fmt_mtu3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_alloc_request = internal global ptr @event_mtu3_alloc_request, section "_ftrace_events", align 4
@event_mtu3_free_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_request, %union.anon.106 { ptr @__tracepoint_mtu3_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_request }, ptr @print_fmt_mtu3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_free_request = internal global ptr @event_mtu3_free_request, section "_ftrace_events", align 4
@event_mtu3_gadget_queue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_request, %union.anon.106 { ptr @__tracepoint_mtu3_gadget_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_request }, ptr @print_fmt_mtu3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_gadget_queue = internal global ptr @event_mtu3_gadget_queue, section "_ftrace_events", align 4
@event_mtu3_gadget_dequeue = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_request, %union.anon.106 { ptr @__tracepoint_mtu3_gadget_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_request }, ptr @print_fmt_mtu3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_gadget_dequeue = internal global ptr @event_mtu3_gadget_dequeue, section "_ftrace_events", align 4
@event_mtu3_req_complete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_request, %union.anon.106 { ptr @__tracepoint_mtu3_req_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_request }, ptr @print_fmt_mtu3_log_request, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_req_complete = internal global ptr @event_mtu3_req_complete, section "_ftrace_events", align 4
@trace_event_fields_mtu3_log_gpd = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.104 { %struct.anon.105 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.104 { %struct.anon.105 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mtu3_log_gpd = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_log_gpd, ptr @perf_trace_mtu3_log_gpd, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_log_gpd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_log_gpd, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_log_gpd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_log_gpd = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_log_gpd, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_log_gpd = internal global { [102 x i8], [58 x i8] } { [102 x i8] c"\22%s: gpd %p - %08x %08x %08x %08x\22, __get_str(name), REC->gpd, REC->dw0, REC->dw1, REC->dw2, REC->dw3\00", [58 x i8] zeroinitializer }, align 32
@event_mtu3_prepare_gpd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_gpd, %union.anon.106 { ptr @__tracepoint_mtu3_prepare_gpd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_gpd }, ptr @print_fmt_mtu3_log_gpd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_prepare_gpd = internal global ptr @event_mtu3_prepare_gpd, section "_ftrace_events", align 4
@event_mtu3_complete_gpd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_gpd, %union.anon.106 { ptr @__tracepoint_mtu3_complete_gpd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_gpd }, ptr @print_fmt_mtu3_log_gpd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_complete_gpd = internal global ptr @event_mtu3_complete_gpd, section "_ftrace_events", align 4
@event_mtu3_zlp_exp_gpd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_gpd, %union.anon.106 { ptr @__tracepoint_mtu3_zlp_exp_gpd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_gpd }, ptr @print_fmt_mtu3_log_gpd, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_zlp_exp_gpd = internal global ptr @event_mtu3_zlp_exp_gpd, section "_ftrace_events", align 4
@trace_event_fields_mtu3_log_ep = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.104 { %struct.anon.105 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.52, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.55, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.104 { %struct.anon.105 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.104 { %struct.anon.105 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mtu3_log_ep = internal global %struct.trace_event_class { ptr @str__mtu3__trace_system_name, ptr @trace_event_raw_event_mtu3_log_ep, ptr @perf_trace_mtu3_log_ep, ptr @trace_event_reg, ptr @trace_event_fields_mtu3_log_ep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mtu3_log_ep, i64 24), ptr getelementptr (i8, ptr @event_class_mtu3_log_ep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mtu3_log_ep = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mtu3_log_ep, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mtu3_log_ep = internal global { [399 x i8], [113 x i8] } { [399 x i8] c"\22%s: type %d maxp %d slot %d mult %d burst %d ring %p/%pad flags %c:%c%c%c:%c\22, __get_str(name), REC->type, REC->maxp, REC->slot, REC->mult, REC->maxburst, REC->gpd_ring, &REC->gpd_ring->dma, REC->flags & ((((1UL))) << (0)) ? 'E' : 'e', REC->flags & ((((1UL))) << (1)) ? 'S' : 's', REC->flags & ((((1UL))) << (2)) ? 'W' : 'w', REC->flags & ((((1UL))) << (3)) ? 'B' : 'b', REC->direction ? '<' : '>'\00", [113 x i8] zeroinitializer }, align 32
@event_mtu3_gadget_ep_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_ep, %union.anon.106 { ptr @__tracepoint_mtu3_gadget_ep_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_ep }, ptr @print_fmt_mtu3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_gadget_ep_enable = internal global ptr @event_mtu3_gadget_ep_enable, section "_ftrace_events", align 4
@event_mtu3_gadget_ep_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_ep, %union.anon.106 { ptr @__tracepoint_mtu3_gadget_ep_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_ep }, ptr @print_fmt_mtu3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_gadget_ep_disable = internal global ptr @event_mtu3_gadget_ep_disable, section "_ftrace_events", align 4
@event_mtu3_gadget_ep_set_halt = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mtu3_log_ep, %union.anon.106 { ptr @__tracepoint_mtu3_gadget_ep_set_halt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mtu3_log_ep }, ptr @print_fmt_mtu3_log_ep, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mtu3_gadget_ep_set_halt = internal global ptr @event_mtu3_gadget_ep_set_halt, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mtu3_log = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_log, ptr @__bpf_trace_mtu3_log, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_u3_ltssm_isr = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_u3_ltssm_isr, ptr @__bpf_trace_mtu3_u3_ltssm_isr, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_u2_common_isr = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_u2_common_isr, ptr @__bpf_trace_mtu3_u2_common_isr, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_qmu_isr = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_qmu_isr, ptr @__bpf_trace_mtu3_qmu_isr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_handle_setup = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_handle_setup, ptr @__bpf_trace_mtu3_log_setup, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_alloc_request = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_alloc_request, ptr @__bpf_trace_mtu3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_free_request = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_free_request, ptr @__bpf_trace_mtu3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_gadget_queue = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_gadget_queue, ptr @__bpf_trace_mtu3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_gadget_dequeue = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_gadget_dequeue, ptr @__bpf_trace_mtu3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_req_complete = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_req_complete, ptr @__bpf_trace_mtu3_log_request, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_prepare_gpd = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_prepare_gpd, ptr @__bpf_trace_mtu3_log_gpd, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_complete_gpd = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_complete_gpd, ptr @__bpf_trace_mtu3_log_gpd, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_zlp_exp_gpd = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_zlp_exp_gpd, ptr @__bpf_trace_mtu3_log_gpd, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_gadget_ep_enable = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_gadget_ep_enable, ptr @__bpf_trace_mtu3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_gadget_ep_disable = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_gadget_ep_disable, ptr @__bpf_trace_mtu3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mtu3_gadget_ep_set_halt = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_mtu3_gadget_ep_set_halt, ptr @__bpf_trace_mtu3_log_ep, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(%08x) %s %s %s %s %s %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HOT_RST\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WARM_RST\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENT_U3\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EXIT_U3\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBUS_RISE\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VBUS_FALL\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(%08x) %s %s %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUSPEND\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESUME\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RESET\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"done_intr\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"exp_intr\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"done (tx %04x, rx %04x), exp (%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"__u8\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bRequestType\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bRequest\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u16\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wValue\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wIndex\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wLength\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setup - %02x %02x %04x %04x %04x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"struct mtu3_request *\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mreq\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"struct qmu_gpd *\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpd\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actual\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: req %p gpd %p len %u/%u %s%s --> %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z\00", [30 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"z\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dw0\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dw1\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dw2\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dw3\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: gpd %p - %08x %08x %08x %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slot\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"maxp\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mult\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxburst\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"direction\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"struct mtu3_gpd_ring *\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpd_ring\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s: type %d maxp %d slot %d mult %d burst %d ring %p/%pad flags %c:%c%c%c:%c\0A\00", [50 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/mtu3/mtu3_trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_mtu3_log.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [33 x i8] c"../drivers/usb/mtu3/mtu3_trace.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [29 x i8] c"str__mtu3__trace_system_name\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 36, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"trace_event_fields_mtu3_log\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [32 x i8] c"trace_event_type_funcs_mtu3_log\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"print_fmt_mtu3_log\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"event_mtu3_log\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [37 x i8] c"trace_event_fields_mtu3_u3_ltssm_isr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_mtu3_u3_ltssm_isr\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"print_fmt_mtu3_u3_ltssm_isr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"event_mtu3_u3_ltssm_isr\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [38 x i8] c"trace_event_fields_mtu3_u2_common_isr\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_mtu3_u2_common_isr\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"print_fmt_mtu3_u2_common_isr\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"event_mtu3_u2_common_isr\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [32 x i8] c"trace_event_fields_mtu3_qmu_isr\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_mtu3_qmu_isr\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"print_fmt_mtu3_qmu_isr\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"event_mtu3_qmu_isr\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [34 x i8] c"trace_event_fields_mtu3_log_setup\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_mtu3_log_setup\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"print_fmt_mtu3_log_setup\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"event_mtu3_handle_setup\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 113, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mtu3_log_request\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mtu3_log_request\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"print_fmt_mtu3_log_request\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [25 x i8] c"event_mtu3_alloc_request\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 150, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [24 x i8] c"event_mtu3_free_request\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 155, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [24 x i8] c"event_mtu3_gadget_queue\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 160, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"event_mtu3_gadget_dequeue\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 165, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"event_mtu3_req_complete\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 170, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [32 x i8] c"trace_event_fields_mtu3_log_gpd\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_mtu3_log_gpd\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [23 x i8] c"print_fmt_mtu3_log_gpd\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"event_mtu3_prepare_gpd\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 201, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [24 x i8] c"event_mtu3_complete_gpd\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 206, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"event_mtu3_zlp_exp_gpd\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 211, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant [31 x i8] c"trace_event_fields_mtu3_log_ep\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_mtu3_log_ep\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"print_fmt_mtu3_log_ep\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"event_mtu3_gadget_ep_enable\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 254, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant [29 x i8] c"event_mtu3_gadget_ep_disable\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 259, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [30 x i8] c"event_mtu3_gadget_ep_set_halt\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 264, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 37, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 56, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 72, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 90, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 118, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 175, i32 1 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 216, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [35 x i8] c"../drivers/usb/mtu3/./mtu3_trace.h\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 23, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 108, i32 2 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__bpf_trace_tp_map_mtu3_alloc_request, ptr @__bpf_trace_tp_map_mtu3_complete_gpd, ptr @__bpf_trace_tp_map_mtu3_free_request, ptr @__bpf_trace_tp_map_mtu3_gadget_dequeue, ptr @__bpf_trace_tp_map_mtu3_gadget_ep_disable, ptr @__bpf_trace_tp_map_mtu3_gadget_ep_enable, ptr @__bpf_trace_tp_map_mtu3_gadget_ep_set_halt, ptr @__bpf_trace_tp_map_mtu3_gadget_queue, ptr @__bpf_trace_tp_map_mtu3_handle_setup, ptr @__bpf_trace_tp_map_mtu3_log, ptr @__bpf_trace_tp_map_mtu3_prepare_gpd, ptr @__bpf_trace_tp_map_mtu3_qmu_isr, ptr @__bpf_trace_tp_map_mtu3_req_complete, ptr @__bpf_trace_tp_map_mtu3_u2_common_isr, ptr @__bpf_trace_tp_map_mtu3_u3_ltssm_isr, ptr @__bpf_trace_tp_map_mtu3_zlp_exp_gpd, ptr @__event_mtu3_alloc_request, ptr @__event_mtu3_complete_gpd, ptr @__event_mtu3_free_request, ptr @__event_mtu3_gadget_dequeue, ptr @__event_mtu3_gadget_ep_disable, ptr @__event_mtu3_gadget_ep_enable, ptr @__event_mtu3_gadget_ep_set_halt, ptr @__event_mtu3_gadget_queue, ptr @__event_mtu3_handle_setup, ptr @__event_mtu3_log, ptr @__event_mtu3_prepare_gpd, ptr @__event_mtu3_qmu_isr, ptr @__event_mtu3_req_complete, ptr @__event_mtu3_u2_common_isr, ptr @__event_mtu3_u3_ltssm_isr, ptr @__event_mtu3_zlp_exp_gpd, ptr @__tracepoint_mtu3_alloc_request, ptr @__tracepoint_mtu3_complete_gpd, ptr @__tracepoint_mtu3_free_request, ptr @__tracepoint_mtu3_gadget_dequeue, ptr @__tracepoint_mtu3_gadget_ep_disable, ptr @__tracepoint_mtu3_gadget_ep_enable, ptr @__tracepoint_mtu3_gadget_ep_set_halt, ptr @__tracepoint_mtu3_gadget_queue, ptr @__tracepoint_mtu3_handle_setup, ptr @__tracepoint_mtu3_log, ptr @__tracepoint_mtu3_prepare_gpd, ptr @__tracepoint_mtu3_qmu_isr, ptr @__tracepoint_mtu3_req_complete, ptr @__tracepoint_mtu3_u2_common_isr, ptr @__tracepoint_mtu3_u3_ltssm_isr, ptr @__tracepoint_mtu3_zlp_exp_gpd, ptr @__tracepoint_ptr_mtu3_alloc_request, ptr @__tracepoint_ptr_mtu3_complete_gpd, ptr @__tracepoint_ptr_mtu3_free_request, ptr @__tracepoint_ptr_mtu3_gadget_dequeue, ptr @__tracepoint_ptr_mtu3_gadget_ep_disable, ptr @__tracepoint_ptr_mtu3_gadget_ep_enable, ptr @__tracepoint_ptr_mtu3_gadget_ep_set_halt, ptr @__tracepoint_ptr_mtu3_gadget_queue, ptr @__tracepoint_ptr_mtu3_handle_setup, ptr @__tracepoint_ptr_mtu3_log, ptr @__tracepoint_ptr_mtu3_prepare_gpd, ptr @__tracepoint_ptr_mtu3_qmu_isr, ptr @__tracepoint_ptr_mtu3_req_complete, ptr @__tracepoint_ptr_mtu3_u2_common_isr, ptr @__tracepoint_ptr_mtu3_u3_ltssm_isr, ptr @__tracepoint_ptr_mtu3_zlp_exp_gpd, ptr @event_class_mtu3_log, ptr @event_class_mtu3_log_ep, ptr @event_class_mtu3_log_gpd, ptr @event_class_mtu3_log_request, ptr @event_class_mtu3_log_setup, ptr @event_class_mtu3_qmu_isr, ptr @event_class_mtu3_u2_common_isr, ptr @event_class_mtu3_u3_ltssm_isr, ptr @event_mtu3_alloc_request, ptr @event_mtu3_complete_gpd, ptr @event_mtu3_free_request, ptr @event_mtu3_gadget_dequeue, ptr @event_mtu3_gadget_ep_disable, ptr @event_mtu3_gadget_ep_enable, ptr @event_mtu3_gadget_ep_set_halt, ptr @event_mtu3_gadget_queue, ptr @event_mtu3_handle_setup, ptr @event_mtu3_log, ptr @event_mtu3_prepare_gpd, ptr @event_mtu3_qmu_isr, ptr @event_mtu3_req_complete, ptr @event_mtu3_u2_common_isr, ptr @event_mtu3_u3_ltssm_isr, ptr @event_mtu3_zlp_exp_gpd, ptr @str__mtu3__trace_system_name, ptr @trace_event_fields_mtu3_log, ptr @trace_event_type_funcs_mtu3_log, ptr @print_fmt_mtu3_log, ptr @trace_event_fields_mtu3_u3_ltssm_isr, ptr @trace_event_type_funcs_mtu3_u3_ltssm_isr, ptr @print_fmt_mtu3_u3_ltssm_isr, ptr @trace_event_fields_mtu3_u2_common_isr, ptr @trace_event_type_funcs_mtu3_u2_common_isr, ptr @print_fmt_mtu3_u2_common_isr, ptr @trace_event_fields_mtu3_qmu_isr, ptr @trace_event_type_funcs_mtu3_qmu_isr, ptr @print_fmt_mtu3_qmu_isr, ptr @trace_event_fields_mtu3_log_setup, ptr @trace_event_type_funcs_mtu3_log_setup, ptr @print_fmt_mtu3_log_setup, ptr @trace_event_fields_mtu3_log_request, ptr @trace_event_type_funcs_mtu3_log_request, ptr @print_fmt_mtu3_log_request, ptr @trace_event_fields_mtu3_log_gpd, ptr @trace_event_type_funcs_mtu3_log_gpd, ptr @print_fmt_mtu3_log_gpd, ptr @trace_event_fields_mtu3_log_ep, ptr @trace_event_type_funcs_mtu3_log_ep, ptr @print_fmt_mtu3_log_ep, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mtu3__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_log to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_log to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_log to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_log to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_u3_ltssm_isr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_u3_ltssm_isr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_u3_ltssm_isr to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_u3_ltssm_isr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_u2_common_isr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_u2_common_isr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_u2_common_isr to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_u2_common_isr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_qmu_isr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_qmu_isr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_qmu_isr to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_qmu_isr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_log_setup to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_log_setup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_log_setup to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_handle_setup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_log_request to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_log_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_log_request to i32), i32 173, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_alloc_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_free_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_gadget_queue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_gadget_dequeue to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_req_complete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_log_gpd to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_log_gpd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_log_gpd to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_prepare_gpd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_complete_gpd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_zlp_exp_gpd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mtu3_log_ep to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mtu3_log_ep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mtu3_log_ep to i32), i32 399, i32 512, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_gadget_ep_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_gadget_ep_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mtu3_gadget_ep_set_halt to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_log(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_log, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %vaf) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_u3_ltssm_isr(ptr nocapture readnone %__data, i32 noundef %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_u3_ltssm_isr, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, i32 noundef %intr) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_u2_common_isr(ptr nocapture readnone %__data, i32 noundef %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_u2_common_isr, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, i32 noundef %intr) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_qmu_isr(ptr nocapture readnone %__data, i32 noundef %done_intr, i32 noundef %exp_intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_qmu_isr, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, i32 noundef %done_intr, i32 noundef %exp_intr) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_handle_setup(ptr nocapture readnone %__data, ptr noundef %setup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_handle_setup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %setup) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_alloc_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_alloc_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_free_request(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_free_request, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_gadget_queue(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_gadget_queue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_gadget_dequeue(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_gadget_dequeue, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_req_complete(ptr nocapture readnone %__data, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_req_complete, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %req) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_prepare_gpd(ptr nocapture readnone %__data, ptr noundef %mep, ptr noundef %gpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_prepare_gpd, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %mep, ptr noundef %gpd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_complete_gpd(ptr nocapture readnone %__data, ptr noundef %mep, ptr noundef %gpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_complete_gpd, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %mep, ptr noundef %gpd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_zlp_exp_gpd(ptr nocapture readnone %__data, ptr noundef %mep, ptr noundef %gpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_zlp_exp_gpd, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %mep, ptr noundef %gpd) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_gadget_ep_enable(ptr nocapture readnone %__data, ptr noundef %mep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_gadget_ep_enable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %mep) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_gadget_ep_disable(ptr nocapture readnone %__data, ptr noundef %mep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_gadget_ep_disable, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %mep) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mtu3_gadget_ep_set_halt(ptr nocapture readnone %__data, ptr noundef %mep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_gadget_ep_set_halt, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void %2(ptr noundef %4, ptr noundef %mep) #11
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_log(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mtu3_log.exit_crit_edge

if.end.trace_event_get_offsets_mtu3_log.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_mtu3_log.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %tobool.not.i30 = icmp eq ptr %6, null
  %spec.select = select i1 %tobool.not.i30, ptr @.str, ptr %6
  br label %trace_event_get_offsets_mtu3_log.exit

trace_event_get_offsets_mtu3_log.exit:            ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mtu3_log.exit_crit_edge
  %cond.i = phi ptr [ %4, %if.end.trace_event_get_offsets_mtu3_log.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add = add i32 %call3.i, 273
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mtu3_log.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mtu3_log.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mtu3_log.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mtu3_log.exit
  %add7.i = add i32 %call3.i, 17
  %or10.i = or i32 %add7.i, 16777216
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_mtu3_log, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or10.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i31 = icmp eq ptr %10, null
  br i1 %tobool.not.i31, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i36

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i36:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i36, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %14, %if.end.i36 ], [ %10, %if.end5.cond.end_crit_edge ]
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %15 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %__data_loc_msg, align 4
  %and12 = and i32 %16, 65535
  %add.ptr13 = getelementptr i8, ptr %call3, i32 %and12
  %17 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %19 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %va, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %20, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call14 = call i32 @vsnprintf(ptr noundef %add.ptr13, i32 noundef 256, ptr noundef %18, [1 x i32] %22)
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mtu3_log.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_log(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %vaf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mtu3_log.exit_crit_edge

entry.trace_event_get_offsets_mtu3_log.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %trace_event_get_offsets_mtu3_log.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %5
  br label %trace_event_get_offsets_mtu3_log.exit

trace_event_get_offsets_mtu3_log.exit:            ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mtu3_log.exit_crit_edge
  %cond.i = phi ptr [ %3, %entry.trace_event_get_offsets_mtu3_log.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #14
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65552
  %add7.i = add i32 %call3.i, 17
  %or10.i = or i32 %add7.i, 16777216
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %6 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %perf_events, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !234) #11
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
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
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mtu3_log.exit.if.end_crit_edge

trace_event_get_offsets_mtu3_log.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mtu3_log.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mtu3_log.exit
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %15, align 4
  %tobool.not.i54.not = icmp eq ptr %19, null
  br i1 %tobool.not.i54.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mtu3_log.exit.if.end_crit_edge
  %add12 = add i32 %call3.i, 284
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %20 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__regs, align 4
  %22 = call ptr @llvm.returnaddress(i32 0) #11
  %23 = ptrtoint ptr %22 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %21, i32 0, i32 15
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %26 = ptrtoint ptr %25 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %21, i32 0, i32 11
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx2.i, align 4
  %28 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %21, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %21, i32 0, i32 16
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_mtu3_log, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or10.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i55 = icmp eq ptr %34, null
  br i1 %tobool.not.i55, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %tobool20.not = icmp eq ptr %36, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i58

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i58:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i58, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %38, %if.end.i58 ], [ %34, %if.end16.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #15
  %39 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %__data_loc_msg, align 4
  %and24 = and i32 %40, 65535
  %add.ptr25 = getelementptr i8, ptr %call13, i32 %and24
  %41 = ptrtoint ptr %vaf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vaf, align 4
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %43 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %va, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack = load i32, ptr %44, align 4
  %46 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call26 = call i32 @vsnprintf(ptr noundef %add.ptr25, i32 noundef 256, ptr noundef %42, [1 x i32] %46)
  %47 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rctx, align 4
  %49 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %48, ptr noundef %__data, i64 noundef 1, ptr noundef %50, ptr noundef %15, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_u3_ltssm_isr(ptr noundef %__data, i32 noundef %intr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %intr6 = getelementptr inbounds %struct.trace_event_raw_mtu3_u3_ltssm_isr, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %intr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %intr, ptr %intr6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_u3_ltssm_isr(ptr noundef %__data, i32 noundef %intr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %intr17 = getelementptr inbounds %struct.trace_event_raw_mtu3_u3_ltssm_isr, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %intr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %intr, ptr %intr17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_u2_common_isr(ptr noundef %__data, i32 noundef %intr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %intr6 = getelementptr inbounds %struct.trace_event_raw_mtu3_u2_common_isr, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %intr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %intr, ptr %intr6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_u2_common_isr(ptr noundef %__data, i32 noundef %intr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %intr17 = getelementptr inbounds %struct.trace_event_raw_mtu3_u2_common_isr, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %intr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %intr, ptr %intr17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_qmu_isr(ptr noundef %__data, i32 noundef %done_intr, i32 noundef %exp_intr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %done_intr6 = getelementptr inbounds %struct.trace_event_raw_mtu3_qmu_isr, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %done_intr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %done_intr, ptr %done_intr6, align 4
  %exp_intr7 = getelementptr inbounds %struct.trace_event_raw_mtu3_qmu_isr, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %exp_intr7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %exp_intr, ptr %exp_intr7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_qmu_isr(ptr noundef %__data, i32 noundef %done_intr, i32 noundef %exp_intr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %done_intr17 = getelementptr inbounds %struct.trace_event_raw_mtu3_qmu_isr, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %done_intr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %done_intr, ptr %done_intr17, align 4
  %exp_intr18 = getelementptr inbounds %struct.trace_event_raw_mtu3_qmu_isr, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %exp_intr18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %exp_intr, ptr %exp_intr18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_log_setup(ptr noundef %__data, ptr nocapture noundef readonly %setup) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %setup, align 1
  %bRequestType6 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %bRequestType6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %bRequestType6, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %6 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bRequest, align 1
  %bRequest7 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %bRequest7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %bRequest7, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %9 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wValue, align 1
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %wValue8 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %wValue8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %wValue8, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %13 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wIndex, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %wIndex9 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %wIndex9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %wIndex9, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %17 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wLength, align 1
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %wLength10 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call3, i32 0, i32 5
  %20 = ptrtoint ptr %wLength10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %wLength10, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_log_setup(ptr noundef %__data, ptr nocapture noundef readonly %setup) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %setup, align 1
  %bRequestType17 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %bRequestType17 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %bRequestType17, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 1
  %30 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bRequest, align 1
  %bRequest18 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %bRequest18 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %bRequest18, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 2
  %33 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wValue, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %wValue19 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call13, i32 0, i32 3
  %36 = ptrtoint ptr %wValue19 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %wValue19, align 2
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 3
  %37 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %wIndex, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %wIndex20 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %wIndex20 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %wIndex20, align 4
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %setup, i32 0, i32 4
  %41 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %wLength, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %wLength21 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %call13, i32 0, i32 5
  %44 = ptrtoint ptr %wLength21 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %wLength21, align 2
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_log_request(ptr noundef %__data, ptr noundef %mreq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mep.i = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 2
  %3 = ptrtoint ptr %mep.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mep.i, align 4
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %4, i32 0, i32 1
  %call.i51 = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add = add i32 %call.i51, 41
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = shl i32 %call.i51, 16
  %or.i = add i32 %add.i, 65576
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 40
  %6 = ptrtoint ptr %mep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mep.i, align 4
  %name7 = getelementptr inbounds %struct.mtu3_ep, ptr %7, i32 0, i32 1
  %tobool8.not = icmp eq ptr %name7, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name7
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %mreq13 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %mreq13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mreq, ptr %mreq13, align 4
  %gpd = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 4
  %9 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpd, align 4
  %gpd14 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %gpd14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %gpd14, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  %actual15 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %actual15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %actual15, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %length17 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %length17, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 11
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %status19 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %status19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %status19, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 6
  %21 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero21 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 7
  %22 = ptrtoint ptr %zero21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.clear, ptr %zero21, align 4
  %bf.load23 = load i32, ptr %zero, align 4
  %bf.lshr24 = lshr i32 %bf.load23, 14
  %bf.clear25 = and i32 %bf.lshr24, 1
  %no_interrupt26 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call3, i32 0, i32 8
  %23 = ptrtoint ptr %no_interrupt26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bf.clear25, ptr %no_interrupt26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_log_request(ptr noundef %__data, ptr noundef %mreq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %mep.i = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 2
  %2 = ptrtoint ptr %mep.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mep.i, align 4
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65576
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 52
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #11
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 40
  %30 = ptrtoint ptr %mep.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mep.i, align 4
  %name19 = getelementptr inbounds %struct.mtu3_ep, ptr %31, i32 0, i32 1
  %tobool20.not = icmp eq ptr %name19, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name19
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %mreq25 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %mreq25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %mreq, ptr %mreq25, align 4
  %gpd = getelementptr inbounds %struct.mtu3_request, ptr %mreq, i32 0, i32 4
  %33 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gpd, align 4
  %gpd26 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %gpd26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %gpd26, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 12
  %36 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual, align 4
  %actual27 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %actual27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %actual27, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  %length29 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %length29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %length29, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 11
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status, align 4
  %status31 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %status31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %status31, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %mreq, i32 0, i32 6
  %45 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load = load i32, ptr %zero, align 4
  %bf.lshr = lshr i32 %bf.load, 13
  %bf.clear = and i32 %bf.lshr, 1
  %zero33 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 7
  %46 = ptrtoint ptr %zero33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.clear, ptr %zero33, align 4
  %bf.load35 = load i32, ptr %zero, align 4
  %bf.lshr36 = lshr i32 %bf.load35, 14
  %bf.clear37 = and i32 %bf.lshr36, 1
  %no_interrupt38 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %call13, i32 0, i32 8
  %47 = ptrtoint ptr %no_interrupt38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.clear37, ptr %no_interrupt38, align 4
  %48 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rctx, align 4
  %50 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %49, ptr noundef %__data, i64 noundef 1, ptr noundef %51, ptr noundef %13, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_log_gpd(ptr noundef %__data, ptr noundef readonly %mep, ptr noundef %gpd) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %call.i33 = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add = add i32 %call.i33, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = shl i32 %call.i33, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %gpd12 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %gpd12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gpd, ptr %gpd12, align 4
  %5 = ptrtoint ptr %gpd to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %gpd, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %dw0 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %dw0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dw0, align 4
  %next_gpd = getelementptr inbounds %struct.qmu_gpd, ptr %gpd, i32 0, i32 1
  %9 = ptrtoint ptr %next_gpd to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %next_gpd, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %dw1 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dw1, align 4
  %buffer = getelementptr inbounds %struct.qmu_gpd, ptr %gpd, i32 0, i32 2
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %buffer, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %dw2 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call3, i32 0, i32 5
  %16 = ptrtoint ptr %dw2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dw2, align 4
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %gpd, i32 0, i32 3
  %17 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %dw3_info, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %dw3 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %dw3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dw3, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_log_gpd(ptr noundef %__data, ptr noundef readonly %mep, ptr noundef %gpd) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %gpd24 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %gpd24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %gpd, ptr %gpd24, align 4
  %29 = ptrtoint ptr %gpd to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %gpd, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %dw0 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %dw0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dw0, align 4
  %next_gpd = getelementptr inbounds %struct.qmu_gpd, ptr %gpd, i32 0, i32 1
  %33 = ptrtoint ptr %next_gpd to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %next_gpd, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %dw1 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %dw1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dw1, align 4
  %buffer = getelementptr inbounds %struct.qmu_gpd, ptr %gpd, i32 0, i32 2
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %buffer, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %dw2 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call13, i32 0, i32 5
  %40 = ptrtoint ptr %dw2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dw2, align 4
  %dw3_info = getelementptr inbounds %struct.qmu_gpd, ptr %gpd, i32 0, i32 3
  %41 = ptrtoint ptr %dw3_info to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dw3_info, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42)
  %dw3 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %dw3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dw3, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mtu3_log_ep(ptr noundef %__data, ptr noundef %mep) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #11
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !245

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #11
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %call.i54 = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add = add i32 %call.i54, 45
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = shl i32 %call.i54, 16
  %or.i = add i32 %add.i, 65580
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 44
  %tobool8.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool8.not, ptr @.str, ptr %name.i
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %type = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %conv = zext i8 %5 to i32
  %type12 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %type12, align 4
  %slot = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 7
  %7 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot, align 4
  %slot13 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %slot13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %slot13, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 7
  %10 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxp = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %maxp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %bf.cast, ptr %maxp, align 4
  %bf.load15 = load i56, ptr %maxpacket, align 2
  %12 = trunc i56 %bf.load15 to i32
  %13 = lshr i32 %12, 6
  %bf.cast17 = and i32 %13, 3
  %mult18 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %mult18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.cast17, ptr %mult18, align 4
  %bf.load20 = load i56, ptr %maxpacket, align 2
  %15 = trunc i56 %bf.load20 to i32
  %16 = lshr i32 %15, 1
  %bf.cast23 = and i32 %16, 31
  %maxburst24 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 6
  %17 = ptrtoint ptr %maxburst24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.cast23, ptr %maxburst24, align 4
  %flags = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 16
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %flags25 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags25, align 4
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %21 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_in, align 2
  %conv26 = zext i8 %22 to i32
  %direction = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 8
  %23 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv26, ptr %direction, align 4
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %gpd_ring27 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call3, i32 0, i32 9
  %24 = ptrtoint ptr %gpd_ring27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %gpd_ring, ptr %gpd_ring27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mtu3_log_ep(ptr noundef %__data, ptr noundef %mep) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !246
  %name.i = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef nonnull %name.i) #14
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65580
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 56
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #11
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !234) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 44
  %tobool20.not = icmp eq ptr %name.i, null
  %spec.select = select i1 %tobool20.not, ptr @.str, ptr %name.i
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select) #15
  %type = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type, align 1
  %conv = zext i8 %29 to i32
  %type24 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %type24, align 4
  %slot = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 7
  %31 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slot, align 4
  %slot25 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %slot25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %slot25, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %mep, i32 0, i32 7
  %34 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %34, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %maxp = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %maxp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.cast, ptr %maxp, align 4
  %bf.load27 = load i56, ptr %maxpacket, align 2
  %36 = trunc i56 %bf.load27 to i32
  %37 = lshr i32 %36, 6
  %bf.cast29 = and i32 %37, 3
  %mult30 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 5
  %38 = ptrtoint ptr %mult30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bf.cast29, ptr %mult30, align 4
  %bf.load32 = load i56, ptr %maxpacket, align 2
  %39 = trunc i56 %bf.load32 to i32
  %40 = lshr i32 %39, 1
  %bf.cast35 = and i32 %40, 31
  %maxburst36 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 6
  %41 = ptrtoint ptr %maxburst36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bf.cast35, ptr %maxburst36, align 4
  %flags = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 16
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %flags37 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 7
  %44 = ptrtoint ptr %flags37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags37, align 4
  %is_in = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 5
  %45 = ptrtoint ptr %is_in to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_in, align 2
  %conv38 = zext i8 %46 to i32
  %direction = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 8
  %47 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv38, ptr %direction, align 4
  %gpd_ring = getelementptr inbounds %struct.mtu3_ep, ptr %mep, i32 0, i32 13
  %gpd_ring39 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %call13, i32 0, i32 9
  %48 = ptrtoint ptr %gpd_ring39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %gpd_ring, ptr %gpd_ring39, align 4
  %49 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rctx, align 4
  %51 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %50, ptr noundef %__data, i64 noundef 1, ptr noundef %52, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_log(ptr noundef %__data, ptr noundef %dev, ptr noundef %vaf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %vaf to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_u3_ltssm_isr(ptr noundef %__data, i32 noundef %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %intr to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_u2_common_isr(ptr noundef %__data, i32 noundef %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %intr to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_qmu_isr(ptr noundef %__data, i32 noundef %done_intr, i32 noundef %exp_intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %done_intr to i64
  %conv4 = zext i32 %exp_intr to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_log_setup(ptr noundef %__data, ptr noundef %setup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %setup to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_log_request(ptr noundef %__data, ptr noundef %mreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %mreq to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_log_gpd(ptr noundef %__data, ptr noundef %mep, ptr noundef %gpd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %mep to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %gpd to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mtu3_log_ep(ptr noundef %__data, ptr noundef %mep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %mep to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtu3_dbg_trace(ptr noundef %dev, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !246
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  call fastcc void @trace_mtu3_log(ptr noundef %dev, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mtu3_log(ptr noundef %dev, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_log, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mtu3_log, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !247

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !244

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !234) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !248
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_log, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %vaf) #11
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !249
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !249
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !244

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !234) #11
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !250
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mtu3_log, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mtu3_log.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_mtu3_log.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 35, ptr noundef nonnull @.str.62) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !251
  %38 = tail call i32 @llvm.read_register.i32(metadata !234) #11
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
define internal i32 @trace_raw_output_mtu3_log(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_mtu3_log, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %__data_loc_msg, align 4
  %and1 = and i32 %5, 65535
  %add.ptr2 = getelementptr i8, ptr %1, i32 %and1
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef %add.ptr2) #11
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
define internal i32 @trace_raw_output_mtu3_u3_ltssm_isr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %intr = getelementptr inbounds %struct.trace_event_raw_mtu3_u3_ltssm_isr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.9, ptr @.str.8
  %and3 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.9, ptr @.str.10
  %and7 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.9, ptr @.str.11
  %and11 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.9, ptr @.str.12
  %and15 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.9, ptr @.str.13
  %and19 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.9, ptr @.str.14
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, ptr noundef nonnull %cond9, ptr noundef nonnull %cond13, ptr noundef nonnull %cond17, ptr noundef nonnull %cond21) #11
  %call22 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mtu3_u2_common_isr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %intr = getelementptr inbounds %struct.trace_event_raw_mtu3_u2_common_isr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.9, ptr @.str.16
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.9, ptr @.str.17
  %and7 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.9, ptr @.str.18
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, ptr noundef nonnull %cond9) #11
  %call10 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mtu3_qmu_isr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %done_intr = getelementptr inbounds %struct.trace_event_raw_mtu3_qmu_isr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %done_intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %done_intr, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %exp_intr = getelementptr inbounds %struct.trace_event_raw_mtu3_qmu_isr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %exp_intr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exp_intr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, i32 noundef %and, i32 noundef %shr, i32 noundef %5) #11
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mtu3_log_setup(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %bRequestType = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bRequestType to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bRequestType, align 4
  %conv = zext i8 %3 to i32
  %bRequest = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bRequest, align 1
  %conv1 = zext i8 %5 to i32
  %wValue = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %wValue to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wValue, align 2
  %conv2 = zext i16 %7 to i32
  %wIndex = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %wIndex to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wIndex, align 4
  %conv3 = zext i16 %9 to i32
  %wLength = getelementptr inbounds %struct.trace_event_raw_mtu3_log_setup, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %wLength to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wLength, align 2
  %conv4 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #11
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mtu3_log_request(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %mreq = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mreq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mreq, align 4
  %gpd = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpd, align 4
  %actual = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %zero = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool.not, ptr @.str.43, ptr @.str.42
  %no_interrupt = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %no_interrupt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %no_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not = icmp eq i32 %15, 0
  %cond2 = select i1 %tobool1.not, ptr @.str.45, ptr @.str.44
  %status = getelementptr inbounds %struct.trace_event_raw_mtu3_log_request, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.41, ptr noundef %add.ptr, ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, i32 noundef %17) #11
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mtu3_log_gpd(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %gpd = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpd, align 4
  %dw0 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dw0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dw0, align 4
  %dw1 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dw1, align 4
  %dw2 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dw2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dw2, align 4
  %dw3 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_gpd, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %dw3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dw3, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.50, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mtu3_log_ep(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %type = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %maxp = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %maxp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxp, align 4
  %slot = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot, align 4
  %mult = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mult, align 4
  %maxburst = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %maxburst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxburst, align 4
  %gpd_ring = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %gpd_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpd_ring, align 4
  %flags2 = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 7
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
  %direction = getelementptr inbounds %struct.trace_event_raw_mtu3_log_ep, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool16.not = icmp eq i32 %19, 0
  %cond17 = select i1 %tobool16.not, i32 62, i32 60
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.60, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef %15, ptr noundef %15, i32 noundef %cond, i32 noundef %cond7, i32 noundef %cond11, i32 noundef %cond15, i32 noundef %cond17) #11
  %call18 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
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
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

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
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
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
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !233}
!llvm.named.register.sp = !{!234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__tracepoint_mtu3_log, !1, !"__tracepoint_mtu3_log", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 23, i32 1}
!2 = !{ptr @__tracepoint_ptr_mtu3_log, !1, !"__tracepoint_ptr_mtu3_log", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mtu3_log, !1, !"__SCK__tp_func_mtu3_log", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mtu3_u3_ltssm_isr, !5, !"__tracepoint_mtu3_u3_ltssm_isr", i1 false, i1 false}
!5 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 37, i32 1}
!6 = !{ptr @__tracepoint_ptr_mtu3_u3_ltssm_isr, !5, !"__tracepoint_ptr_mtu3_u3_ltssm_isr", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mtu3_u3_ltssm_isr, !5, !"__SCK__tp_func_mtu3_u3_ltssm_isr", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mtu3_u2_common_isr, !9, !"__tracepoint_mtu3_u2_common_isr", i1 false, i1 false}
!9 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 56, i32 1}
!10 = !{ptr @__tracepoint_ptr_mtu3_u2_common_isr, !9, !"__tracepoint_ptr_mtu3_u2_common_isr", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mtu3_u2_common_isr, !9, !"__SCK__tp_func_mtu3_u2_common_isr", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mtu3_qmu_isr, !13, !"__tracepoint_mtu3_qmu_isr", i1 false, i1 false}
!13 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 72, i32 1}
!14 = !{ptr @__tracepoint_ptr_mtu3_qmu_isr, !13, !"__tracepoint_ptr_mtu3_qmu_isr", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mtu3_qmu_isr, !13, !"__SCK__tp_func_mtu3_qmu_isr", i1 false, i1 false}
!16 = !{ptr @__tracepoint_mtu3_handle_setup, !17, !"__tracepoint_mtu3_handle_setup", i1 false, i1 false}
!17 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 113, i32 1}
!18 = !{ptr @__tracepoint_ptr_mtu3_handle_setup, !17, !"__tracepoint_ptr_mtu3_handle_setup", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_mtu3_handle_setup, !17, !"__SCK__tp_func_mtu3_handle_setup", i1 false, i1 false}
!20 = !{ptr @__tracepoint_mtu3_alloc_request, !21, !"__tracepoint_mtu3_alloc_request", i1 false, i1 false}
!21 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 150, i32 1}
!22 = !{ptr @__tracepoint_ptr_mtu3_alloc_request, !21, !"__tracepoint_ptr_mtu3_alloc_request", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_mtu3_alloc_request, !21, !"__SCK__tp_func_mtu3_alloc_request", i1 false, i1 false}
!24 = !{ptr @__tracepoint_mtu3_free_request, !25, !"__tracepoint_mtu3_free_request", i1 false, i1 false}
!25 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 155, i32 1}
!26 = !{ptr @__tracepoint_ptr_mtu3_free_request, !25, !"__tracepoint_ptr_mtu3_free_request", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_mtu3_free_request, !25, !"__SCK__tp_func_mtu3_free_request", i1 false, i1 false}
!28 = !{ptr @__tracepoint_mtu3_gadget_queue, !29, !"__tracepoint_mtu3_gadget_queue", i1 false, i1 false}
!29 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 160, i32 1}
!30 = !{ptr @__tracepoint_ptr_mtu3_gadget_queue, !29, !"__tracepoint_ptr_mtu3_gadget_queue", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_mtu3_gadget_queue, !29, !"__SCK__tp_func_mtu3_gadget_queue", i1 false, i1 false}
!32 = !{ptr @__tracepoint_mtu3_gadget_dequeue, !33, !"__tracepoint_mtu3_gadget_dequeue", i1 false, i1 false}
!33 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 165, i32 1}
!34 = !{ptr @__tracepoint_ptr_mtu3_gadget_dequeue, !33, !"__tracepoint_ptr_mtu3_gadget_dequeue", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_mtu3_gadget_dequeue, !33, !"__SCK__tp_func_mtu3_gadget_dequeue", i1 false, i1 false}
!36 = !{ptr @__tracepoint_mtu3_req_complete, !37, !"__tracepoint_mtu3_req_complete", i1 false, i1 false}
!37 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 170, i32 1}
!38 = !{ptr @__tracepoint_ptr_mtu3_req_complete, !37, !"__tracepoint_ptr_mtu3_req_complete", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_mtu3_req_complete, !37, !"__SCK__tp_func_mtu3_req_complete", i1 false, i1 false}
!40 = !{ptr @__tracepoint_mtu3_prepare_gpd, !41, !"__tracepoint_mtu3_prepare_gpd", i1 false, i1 false}
!41 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 201, i32 1}
!42 = !{ptr @__tracepoint_ptr_mtu3_prepare_gpd, !41, !"__tracepoint_ptr_mtu3_prepare_gpd", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_mtu3_prepare_gpd, !41, !"__SCK__tp_func_mtu3_prepare_gpd", i1 false, i1 false}
!44 = !{ptr @__tracepoint_mtu3_complete_gpd, !45, !"__tracepoint_mtu3_complete_gpd", i1 false, i1 false}
!45 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 206, i32 1}
!46 = !{ptr @__tracepoint_ptr_mtu3_complete_gpd, !45, !"__tracepoint_ptr_mtu3_complete_gpd", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_mtu3_complete_gpd, !45, !"__SCK__tp_func_mtu3_complete_gpd", i1 false, i1 false}
!48 = !{ptr @__tracepoint_mtu3_zlp_exp_gpd, !49, !"__tracepoint_mtu3_zlp_exp_gpd", i1 false, i1 false}
!49 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 211, i32 1}
!50 = !{ptr @__tracepoint_ptr_mtu3_zlp_exp_gpd, !49, !"__tracepoint_ptr_mtu3_zlp_exp_gpd", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_mtu3_zlp_exp_gpd, !49, !"__SCK__tp_func_mtu3_zlp_exp_gpd", i1 false, i1 false}
!52 = !{ptr @__tracepoint_mtu3_gadget_ep_enable, !53, !"__tracepoint_mtu3_gadget_ep_enable", i1 false, i1 false}
!53 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 254, i32 1}
!54 = !{ptr @__tracepoint_ptr_mtu3_gadget_ep_enable, !53, !"__tracepoint_ptr_mtu3_gadget_ep_enable", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_mtu3_gadget_ep_enable, !53, !"__SCK__tp_func_mtu3_gadget_ep_enable", i1 false, i1 false}
!56 = !{ptr @__tracepoint_mtu3_gadget_ep_disable, !57, !"__tracepoint_mtu3_gadget_ep_disable", i1 false, i1 false}
!57 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 259, i32 1}
!58 = !{ptr @__tracepoint_ptr_mtu3_gadget_ep_disable, !57, !"__tracepoint_ptr_mtu3_gadget_ep_disable", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_mtu3_gadget_ep_disable, !57, !"__SCK__tp_func_mtu3_gadget_ep_disable", i1 false, i1 false}
!60 = !{ptr @__tracepoint_mtu3_gadget_ep_set_halt, !61, !"__tracepoint_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!61 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 264, i32 1}
!62 = !{ptr @__tracepoint_ptr_mtu3_gadget_ep_set_halt, !61, !"__tracepoint_ptr_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_mtu3_gadget_ep_set_halt, !61, !"__SCK__tp_func_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!64 = !{ptr @event_class_mtu3_log, !1, !"event_class_mtu3_log", i1 false, i1 false}
!65 = !{ptr @event_mtu3_log, !1, !"event_mtu3_log", i1 false, i1 false}
!66 = !{ptr @__event_mtu3_log, !1, !"__event_mtu3_log", i1 false, i1 false}
!67 = !{ptr @event_class_mtu3_u3_ltssm_isr, !5, !"event_class_mtu3_u3_ltssm_isr", i1 false, i1 false}
!68 = !{ptr @event_mtu3_u3_ltssm_isr, !5, !"event_mtu3_u3_ltssm_isr", i1 false, i1 false}
!69 = !{ptr @__event_mtu3_u3_ltssm_isr, !5, !"__event_mtu3_u3_ltssm_isr", i1 false, i1 false}
!70 = !{ptr @event_class_mtu3_u2_common_isr, !9, !"event_class_mtu3_u2_common_isr", i1 false, i1 false}
!71 = !{ptr @event_mtu3_u2_common_isr, !9, !"event_mtu3_u2_common_isr", i1 false, i1 false}
!72 = !{ptr @__event_mtu3_u2_common_isr, !9, !"__event_mtu3_u2_common_isr", i1 false, i1 false}
!73 = !{ptr @event_class_mtu3_qmu_isr, !13, !"event_class_mtu3_qmu_isr", i1 false, i1 false}
!74 = !{ptr @event_mtu3_qmu_isr, !13, !"event_mtu3_qmu_isr", i1 false, i1 false}
!75 = !{ptr @__event_mtu3_qmu_isr, !13, !"__event_mtu3_qmu_isr", i1 false, i1 false}
!76 = !{ptr @event_class_mtu3_log_setup, !77, !"event_class_mtu3_log_setup", i1 false, i1 false}
!77 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 90, i32 1}
!78 = !{ptr @event_mtu3_handle_setup, !17, !"event_mtu3_handle_setup", i1 false, i1 false}
!79 = !{ptr @__event_mtu3_handle_setup, !17, !"__event_mtu3_handle_setup", i1 false, i1 false}
!80 = !{ptr @event_class_mtu3_log_request, !81, !"event_class_mtu3_log_request", i1 false, i1 false}
!81 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 118, i32 1}
!82 = !{ptr @event_mtu3_alloc_request, !21, !"event_mtu3_alloc_request", i1 false, i1 false}
!83 = !{ptr @__event_mtu3_alloc_request, !21, !"__event_mtu3_alloc_request", i1 false, i1 false}
!84 = !{ptr @event_mtu3_free_request, !25, !"event_mtu3_free_request", i1 false, i1 false}
!85 = !{ptr @__event_mtu3_free_request, !25, !"__event_mtu3_free_request", i1 false, i1 false}
!86 = !{ptr @event_mtu3_gadget_queue, !29, !"event_mtu3_gadget_queue", i1 false, i1 false}
!87 = !{ptr @__event_mtu3_gadget_queue, !29, !"__event_mtu3_gadget_queue", i1 false, i1 false}
!88 = !{ptr @event_mtu3_gadget_dequeue, !33, !"event_mtu3_gadget_dequeue", i1 false, i1 false}
!89 = !{ptr @__event_mtu3_gadget_dequeue, !33, !"__event_mtu3_gadget_dequeue", i1 false, i1 false}
!90 = !{ptr @event_mtu3_req_complete, !37, !"event_mtu3_req_complete", i1 false, i1 false}
!91 = !{ptr @__event_mtu3_req_complete, !37, !"__event_mtu3_req_complete", i1 false, i1 false}
!92 = !{ptr @event_class_mtu3_log_gpd, !93, !"event_class_mtu3_log_gpd", i1 false, i1 false}
!93 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 175, i32 1}
!94 = !{ptr @event_mtu3_prepare_gpd, !41, !"event_mtu3_prepare_gpd", i1 false, i1 false}
!95 = !{ptr @__event_mtu3_prepare_gpd, !41, !"__event_mtu3_prepare_gpd", i1 false, i1 false}
!96 = !{ptr @event_mtu3_complete_gpd, !45, !"event_mtu3_complete_gpd", i1 false, i1 false}
!97 = !{ptr @__event_mtu3_complete_gpd, !45, !"__event_mtu3_complete_gpd", i1 false, i1 false}
!98 = !{ptr @event_mtu3_zlp_exp_gpd, !49, !"event_mtu3_zlp_exp_gpd", i1 false, i1 false}
!99 = !{ptr @__event_mtu3_zlp_exp_gpd, !49, !"__event_mtu3_zlp_exp_gpd", i1 false, i1 false}
!100 = !{ptr @event_class_mtu3_log_ep, !101, !"event_class_mtu3_log_ep", i1 false, i1 false}
!101 = !{!"../drivers/usb/mtu3/./mtu3_trace.h", i32 216, i32 1}
!102 = !{ptr @event_mtu3_gadget_ep_enable, !53, !"event_mtu3_gadget_ep_enable", i1 false, i1 false}
!103 = !{ptr @__event_mtu3_gadget_ep_enable, !53, !"__event_mtu3_gadget_ep_enable", i1 false, i1 false}
!104 = !{ptr @event_mtu3_gadget_ep_disable, !57, !"event_mtu3_gadget_ep_disable", i1 false, i1 false}
!105 = !{ptr @__event_mtu3_gadget_ep_disable, !57, !"__event_mtu3_gadget_ep_disable", i1 false, i1 false}
!106 = !{ptr @event_mtu3_gadget_ep_set_halt, !61, !"event_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!107 = !{ptr @__event_mtu3_gadget_ep_set_halt, !61, !"__event_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!108 = !{ptr @__bpf_trace_tp_map_mtu3_log, !1, !"__bpf_trace_tp_map_mtu3_log", i1 false, i1 false}
!109 = !{ptr @__bpf_trace_tp_map_mtu3_u3_ltssm_isr, !5, !"__bpf_trace_tp_map_mtu3_u3_ltssm_isr", i1 false, i1 false}
!110 = !{ptr @__bpf_trace_tp_map_mtu3_u2_common_isr, !9, !"__bpf_trace_tp_map_mtu3_u2_common_isr", i1 false, i1 false}
!111 = !{ptr @__bpf_trace_tp_map_mtu3_qmu_isr, !13, !"__bpf_trace_tp_map_mtu3_qmu_isr", i1 false, i1 false}
!112 = !{ptr @__bpf_trace_tp_map_mtu3_handle_setup, !17, !"__bpf_trace_tp_map_mtu3_handle_setup", i1 false, i1 false}
!113 = !{ptr @__bpf_trace_tp_map_mtu3_alloc_request, !21, !"__bpf_trace_tp_map_mtu3_alloc_request", i1 false, i1 false}
!114 = !{ptr @__bpf_trace_tp_map_mtu3_free_request, !25, !"__bpf_trace_tp_map_mtu3_free_request", i1 false, i1 false}
!115 = !{ptr @__bpf_trace_tp_map_mtu3_gadget_queue, !29, !"__bpf_trace_tp_map_mtu3_gadget_queue", i1 false, i1 false}
!116 = !{ptr @__bpf_trace_tp_map_mtu3_gadget_dequeue, !33, !"__bpf_trace_tp_map_mtu3_gadget_dequeue", i1 false, i1 false}
!117 = !{ptr @__bpf_trace_tp_map_mtu3_req_complete, !37, !"__bpf_trace_tp_map_mtu3_req_complete", i1 false, i1 false}
!118 = !{ptr @__bpf_trace_tp_map_mtu3_prepare_gpd, !41, !"__bpf_trace_tp_map_mtu3_prepare_gpd", i1 false, i1 false}
!119 = !{ptr @__bpf_trace_tp_map_mtu3_complete_gpd, !45, !"__bpf_trace_tp_map_mtu3_complete_gpd", i1 false, i1 false}
!120 = !{ptr @__bpf_trace_tp_map_mtu3_zlp_exp_gpd, !49, !"__bpf_trace_tp_map_mtu3_zlp_exp_gpd", i1 false, i1 false}
!121 = !{ptr @__bpf_trace_tp_map_mtu3_gadget_ep_enable, !53, !"__bpf_trace_tp_map_mtu3_gadget_ep_enable", i1 false, i1 false}
!122 = !{ptr @__bpf_trace_tp_map_mtu3_gadget_ep_disable, !57, !"__bpf_trace_tp_map_mtu3_gadget_ep_disable", i1 false, i1 false}
!123 = !{ptr @__bpf_trace_tp_map_mtu3_gadget_ep_set_halt, !61, !"__bpf_trace_tp_map_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!124 = !{ptr @__tpstrtab_mtu3_log, !1, !"__tpstrtab_mtu3_log", i1 false, i1 false}
!125 = !{ptr @__tpstrtab_mtu3_u3_ltssm_isr, !5, !"__tpstrtab_mtu3_u3_ltssm_isr", i1 false, i1 false}
!126 = !{ptr @__tpstrtab_mtu3_u2_common_isr, !9, !"__tpstrtab_mtu3_u2_common_isr", i1 false, i1 false}
!127 = !{ptr @__tpstrtab_mtu3_qmu_isr, !13, !"__tpstrtab_mtu3_qmu_isr", i1 false, i1 false}
!128 = !{ptr @__tpstrtab_mtu3_handle_setup, !17, !"__tpstrtab_mtu3_handle_setup", i1 false, i1 false}
!129 = !{ptr @__tpstrtab_mtu3_alloc_request, !21, !"__tpstrtab_mtu3_alloc_request", i1 false, i1 false}
!130 = !{ptr @__tpstrtab_mtu3_free_request, !25, !"__tpstrtab_mtu3_free_request", i1 false, i1 false}
!131 = !{ptr @__tpstrtab_mtu3_gadget_queue, !29, !"__tpstrtab_mtu3_gadget_queue", i1 false, i1 false}
!132 = !{ptr @__tpstrtab_mtu3_gadget_dequeue, !33, !"__tpstrtab_mtu3_gadget_dequeue", i1 false, i1 false}
!133 = !{ptr @__tpstrtab_mtu3_req_complete, !37, !"__tpstrtab_mtu3_req_complete", i1 false, i1 false}
!134 = !{ptr @__tpstrtab_mtu3_prepare_gpd, !41, !"__tpstrtab_mtu3_prepare_gpd", i1 false, i1 false}
!135 = !{ptr @__tpstrtab_mtu3_complete_gpd, !45, !"__tpstrtab_mtu3_complete_gpd", i1 false, i1 false}
!136 = !{ptr @__tpstrtab_mtu3_zlp_exp_gpd, !49, !"__tpstrtab_mtu3_zlp_exp_gpd", i1 false, i1 false}
!137 = !{ptr @__tpstrtab_mtu3_gadget_ep_enable, !53, !"__tpstrtab_mtu3_gadget_ep_enable", i1 false, i1 false}
!138 = !{ptr @__tpstrtab_mtu3_gadget_ep_disable, !57, !"__tpstrtab_mtu3_gadget_ep_disable", i1 false, i1 false}
!139 = !{ptr @__tpstrtab_mtu3_gadget_ep_set_halt, !61, !"__tpstrtab_mtu3_gadget_ep_set_halt", i1 false, i1 false}
!140 = !{ptr @str__mtu3__trace_system_name, !141, !"str__mtu3__trace_system_name", i1 false, i1 false}
!141 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!142 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @trace_event_fields_mtu3_log, !1, !"trace_event_fields_mtu3_log", i1 false, i1 false}
!147 = !{ptr @trace_event_type_funcs_mtu3_log, !1, !"trace_event_type_funcs_mtu3_log", i1 false, i1 false}
!148 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @print_fmt_mtu3_log, !1, !"print_fmt_mtu3_log", i1 false, i1 false}
!150 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @trace_event_fields_mtu3_u3_ltssm_isr, !5, !"trace_event_fields_mtu3_u3_ltssm_isr", i1 false, i1 false}
!153 = !{ptr @trace_event_type_funcs_mtu3_u3_ltssm_isr, !5, !"trace_event_type_funcs_mtu3_u3_ltssm_isr", i1 false, i1 false}
!154 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @print_fmt_mtu3_u3_ltssm_isr, !5, !"print_fmt_mtu3_u3_ltssm_isr", i1 false, i1 false}
!163 = !{ptr @trace_event_fields_mtu3_u2_common_isr, !9, !"trace_event_fields_mtu3_u2_common_isr", i1 false, i1 false}
!164 = !{ptr @trace_event_type_funcs_mtu3_u2_common_isr, !9, !"trace_event_type_funcs_mtu3_u2_common_isr", i1 false, i1 false}
!165 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.16, !9, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @print_fmt_mtu3_u2_common_isr, !9, !"print_fmt_mtu3_u2_common_isr", i1 false, i1 false}
!170 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @trace_event_fields_mtu3_qmu_isr, !13, !"trace_event_fields_mtu3_qmu_isr", i1 false, i1 false}
!173 = !{ptr @trace_event_type_funcs_mtu3_qmu_isr, !13, !"trace_event_type_funcs_mtu3_qmu_isr", i1 false, i1 false}
!174 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @print_fmt_mtu3_qmu_isr, !13, !"print_fmt_mtu3_qmu_isr", i1 false, i1 false}
!176 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @trace_event_fields_mtu3_log_setup, !77, !"trace_event_fields_mtu3_log_setup", i1 false, i1 false}
!184 = !{ptr @trace_event_type_funcs_mtu3_log_setup, !77, !"trace_event_type_funcs_mtu3_log_setup", i1 false, i1 false}
!185 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @print_fmt_mtu3_log_setup, !77, !"print_fmt_mtu3_log_setup", i1 false, i1 false}
!187 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @trace_event_fields_mtu3_log_request, !81, !"trace_event_fields_mtu3_log_request", i1 false, i1 false}
!199 = !{ptr @trace_event_type_funcs_mtu3_log_request, !81, !"trace_event_type_funcs_mtu3_log_request", i1 false, i1 false}
!200 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @print_fmt_mtu3_log_request, !81, !"print_fmt_mtu3_log_request", i1 false, i1 false}
!206 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @trace_event_fields_mtu3_log_gpd, !93, !"trace_event_fields_mtu3_log_gpd", i1 false, i1 false}
!211 = !{ptr @trace_event_type_funcs_mtu3_log_gpd, !93, !"trace_event_type_funcs_mtu3_log_gpd", i1 false, i1 false}
!212 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @print_fmt_mtu3_log_gpd, !93, !"print_fmt_mtu3_log_gpd", i1 false, i1 false}
!214 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @trace_event_fields_mtu3_log_ep, !101, !"trace_event_fields_mtu3_log_ep", i1 false, i1 false}
!224 = !{ptr @trace_event_type_funcs_mtu3_log_ep, !101, !"trace_event_type_funcs_mtu3_log_ep", i1 false, i1 false}
!225 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @print_fmt_mtu3_log_ep, !101, !"print_fmt_mtu3_log_ep", i1 false, i1 false}
!227 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!228 = !{ptr @.str.61, !1, !"<string literal>", i1 false, i1 false}
!229 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!230 = !{ptr @.str.62, !1, !"<string literal>", i1 false, i1 false}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!233 = !{ptr @.str.63, !232, !"<string literal>", i1 false, i1 false}
!234 = !{!"sp"}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{!"branch_weights", i32 2000, i32 1}
!245 = !{!"branch_weights", i32 1, i32 2000}
!246 = !{!"auto-init"}
!247 = !{i64 2148488161, i64 2148488166, i64 2148488179, i64 2148488223, i64 2148488257, i64 2148488278}
!248 = !{i64 2155414662}
!249 = !{i64 2155414857}
!250 = !{i64 2149484568}
!251 = !{i64 2149485604}
