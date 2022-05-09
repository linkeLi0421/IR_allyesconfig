; ModuleID = '/llk/IR_all_yes/drivers/greybus/core.c_pt.bc'
source_filename = "../drivers/greybus/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+greybus_disabled\22, \22a\22\09"
module asm "\09.weak\09__crc_greybus_disabled\09\09\09\09"
module asm "\09.long\09__crc_greybus_disabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_greybus_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22greybus_disabled\22\09\09\09\09\09"
module asm "__kstrtabns_greybus_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+greybus_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_greybus_register_driver\09\09\09\09"
module asm "\09.long\09__crc_greybus_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_greybus_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22greybus_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_greybus_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+greybus_deregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_greybus_deregister_driver\09\09\09\09"
module asm "\09.long\09__crc_greybus_deregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_greybus_deregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22greybus_deregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_greybus_deregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.trace_event_raw_gb_message = type { %struct.trace_entry, i16, i16, i8, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_event_raw_gb_operation = type { %struct.trace_entry, i16, i16, i8, i32, i32, i32, i32, [0 x i8] }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.trace_event_raw_gb_connection = type { %struct.trace_entry, i32, i8, i32, i32, i32, [0 x i8] }
%struct.gb_host_device = type { %struct.device, i32, ptr, %struct.list_head, %struct.list_head, %struct.ida, i32, i32, ptr, [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.trace_event_raw_gb_bundle = type { %struct.trace_entry, i8, i8, i8, i32, [0 x i8] }
%struct.gb_module = type { %struct.device, ptr, %struct.list_head, i8, i32, i8, [0 x ptr] }
%struct.trace_event_raw_gb_interface = type { %struct.trace_entry, i8, i8, i8, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_gb_module = type { %struct.trace_entry, i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_gb_host_device = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.gb_control = type { %struct.device, ptr, ptr, i8, i8, i8, i8, ptr, ptr }
%struct.gb_svc = type { %struct.device, ptr, ptr, i32, %struct.ida, ptr, i16, i8, i8, i8, ptr, i32, ptr, ptr }
%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_gb_message_send = internal constant [16 x i8] c"gb_message_send\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_message_send = dso_local global %struct.static_call_key { ptr @__traceiter_gb_message_send }, align 4
@__tracepoint_gb_message_send = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_message_send, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_message_send, ptr null, ptr @__traceiter_gb_message_send, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_message_send = internal constant ptr @__tracepoint_gb_message_send, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_message_recv_request = internal constant [24 x i8] c"gb_message_recv_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_message_recv_request = dso_local global %struct.static_call_key { ptr @__traceiter_gb_message_recv_request }, align 4
@__tracepoint_gb_message_recv_request = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_message_recv_request, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_message_recv_request, ptr null, ptr @__traceiter_gb_message_recv_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_message_recv_request = internal constant ptr @__tracepoint_gb_message_recv_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_message_recv_response = internal constant [25 x i8] c"gb_message_recv_response\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_message_recv_response = dso_local global %struct.static_call_key { ptr @__traceiter_gb_message_recv_response }, align 4
@__tracepoint_gb_message_recv_response = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_message_recv_response, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_message_recv_response, ptr null, ptr @__traceiter_gb_message_recv_response, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_message_recv_response = internal constant ptr @__tracepoint_gb_message_recv_response, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_message_cancel_outgoing = internal constant [27 x i8] c"gb_message_cancel_outgoing\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_message_cancel_outgoing = dso_local global %struct.static_call_key { ptr @__traceiter_gb_message_cancel_outgoing }, align 4
@__tracepoint_gb_message_cancel_outgoing = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_message_cancel_outgoing, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_message_cancel_outgoing, ptr null, ptr @__traceiter_gb_message_cancel_outgoing, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_message_cancel_outgoing = internal constant ptr @__tracepoint_gb_message_cancel_outgoing, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_message_cancel_incoming = internal constant [27 x i8] c"gb_message_cancel_incoming\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_message_cancel_incoming = dso_local global %struct.static_call_key { ptr @__traceiter_gb_message_cancel_incoming }, align 4
@__tracepoint_gb_message_cancel_incoming = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_message_cancel_incoming, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_message_cancel_incoming, ptr null, ptr @__traceiter_gb_message_cancel_incoming, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_message_cancel_incoming = internal constant ptr @__tracepoint_gb_message_cancel_incoming, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_message_submit = internal constant [18 x i8] c"gb_message_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_message_submit = dso_local global %struct.static_call_key { ptr @__traceiter_gb_message_submit }, align 4
@__tracepoint_gb_message_submit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_message_submit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_message_submit, ptr null, ptr @__traceiter_gb_message_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_message_submit = internal constant ptr @__tracepoint_gb_message_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_operation_create = internal constant [20 x i8] c"gb_operation_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_operation_create = dso_local global %struct.static_call_key { ptr @__traceiter_gb_operation_create }, align 4
@__tracepoint_gb_operation_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_operation_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_operation_create, ptr null, ptr @__traceiter_gb_operation_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_operation_create = internal constant ptr @__tracepoint_gb_operation_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_operation_create_core = internal constant [25 x i8] c"gb_operation_create_core\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_operation_create_core = dso_local global %struct.static_call_key { ptr @__traceiter_gb_operation_create_core }, align 4
@__tracepoint_gb_operation_create_core = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_operation_create_core, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_operation_create_core, ptr null, ptr @__traceiter_gb_operation_create_core, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_operation_create_core = internal constant ptr @__tracepoint_gb_operation_create_core, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_operation_create_incoming = internal constant [29 x i8] c"gb_operation_create_incoming\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_operation_create_incoming = dso_local global %struct.static_call_key { ptr @__traceiter_gb_operation_create_incoming }, align 4
@__tracepoint_gb_operation_create_incoming = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_operation_create_incoming, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_operation_create_incoming, ptr null, ptr @__traceiter_gb_operation_create_incoming, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_operation_create_incoming = internal constant ptr @__tracepoint_gb_operation_create_incoming, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_operation_destroy = internal constant [21 x i8] c"gb_operation_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_operation_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_gb_operation_destroy }, align 4
@__tracepoint_gb_operation_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_operation_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_operation_destroy, ptr null, ptr @__traceiter_gb_operation_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_operation_destroy = internal constant ptr @__tracepoint_gb_operation_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_operation_get_active = internal constant [24 x i8] c"gb_operation_get_active\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_operation_get_active = dso_local global %struct.static_call_key { ptr @__traceiter_gb_operation_get_active }, align 4
@__tracepoint_gb_operation_get_active = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_operation_get_active, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_operation_get_active, ptr null, ptr @__traceiter_gb_operation_get_active, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_operation_get_active = internal constant ptr @__tracepoint_gb_operation_get_active, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_operation_put_active = internal constant [24 x i8] c"gb_operation_put_active\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_operation_put_active = dso_local global %struct.static_call_key { ptr @__traceiter_gb_operation_put_active }, align 4
@__tracepoint_gb_operation_put_active = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_operation_put_active, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_operation_put_active, ptr null, ptr @__traceiter_gb_operation_put_active, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_operation_put_active = internal constant ptr @__tracepoint_gb_operation_put_active, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_connection_create = internal constant [21 x i8] c"gb_connection_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_connection_create = dso_local global %struct.static_call_key { ptr @__traceiter_gb_connection_create }, align 4
@__tracepoint_gb_connection_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_connection_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_connection_create, ptr null, ptr @__traceiter_gb_connection_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_connection_create = internal constant ptr @__tracepoint_gb_connection_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_connection_release = internal constant [22 x i8] c"gb_connection_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_connection_release = dso_local global %struct.static_call_key { ptr @__traceiter_gb_connection_release }, align 4
@__tracepoint_gb_connection_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_connection_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_connection_release, ptr null, ptr @__traceiter_gb_connection_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_connection_release = internal constant ptr @__tracepoint_gb_connection_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_connection_get = internal constant [18 x i8] c"gb_connection_get\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_connection_get = dso_local global %struct.static_call_key { ptr @__traceiter_gb_connection_get }, align 4
@__tracepoint_gb_connection_get = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_connection_get, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_connection_get, ptr null, ptr @__traceiter_gb_connection_get, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_connection_get = internal constant ptr @__tracepoint_gb_connection_get, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_connection_put = internal constant [18 x i8] c"gb_connection_put\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_connection_put = dso_local global %struct.static_call_key { ptr @__traceiter_gb_connection_put }, align 4
@__tracepoint_gb_connection_put = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_connection_put, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_connection_put, ptr null, ptr @__traceiter_gb_connection_put, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_connection_put = internal constant ptr @__tracepoint_gb_connection_put, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_connection_enable = internal constant [21 x i8] c"gb_connection_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_connection_enable = dso_local global %struct.static_call_key { ptr @__traceiter_gb_connection_enable }, align 4
@__tracepoint_gb_connection_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_connection_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_connection_enable, ptr null, ptr @__traceiter_gb_connection_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_connection_enable = internal constant ptr @__tracepoint_gb_connection_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_connection_disable = internal constant [22 x i8] c"gb_connection_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_connection_disable = dso_local global %struct.static_call_key { ptr @__traceiter_gb_connection_disable }, align 4
@__tracepoint_gb_connection_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_connection_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_connection_disable, ptr null, ptr @__traceiter_gb_connection_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_connection_disable = internal constant ptr @__tracepoint_gb_connection_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_bundle_create = internal constant [17 x i8] c"gb_bundle_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_bundle_create = dso_local global %struct.static_call_key { ptr @__traceiter_gb_bundle_create }, align 4
@__tracepoint_gb_bundle_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_bundle_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_bundle_create, ptr null, ptr @__traceiter_gb_bundle_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_bundle_create = internal constant ptr @__tracepoint_gb_bundle_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_bundle_release = internal constant [18 x i8] c"gb_bundle_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_bundle_release = dso_local global %struct.static_call_key { ptr @__traceiter_gb_bundle_release }, align 4
@__tracepoint_gb_bundle_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_bundle_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_bundle_release, ptr null, ptr @__traceiter_gb_bundle_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_bundle_release = internal constant ptr @__tracepoint_gb_bundle_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_bundle_add = internal constant [14 x i8] c"gb_bundle_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_bundle_add = dso_local global %struct.static_call_key { ptr @__traceiter_gb_bundle_add }, align 4
@__tracepoint_gb_bundle_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_bundle_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_bundle_add, ptr null, ptr @__traceiter_gb_bundle_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_bundle_add = internal constant ptr @__tracepoint_gb_bundle_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_bundle_destroy = internal constant [18 x i8] c"gb_bundle_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_bundle_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_gb_bundle_destroy }, align 4
@__tracepoint_gb_bundle_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_bundle_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_bundle_destroy, ptr null, ptr @__traceiter_gb_bundle_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_bundle_destroy = internal constant ptr @__tracepoint_gb_bundle_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_create = internal constant [20 x i8] c"gb_interface_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_create = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_create }, align 4
@__tracepoint_gb_interface_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_create, ptr null, ptr @__traceiter_gb_interface_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_create = internal constant ptr @__tracepoint_gb_interface_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_release = internal constant [21 x i8] c"gb_interface_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_release = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_release }, align 4
@__tracepoint_gb_interface_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_release, ptr null, ptr @__traceiter_gb_interface_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_release = internal constant ptr @__tracepoint_gb_interface_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_add = internal constant [17 x i8] c"gb_interface_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_add = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_add }, align 4
@__tracepoint_gb_interface_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_add, ptr null, ptr @__traceiter_gb_interface_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_add = internal constant ptr @__tracepoint_gb_interface_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_del = internal constant [17 x i8] c"gb_interface_del\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_del = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_del }, align 4
@__tracepoint_gb_interface_del = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_del, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_del, ptr null, ptr @__traceiter_gb_interface_del, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_del = internal constant ptr @__tracepoint_gb_interface_del, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_activate = internal constant [22 x i8] c"gb_interface_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_activate = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_activate }, align 4
@__tracepoint_gb_interface_activate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_activate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_activate, ptr null, ptr @__traceiter_gb_interface_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_activate = internal constant ptr @__tracepoint_gb_interface_activate, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_deactivate = internal constant [24 x i8] c"gb_interface_deactivate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_deactivate = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_deactivate }, align 4
@__tracepoint_gb_interface_deactivate = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_deactivate, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_deactivate, ptr null, ptr @__traceiter_gb_interface_deactivate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_deactivate = internal constant ptr @__tracepoint_gb_interface_deactivate, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_enable = internal constant [20 x i8] c"gb_interface_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_enable = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_enable }, align 4
@__tracepoint_gb_interface_enable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_enable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_enable, ptr null, ptr @__traceiter_gb_interface_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_enable = internal constant ptr @__tracepoint_gb_interface_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_interface_disable = internal constant [21 x i8] c"gb_interface_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_interface_disable = dso_local global %struct.static_call_key { ptr @__traceiter_gb_interface_disable }, align 4
@__tracepoint_gb_interface_disable = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_interface_disable, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_interface_disable, ptr null, ptr @__traceiter_gb_interface_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_interface_disable = internal constant ptr @__tracepoint_gb_interface_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_module_create = internal constant [17 x i8] c"gb_module_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_module_create = dso_local global %struct.static_call_key { ptr @__traceiter_gb_module_create }, align 4
@__tracepoint_gb_module_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_module_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_module_create, ptr null, ptr @__traceiter_gb_module_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_module_create = internal constant ptr @__tracepoint_gb_module_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_module_release = internal constant [18 x i8] c"gb_module_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_module_release = dso_local global %struct.static_call_key { ptr @__traceiter_gb_module_release }, align 4
@__tracepoint_gb_module_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_module_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_module_release, ptr null, ptr @__traceiter_gb_module_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_module_release = internal constant ptr @__tracepoint_gb_module_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_module_add = internal constant [14 x i8] c"gb_module_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_module_add = dso_local global %struct.static_call_key { ptr @__traceiter_gb_module_add }, align 4
@__tracepoint_gb_module_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_module_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_module_add, ptr null, ptr @__traceiter_gb_module_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_module_add = internal constant ptr @__tracepoint_gb_module_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_module_del = internal constant [14 x i8] c"gb_module_del\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_module_del = dso_local global %struct.static_call_key { ptr @__traceiter_gb_module_del }, align 4
@__tracepoint_gb_module_del = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_module_del, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_module_del, ptr null, ptr @__traceiter_gb_module_del, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_module_del = internal constant ptr @__tracepoint_gb_module_del, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_hd_create = internal constant [13 x i8] c"gb_hd_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_hd_create = dso_local global %struct.static_call_key { ptr @__traceiter_gb_hd_create }, align 4
@__tracepoint_gb_hd_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_hd_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_hd_create, ptr null, ptr @__traceiter_gb_hd_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_hd_create = internal constant ptr @__tracepoint_gb_hd_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_hd_release = internal constant [14 x i8] c"gb_hd_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_hd_release = dso_local global %struct.static_call_key { ptr @__traceiter_gb_hd_release }, align 4
@__tracepoint_gb_hd_release = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_hd_release, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_hd_release, ptr null, ptr @__traceiter_gb_hd_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_hd_release = internal constant ptr @__tracepoint_gb_hd_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_hd_add = internal constant [10 x i8] c"gb_hd_add\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_hd_add = dso_local global %struct.static_call_key { ptr @__traceiter_gb_hd_add }, align 4
@__tracepoint_gb_hd_add = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_hd_add, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_hd_add, ptr null, ptr @__traceiter_gb_hd_add, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_hd_add = internal constant ptr @__tracepoint_gb_hd_add, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_hd_del = internal constant [10 x i8] c"gb_hd_del\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_hd_del = dso_local global %struct.static_call_key { ptr @__traceiter_gb_hd_del }, align 4
@__tracepoint_gb_hd_del = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_hd_del, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_hd_del, ptr null, ptr @__traceiter_gb_hd_del, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_hd_del = internal constant ptr @__tracepoint_gb_hd_del, section "__tracepoints_ptrs", align 4
@__tpstrtab_gb_hd_in = internal constant [9 x i8] c"gb_hd_in\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gb_hd_in = dso_local global %struct.static_call_key { ptr @__traceiter_gb_hd_in }, align 4
@__tracepoint_gb_hd_in = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_gb_hd_in, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_gb_hd_in, ptr null, ptr @__traceiter_gb_hd_in, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gb_hd_in = internal constant ptr @__tracepoint_gb_hd_in, section "__tracepoints_ptrs", align 4
@str__greybus__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greybus\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_gb_message = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.5, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_gb_message = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_message, ptr @perf_trace_gb_message, ptr @trace_event_reg, ptr @trace_event_fields_gb_message, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_message, i64 24), ptr getelementptr (i8, ptr @event_class_gb_message, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_message = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_message, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_message = internal global { [110 x i8], [50 x i8] } { [110 x i8] c"\22size=%u operation_id=0x%04x type=0x%02x result=0x%02x\22, REC->size, REC->operation_id, REC->type, REC->result\00", [50 x i8] zeroinitializer }, align 32
@event_gb_message_send = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_message, %union.anon.97 { ptr @__tracepoint_gb_message_send }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_message }, ptr @print_fmt_gb_message, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_message_send = internal global ptr @event_gb_message_send, section "_ftrace_events", align 4
@event_gb_message_recv_request = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_message, %union.anon.97 { ptr @__tracepoint_gb_message_recv_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_message }, ptr @print_fmt_gb_message, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_message_recv_request = internal global ptr @event_gb_message_recv_request, section "_ftrace_events", align 4
@event_gb_message_recv_response = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_message, %union.anon.97 { ptr @__tracepoint_gb_message_recv_response }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_message }, ptr @print_fmt_gb_message, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_message_recv_response = internal global ptr @event_gb_message_recv_response, section "_ftrace_events", align 4
@event_gb_message_cancel_outgoing = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_message, %union.anon.97 { ptr @__tracepoint_gb_message_cancel_outgoing }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_message }, ptr @print_fmt_gb_message, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_message_cancel_outgoing = internal global ptr @event_gb_message_cancel_outgoing, section "_ftrace_events", align 4
@event_gb_message_cancel_incoming = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_message, %union.anon.97 { ptr @__tracepoint_gb_message_cancel_incoming }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_message }, ptr @print_fmt_gb_message, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_message_cancel_incoming = internal global ptr @event_gb_message_cancel_incoming, section "_ftrace_events", align 4
@event_gb_message_submit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_message, %union.anon.97 { ptr @__tracepoint_gb_message_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_message }, ptr @print_fmt_gb_message, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_message_submit = internal global ptr @event_gb_message_submit, section "_ftrace_events", align 4
@trace_event_fields_gb_operation = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_gb_operation = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_operation, ptr @perf_trace_gb_operation, ptr @trace_event_reg, ptr @trace_event_fields_gb_operation, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_operation, i64 24), ptr getelementptr (i8, ptr @event_class_gb_operation, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_operation = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_operation, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_operation = internal global { [164 x i8], [60 x i8] } { [164 x i8] c"\22id=%04x type=0x%02x cport_id=%04x flags=0x%lx active=%d waiters=%d errno=%d\22, REC->id, REC->cport_id, REC->type, REC->flags, REC->active, REC->waiters, REC->errno\00", [60 x i8] zeroinitializer }, align 32
@event_gb_operation_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_operation, %union.anon.97 { ptr @__tracepoint_gb_operation_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_operation }, ptr @print_fmt_gb_operation, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_operation_create = internal global ptr @event_gb_operation_create, section "_ftrace_events", align 4
@event_gb_operation_create_core = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_operation, %union.anon.97 { ptr @__tracepoint_gb_operation_create_core }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_operation }, ptr @print_fmt_gb_operation, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_operation_create_core = internal global ptr @event_gb_operation_create_core, section "_ftrace_events", align 4
@event_gb_operation_create_incoming = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_operation, %union.anon.97 { ptr @__tracepoint_gb_operation_create_incoming }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_operation }, ptr @print_fmt_gb_operation, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_operation_create_incoming = internal global ptr @event_gb_operation_create_incoming, section "_ftrace_events", align 4
@event_gb_operation_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_operation, %union.anon.97 { ptr @__tracepoint_gb_operation_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_operation }, ptr @print_fmt_gb_operation, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_operation_destroy = internal global ptr @event_gb_operation_destroy, section "_ftrace_events", align 4
@event_gb_operation_get_active = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_operation, %union.anon.97 { ptr @__tracepoint_gb_operation_get_active }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_operation }, ptr @print_fmt_gb_operation, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_operation_get_active = internal global ptr @event_gb_operation_get_active, section "_ftrace_events", align 4
@event_gb_operation_put_active = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_operation, %union.anon.97 { ptr @__tracepoint_gb_operation_put_active }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_operation }, ptr @print_fmt_gb_operation, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_operation_put_active = internal global ptr @event_gb_operation_put_active, section "_ftrace_events", align 4
@trace_event_fields_gb_connection = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.95 { %struct.anon.96 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.95 { %struct.anon.96 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_gb_connection = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_connection, ptr @perf_trace_gb_connection, ptr @trace_event_reg, ptr @trace_event_fields_gb_connection, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_connection, i64 24), ptr getelementptr (i8, ptr @event_class_gb_connection, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_connection = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_connection, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_connection = internal global { [150 x i8], [42 x i8] } { [150 x i8] c"\22hd_bus_id=%d bundle_id=0x%02x name=\22%s\22 state=%u flags=0x%lx\22, REC->hd_bus_id, REC->bundle_id, __get_str(name), (unsigned int)REC->state, REC->flags\00", [42 x i8] zeroinitializer }, align 32
@event_gb_connection_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_connection, %union.anon.97 { ptr @__tracepoint_gb_connection_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_connection }, ptr @print_fmt_gb_connection, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_connection_create = internal global ptr @event_gb_connection_create, section "_ftrace_events", align 4
@event_gb_connection_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_connection, %union.anon.97 { ptr @__tracepoint_gb_connection_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_connection }, ptr @print_fmt_gb_connection, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_connection_release = internal global ptr @event_gb_connection_release, section "_ftrace_events", align 4
@event_gb_connection_get = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_connection, %union.anon.97 { ptr @__tracepoint_gb_connection_get }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_connection }, ptr @print_fmt_gb_connection, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_connection_get = internal global ptr @event_gb_connection_get, section "_ftrace_events", align 4
@event_gb_connection_put = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_connection, %union.anon.97 { ptr @__tracepoint_gb_connection_put }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_connection }, ptr @print_fmt_gb_connection, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_connection_put = internal global ptr @event_gb_connection_put, section "_ftrace_events", align 4
@event_gb_connection_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_connection, %union.anon.97 { ptr @__tracepoint_gb_connection_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_connection }, ptr @print_fmt_gb_connection, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_connection_enable = internal global ptr @event_gb_connection_enable, section "_ftrace_events", align 4
@event_gb_connection_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_connection, %union.anon.97 { ptr @__tracepoint_gb_connection_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_connection }, ptr @print_fmt_gb_connection, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_connection_disable = internal global ptr @event_gb_connection_disable, section "_ftrace_events", align 4
@trace_event_fields_gb_bundle = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.27, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.28, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.95 { %struct.anon.96 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_gb_bundle = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_bundle, ptr @perf_trace_gb_bundle, ptr @trace_event_reg, ptr @trace_event_fields_gb_bundle, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_bundle, i64 24), ptr getelementptr (i8, ptr @event_class_gb_bundle, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_bundle = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_bundle, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_bundle = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\22intf_id=0x%02x id=%02x class=0x%02x num_cports=%zu\22, REC->intf_id, REC->id, REC->class, REC->num_cports\00", [55 x i8] zeroinitializer }, align 32
@event_gb_bundle_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_bundle, %union.anon.97 { ptr @__tracepoint_gb_bundle_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_bundle }, ptr @print_fmt_gb_bundle, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_bundle_create = internal global ptr @event_gb_bundle_create, section "_ftrace_events", align 4
@event_gb_bundle_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_bundle, %union.anon.97 { ptr @__tracepoint_gb_bundle_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_bundle }, ptr @print_fmt_gb_bundle, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_bundle_release = internal global ptr @event_gb_bundle_release, section "_ftrace_events", align 4
@event_gb_bundle_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_bundle, %union.anon.97 { ptr @__tracepoint_gb_bundle_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_bundle }, ptr @print_fmt_gb_bundle, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_bundle_add = internal global ptr @event_gb_bundle_add, section "_ftrace_events", align 4
@event_gb_bundle_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_bundle, %union.anon.97 { ptr @__tracepoint_gb_bundle_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_bundle }, ptr @print_fmt_gb_bundle, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_bundle_destroy = internal global ptr @event_gb_bundle_destroy, section "_ftrace_events", align 4
@trace_event_fields_gb_interface = internal global { [9 x %struct.trace_event_fields], [40 x i8] } { [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.33, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.16, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_gb_interface = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_interface, ptr @perf_trace_gb_interface, ptr @trace_event_reg, ptr @trace_event_fields_gb_interface, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_interface, i64 24), ptr getelementptr (i8, ptr @event_class_gb_interface, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_interface = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_interface, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_interface = internal global { [183 x i8], [41 x i8] } { [183 x i8] c"\22intf_id=%u device_id=%u module_id=%u D=%d J=%d A=%d E=%d M=%d\22, REC->id, REC->device_id, REC->module_id, REC->disconnected, REC->ejected, REC->active, REC->enabled, REC->mode_switch\00", [41 x i8] zeroinitializer }, align 32
@event_gb_interface_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_create = internal global ptr @event_gb_interface_create, section "_ftrace_events", align 4
@event_gb_interface_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_release = internal global ptr @event_gb_interface_release, section "_ftrace_events", align 4
@event_gb_interface_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_add = internal global ptr @event_gb_interface_add, section "_ftrace_events", align 4
@event_gb_interface_del = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_del }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_del = internal global ptr @event_gb_interface_del, section "_ftrace_events", align 4
@event_gb_interface_activate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_activate = internal global ptr @event_gb_interface_activate, section "_ftrace_events", align 4
@event_gb_interface_deactivate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_deactivate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_deactivate = internal global ptr @event_gb_interface_deactivate, section "_ftrace_events", align 4
@event_gb_interface_enable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_enable = internal global ptr @event_gb_interface_enable, section "_ftrace_events", align 4
@event_gb_interface_disable = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_interface, %union.anon.97 { ptr @__tracepoint_gb_interface_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_interface }, ptr @print_fmt_gb_interface, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_interface_disable = internal global ptr @event_gb_interface_disable, section "_ftrace_events", align 4
@trace_event_fields_gb_module = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.95 { %struct.anon.96 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_gb_module = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_module, ptr @perf_trace_gb_module, ptr @trace_event_reg, ptr @trace_event_fields_gb_module, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_module, i64 24), ptr getelementptr (i8, ptr @event_class_gb_module, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_module = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_module, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_module = internal global { [135 x i8], [57 x i8] } { [135 x i8] c"\22hd_bus_id=%d module_id=%u num_interfaces=%zu disconnected=%d\22, REC->hd_bus_id, REC->module_id, REC->num_interfaces, REC->disconnected\00", [57 x i8] zeroinitializer }, align 32
@event_gb_module_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_module, %union.anon.97 { ptr @__tracepoint_gb_module_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_module }, ptr @print_fmt_gb_module, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_module_create = internal global ptr @event_gb_module_create, section "_ftrace_events", align 4
@event_gb_module_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_module, %union.anon.97 { ptr @__tracepoint_gb_module_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_module }, ptr @print_fmt_gb_module, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_module_release = internal global ptr @event_gb_module_release, section "_ftrace_events", align 4
@event_gb_module_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_module, %union.anon.97 { ptr @__tracepoint_gb_module_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_module }, ptr @print_fmt_gb_module, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_module_add = internal global ptr @event_gb_module_add, section "_ftrace_events", align 4
@event_gb_module_del = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_module, %union.anon.97 { ptr @__tracepoint_gb_module_del }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_module }, ptr @print_fmt_gb_module, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_module_del = internal global ptr @event_gb_module_del, section "_ftrace_events", align 4
@trace_event_fields_gb_host_device = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.95 { %struct.anon.96 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.95 { %struct.anon.96 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_gb_host_device = internal global %struct.trace_event_class { ptr @str__greybus__trace_system_name, ptr @trace_event_raw_event_gb_host_device, ptr @perf_trace_gb_host_device, ptr @trace_event_reg, ptr @trace_event_fields_gb_host_device, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gb_host_device, i64 24), ptr getelementptr (i8, ptr @event_class_gb_host_device, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gb_host_device = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_gb_host_device, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_gb_host_device = internal global { [87 x i8], [41 x i8] } { [87 x i8] c"\22bus_id=%d num_cports=%zu mtu=%zu\22, REC->bus_id, REC->num_cports, REC->buffer_size_max\00", [41 x i8] zeroinitializer }, align 32
@event_gb_hd_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_host_device, %union.anon.97 { ptr @__tracepoint_gb_hd_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_host_device }, ptr @print_fmt_gb_host_device, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_hd_create = internal global ptr @event_gb_hd_create, section "_ftrace_events", align 4
@event_gb_hd_release = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_host_device, %union.anon.97 { ptr @__tracepoint_gb_hd_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_host_device }, ptr @print_fmt_gb_host_device, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_hd_release = internal global ptr @event_gb_hd_release, section "_ftrace_events", align 4
@event_gb_hd_add = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_host_device, %union.anon.97 { ptr @__tracepoint_gb_hd_add }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_host_device }, ptr @print_fmt_gb_host_device, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_hd_add = internal global ptr @event_gb_hd_add, section "_ftrace_events", align 4
@event_gb_hd_del = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_host_device, %union.anon.97 { ptr @__tracepoint_gb_hd_del }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_host_device }, ptr @print_fmt_gb_host_device, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_hd_del = internal global ptr @event_gb_hd_del, section "_ftrace_events", align 4
@event_gb_hd_in = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gb_host_device, %union.anon.97 { ptr @__tracepoint_gb_hd_in }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gb_host_device }, ptr @print_fmt_gb_host_device, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_gb_hd_in = internal global ptr @event_gb_hd_in, section "_ftrace_events", align 4
@__bpf_trace_tp_map_gb_message_send = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_message_send, ptr @__bpf_trace_gb_message, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_message_recv_request = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_message_recv_request, ptr @__bpf_trace_gb_message, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_message_recv_response = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_message_recv_response, ptr @__bpf_trace_gb_message, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_message_cancel_outgoing = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_message_cancel_outgoing, ptr @__bpf_trace_gb_message, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_message_cancel_incoming = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_message_cancel_incoming, ptr @__bpf_trace_gb_message, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_message_submit = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_message_submit, ptr @__bpf_trace_gb_message, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_operation_create = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_operation_create, ptr @__bpf_trace_gb_operation, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_operation_create_core = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_operation_create_core, ptr @__bpf_trace_gb_operation, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_operation_create_incoming = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_operation_create_incoming, ptr @__bpf_trace_gb_operation, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_operation_destroy = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_operation_destroy, ptr @__bpf_trace_gb_operation, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_operation_get_active = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_operation_get_active, ptr @__bpf_trace_gb_operation, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_operation_put_active = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_operation_put_active, ptr @__bpf_trace_gb_operation, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_connection_create = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_connection_create, ptr @__bpf_trace_gb_connection, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_connection_release = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_connection_release, ptr @__bpf_trace_gb_connection, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_connection_get = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_connection_get, ptr @__bpf_trace_gb_connection, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_connection_put = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_connection_put, ptr @__bpf_trace_gb_connection, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_connection_enable = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_connection_enable, ptr @__bpf_trace_gb_connection, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_connection_disable = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_connection_disable, ptr @__bpf_trace_gb_connection, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_bundle_create = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_bundle_create, ptr @__bpf_trace_gb_bundle, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_bundle_release = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_bundle_release, ptr @__bpf_trace_gb_bundle, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_bundle_add = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_bundle_add, ptr @__bpf_trace_gb_bundle, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_bundle_destroy = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_bundle_destroy, ptr @__bpf_trace_gb_bundle, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_create = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_create, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_release = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_release, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_add = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_add, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_del = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_del, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_activate = internal global %union.anon.125 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_activate, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_deactivate = internal global %union.anon.126 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_deactivate, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_enable = internal global %union.anon.127 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_enable, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_interface_disable = internal global %union.anon.128 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_interface_disable, ptr @__bpf_trace_gb_interface, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_module_create = internal global %union.anon.129 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_module_create, ptr @__bpf_trace_gb_module, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_module_release = internal global %union.anon.130 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_module_release, ptr @__bpf_trace_gb_module, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_module_add = internal global %union.anon.131 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_module_add, ptr @__bpf_trace_gb_module, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_module_del = internal global %union.anon.132 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_module_del, ptr @__bpf_trace_gb_module, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_hd_create = internal global %union.anon.133 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_hd_create, ptr @__bpf_trace_gb_host_device, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_hd_release = internal global %union.anon.134 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_hd_release, ptr @__bpf_trace_gb_host_device, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_hd_add = internal global %union.anon.135 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_hd_add, ptr @__bpf_trace_gb_host_device, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_hd_del = internal global %union.anon.136 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_hd_del, ptr @__bpf_trace_gb_host_device, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_gb_hd_in = internal global %union.anon.137 { %struct.bpf_raw_event_map { ptr @__tracepoint_gb_hd_in, ptr @__bpf_trace_gb_host_device, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nogreybus = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nogreybus = internal constant %struct.kernel_param { ptr @___asan_gen_.246, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.66 { ptr @nogreybus } }, section "__param", align 4
@__kstrtab_greybus_disabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_greybus_disabled = external dso_local constant [0 x i8], align 1
@__ksymtab_greybus_disabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @greybus_disabled to i32), ptr @__kstrtab_greybus_disabled, ptr @__kstrtabns_greybus_disabled }, section "___ksymtab_gpl+greybus_disabled", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greybus\00", [24 x i8] zeroinitializer }, align 32
@greybus_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @greybus_match_device, ptr @greybus_uevent, ptr null, ptr null, ptr null, ptr @greybus_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@greybus_register_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016greybus: registered new driver %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"greybus_register_driver\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/greybus/core.c\00", [41 x i8] zeroinitializer }, align 32
@greybus_register_driver._entry_ptr = internal global ptr @greybus_register_driver._entry, section ".printk_index", align 4
@__kstrtab_greybus_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_greybus_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_greybus_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @greybus_register_driver to i32), ptr @__kstrtab_greybus_register_driver, ptr @__kstrtabns_greybus_register_driver }, section "___ksymtab_gpl+greybus_register_driver", align 4
@__kstrtab_greybus_deregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_greybus_deregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_greybus_deregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @greybus_deregister_driver to i32), ptr @__kstrtab_greybus_deregister_driver, ptr @__kstrtabns_greybus_deregister_driver }, section "___ksymtab_gpl+greybus_deregister_driver", align 4
@__initcall__kmod_greybus__450_337_gb_init6 = internal global ptr @gb_init, section ".initcall6.init", align 4
@__exitcall_gb_exit = internal global ptr @gb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file451 = internal constant [37 x i8] c"greybus.file=drivers/greybus/greybus\00", section ".modinfo", align 1
@__UNIQUE_ID_license452 = internal constant [23 x i8] c"greybus.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author453 = internal constant [63 x i8] c"greybus.author=Greg Kroah-Hartman <gregkh@linuxfoundation.org>\00", section ".modinfo", align 1
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"operation_id\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"result\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"size=%u operation_id=0x%04x type=0x%02x result=0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cport_id\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiters\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"errno\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"id=%04x type=0x%02x cport_id=%04x flags=0x%lx active=%d waiters=%d errno=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hd_bus_id\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bundle_id\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enum gb_connection_state\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hd_bus_id=%d bundle_id=0x%02x name=\22%s\22 state=%u flags=0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"intf_id\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"num_cports\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"intf_id=0x%02x id=%02x class=0x%02x num_cports=%zu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"module_id\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"device_id\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disconnected\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ejected\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mode_switch\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"intf_id=%u device_id=%u module_id=%u D=%d J=%d A=%d E=%d M=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_interfaces\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hd_bus_id=%d module_id=%u num_interfaces=%zu disconnected=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bus_id\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer_size_max\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bus_id=%d num_cports=%zu mtu=%zu\0A\00", [62 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@greybus_bundle_type = external dso_local global %struct.device_type, align 4
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s %s: uevent for unknown greybus device \22type\22!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BUS=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODULE=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INTERFACE=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GREYBUS_ID=%08x/%08x\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUNDLE=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BUNDLE_CLASS=%02x\00", [46 x i8] zeroinitializer }, align 32
@greybus_hd_type = external dso_local global %struct.device_type, align 4
@greybus_module_type = external dso_local global %struct.device_type, align 4
@greybus_interface_type = external dso_local global %struct.device_type, align 4
@greybus_control_type = external dso_local global %struct.device_type, align 4
@greybus_svc_type = external dso_local global %struct.device_type, align 4
@greybus_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 234, ptr @.str.53, ptr @.str.54 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to resume bundle: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"greybus_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@greybus_remove._entry_ptr = internal global ptr @greybus_remove._entry, section ".printk_index", align 4
@gb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013greybus: bus_register failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gb_init\00", [24 x i8] zeroinitializer }, align 32
@gb_init._entry_ptr = internal global ptr @gb_init._entry, section ".printk_index", align 4
@gb_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013greybus: gb_hd_init failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@gb_init._entry_ptr.59 = internal global ptr @gb_init._entry.57, section ".printk_index", align 4
@gb_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.3, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013greybus: gb_operation_init failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@gb_init._entry_ptr.62 = internal global ptr @gb_init._entry.60, section ".printk_index", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"str__greybus__trace_system_name\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 36, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"trace_event_fields_gb_message\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_gb_message\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"print_fmt_gb_message\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"event_gb_message_send\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 57, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"event_gb_message_recv_request\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 62, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [31 x i8] c"event_gb_message_recv_response\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 68, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [33 x i8] c"event_gb_message_cancel_outgoing\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 74, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [33 x i8] c"event_gb_message_cancel_incoming\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 80, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"event_gb_message_submit\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 86, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [32 x i8] c"trace_event_fields_gb_operation\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_gb_operation\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"print_fmt_gb_operation\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [26 x i8] c"event_gb_operation_create\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 130, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant [31 x i8] c"event_gb_operation_create_core\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 135, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [35 x i8] c"event_gb_operation_create_incoming\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 141, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"event_gb_operation_destroy\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 147, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"event_gb_operation_get_active\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 153, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"event_gb_operation_put_active\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 159, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [33 x i8] c"trace_event_fields_gb_connection\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_gb_connection\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"print_fmt_gb_connection\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"event_gb_connection_create\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 201, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"event_gb_connection_release\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 207, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [24 x i8] c"event_gb_connection_get\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 213, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [24 x i8] c"event_gb_connection_put\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 220, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [27 x i8] c"event_gb_connection_enable\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 226, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"event_gb_connection_disable\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 233, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [29 x i8] c"trace_event_fields_gb_bundle\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_gb_bundle\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"print_fmt_gb_bundle\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"event_gb_bundle_create\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 270, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"event_gb_bundle_release\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 276, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"event_gb_bundle_add\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 282, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [24 x i8] c"event_gb_bundle_destroy\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 288, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [32 x i8] c"trace_event_fields_gb_interface\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_gb_interface\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [23 x i8] c"print_fmt_gb_interface\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [26 x i8] c"event_gb_interface_create\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 334, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"event_gb_interface_release\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 339, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"event_gb_interface_add\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 344, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"event_gb_interface_del\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 349, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"event_gb_interface_activate\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 355, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant [30 x i8] c"event_gb_interface_deactivate\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 360, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"event_gb_interface_enable\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 365, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"event_gb_interface_disable\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 370, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [29 x i8] c"trace_event_fields_gb_module\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_gb_module\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c"print_fmt_gb_module\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [23 x i8] c"event_gb_module_create\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 408, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant [24 x i8] c"event_gb_module_release\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 413, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c"event_gb_module_add\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 419, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"event_gb_module_del\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 425, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant [34 x i8] c"trace_event_fields_gb_host_device\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_gb_host_device\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [25 x i8] c"print_fmt_gb_host_device\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"event_gb_hd_create\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 461, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"event_gb_hd_release\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 467, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [16 x i8] c"event_gb_hd_add\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 473, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"event_gb_hd_del\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 479, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [15 x i8] c"event_gb_hd_in\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 486, i32 1 }
@___asan_gen_.246 = private constant [10 x i8] c"nogreybus\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 18, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 159, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"greybus_bus_type\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 158, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 287, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 22, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 90, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 163, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 237, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 292, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 374, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [37 x i8] c"../drivers/greybus/./greybus_trace.h\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 429, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 113, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 117, i32 26 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 121, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 126, i32 27 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 128, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 139, i32 27 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 141, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 234, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 311, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 317, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private constant [26 x i8] c"../drivers/greybus/core.c\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 323, i32 3 }
@llvm.compiler.used = appending global [305 x ptr] [ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_file451, ptr @__UNIQUE_ID_license452, ptr @__bpf_trace_tp_map_gb_bundle_add, ptr @__bpf_trace_tp_map_gb_bundle_create, ptr @__bpf_trace_tp_map_gb_bundle_destroy, ptr @__bpf_trace_tp_map_gb_bundle_release, ptr @__bpf_trace_tp_map_gb_connection_create, ptr @__bpf_trace_tp_map_gb_connection_disable, ptr @__bpf_trace_tp_map_gb_connection_enable, ptr @__bpf_trace_tp_map_gb_connection_get, ptr @__bpf_trace_tp_map_gb_connection_put, ptr @__bpf_trace_tp_map_gb_connection_release, ptr @__bpf_trace_tp_map_gb_hd_add, ptr @__bpf_trace_tp_map_gb_hd_create, ptr @__bpf_trace_tp_map_gb_hd_del, ptr @__bpf_trace_tp_map_gb_hd_in, ptr @__bpf_trace_tp_map_gb_hd_release, ptr @__bpf_trace_tp_map_gb_interface_activate, ptr @__bpf_trace_tp_map_gb_interface_add, ptr @__bpf_trace_tp_map_gb_interface_create, ptr @__bpf_trace_tp_map_gb_interface_deactivate, ptr @__bpf_trace_tp_map_gb_interface_del, ptr @__bpf_trace_tp_map_gb_interface_disable, ptr @__bpf_trace_tp_map_gb_interface_enable, ptr @__bpf_trace_tp_map_gb_interface_release, ptr @__bpf_trace_tp_map_gb_message_cancel_incoming, ptr @__bpf_trace_tp_map_gb_message_cancel_outgoing, ptr @__bpf_trace_tp_map_gb_message_recv_request, ptr @__bpf_trace_tp_map_gb_message_recv_response, ptr @__bpf_trace_tp_map_gb_message_send, ptr @__bpf_trace_tp_map_gb_message_submit, ptr @__bpf_trace_tp_map_gb_module_add, ptr @__bpf_trace_tp_map_gb_module_create, ptr @__bpf_trace_tp_map_gb_module_del, ptr @__bpf_trace_tp_map_gb_module_release, ptr @__bpf_trace_tp_map_gb_operation_create, ptr @__bpf_trace_tp_map_gb_operation_create_core, ptr @__bpf_trace_tp_map_gb_operation_create_incoming, ptr @__bpf_trace_tp_map_gb_operation_destroy, ptr @__bpf_trace_tp_map_gb_operation_get_active, ptr @__bpf_trace_tp_map_gb_operation_put_active, ptr @__event_gb_bundle_add, ptr @__event_gb_bundle_create, ptr @__event_gb_bundle_destroy, ptr @__event_gb_bundle_release, ptr @__event_gb_connection_create, ptr @__event_gb_connection_disable, ptr @__event_gb_connection_enable, ptr @__event_gb_connection_get, ptr @__event_gb_connection_put, ptr @__event_gb_connection_release, ptr @__event_gb_hd_add, ptr @__event_gb_hd_create, ptr @__event_gb_hd_del, ptr @__event_gb_hd_in, ptr @__event_gb_hd_release, ptr @__event_gb_interface_activate, ptr @__event_gb_interface_add, ptr @__event_gb_interface_create, ptr @__event_gb_interface_deactivate, ptr @__event_gb_interface_del, ptr @__event_gb_interface_disable, ptr @__event_gb_interface_enable, ptr @__event_gb_interface_release, ptr @__event_gb_message_cancel_incoming, ptr @__event_gb_message_cancel_outgoing, ptr @__event_gb_message_recv_request, ptr @__event_gb_message_recv_response, ptr @__event_gb_message_send, ptr @__event_gb_message_submit, ptr @__event_gb_module_add, ptr @__event_gb_module_create, ptr @__event_gb_module_del, ptr @__event_gb_module_release, ptr @__event_gb_operation_create, ptr @__event_gb_operation_create_core, ptr @__event_gb_operation_create_incoming, ptr @__event_gb_operation_destroy, ptr @__event_gb_operation_get_active, ptr @__event_gb_operation_put_active, ptr @__exitcall_gb_exit, ptr @__initcall__kmod_greybus__450_337_gb_init6, ptr @__ksymtab_greybus_deregister_driver, ptr @__ksymtab_greybus_disabled, ptr @__ksymtab_greybus_register_driver, ptr @__param_nogreybus, ptr @__tracepoint_gb_bundle_add, ptr @__tracepoint_gb_bundle_create, ptr @__tracepoint_gb_bundle_destroy, ptr @__tracepoint_gb_bundle_release, ptr @__tracepoint_gb_connection_create, ptr @__tracepoint_gb_connection_disable, ptr @__tracepoint_gb_connection_enable, ptr @__tracepoint_gb_connection_get, ptr @__tracepoint_gb_connection_put, ptr @__tracepoint_gb_connection_release, ptr @__tracepoint_gb_hd_add, ptr @__tracepoint_gb_hd_create, ptr @__tracepoint_gb_hd_del, ptr @__tracepoint_gb_hd_in, ptr @__tracepoint_gb_hd_release, ptr @__tracepoint_gb_interface_activate, ptr @__tracepoint_gb_interface_add, ptr @__tracepoint_gb_interface_create, ptr @__tracepoint_gb_interface_deactivate, ptr @__tracepoint_gb_interface_del, ptr @__tracepoint_gb_interface_disable, ptr @__tracepoint_gb_interface_enable, ptr @__tracepoint_gb_interface_release, ptr @__tracepoint_gb_message_cancel_incoming, ptr @__tracepoint_gb_message_cancel_outgoing, ptr @__tracepoint_gb_message_recv_request, ptr @__tracepoint_gb_message_recv_response, ptr @__tracepoint_gb_message_send, ptr @__tracepoint_gb_message_submit, ptr @__tracepoint_gb_module_add, ptr @__tracepoint_gb_module_create, ptr @__tracepoint_gb_module_del, ptr @__tracepoint_gb_module_release, ptr @__tracepoint_gb_operation_create, ptr @__tracepoint_gb_operation_create_core, ptr @__tracepoint_gb_operation_create_incoming, ptr @__tracepoint_gb_operation_destroy, ptr @__tracepoint_gb_operation_get_active, ptr @__tracepoint_gb_operation_put_active, ptr @__tracepoint_ptr_gb_bundle_add, ptr @__tracepoint_ptr_gb_bundle_create, ptr @__tracepoint_ptr_gb_bundle_destroy, ptr @__tracepoint_ptr_gb_bundle_release, ptr @__tracepoint_ptr_gb_connection_create, ptr @__tracepoint_ptr_gb_connection_disable, ptr @__tracepoint_ptr_gb_connection_enable, ptr @__tracepoint_ptr_gb_connection_get, ptr @__tracepoint_ptr_gb_connection_put, ptr @__tracepoint_ptr_gb_connection_release, ptr @__tracepoint_ptr_gb_hd_add, ptr @__tracepoint_ptr_gb_hd_create, ptr @__tracepoint_ptr_gb_hd_del, ptr @__tracepoint_ptr_gb_hd_in, ptr @__tracepoint_ptr_gb_hd_release, ptr @__tracepoint_ptr_gb_interface_activate, ptr @__tracepoint_ptr_gb_interface_add, ptr @__tracepoint_ptr_gb_interface_create, ptr @__tracepoint_ptr_gb_interface_deactivate, ptr @__tracepoint_ptr_gb_interface_del, ptr @__tracepoint_ptr_gb_interface_disable, ptr @__tracepoint_ptr_gb_interface_enable, ptr @__tracepoint_ptr_gb_interface_release, ptr @__tracepoint_ptr_gb_message_cancel_incoming, ptr @__tracepoint_ptr_gb_message_cancel_outgoing, ptr @__tracepoint_ptr_gb_message_recv_request, ptr @__tracepoint_ptr_gb_message_recv_response, ptr @__tracepoint_ptr_gb_message_send, ptr @__tracepoint_ptr_gb_message_submit, ptr @__tracepoint_ptr_gb_module_add, ptr @__tracepoint_ptr_gb_module_create, ptr @__tracepoint_ptr_gb_module_del, ptr @__tracepoint_ptr_gb_module_release, ptr @__tracepoint_ptr_gb_operation_create, ptr @__tracepoint_ptr_gb_operation_create_core, ptr @__tracepoint_ptr_gb_operation_create_incoming, ptr @__tracepoint_ptr_gb_operation_destroy, ptr @__tracepoint_ptr_gb_operation_get_active, ptr @__tracepoint_ptr_gb_operation_put_active, ptr @event_class_gb_bundle, ptr @event_class_gb_connection, ptr @event_class_gb_host_device, ptr @event_class_gb_interface, ptr @event_class_gb_message, ptr @event_class_gb_module, ptr @event_class_gb_operation, ptr @event_gb_bundle_add, ptr @event_gb_bundle_create, ptr @event_gb_bundle_destroy, ptr @event_gb_bundle_release, ptr @event_gb_connection_create, ptr @event_gb_connection_disable, ptr @event_gb_connection_enable, ptr @event_gb_connection_get, ptr @event_gb_connection_put, ptr @event_gb_connection_release, ptr @event_gb_hd_add, ptr @event_gb_hd_create, ptr @event_gb_hd_del, ptr @event_gb_hd_in, ptr @event_gb_hd_release, ptr @event_gb_interface_activate, ptr @event_gb_interface_add, ptr @event_gb_interface_create, ptr @event_gb_interface_deactivate, ptr @event_gb_interface_del, ptr @event_gb_interface_disable, ptr @event_gb_interface_enable, ptr @event_gb_interface_release, ptr @event_gb_message_cancel_incoming, ptr @event_gb_message_cancel_outgoing, ptr @event_gb_message_recv_request, ptr @event_gb_message_recv_response, ptr @event_gb_message_send, ptr @event_gb_message_submit, ptr @event_gb_module_add, ptr @event_gb_module_create, ptr @event_gb_module_del, ptr @event_gb_module_release, ptr @event_gb_operation_create, ptr @event_gb_operation_create_core, ptr @event_gb_operation_create_incoming, ptr @event_gb_operation_destroy, ptr @event_gb_operation_get_active, ptr @event_gb_operation_put_active, ptr @gb_exit, ptr @gb_init._entry, ptr @gb_init._entry.57, ptr @gb_init._entry.60, ptr @gb_init._entry_ptr, ptr @gb_init._entry_ptr.59, ptr @gb_init._entry_ptr.62, ptr @greybus_register_driver._entry, ptr @greybus_register_driver._entry_ptr, ptr @greybus_remove._entry, ptr @greybus_remove._entry_ptr, ptr @str__greybus__trace_system_name, ptr @trace_event_fields_gb_message, ptr @trace_event_type_funcs_gb_message, ptr @print_fmt_gb_message, ptr @trace_event_fields_gb_operation, ptr @trace_event_type_funcs_gb_operation, ptr @print_fmt_gb_operation, ptr @trace_event_fields_gb_connection, ptr @trace_event_type_funcs_gb_connection, ptr @print_fmt_gb_connection, ptr @trace_event_fields_gb_bundle, ptr @trace_event_type_funcs_gb_bundle, ptr @print_fmt_gb_bundle, ptr @trace_event_fields_gb_interface, ptr @trace_event_type_funcs_gb_interface, ptr @print_fmt_gb_interface, ptr @trace_event_fields_gb_module, ptr @trace_event_type_funcs_gb_module, ptr @print_fmt_gb_module, ptr @trace_event_fields_gb_host_device, ptr @trace_event_type_funcs_gb_host_device, ptr @print_fmt_gb_host_device, ptr @nogreybus, ptr @.str, ptr @greybus_bus_type, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__greybus__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_message to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_message to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_message to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_message_send to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_message_recv_request to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_message_recv_response to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_message_cancel_outgoing to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_message_cancel_incoming to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_message_submit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_operation to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_operation to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_operation to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_operation_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_operation_create_core to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_operation_create_incoming to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_operation_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_operation_get_active to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_operation_put_active to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_connection to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_connection to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_connection to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_connection_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_connection_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_connection_get to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_connection_put to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_connection_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_connection_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_bundle to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_bundle to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_bundle to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_bundle_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_bundle_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_bundle_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_bundle_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_interface to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_interface to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_interface to i32), i32 183, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_del to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_activate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_deactivate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_enable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_interface_disable to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_module to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_module to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_module to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_module_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_module_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_module_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_module_del to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_gb_host_device to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_gb_host_device to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_gb_host_device to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_hd_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_hd_release to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_hd_add to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_hd_del to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_gb_hd_in to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nogreybus to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_register_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @greybus_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_gb_message_send(ptr nocapture readnone %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_message_send, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %message) #11
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
define dso_local i32 @__traceiter_gb_message_recv_request(ptr nocapture readnone %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_message_recv_request, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %message) #11
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
define dso_local i32 @__traceiter_gb_message_recv_response(ptr nocapture readnone %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_message_recv_response, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %message) #11
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
define dso_local i32 @__traceiter_gb_message_cancel_outgoing(ptr nocapture readnone %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_message_cancel_outgoing, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %message) #11
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
define dso_local i32 @__traceiter_gb_message_cancel_incoming(ptr nocapture readnone %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_message_cancel_incoming, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %message) #11
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
define dso_local i32 @__traceiter_gb_message_submit(ptr nocapture readnone %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_message_submit, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %message) #11
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
define dso_local i32 @__traceiter_gb_operation_create(ptr nocapture readnone %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_operation_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %operation) #11
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
define dso_local i32 @__traceiter_gb_operation_create_core(ptr nocapture readnone %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_operation_create_core, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %operation) #11
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
define dso_local i32 @__traceiter_gb_operation_create_incoming(ptr nocapture readnone %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_operation_create_incoming, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %operation) #11
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
define dso_local i32 @__traceiter_gb_operation_destroy(ptr nocapture readnone %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_operation_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %operation) #11
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
define dso_local i32 @__traceiter_gb_operation_get_active(ptr nocapture readnone %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_operation_get_active, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %operation) #11
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
define dso_local i32 @__traceiter_gb_operation_put_active(ptr nocapture readnone %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_operation_put_active, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %operation) #11
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
define dso_local i32 @__traceiter_gb_connection_create(ptr nocapture readnone %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_connection_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %connection) #11
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
define dso_local i32 @__traceiter_gb_connection_release(ptr nocapture readnone %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_connection_release, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %connection) #11
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
define dso_local i32 @__traceiter_gb_connection_get(ptr nocapture readnone %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_connection_get, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %connection) #11
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
define dso_local i32 @__traceiter_gb_connection_put(ptr nocapture readnone %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_connection_put, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %connection) #11
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
define dso_local i32 @__traceiter_gb_connection_enable(ptr nocapture readnone %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_connection_enable, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %connection) #11
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
define dso_local i32 @__traceiter_gb_connection_disable(ptr nocapture readnone %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_connection_disable, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %connection) #11
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
define dso_local i32 @__traceiter_gb_bundle_create(ptr nocapture readnone %__data, ptr noundef %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_bundle_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %bundle) #11
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
define dso_local i32 @__traceiter_gb_bundle_release(ptr nocapture readnone %__data, ptr noundef %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_bundle_release, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %bundle) #11
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
define dso_local i32 @__traceiter_gb_bundle_add(ptr nocapture readnone %__data, ptr noundef %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_bundle_add, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %bundle) #11
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
define dso_local i32 @__traceiter_gb_bundle_destroy(ptr nocapture readnone %__data, ptr noundef %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_bundle_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %bundle) #11
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
define dso_local i32 @__traceiter_gb_interface_create(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_release(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_release, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_add(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_add, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_del(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_del, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_activate(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_activate, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_deactivate(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_deactivate, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_enable(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_enable, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_interface_disable(ptr nocapture readnone %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_interface_disable, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %intf) #11
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
define dso_local i32 @__traceiter_gb_module_create(ptr nocapture readnone %__data, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_module_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %module) #11
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
define dso_local i32 @__traceiter_gb_module_release(ptr nocapture readnone %__data, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_module_release, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %module) #11
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
define dso_local i32 @__traceiter_gb_module_add(ptr nocapture readnone %__data, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_module_add, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %module) #11
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
define dso_local i32 @__traceiter_gb_module_del(ptr nocapture readnone %__data, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_module_del, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %module) #11
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
define dso_local i32 @__traceiter_gb_hd_create(ptr nocapture readnone %__data, ptr noundef %hd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_hd_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hd) #11
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
define dso_local i32 @__traceiter_gb_hd_release(ptr nocapture readnone %__data, ptr noundef %hd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_hd_release, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hd) #11
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
define dso_local i32 @__traceiter_gb_hd_add(ptr nocapture readnone %__data, ptr noundef %hd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_hd_add, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hd) #11
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
define dso_local i32 @__traceiter_gb_hd_del(ptr nocapture readnone %__data, ptr noundef %hd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_hd_del, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hd) #11
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
define dso_local i32 @__traceiter_gb_hd_in(ptr nocapture readnone %__data, ptr noundef %hd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_gb_hd_in, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %hd) #11
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
define internal void @trace_event_raw_event_gb_message(ptr noundef %__data, ptr nocapture noundef readonly %message) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %header = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 1
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %size6 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %size6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %size6, align 4
  %9 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %header, align 4
  %operation_id = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %operation_id to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %operation_id, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %operation_id8 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %operation_id8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %operation_id8, align 2
  %15 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %header, align 4
  %type = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type, align 1
  %type10 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %type10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %type10, align 4
  %20 = load ptr, ptr %header, align 4
  %result = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %result, align 1
  %result12 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call3, i32 0, i32 4
  %23 = ptrtoint ptr %result12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %result12, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_message(ptr noundef %__data, ptr nocapture noundef readonly %message) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %header = getelementptr inbounds %struct.gb_message, ptr %message, i32 0, i32 1
  %27 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %header, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %28, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %size17 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %size17 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %size17, align 4
  %33 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header, align 4
  %operation_id = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %operation_id to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %operation_id, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %operation_id19 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call13, i32 0, i32 2
  %38 = ptrtoint ptr %operation_id19 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %operation_id19, align 2
  %39 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %header, align 4
  %type = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type, align 1
  %type21 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %type21 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %type21, align 4
  %44 = load ptr, ptr %header, align 4
  %result = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %result, align 1
  %result23 = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %call13, i32 0, i32 4
  %47 = ptrtoint ptr %result23 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %result23, align 1
  %48 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rctx, align 4
  %50 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %49, ptr noundef %__data, i64 noundef 1, ptr noundef %51, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gb_operation(ptr noundef %__data, ptr noundef %operation) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %operation, align 4
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %hd_cport_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hd_cport_id, align 4
  %cport_id = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %cport_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %cport_id, align 4
  %id = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id, align 2
  %id6 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %id6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %id6, align 2
  %type = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 4
  %type7 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %type7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %type7, align 4
  %flags = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %flags8 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags8, align 4
  %active = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 13
  %17 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %active, align 4
  %active9 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %active9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %active9, align 4
  %waiters = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 12
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %waiters, i32 noundef 4) #11
  %20 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %waiters, align 4
  %waiters11 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %waiters11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %waiters11, align 4
  %errno = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %23 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %errno, align 4
  %errno12 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call3, i32 0, i32 7
  %25 = ptrtoint ptr %errno12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %errno12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_operation(ptr noundef %__data, ptr noundef %operation) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %operation, align 4
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %hd_cport_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hd_cport_id, align 4
  %cport_id = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %cport_id to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %cport_id, align 4
  %id = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 5
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %id, align 2
  %id17 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %id17 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %id17, align 2
  %type = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 4
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type, align 4
  %type18 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %type18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %type18, align 4
  %flags = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 3
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %flags19 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %flags19, align 4
  %active = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 13
  %41 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active, align 4
  %active20 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %active20 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %active20, align 4
  %waiters = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 12
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %waiters, i32 noundef 4) #11
  %44 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %waiters, align 4
  %waiters22 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 6
  %46 = ptrtoint ptr %waiters22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %waiters22, align 4
  %errno = getelementptr inbounds %struct.gb_operation, ptr %operation, i32 0, i32 6
  %47 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %errno, align 4
  %errno23 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %call13, i32 0, i32 7
  %49 = ptrtoint ptr %errno23 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %errno23, align 4
  %50 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rctx, align 4
  %52 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %51, ptr noundef %__data, i64 noundef 1, ptr noundef %53, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gb_connection(ptr noundef %__data, ptr nocapture noundef readonly %connection) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048604, ptr %__data_loc_name, align 4
  %4 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connection, align 4
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_id, align 8
  %hd_bus_id = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %hd_bus_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hd_bus_id, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 2
  %9 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bundle, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.gb_bundle, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i8 [ %12, %cond.true ], [ -1, %if.end5.cond.end_crit_edge ]
  %bundle_id = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %bundle_id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond, ptr %bundle_id, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %name10 = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %name10, i32 16)
  %state = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  %state11 = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %state11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %state11, align 4
  %flags = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 9
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %flags12 = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call3, i32 0, i32 5
  %20 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_connection(ptr noundef %__data, ptr nocapture noundef readonly %connection) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call13, i32 0, i32 3
  %27 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048604, ptr %__data_loc_name, align 4
  %28 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connection, align 4
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_id, align 8
  %hd_bus_id = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call13, i32 0, i32 1
  %32 = ptrtoint ptr %hd_bus_id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %hd_bus_id, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 2
  %33 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bundle, align 4
  %tobool17.not = icmp eq ptr %34, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %id = getelementptr inbounds %struct.gb_bundle, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i8 [ %36, %cond.true ], [ -1, %if.end16.cond.end_crit_edge ]
  %bundle_id = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %bundle_id to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %cond, ptr %bundle_id, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %name22 = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 14
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %name22, i32 16)
  %state = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 12
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 4
  %state23 = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %state23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %state23, align 4
  %flags = getelementptr inbounds %struct.gb_connection, ptr %connection, i32 0, i32 9
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %flags24 = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %call13, i32 0, i32 5
  %44 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags24, align 4
  %45 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rctx, align 4
  %47 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %46, ptr noundef %__data, i64 noundef 1, ptr noundef %48, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gb_bundle(ptr noundef %__data, ptr nocapture noundef readonly %bundle) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %intf = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 1
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 8
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interface_id, align 4
  %intf_id = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %intf_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %intf_id, align 4
  %id = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %id6 = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %id6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id6, align 1
  %class = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 3
  %11 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %class, align 1
  %class7 = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %class7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %class7, align 2
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %14 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cports, align 8
  %num_cports8 = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %num_cports8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_cports8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_bundle(ptr noundef %__data, ptr nocapture noundef readonly %bundle) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %intf = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 1
  %27 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %intf, align 8
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %interface_id, align 4
  %intf_id = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %intf_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %intf_id, align 4
  %id = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 2
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id, align 4
  %id17 = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %id17 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %id17, align 1
  %class = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 3
  %35 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %class, align 1
  %class18 = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %class18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %class18, align 2
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %38 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_cports, align 8
  %num_cports19 = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %num_cports19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %num_cports19, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gb_interface(ptr noundef %__data, ptr nocapture noundef readonly %intf) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %module = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 15
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  %module_id = getelementptr inbounds %struct.gb_module, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %module_id, align 4
  %module_id6 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %module_id6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %module_id6, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %8 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %interface_id, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %id, align 1
  %device_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 6
  %11 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device_id, align 1
  %device_id7 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %device_id7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %device_id7, align 2
  %disconnected = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 18
  %14 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %disconnected, align 8, !range !466
  %16 = zext i8 %15 to i32
  %disconnected9 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %disconnected9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %disconnected9, align 4
  %ejected = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 19
  %18 = ptrtoint ptr %ejected to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ejected, align 1, !range !466
  %20 = zext i8 %19 to i32
  %ejected12 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %ejected12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ejected12, align 4
  %active = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 21
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active, align 1, !range !466
  %24 = zext i8 %23 to i32
  %active15 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 6
  %25 = ptrtoint ptr %active15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %active15, align 4
  %enabled = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 22
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled, align 4, !range !466
  %28 = zext i8 %27 to i32
  %enabled18 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 7
  %29 = ptrtoint ptr %enabled18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %enabled18, align 4
  %mode_switch = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 23
  %30 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode_switch, align 1, !range !466
  %32 = zext i8 %31 to i32
  %mode_switch21 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call3, i32 0, i32 8
  %33 = ptrtoint ptr %mode_switch21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mode_switch21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_interface(ptr noundef %__data, ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %module = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 15
  %27 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %module, align 4
  %module_id = getelementptr inbounds %struct.gb_module, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %module_id, align 4
  %module_id17 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %module_id17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %module_id17, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 5
  %32 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %interface_id, align 4
  %id = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %id, align 1
  %device_id = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 6
  %35 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %device_id, align 1
  %device_id18 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %device_id18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %device_id18, align 2
  %disconnected = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 18
  %38 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %disconnected, align 8, !range !466
  %40 = zext i8 %39 to i32
  %disconnected20 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %disconnected20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %disconnected20, align 4
  %ejected = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 19
  %42 = ptrtoint ptr %ejected to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ejected, align 1, !range !466
  %44 = zext i8 %43 to i32
  %ejected23 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %ejected23 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %ejected23, align 4
  %active = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 21
  %46 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %active, align 1, !range !466
  %48 = zext i8 %47 to i32
  %active26 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 6
  %49 = ptrtoint ptr %active26 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %active26, align 4
  %enabled = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 22
  %50 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %enabled, align 4, !range !466
  %52 = zext i8 %51 to i32
  %enabled29 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 7
  %53 = ptrtoint ptr %enabled29 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %enabled29, align 4
  %mode_switch = getelementptr inbounds %struct.gb_interface, ptr %intf, i32 0, i32 23
  %54 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mode_switch, align 1, !range !466
  %56 = zext i8 %55 to i32
  %mode_switch32 = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %call13, i32 0, i32 8
  %57 = ptrtoint ptr %mode_switch32 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %mode_switch32, align 4
  %58 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rctx, align 4
  %60 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %59, ptr noundef %__data, i64 noundef 1, ptr noundef %61, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gb_module(ptr noundef %__data, ptr nocapture noundef readonly %module) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hd = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 1
  %3 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hd, align 8
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_id, align 8
  %hd_bus_id = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %hd_bus_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %hd_bus_id, align 4
  %module_id = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 3
  %8 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %module_id, align 4
  %module_id6 = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %module_id6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %module_id6, align 4
  %num_interfaces = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 4
  %11 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_interfaces, align 8
  %num_interfaces7 = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %num_interfaces7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_interfaces7, align 4
  %disconnected = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 5
  %14 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %disconnected, align 4, !range !466
  %16 = zext i8 %15 to i32
  %disconnected9 = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call3, i32 0, i32 4
  %17 = ptrtoint ptr %disconnected9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %disconnected9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_module(ptr noundef %__data, ptr nocapture noundef readonly %module) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %hd = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 1
  %27 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hd, align 8
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bus_id, align 8
  %hd_bus_id = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %hd_bus_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hd_bus_id, align 4
  %module_id = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 3
  %32 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %module_id, align 4
  %module_id17 = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %module_id17 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %module_id17, align 4
  %num_interfaces = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 4
  %35 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_interfaces, align 8
  %num_interfaces18 = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %num_interfaces18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %num_interfaces18, align 4
  %disconnected = getelementptr inbounds %struct.gb_module, ptr %module, i32 0, i32 5
  %38 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %disconnected, align 4, !range !466
  %40 = zext i8 %39 to i32
  %disconnected20 = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %call13, i32 0, i32 4
  %41 = ptrtoint ptr %disconnected20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %disconnected20, align 4
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gb_host_device(ptr noundef %__data, ptr nocapture noundef readonly %hd) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !463

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !464

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
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 1
  %3 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus_id, align 8
  %bus_id6 = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %bus_id6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bus_id6, align 4
  %num_cports = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 6
  %6 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cports, align 4
  %num_cports7 = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %num_cports7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_cports7, align 4
  %buffer_size_max = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 7
  %9 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_size_max, align 8
  %buffer_size_max8 = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %buffer_size_max8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buffer_size_max8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_gb_host_device(ptr noundef %__data, ptr nocapture noundef readonly %hd) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #11
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !465
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #11
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !465
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !453) #11
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
  %24 = call i32 @llvm.read_register.i32(metadata !453) #11
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 1
  %27 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_id, align 8
  %bus_id17 = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %bus_id17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %bus_id17, align 4
  %num_cports = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 6
  %30 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_cports, align 4
  %num_cports18 = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %num_cports18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_cports18, align 4
  %buffer_size_max = getelementptr inbounds %struct.gb_host_device, ptr %hd, i32 0, i32 7
  %33 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_size_max, align 8
  %buffer_size_max19 = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %buffer_size_max19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buffer_size_max19, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_message(ptr noundef %__data, ptr noundef %message) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %message to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_operation(ptr noundef %__data, ptr noundef %operation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %operation to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_connection(ptr noundef %__data, ptr noundef %connection) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %connection to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_bundle(ptr noundef %__data, ptr noundef %bundle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %bundle to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_interface(ptr noundef %__data, ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %intf to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_module(ptr noundef %__data, ptr noundef %module) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %module to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_gb_host_device(ptr noundef %__data, ptr noundef %hd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %hd to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @greybus_disabled() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nogreybus, align 1, !range !466
  %1 = zext i8 %0 to i32
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @greybus_match_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @greybus_bundle_type
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_table = getelementptr i8, ptr %drv, i32 -4
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.greybus_match_id.exit_crit_edge, label %for.cond.preheader.i

if.end.greybus_match_id.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %greybus_match_id.exit

for.cond.preheader.i:                             ; preds = %if.end
  %intf.i.i = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 1
  %class18.i.i = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %id.addr.0.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ %3, %for.cond.preheader.i ]
  %vendor.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %product.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.for.body.i_crit_edge

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %class.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %class.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.i = icmp eq i8 %9, 0
  br i1 %tobool4.not.i, label %lor.rhs.i, label %lor.lhs.false3.i.for.body.i_crit_edge

lor.lhs.false3.i.for.body.i_crit_edge:            ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  %driver_info.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %lor.rhs.i.greybus_match_id.exit_crit_edge, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.rhs.i.greybus_match_id.exit_crit_edge:        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %greybus_match_id.exit

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %lor.lhs.false3.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %12 = ptrtoint ptr %id.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id.addr.0.i, align 4
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %15 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf.i.i, align 8
  %vendor_id.i.i = getelementptr inbounds %struct.gb_interface, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %18)
  %cmp.not.i.i = icmp eq i32 %5, %18
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %19 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool5.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %land.lhs.true6.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i
  %product.i.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %product.i.i, align 4
  %22 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf.i.i, align 8
  %product_id.i.i = getelementptr inbounds %struct.gb_interface, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %product_id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp8.not.i.i = icmp eq i32 %21, %25
  br i1 %cmp8.not.i.i, label %land.lhs.true6.i.i.if.end11.i.i_crit_edge, label %land.lhs.true6.i.i.for.inc.i_crit_edge

land.lhs.true6.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i.i.if.end11.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %land.lhs.true6.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %26 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool15.not.i.i = icmp eq i16 %26, 0
  br i1 %tobool15.not.i.i, label %if.end11.i.i.greybus_match_id.exit_crit_edge, label %land.lhs.true16.i.i

if.end11.i.i.greybus_match_id.exit_crit_edge:     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %greybus_match_id.exit

land.lhs.true16.i.i:                              ; preds = %if.end11.i.i
  %class.i.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %class.i.i, align 4
  %29 = ptrtoint ptr %class18.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %class18.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp20.not.i.i = icmp eq i8 %28, %30
  br i1 %cmp20.not.i.i, label %land.lhs.true16.i.i.greybus_match_id.exit_crit_edge, label %land.lhs.true16.i.i.for.inc.i_crit_edge

land.lhs.true16.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true16.i.i.greybus_match_id.exit_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %greybus_match_id.exit

for.inc.i:                                        ; preds = %land.lhs.true16.i.i.for.inc.i_crit_edge, %land.lhs.true6.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 1
  br label %for.cond.i

greybus_match_id.exit:                            ; preds = %land.lhs.true16.i.i.greybus_match_id.exit_crit_edge, %if.end11.i.i.greybus_match_id.exit_crit_edge, %lor.rhs.i.greybus_match_id.exit_crit_edge, %if.end.greybus_match_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.end.greybus_match_id.exit_crit_edge ], [ null, %lor.rhs.i.greybus_match_id.exit_crit_edge ], [ %id.addr.0.i, %if.end11.i.i.greybus_match_id.exit_crit_edge ], [ %id.addr.0.i, %land.lhs.true16.i.i.greybus_match_id.exit_crit_edge ]
  %tobool5.not = icmp ne ptr %retval.0.i, null
  %. = zext i1 %tobool5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %greybus_match_id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %greybus_match_id.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @greybus_uevent(ptr noundef %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @greybus_hd_type
  br i1 %cmp.i.not, label %entry.if.end70_crit_edge, label %if.else

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.else:                                          ; preds = %entry
  %cmp.i146.not = icmp eq ptr %1, @greybus_module_type
  br i1 %cmp.i146.not, label %if.then3, label %if.else8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %hd7 = getelementptr inbounds %struct.gb_module, ptr %dev, i32 0, i32 1
  br label %if.end70.sink.split

if.else8:                                         ; preds = %if.else
  %cmp.i149.not = icmp eq ptr %1, @greybus_interface_type
  br i1 %cmp.i149.not, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  %module15 = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %module15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module15, align 4
  %hd16 = getelementptr inbounds %struct.gb_interface, ptr %dev, i32 0, i32 14
  br label %if.end70.sink.split

if.else17:                                        ; preds = %if.else8
  %cmp.i152.not = icmp eq ptr %1, @greybus_control_type
  br i1 %cmp.i152.not, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %intf24 = getelementptr inbounds %struct.gb_control, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %intf24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf24, align 8
  %module25 = getelementptr inbounds %struct.gb_interface, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %module25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %module25, align 4
  %hd26 = getelementptr inbounds %struct.gb_interface, ptr %5, i32 0, i32 14
  br label %if.end70.sink.split

if.else27:                                        ; preds = %if.else17
  %cmp.i155.not = icmp eq ptr %1, @greybus_bundle_type
  br i1 %cmp.i155.not, label %if.then30, label %if.else37

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %intf34 = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %intf34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf34, align 8
  %module35 = getelementptr inbounds %struct.gb_interface, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %module35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module35, align 4
  %hd36 = getelementptr inbounds %struct.gb_interface, ptr %9, i32 0, i32 14
  br label %if.end70.sink.split

if.else37:                                        ; preds = %if.else27
  %cmp.i158.not = icmp eq ptr %1, @greybus_svc_type
  br i1 %cmp.i158.not, label %if.then40, label %do.end

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  %hd44 = getelementptr inbounds %struct.gb_svc, ptr %dev, i32 0, i32 1
  br label %if.end70.sink.split

do.end:                                           ; preds = %if.else37
  %call51 = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call51, ptr noundef %retval.0.i) #11
  br label %cleanup

if.end70.sink.split:                              ; preds = %if.then40, %if.then30, %if.then20, %if.then11, %if.then3
  %hd7.sink = phi ptr [ %hd7, %if.then3 ], [ %hd26, %if.then20 ], [ %hd44, %if.then40 ], [ %hd36, %if.then30 ], [ %hd16, %if.then11 ]
  %bundle.0.ph = phi ptr [ null, %if.then3 ], [ null, %if.then20 ], [ null, %if.then40 ], [ %dev, %if.then30 ], [ null, %if.then11 ]
  %intf.0.ph = phi ptr [ null, %if.then3 ], [ %5, %if.then20 ], [ null, %if.then40 ], [ %9, %if.then30 ], [ %dev, %if.then11 ]
  %module.0.ph = phi ptr [ %dev, %if.then3 ], [ %7, %if.then20 ], [ null, %if.then40 ], [ %11, %if.then30 ], [ %3, %if.then11 ]
  %16 = ptrtoint ptr %hd7.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hd7.sink, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %entry.if.end70_crit_edge
  %bundle.0 = phi ptr [ null, %entry.if.end70_crit_edge ], [ %bundle.0.ph, %if.end70.sink.split ]
  %intf.0 = phi ptr [ null, %entry.if.end70_crit_edge ], [ %intf.0.ph, %if.end70.sink.split ]
  %module.0 = phi ptr [ null, %entry.if.end70_crit_edge ], [ %module.0.ph, %if.end70.sink.split ]
  %hd.0 = phi ptr [ %dev, %entry.if.end70_crit_edge ], [ %17, %if.end70.sink.split ]
  %bus_id = getelementptr inbounds %struct.gb_host_device, ptr %hd.0, i32 0, i32 1
  %18 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bus_id, align 8
  %call71 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.45, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %if.end70
  %tobool75.not = icmp eq ptr %module.0, null
  br i1 %tobool75.not, label %if.end74.if.end81_crit_edge, label %if.then76

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then76:                                        ; preds = %if.end74
  %module_id = getelementptr inbounds %struct.gb_module, ptr %module.0, i32 0, i32 3
  %20 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %module_id, align 4
  %conv = zext i8 %21 to i32
  %call77 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.46, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then76.if.end81_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76.if.end81_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.end81:                                         ; preds = %if.then76.if.end81_crit_edge, %if.end74.if.end81_crit_edge
  %tobool82.not = icmp eq ptr %intf.0, null
  br i1 %tobool82.not, label %if.end81.if.end93_crit_edge, label %if.then83

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then83:                                        ; preds = %if.end81
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %intf.0, i32 0, i32 5
  %22 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %interface_id, align 4
  %conv84 = zext i8 %23 to i32
  %call85 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.47, i32 noundef %conv84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then83.cleanup_crit_edge

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end88:                                         ; preds = %if.then83
  %vendor_id = getelementptr inbounds %struct.gb_interface, ptr %intf.0, i32 0, i32 11
  %24 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vendor_id, align 4
  %product_id = getelementptr inbounds %struct.gb_interface, ptr %intf.0, i32 0, i32 12
  %26 = ptrtoint ptr %product_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %product_id, align 8
  %call89 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.48, i32 noundef %25, i32 noundef %27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end88.if.end93_crit_edge, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.end93:                                         ; preds = %if.end88.if.end93_crit_edge, %if.end81.if.end93_crit_edge
  %tobool94.not = icmp eq ptr %bundle.0, null
  br i1 %tobool94.not, label %if.end93.if.end106_crit_edge, label %if.then95

if.end93.if.end106_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then95:                                        ; preds = %if.end93
  %id = getelementptr inbounds %struct.gb_bundle, ptr %bundle.0, i32 0, i32 2
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id, align 4
  %conv96 = zext i8 %29 to i32
  %call97 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.49, i32 noundef %conv96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.then95.cleanup_crit_edge

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end100:                                        ; preds = %if.then95
  %class = getelementptr inbounds %struct.gb_bundle, ptr %bundle.0, i32 0, i32 3
  %30 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %class, align 1
  %conv101 = zext i8 %31 to i32
  %call102 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.50, i32 noundef %conv101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end100.if.end106_crit_edge, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end106:                                        ; preds = %if.end100.if.end106_crit_edge, %if.end93.if.end106_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end106, %if.end100.cleanup_crit_edge, %if.then95.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi i32 [ 0, %if.end106 ], [ -22, %dev_name.exit ], [ -12, %if.end70.cleanup_crit_edge ], [ -12, %if.then76.cleanup_crit_edge ], [ -12, %if.then83.cleanup_crit_edge ], [ -12, %if.end88.cleanup_crit_edge ], [ -12, %if.then95.cleanup_crit_edge ], [ -12, %if.end100.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @greybus_shutdown(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @greybus_hd_type
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_hd_shutdown(ptr noundef %dev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @greybus_register_driver(ptr noundef %driver, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nogreybus, align 1, !range !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver2 = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4
  %bus = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @greybus_bus_type, ptr %bus, align 4
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %4 = ptrtoint ptr %driver2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %driver2, align 4
  %probe = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @greybus_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4, i32 10
  %6 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @greybus_remove, ptr %remove, align 4
  %owner8 = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %owner8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %owner, ptr %owner8, align 4
  %mod_name10 = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %mod_name10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mod_name, ptr %mod_name10, align 4
  %call12 = tail call i32 @driver_register(ptr noundef %driver2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @greybus_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %id_table = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %intf.i.i = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 1
  %class18.i.i = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %id.addr.0.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ %3, %for.cond.preheader.i ]
  %vendor.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  %product.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.for.body.i_crit_edge

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %class.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %class.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.i = icmp eq i8 %9, 0
  br i1 %tobool4.not.i, label %lor.rhs.i, label %lor.lhs.false3.i.for.body.i_crit_edge

lor.lhs.false3.i.for.body.i_crit_edge:            ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  %driver_info.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %lor.lhs.false3.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %12 = ptrtoint ptr %id.addr.0.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id.addr.0.i, align 4
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %15 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf.i.i, align 8
  %vendor_id.i.i = getelementptr inbounds %struct.gb_interface, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %18)
  %cmp.not.i.i = icmp eq i32 %5, %18
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %19 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool5.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %land.lhs.true6.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i
  %product.i.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %product.i.i, align 4
  %22 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf.i.i, align 8
  %product_id.i.i = getelementptr inbounds %struct.gb_interface, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %product_id.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp8.not.i.i = icmp eq i32 %21, %25
  br i1 %cmp8.not.i.i, label %land.lhs.true6.i.i.if.end11.i.i_crit_edge, label %land.lhs.true6.i.i.for.inc.i_crit_edge

land.lhs.true6.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i.i.if.end11.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %land.lhs.true6.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %26 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool15.not.i.i = icmp eq i16 %26, 0
  br i1 %tobool15.not.i.i, label %if.end11.i.i.greybus_match_id.exit_crit_edge, label %land.lhs.true16.i.i

if.end11.i.i.greybus_match_id.exit_crit_edge:     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %greybus_match_id.exit

land.lhs.true16.i.i:                              ; preds = %if.end11.i.i
  %class.i.i = getelementptr inbounds %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %class.i.i, align 4
  %29 = ptrtoint ptr %class18.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %class18.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp20.not.i.i = icmp eq i8 %28, %30
  br i1 %cmp20.not.i.i, label %land.lhs.true16.i.i.greybus_match_id.exit_crit_edge, label %land.lhs.true16.i.i.for.inc.i_crit_edge

land.lhs.true16.i.i.for.inc.i_crit_edge:          ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true16.i.i.greybus_match_id.exit_crit_edge: ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %greybus_match_id.exit

for.inc.i:                                        ; preds = %land.lhs.true16.i.i.for.inc.i_crit_edge, %land.lhs.true6.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.greybus_bundle_id, ptr %id.addr.0.i, i32 1
  br label %for.cond.i

greybus_match_id.exit:                            ; preds = %land.lhs.true16.i.i.greybus_match_id.exit_crit_edge, %if.end11.i.i.greybus_match_id.exit_crit_edge
  %tobool.not = icmp eq ptr %id.addr.0.i, null
  br i1 %tobool.not, label %greybus_match_id.exit.cleanup_crit_edge, label %if.end

greybus_match_id.exit.cleanup_crit_edge:          ; preds = %greybus_match_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %greybus_match_id.exit
  %31 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf.i.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %33 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf.i.i, align 8
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %usage_count.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !467
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !468
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then8.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !469
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %control = getelementptr inbounds %struct.gb_interface, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %control, align 8
  %id13 = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 2
  %38 = ptrtoint ptr %id13 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id13, align 4
  %call14 = tail call i32 @gb_control_bundle_activate(ptr noundef %37, i8 noundef zeroext %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intf.i.i, align 8
  %call.i94 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 5) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #11
  %usage_count.i95 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i96 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i95, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage_count.i95, i32 1, i32 3, i32 1) #11
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i95, ptr %usage_count.i95, i32 1, ptr elementtype(i32) %usage_count.i95) #11, !srcloc !470
  %call.i97 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %probe = getelementptr i8, ptr %1, i32 -12
  %43 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %probe, align 4
  %call22 = tail call i32 %44(ptr noundef %dev, ptr noundef nonnull %id.addr.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end58, label %if.then24

if.then24:                                        ; preds = %if.end20
  %connections = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 8
  %45 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %connections, align 4
  %cmp.i.not = icmp eq ptr %46, %connections
  br i1 %cmp.i.not, label %if.then24.if.end42_crit_edge, label %do.end, !prof !463

if.then24.if.end42_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 207, i32 noundef 9, ptr noundef null) #11
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.then24.if.end42_crit_edge
  %47 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intf.i.i, align 8
  %control51 = getelementptr inbounds %struct.gb_interface, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %control51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %control51, align 8
  %51 = ptrtoint ptr %id13 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %id13, align 4
  %call53 = tail call i32 @gb_control_bundle_deactivate(ptr noundef %50, i8 noundef zeroext %52) #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i98 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i95, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !467
  tail call void @llvm.prefetch.p0(ptr %usage_count.i95, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i95, ptr %usage_count.i95, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i95) #11, !srcloc !468
  %asmresult.i.i.i.i101 = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i101)
  %cmp.not.i.i.i.i102 = icmp eq i32 %asmresult.i.i.i.i101, 0
  br i1 %cmp.not.i.i.i.i102, label %if.end42.pm_runtime_put_noidle.exit104_crit_edge, label %do.end11.i.i.i.i103

if.end42.pm_runtime_put_noidle.exit104_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit104

do.end11.i.i.i.i103:                              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !469
  br label %pm_runtime_put_noidle.exit104

pm_runtime_put_noidle.exit104:                    ; preds = %do.end11.i.i.i.i103, %if.end42.pm_runtime_put_noidle.exit104_crit_edge
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #11
  %54 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intf.i.i, align 8
  %call.i105 = tail call i32 @__pm_runtime_idle(ptr noundef %55, i32 noundef 5) #11
  br label %cleanup

if.end58:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intf.i.i, align 8
  %call.i106 = tail call i32 @__pm_runtime_idle(ptr noundef %57, i32 noundef 5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %pm_runtime_put_noidle.exit104, %if.then16, %do.end11.i.i.i.i, %if.then8.cleanup_crit_edge, %greybus_match_id.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call22, %pm_runtime_put_noidle.exit104 ], [ 0, %if.end58 ], [ -19, %greybus_match_id.exit.cleanup_crit_edge ], [ %call.i, %if.then8.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @greybus_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call.i) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %connections = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn87 = load ptr, ptr %connections, align 4
  %cmp10.not89 = icmp eq ptr %.pn87, %connections
  br i1 %cmp10.not89, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %intf = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn90 = phi ptr [ %.pn87, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %connection.091 = getelementptr i8, ptr %.pn90, i32 -28
  %flags.i = getelementptr i8, ptr %.pn90, i32 12
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 8
  %disconnected = getelementptr inbounds %struct.gb_interface, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %disconnected, align 8, !range !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_connection_disable_forced(ptr noundef %connection.091) #11
  br label %for.inc

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_connection_disable_rx(ptr noundef %connection.091) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then14, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn90, align 4
  %cmp10.not = icmp eq ptr %.pn, %connections
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %disconnect = getelementptr i8, ptr %1, i32 -8
  %10 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disconnect, align 4
  tail call void %11(ptr noundef %dev) #11
  %12 = ptrtoint ptr %connections to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %connections, align 4
  %cmp.i.not = icmp eq ptr %13, %connections
  br i1 %cmp.i.not, label %for.end.if.end43_crit_edge, label %do.end37, !prof !463

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 254, i32 noundef 9, ptr noundef null) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %for.end.if.end43_crit_edge
  %intf51 = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %intf51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf51, align 8
  %disconnected52 = getelementptr inbounds %struct.gb_interface, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %disconnected52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %disconnected52, align 8, !range !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool53.not = icmp eq i8 %17, 0
  br i1 %tobool53.not, label %if.then54, label %if.end43.if.end57_crit_edge

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %control = getelementptr inbounds %struct.gb_interface, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %control, align 8
  %id = getelementptr inbounds %struct.gb_bundle, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id, align 4
  %call56 = tail call i32 @gb_control_bundle_deactivate(ptr noundef %19, i8 noundef zeroext %21) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end43.if.end57_crit_edge
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !467
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !468
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end57.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end57.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !469
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end57.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %call.i80 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #11
  %call.i.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !467
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !468
  %asmresult.i.i.i.i83 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i83)
  %cmp.not.i.i.i.i84 = icmp eq i32 %asmresult.i.i.i.i83, 0
  br i1 %cmp.not.i.i.i.i84, label %pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit86_crit_edge, label %do.end11.i.i.i.i85

pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit86_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit86

do.end11.i.i.i.i85:                               ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !469
  br label %pm_runtime_put_noidle.exit86

pm_runtime_put_noidle.exit86:                     ; preds = %do.end11.i.i.i.i85, %pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit86_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @greybus_deregister_driver(ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.greybus_driver, ptr %driver, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %driver1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nogreybus, align 1, !range !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void @gb_debugfs_init() #11
  %call2 = tail call i32 @bus_register(ptr noundef nonnull @greybus_bus_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %call2) #14
  br label %error_bus

if.end9:                                          ; preds = %do.end
  %call10 = tail call i32 @gb_hd_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call10) #14
  br label %error_hd

if.end18:                                         ; preds = %if.end9
  %call19 = tail call i32 @gb_operation_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call19) #14
  tail call void @gb_hd_exit() #11
  br label %error_hd

error_hd:                                         ; preds = %do.end24, %do.end15
  %retval1.0 = phi i32 [ %call10, %do.end15 ], [ %call19, %do.end24 ]
  tail call void @bus_unregister(ptr noundef nonnull @greybus_bus_type) #11
  br label %error_bus

error_bus:                                        ; preds = %error_hd, %do.end7
  %retval1.1 = phi i32 [ %call2, %do.end7 ], [ %retval1.0, %error_hd ]
  tail call void @gb_debugfs_cleanup() #11
  br label %cleanup

cleanup:                                          ; preds = %error_bus, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %error_bus ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gb_operation_exit() #11
  tail call void @gb_hd_exit() #11
  tail call void @bus_unregister(ptr noundef nonnull @greybus_bus_type) #11
  tail call void @gb_debugfs_cleanup() #11
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #11
  tail call void @synchronize_rcu() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_hd_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_debugfs_cleanup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_message(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %size = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  %conv = zext i16 %3 to i32
  %operation_id = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %operation_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %operation_id, align 2
  %conv1 = zext i16 %5 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  %conv2 = zext i8 %7 to i32
  %result = getelementptr inbounds %struct.trace_event_raw_gb_message, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result, align 1
  %conv3 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #11
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_operation(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %id = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 2
  %conv = zext i16 %3 to i32
  %cport_id = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cport_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cport_id, align 4
  %conv1 = zext i16 %5 to i32
  %type = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  %conv2 = zext i8 %7 to i32
  %flags3 = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  %active = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active, align 4
  %waiters = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %waiters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %waiters, align 4
  %errno = getelementptr inbounds %struct.trace_event_raw_gb_operation, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %errno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %errno, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #11
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_connection(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %hd_bus_id = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hd_bus_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hd_bus_id, align 4
  %bundle_id = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bundle_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bundle_id, align 4
  %conv = zext i8 %5 to i32
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_name, align 4
  %and = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %state = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %flags1 = getelementptr inbounds %struct.trace_event_raw_gb_connection, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %conv, ptr noundef %add.ptr, i32 noundef %9, i32 noundef %11) #11
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_bundle(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %intf_id = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intf_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %intf_id, align 4
  %conv = zext i8 %3 to i32
  %id = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 1
  %conv1 = zext i8 %5 to i32
  %class = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %class, align 2
  %conv2 = zext i8 %7 to i32
  %num_cports = getelementptr inbounds %struct.trace_event_raw_gb_bundle, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cports, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %9) #11
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_interface(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %id = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  %conv = zext i8 %3 to i32
  %device_id = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %device_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_id, align 2
  %conv1 = zext i8 %5 to i32
  %module_id = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %module_id, align 4
  %conv2 = zext i8 %7 to i32
  %disconnected = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disconnected, align 4
  %ejected = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ejected to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ejected, align 4
  %active = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active, align 4
  %enabled = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enabled, align 4
  %mode_switch = getelementptr inbounds %struct.trace_event_raw_gb_interface, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %mode_switch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode_switch, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #11
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_module(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %hd_bus_id = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hd_bus_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hd_bus_id, align 4
  %module_id = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %module_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %module_id, align 4
  %conv = zext i8 %5 to i32
  %num_interfaces = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_interfaces, align 4
  %disconnected = getelementptr inbounds %struct.trace_event_raw_gb_module, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %disconnected to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disconnected, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %conv, i32 noundef %7, i32 noundef %9) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gb_host_device(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %bus_id = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_id, align 4
  %num_cports = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cports, align 4
  %buffer_size_max = getelementptr inbounds %struct.trace_event_raw_gb_host_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_size_max, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, i32 noundef %3, i32 noundef %5, i32 noundef %7) #11
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #11
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
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_hd_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_bundle_activate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_control_bundle_deactivate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_forced(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_hd_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !203, !204, !205, !206, !207, !208, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !289, !291, !293, !295, !297, !298, !299, !300, !301, !303, !305, !307, !309, !311, !312, !314, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !421, !423, !425, !427, !429, !431, !433, !435, !436, !437, !438, !439, !440, !442, !443, !444, !445, !447, !448, !449, !451, !452}
!llvm.named.register.sp = !{!453}
!llvm.module.flags = !{!454, !455, !456, !457, !458, !459, !460, !461}
!llvm.ident = !{!462}

!0 = !{ptr @__tracepoint_gb_message_send, !1, !"__tracepoint_gb_message_send", i1 false, i1 false}
!1 = !{!"../drivers/greybus/./greybus_trace.h", i32 57, i32 1}
!2 = !{ptr @__tracepoint_ptr_gb_message_send, !1, !"__tracepoint_ptr_gb_message_send", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_gb_message_send, !1, !"__SCK__tp_func_gb_message_send", i1 false, i1 false}
!4 = !{ptr @__tracepoint_gb_message_recv_request, !5, !"__tracepoint_gb_message_recv_request", i1 false, i1 false}
!5 = !{!"../drivers/greybus/./greybus_trace.h", i32 62, i32 1}
!6 = !{ptr @__tracepoint_ptr_gb_message_recv_request, !5, !"__tracepoint_ptr_gb_message_recv_request", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_gb_message_recv_request, !5, !"__SCK__tp_func_gb_message_recv_request", i1 false, i1 false}
!8 = !{ptr @__tracepoint_gb_message_recv_response, !9, !"__tracepoint_gb_message_recv_response", i1 false, i1 false}
!9 = !{!"../drivers/greybus/./greybus_trace.h", i32 68, i32 1}
!10 = !{ptr @__tracepoint_ptr_gb_message_recv_response, !9, !"__tracepoint_ptr_gb_message_recv_response", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_gb_message_recv_response, !9, !"__SCK__tp_func_gb_message_recv_response", i1 false, i1 false}
!12 = !{ptr @__tracepoint_gb_message_cancel_outgoing, !13, !"__tracepoint_gb_message_cancel_outgoing", i1 false, i1 false}
!13 = !{!"../drivers/greybus/./greybus_trace.h", i32 74, i32 1}
!14 = !{ptr @__tracepoint_ptr_gb_message_cancel_outgoing, !13, !"__tracepoint_ptr_gb_message_cancel_outgoing", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_gb_message_cancel_outgoing, !13, !"__SCK__tp_func_gb_message_cancel_outgoing", i1 false, i1 false}
!16 = !{ptr @__tracepoint_gb_message_cancel_incoming, !17, !"__tracepoint_gb_message_cancel_incoming", i1 false, i1 false}
!17 = !{!"../drivers/greybus/./greybus_trace.h", i32 80, i32 1}
!18 = !{ptr @__tracepoint_ptr_gb_message_cancel_incoming, !17, !"__tracepoint_ptr_gb_message_cancel_incoming", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_gb_message_cancel_incoming, !17, !"__SCK__tp_func_gb_message_cancel_incoming", i1 false, i1 false}
!20 = !{ptr @__tracepoint_gb_message_submit, !21, !"__tracepoint_gb_message_submit", i1 false, i1 false}
!21 = !{!"../drivers/greybus/./greybus_trace.h", i32 86, i32 1}
!22 = !{ptr @__tracepoint_ptr_gb_message_submit, !21, !"__tracepoint_ptr_gb_message_submit", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_gb_message_submit, !21, !"__SCK__tp_func_gb_message_submit", i1 false, i1 false}
!24 = !{ptr @__tracepoint_gb_operation_create, !25, !"__tracepoint_gb_operation_create", i1 false, i1 false}
!25 = !{!"../drivers/greybus/./greybus_trace.h", i32 130, i32 1}
!26 = !{ptr @__tracepoint_ptr_gb_operation_create, !25, !"__tracepoint_ptr_gb_operation_create", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_gb_operation_create, !25, !"__SCK__tp_func_gb_operation_create", i1 false, i1 false}
!28 = !{ptr @__tracepoint_gb_operation_create_core, !29, !"__tracepoint_gb_operation_create_core", i1 false, i1 false}
!29 = !{!"../drivers/greybus/./greybus_trace.h", i32 135, i32 1}
!30 = !{ptr @__tracepoint_ptr_gb_operation_create_core, !29, !"__tracepoint_ptr_gb_operation_create_core", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_gb_operation_create_core, !29, !"__SCK__tp_func_gb_operation_create_core", i1 false, i1 false}
!32 = !{ptr @__tracepoint_gb_operation_create_incoming, !33, !"__tracepoint_gb_operation_create_incoming", i1 false, i1 false}
!33 = !{!"../drivers/greybus/./greybus_trace.h", i32 141, i32 1}
!34 = !{ptr @__tracepoint_ptr_gb_operation_create_incoming, !33, !"__tracepoint_ptr_gb_operation_create_incoming", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_gb_operation_create_incoming, !33, !"__SCK__tp_func_gb_operation_create_incoming", i1 false, i1 false}
!36 = !{ptr @__tracepoint_gb_operation_destroy, !37, !"__tracepoint_gb_operation_destroy", i1 false, i1 false}
!37 = !{!"../drivers/greybus/./greybus_trace.h", i32 147, i32 1}
!38 = !{ptr @__tracepoint_ptr_gb_operation_destroy, !37, !"__tracepoint_ptr_gb_operation_destroy", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_gb_operation_destroy, !37, !"__SCK__tp_func_gb_operation_destroy", i1 false, i1 false}
!40 = !{ptr @__tracepoint_gb_operation_get_active, !41, !"__tracepoint_gb_operation_get_active", i1 false, i1 false}
!41 = !{!"../drivers/greybus/./greybus_trace.h", i32 153, i32 1}
!42 = !{ptr @__tracepoint_ptr_gb_operation_get_active, !41, !"__tracepoint_ptr_gb_operation_get_active", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_gb_operation_get_active, !41, !"__SCK__tp_func_gb_operation_get_active", i1 false, i1 false}
!44 = !{ptr @__tracepoint_gb_operation_put_active, !45, !"__tracepoint_gb_operation_put_active", i1 false, i1 false}
!45 = !{!"../drivers/greybus/./greybus_trace.h", i32 159, i32 1}
!46 = !{ptr @__tracepoint_ptr_gb_operation_put_active, !45, !"__tracepoint_ptr_gb_operation_put_active", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_gb_operation_put_active, !45, !"__SCK__tp_func_gb_operation_put_active", i1 false, i1 false}
!48 = !{ptr @__tracepoint_gb_connection_create, !49, !"__tracepoint_gb_connection_create", i1 false, i1 false}
!49 = !{!"../drivers/greybus/./greybus_trace.h", i32 201, i32 1}
!50 = !{ptr @__tracepoint_ptr_gb_connection_create, !49, !"__tracepoint_ptr_gb_connection_create", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_gb_connection_create, !49, !"__SCK__tp_func_gb_connection_create", i1 false, i1 false}
!52 = !{ptr @__tracepoint_gb_connection_release, !53, !"__tracepoint_gb_connection_release", i1 false, i1 false}
!53 = !{!"../drivers/greybus/./greybus_trace.h", i32 207, i32 1}
!54 = !{ptr @__tracepoint_ptr_gb_connection_release, !53, !"__tracepoint_ptr_gb_connection_release", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_gb_connection_release, !53, !"__SCK__tp_func_gb_connection_release", i1 false, i1 false}
!56 = !{ptr @__tracepoint_gb_connection_get, !57, !"__tracepoint_gb_connection_get", i1 false, i1 false}
!57 = !{!"../drivers/greybus/./greybus_trace.h", i32 213, i32 1}
!58 = !{ptr @__tracepoint_ptr_gb_connection_get, !57, !"__tracepoint_ptr_gb_connection_get", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_gb_connection_get, !57, !"__SCK__tp_func_gb_connection_get", i1 false, i1 false}
!60 = !{ptr @__tracepoint_gb_connection_put, !61, !"__tracepoint_gb_connection_put", i1 false, i1 false}
!61 = !{!"../drivers/greybus/./greybus_trace.h", i32 220, i32 1}
!62 = !{ptr @__tracepoint_ptr_gb_connection_put, !61, !"__tracepoint_ptr_gb_connection_put", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_gb_connection_put, !61, !"__SCK__tp_func_gb_connection_put", i1 false, i1 false}
!64 = !{ptr @__tracepoint_gb_connection_enable, !65, !"__tracepoint_gb_connection_enable", i1 false, i1 false}
!65 = !{!"../drivers/greybus/./greybus_trace.h", i32 226, i32 1}
!66 = !{ptr @__tracepoint_ptr_gb_connection_enable, !65, !"__tracepoint_ptr_gb_connection_enable", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_gb_connection_enable, !65, !"__SCK__tp_func_gb_connection_enable", i1 false, i1 false}
!68 = !{ptr @__tracepoint_gb_connection_disable, !69, !"__tracepoint_gb_connection_disable", i1 false, i1 false}
!69 = !{!"../drivers/greybus/./greybus_trace.h", i32 233, i32 1}
!70 = !{ptr @__tracepoint_ptr_gb_connection_disable, !69, !"__tracepoint_ptr_gb_connection_disable", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_gb_connection_disable, !69, !"__SCK__tp_func_gb_connection_disable", i1 false, i1 false}
!72 = !{ptr @__tracepoint_gb_bundle_create, !73, !"__tracepoint_gb_bundle_create", i1 false, i1 false}
!73 = !{!"../drivers/greybus/./greybus_trace.h", i32 270, i32 1}
!74 = !{ptr @__tracepoint_ptr_gb_bundle_create, !73, !"__tracepoint_ptr_gb_bundle_create", i1 false, i1 false}
!75 = !{ptr @__SCK__tp_func_gb_bundle_create, !73, !"__SCK__tp_func_gb_bundle_create", i1 false, i1 false}
!76 = !{ptr @__tracepoint_gb_bundle_release, !77, !"__tracepoint_gb_bundle_release", i1 false, i1 false}
!77 = !{!"../drivers/greybus/./greybus_trace.h", i32 276, i32 1}
!78 = !{ptr @__tracepoint_ptr_gb_bundle_release, !77, !"__tracepoint_ptr_gb_bundle_release", i1 false, i1 false}
!79 = !{ptr @__SCK__tp_func_gb_bundle_release, !77, !"__SCK__tp_func_gb_bundle_release", i1 false, i1 false}
!80 = !{ptr @__tracepoint_gb_bundle_add, !81, !"__tracepoint_gb_bundle_add", i1 false, i1 false}
!81 = !{!"../drivers/greybus/./greybus_trace.h", i32 282, i32 1}
!82 = !{ptr @__tracepoint_ptr_gb_bundle_add, !81, !"__tracepoint_ptr_gb_bundle_add", i1 false, i1 false}
!83 = !{ptr @__SCK__tp_func_gb_bundle_add, !81, !"__SCK__tp_func_gb_bundle_add", i1 false, i1 false}
!84 = !{ptr @__tracepoint_gb_bundle_destroy, !85, !"__tracepoint_gb_bundle_destroy", i1 false, i1 false}
!85 = !{!"../drivers/greybus/./greybus_trace.h", i32 288, i32 1}
!86 = !{ptr @__tracepoint_ptr_gb_bundle_destroy, !85, !"__tracepoint_ptr_gb_bundle_destroy", i1 false, i1 false}
!87 = !{ptr @__SCK__tp_func_gb_bundle_destroy, !85, !"__SCK__tp_func_gb_bundle_destroy", i1 false, i1 false}
!88 = !{ptr @__tracepoint_gb_interface_create, !89, !"__tracepoint_gb_interface_create", i1 false, i1 false}
!89 = !{!"../drivers/greybus/./greybus_trace.h", i32 334, i32 1}
!90 = !{ptr @__tracepoint_ptr_gb_interface_create, !89, !"__tracepoint_ptr_gb_interface_create", i1 false, i1 false}
!91 = !{ptr @__SCK__tp_func_gb_interface_create, !89, !"__SCK__tp_func_gb_interface_create", i1 false, i1 false}
!92 = !{ptr @__tracepoint_gb_interface_release, !93, !"__tracepoint_gb_interface_release", i1 false, i1 false}
!93 = !{!"../drivers/greybus/./greybus_trace.h", i32 339, i32 1}
!94 = !{ptr @__tracepoint_ptr_gb_interface_release, !93, !"__tracepoint_ptr_gb_interface_release", i1 false, i1 false}
!95 = !{ptr @__SCK__tp_func_gb_interface_release, !93, !"__SCK__tp_func_gb_interface_release", i1 false, i1 false}
!96 = !{ptr @__tracepoint_gb_interface_add, !97, !"__tracepoint_gb_interface_add", i1 false, i1 false}
!97 = !{!"../drivers/greybus/./greybus_trace.h", i32 344, i32 1}
!98 = !{ptr @__tracepoint_ptr_gb_interface_add, !97, !"__tracepoint_ptr_gb_interface_add", i1 false, i1 false}
!99 = !{ptr @__SCK__tp_func_gb_interface_add, !97, !"__SCK__tp_func_gb_interface_add", i1 false, i1 false}
!100 = !{ptr @__tracepoint_gb_interface_del, !101, !"__tracepoint_gb_interface_del", i1 false, i1 false}
!101 = !{!"../drivers/greybus/./greybus_trace.h", i32 349, i32 1}
!102 = !{ptr @__tracepoint_ptr_gb_interface_del, !101, !"__tracepoint_ptr_gb_interface_del", i1 false, i1 false}
!103 = !{ptr @__SCK__tp_func_gb_interface_del, !101, !"__SCK__tp_func_gb_interface_del", i1 false, i1 false}
!104 = !{ptr @__tracepoint_gb_interface_activate, !105, !"__tracepoint_gb_interface_activate", i1 false, i1 false}
!105 = !{!"../drivers/greybus/./greybus_trace.h", i32 355, i32 1}
!106 = !{ptr @__tracepoint_ptr_gb_interface_activate, !105, !"__tracepoint_ptr_gb_interface_activate", i1 false, i1 false}
!107 = !{ptr @__SCK__tp_func_gb_interface_activate, !105, !"__SCK__tp_func_gb_interface_activate", i1 false, i1 false}
!108 = !{ptr @__tracepoint_gb_interface_deactivate, !109, !"__tracepoint_gb_interface_deactivate", i1 false, i1 false}
!109 = !{!"../drivers/greybus/./greybus_trace.h", i32 360, i32 1}
!110 = !{ptr @__tracepoint_ptr_gb_interface_deactivate, !109, !"__tracepoint_ptr_gb_interface_deactivate", i1 false, i1 false}
!111 = !{ptr @__SCK__tp_func_gb_interface_deactivate, !109, !"__SCK__tp_func_gb_interface_deactivate", i1 false, i1 false}
!112 = !{ptr @__tracepoint_gb_interface_enable, !113, !"__tracepoint_gb_interface_enable", i1 false, i1 false}
!113 = !{!"../drivers/greybus/./greybus_trace.h", i32 365, i32 1}
!114 = !{ptr @__tracepoint_ptr_gb_interface_enable, !113, !"__tracepoint_ptr_gb_interface_enable", i1 false, i1 false}
!115 = !{ptr @__SCK__tp_func_gb_interface_enable, !113, !"__SCK__tp_func_gb_interface_enable", i1 false, i1 false}
!116 = !{ptr @__tracepoint_gb_interface_disable, !117, !"__tracepoint_gb_interface_disable", i1 false, i1 false}
!117 = !{!"../drivers/greybus/./greybus_trace.h", i32 370, i32 1}
!118 = !{ptr @__tracepoint_ptr_gb_interface_disable, !117, !"__tracepoint_ptr_gb_interface_disable", i1 false, i1 false}
!119 = !{ptr @__SCK__tp_func_gb_interface_disable, !117, !"__SCK__tp_func_gb_interface_disable", i1 false, i1 false}
!120 = !{ptr @__tracepoint_gb_module_create, !121, !"__tracepoint_gb_module_create", i1 false, i1 false}
!121 = !{!"../drivers/greybus/./greybus_trace.h", i32 408, i32 1}
!122 = !{ptr @__tracepoint_ptr_gb_module_create, !121, !"__tracepoint_ptr_gb_module_create", i1 false, i1 false}
!123 = !{ptr @__SCK__tp_func_gb_module_create, !121, !"__SCK__tp_func_gb_module_create", i1 false, i1 false}
!124 = !{ptr @__tracepoint_gb_module_release, !125, !"__tracepoint_gb_module_release", i1 false, i1 false}
!125 = !{!"../drivers/greybus/./greybus_trace.h", i32 413, i32 1}
!126 = !{ptr @__tracepoint_ptr_gb_module_release, !125, !"__tracepoint_ptr_gb_module_release", i1 false, i1 false}
!127 = !{ptr @__SCK__tp_func_gb_module_release, !125, !"__SCK__tp_func_gb_module_release", i1 false, i1 false}
!128 = !{ptr @__tracepoint_gb_module_add, !129, !"__tracepoint_gb_module_add", i1 false, i1 false}
!129 = !{!"../drivers/greybus/./greybus_trace.h", i32 419, i32 1}
!130 = !{ptr @__tracepoint_ptr_gb_module_add, !129, !"__tracepoint_ptr_gb_module_add", i1 false, i1 false}
!131 = !{ptr @__SCK__tp_func_gb_module_add, !129, !"__SCK__tp_func_gb_module_add", i1 false, i1 false}
!132 = !{ptr @__tracepoint_gb_module_del, !133, !"__tracepoint_gb_module_del", i1 false, i1 false}
!133 = !{!"../drivers/greybus/./greybus_trace.h", i32 425, i32 1}
!134 = !{ptr @__tracepoint_ptr_gb_module_del, !133, !"__tracepoint_ptr_gb_module_del", i1 false, i1 false}
!135 = !{ptr @__SCK__tp_func_gb_module_del, !133, !"__SCK__tp_func_gb_module_del", i1 false, i1 false}
!136 = !{ptr @__tracepoint_gb_hd_create, !137, !"__tracepoint_gb_hd_create", i1 false, i1 false}
!137 = !{!"../drivers/greybus/./greybus_trace.h", i32 461, i32 1}
!138 = !{ptr @__tracepoint_ptr_gb_hd_create, !137, !"__tracepoint_ptr_gb_hd_create", i1 false, i1 false}
!139 = !{ptr @__SCK__tp_func_gb_hd_create, !137, !"__SCK__tp_func_gb_hd_create", i1 false, i1 false}
!140 = !{ptr @__tracepoint_gb_hd_release, !141, !"__tracepoint_gb_hd_release", i1 false, i1 false}
!141 = !{!"../drivers/greybus/./greybus_trace.h", i32 467, i32 1}
!142 = !{ptr @__tracepoint_ptr_gb_hd_release, !141, !"__tracepoint_ptr_gb_hd_release", i1 false, i1 false}
!143 = !{ptr @__SCK__tp_func_gb_hd_release, !141, !"__SCK__tp_func_gb_hd_release", i1 false, i1 false}
!144 = !{ptr @__tracepoint_gb_hd_add, !145, !"__tracepoint_gb_hd_add", i1 false, i1 false}
!145 = !{!"../drivers/greybus/./greybus_trace.h", i32 473, i32 1}
!146 = !{ptr @__tracepoint_ptr_gb_hd_add, !145, !"__tracepoint_ptr_gb_hd_add", i1 false, i1 false}
!147 = !{ptr @__SCK__tp_func_gb_hd_add, !145, !"__SCK__tp_func_gb_hd_add", i1 false, i1 false}
!148 = !{ptr @__tracepoint_gb_hd_del, !149, !"__tracepoint_gb_hd_del", i1 false, i1 false}
!149 = !{!"../drivers/greybus/./greybus_trace.h", i32 479, i32 1}
!150 = !{ptr @__tracepoint_ptr_gb_hd_del, !149, !"__tracepoint_ptr_gb_hd_del", i1 false, i1 false}
!151 = !{ptr @__SCK__tp_func_gb_hd_del, !149, !"__SCK__tp_func_gb_hd_del", i1 false, i1 false}
!152 = !{ptr @__tracepoint_gb_hd_in, !153, !"__tracepoint_gb_hd_in", i1 false, i1 false}
!153 = !{!"../drivers/greybus/./greybus_trace.h", i32 486, i32 1}
!154 = !{ptr @__tracepoint_ptr_gb_hd_in, !153, !"__tracepoint_ptr_gb_hd_in", i1 false, i1 false}
!155 = !{ptr @__SCK__tp_func_gb_hd_in, !153, !"__SCK__tp_func_gb_hd_in", i1 false, i1 false}
!156 = !{ptr @event_class_gb_message, !157, !"event_class_gb_message", i1 false, i1 false}
!157 = !{!"../drivers/greybus/./greybus_trace.h", i32 22, i32 1}
!158 = !{ptr @event_gb_message_send, !1, !"event_gb_message_send", i1 false, i1 false}
!159 = !{ptr @__event_gb_message_send, !1, !"__event_gb_message_send", i1 false, i1 false}
!160 = !{ptr @event_gb_message_recv_request, !5, !"event_gb_message_recv_request", i1 false, i1 false}
!161 = !{ptr @__event_gb_message_recv_request, !5, !"__event_gb_message_recv_request", i1 false, i1 false}
!162 = !{ptr @event_gb_message_recv_response, !9, !"event_gb_message_recv_response", i1 false, i1 false}
!163 = !{ptr @__event_gb_message_recv_response, !9, !"__event_gb_message_recv_response", i1 false, i1 false}
!164 = !{ptr @event_gb_message_cancel_outgoing, !13, !"event_gb_message_cancel_outgoing", i1 false, i1 false}
!165 = !{ptr @__event_gb_message_cancel_outgoing, !13, !"__event_gb_message_cancel_outgoing", i1 false, i1 false}
!166 = !{ptr @event_gb_message_cancel_incoming, !17, !"event_gb_message_cancel_incoming", i1 false, i1 false}
!167 = !{ptr @__event_gb_message_cancel_incoming, !17, !"__event_gb_message_cancel_incoming", i1 false, i1 false}
!168 = !{ptr @event_gb_message_submit, !21, !"event_gb_message_submit", i1 false, i1 false}
!169 = !{ptr @__event_gb_message_submit, !21, !"__event_gb_message_submit", i1 false, i1 false}
!170 = !{ptr @event_class_gb_operation, !171, !"event_class_gb_operation", i1 false, i1 false}
!171 = !{!"../drivers/greybus/./greybus_trace.h", i32 90, i32 1}
!172 = !{ptr @event_gb_operation_create, !25, !"event_gb_operation_create", i1 false, i1 false}
!173 = !{ptr @__event_gb_operation_create, !25, !"__event_gb_operation_create", i1 false, i1 false}
!174 = !{ptr @event_gb_operation_create_core, !29, !"event_gb_operation_create_core", i1 false, i1 false}
!175 = !{ptr @__event_gb_operation_create_core, !29, !"__event_gb_operation_create_core", i1 false, i1 false}
!176 = !{ptr @event_gb_operation_create_incoming, !33, !"event_gb_operation_create_incoming", i1 false, i1 false}
!177 = !{ptr @__event_gb_operation_create_incoming, !33, !"__event_gb_operation_create_incoming", i1 false, i1 false}
!178 = !{ptr @event_gb_operation_destroy, !37, !"event_gb_operation_destroy", i1 false, i1 false}
!179 = !{ptr @__event_gb_operation_destroy, !37, !"__event_gb_operation_destroy", i1 false, i1 false}
!180 = !{ptr @event_gb_operation_get_active, !41, !"event_gb_operation_get_active", i1 false, i1 false}
!181 = !{ptr @__event_gb_operation_get_active, !41, !"__event_gb_operation_get_active", i1 false, i1 false}
!182 = !{ptr @event_gb_operation_put_active, !45, !"event_gb_operation_put_active", i1 false, i1 false}
!183 = !{ptr @__event_gb_operation_put_active, !45, !"__event_gb_operation_put_active", i1 false, i1 false}
!184 = !{ptr @event_class_gb_connection, !185, !"event_class_gb_connection", i1 false, i1 false}
!185 = !{!"../drivers/greybus/./greybus_trace.h", i32 163, i32 1}
!186 = !{ptr @event_gb_connection_create, !49, !"event_gb_connection_create", i1 false, i1 false}
!187 = !{ptr @__event_gb_connection_create, !49, !"__event_gb_connection_create", i1 false, i1 false}
!188 = !{ptr @event_gb_connection_release, !53, !"event_gb_connection_release", i1 false, i1 false}
!189 = !{ptr @__event_gb_connection_release, !53, !"__event_gb_connection_release", i1 false, i1 false}
!190 = !{ptr @event_gb_connection_get, !57, !"event_gb_connection_get", i1 false, i1 false}
!191 = !{ptr @__event_gb_connection_get, !57, !"__event_gb_connection_get", i1 false, i1 false}
!192 = !{ptr @event_gb_connection_put, !61, !"event_gb_connection_put", i1 false, i1 false}
!193 = !{ptr @__event_gb_connection_put, !61, !"__event_gb_connection_put", i1 false, i1 false}
!194 = !{ptr @event_gb_connection_enable, !65, !"event_gb_connection_enable", i1 false, i1 false}
!195 = !{ptr @__event_gb_connection_enable, !65, !"__event_gb_connection_enable", i1 false, i1 false}
!196 = !{ptr @event_gb_connection_disable, !69, !"event_gb_connection_disable", i1 false, i1 false}
!197 = !{ptr @__event_gb_connection_disable, !69, !"__event_gb_connection_disable", i1 false, i1 false}
!198 = !{ptr @event_class_gb_bundle, !199, !"event_class_gb_bundle", i1 false, i1 false}
!199 = !{!"../drivers/greybus/./greybus_trace.h", i32 237, i32 1}
!200 = !{ptr @event_gb_bundle_create, !73, !"event_gb_bundle_create", i1 false, i1 false}
!201 = !{ptr @__event_gb_bundle_create, !73, !"__event_gb_bundle_create", i1 false, i1 false}
!202 = !{ptr @event_gb_bundle_release, !77, !"event_gb_bundle_release", i1 false, i1 false}
!203 = !{ptr @__event_gb_bundle_release, !77, !"__event_gb_bundle_release", i1 false, i1 false}
!204 = !{ptr @event_gb_bundle_add, !81, !"event_gb_bundle_add", i1 false, i1 false}
!205 = !{ptr @__event_gb_bundle_add, !81, !"__event_gb_bundle_add", i1 false, i1 false}
!206 = !{ptr @event_gb_bundle_destroy, !85, !"event_gb_bundle_destroy", i1 false, i1 false}
!207 = !{ptr @__event_gb_bundle_destroy, !85, !"__event_gb_bundle_destroy", i1 false, i1 false}
!208 = !{ptr @event_class_gb_interface, !209, !"event_class_gb_interface", i1 false, i1 false}
!209 = !{!"../drivers/greybus/./greybus_trace.h", i32 292, i32 1}
!210 = !{ptr @event_gb_interface_create, !89, !"event_gb_interface_create", i1 false, i1 false}
!211 = !{ptr @__event_gb_interface_create, !89, !"__event_gb_interface_create", i1 false, i1 false}
!212 = !{ptr @event_gb_interface_release, !93, !"event_gb_interface_release", i1 false, i1 false}
!213 = !{ptr @__event_gb_interface_release, !93, !"__event_gb_interface_release", i1 false, i1 false}
!214 = !{ptr @event_gb_interface_add, !97, !"event_gb_interface_add", i1 false, i1 false}
!215 = !{ptr @__event_gb_interface_add, !97, !"__event_gb_interface_add", i1 false, i1 false}
!216 = !{ptr @event_gb_interface_del, !101, !"event_gb_interface_del", i1 false, i1 false}
!217 = !{ptr @__event_gb_interface_del, !101, !"__event_gb_interface_del", i1 false, i1 false}
!218 = !{ptr @event_gb_interface_activate, !105, !"event_gb_interface_activate", i1 false, i1 false}
!219 = !{ptr @__event_gb_interface_activate, !105, !"__event_gb_interface_activate", i1 false, i1 false}
!220 = !{ptr @event_gb_interface_deactivate, !109, !"event_gb_interface_deactivate", i1 false, i1 false}
!221 = !{ptr @__event_gb_interface_deactivate, !109, !"__event_gb_interface_deactivate", i1 false, i1 false}
!222 = !{ptr @event_gb_interface_enable, !113, !"event_gb_interface_enable", i1 false, i1 false}
!223 = !{ptr @__event_gb_interface_enable, !113, !"__event_gb_interface_enable", i1 false, i1 false}
!224 = !{ptr @event_gb_interface_disable, !117, !"event_gb_interface_disable", i1 false, i1 false}
!225 = !{ptr @__event_gb_interface_disable, !117, !"__event_gb_interface_disable", i1 false, i1 false}
!226 = !{ptr @event_class_gb_module, !227, !"event_class_gb_module", i1 false, i1 false}
!227 = !{!"../drivers/greybus/./greybus_trace.h", i32 374, i32 1}
!228 = !{ptr @event_gb_module_create, !121, !"event_gb_module_create", i1 false, i1 false}
!229 = !{ptr @__event_gb_module_create, !121, !"__event_gb_module_create", i1 false, i1 false}
!230 = !{ptr @event_gb_module_release, !125, !"event_gb_module_release", i1 false, i1 false}
!231 = !{ptr @__event_gb_module_release, !125, !"__event_gb_module_release", i1 false, i1 false}
!232 = !{ptr @event_gb_module_add, !129, !"event_gb_module_add", i1 false, i1 false}
!233 = !{ptr @__event_gb_module_add, !129, !"__event_gb_module_add", i1 false, i1 false}
!234 = !{ptr @event_gb_module_del, !133, !"event_gb_module_del", i1 false, i1 false}
!235 = !{ptr @__event_gb_module_del, !133, !"__event_gb_module_del", i1 false, i1 false}
!236 = !{ptr @event_class_gb_host_device, !237, !"event_class_gb_host_device", i1 false, i1 false}
!237 = !{!"../drivers/greybus/./greybus_trace.h", i32 429, i32 1}
!238 = !{ptr @event_gb_hd_create, !137, !"event_gb_hd_create", i1 false, i1 false}
!239 = !{ptr @__event_gb_hd_create, !137, !"__event_gb_hd_create", i1 false, i1 false}
!240 = !{ptr @event_gb_hd_release, !141, !"event_gb_hd_release", i1 false, i1 false}
!241 = !{ptr @__event_gb_hd_release, !141, !"__event_gb_hd_release", i1 false, i1 false}
!242 = !{ptr @event_gb_hd_add, !145, !"event_gb_hd_add", i1 false, i1 false}
!243 = !{ptr @__event_gb_hd_add, !145, !"__event_gb_hd_add", i1 false, i1 false}
!244 = !{ptr @event_gb_hd_del, !149, !"event_gb_hd_del", i1 false, i1 false}
!245 = !{ptr @__event_gb_hd_del, !149, !"__event_gb_hd_del", i1 false, i1 false}
!246 = !{ptr @event_gb_hd_in, !153, !"event_gb_hd_in", i1 false, i1 false}
!247 = !{ptr @__event_gb_hd_in, !153, !"__event_gb_hd_in", i1 false, i1 false}
!248 = !{ptr @__bpf_trace_tp_map_gb_message_send, !1, !"__bpf_trace_tp_map_gb_message_send", i1 false, i1 false}
!249 = !{ptr @__bpf_trace_tp_map_gb_message_recv_request, !5, !"__bpf_trace_tp_map_gb_message_recv_request", i1 false, i1 false}
!250 = !{ptr @__bpf_trace_tp_map_gb_message_recv_response, !9, !"__bpf_trace_tp_map_gb_message_recv_response", i1 false, i1 false}
!251 = !{ptr @__bpf_trace_tp_map_gb_message_cancel_outgoing, !13, !"__bpf_trace_tp_map_gb_message_cancel_outgoing", i1 false, i1 false}
!252 = !{ptr @__bpf_trace_tp_map_gb_message_cancel_incoming, !17, !"__bpf_trace_tp_map_gb_message_cancel_incoming", i1 false, i1 false}
!253 = !{ptr @__bpf_trace_tp_map_gb_message_submit, !21, !"__bpf_trace_tp_map_gb_message_submit", i1 false, i1 false}
!254 = !{ptr @__bpf_trace_tp_map_gb_operation_create, !25, !"__bpf_trace_tp_map_gb_operation_create", i1 false, i1 false}
!255 = !{ptr @__bpf_trace_tp_map_gb_operation_create_core, !29, !"__bpf_trace_tp_map_gb_operation_create_core", i1 false, i1 false}
!256 = !{ptr @__bpf_trace_tp_map_gb_operation_create_incoming, !33, !"__bpf_trace_tp_map_gb_operation_create_incoming", i1 false, i1 false}
!257 = !{ptr @__bpf_trace_tp_map_gb_operation_destroy, !37, !"__bpf_trace_tp_map_gb_operation_destroy", i1 false, i1 false}
!258 = !{ptr @__bpf_trace_tp_map_gb_operation_get_active, !41, !"__bpf_trace_tp_map_gb_operation_get_active", i1 false, i1 false}
!259 = !{ptr @__bpf_trace_tp_map_gb_operation_put_active, !45, !"__bpf_trace_tp_map_gb_operation_put_active", i1 false, i1 false}
!260 = !{ptr @__bpf_trace_tp_map_gb_connection_create, !49, !"__bpf_trace_tp_map_gb_connection_create", i1 false, i1 false}
!261 = !{ptr @__bpf_trace_tp_map_gb_connection_release, !53, !"__bpf_trace_tp_map_gb_connection_release", i1 false, i1 false}
!262 = !{ptr @__bpf_trace_tp_map_gb_connection_get, !57, !"__bpf_trace_tp_map_gb_connection_get", i1 false, i1 false}
!263 = !{ptr @__bpf_trace_tp_map_gb_connection_put, !61, !"__bpf_trace_tp_map_gb_connection_put", i1 false, i1 false}
!264 = !{ptr @__bpf_trace_tp_map_gb_connection_enable, !65, !"__bpf_trace_tp_map_gb_connection_enable", i1 false, i1 false}
!265 = !{ptr @__bpf_trace_tp_map_gb_connection_disable, !69, !"__bpf_trace_tp_map_gb_connection_disable", i1 false, i1 false}
!266 = !{ptr @__bpf_trace_tp_map_gb_bundle_create, !73, !"__bpf_trace_tp_map_gb_bundle_create", i1 false, i1 false}
!267 = !{ptr @__bpf_trace_tp_map_gb_bundle_release, !77, !"__bpf_trace_tp_map_gb_bundle_release", i1 false, i1 false}
!268 = !{ptr @__bpf_trace_tp_map_gb_bundle_add, !81, !"__bpf_trace_tp_map_gb_bundle_add", i1 false, i1 false}
!269 = !{ptr @__bpf_trace_tp_map_gb_bundle_destroy, !85, !"__bpf_trace_tp_map_gb_bundle_destroy", i1 false, i1 false}
!270 = !{ptr @__bpf_trace_tp_map_gb_interface_create, !89, !"__bpf_trace_tp_map_gb_interface_create", i1 false, i1 false}
!271 = !{ptr @__bpf_trace_tp_map_gb_interface_release, !93, !"__bpf_trace_tp_map_gb_interface_release", i1 false, i1 false}
!272 = !{ptr @__bpf_trace_tp_map_gb_interface_add, !97, !"__bpf_trace_tp_map_gb_interface_add", i1 false, i1 false}
!273 = !{ptr @__bpf_trace_tp_map_gb_interface_del, !101, !"__bpf_trace_tp_map_gb_interface_del", i1 false, i1 false}
!274 = !{ptr @__bpf_trace_tp_map_gb_interface_activate, !105, !"__bpf_trace_tp_map_gb_interface_activate", i1 false, i1 false}
!275 = !{ptr @__bpf_trace_tp_map_gb_interface_deactivate, !109, !"__bpf_trace_tp_map_gb_interface_deactivate", i1 false, i1 false}
!276 = !{ptr @__bpf_trace_tp_map_gb_interface_enable, !113, !"__bpf_trace_tp_map_gb_interface_enable", i1 false, i1 false}
!277 = !{ptr @__bpf_trace_tp_map_gb_interface_disable, !117, !"__bpf_trace_tp_map_gb_interface_disable", i1 false, i1 false}
!278 = !{ptr @__bpf_trace_tp_map_gb_module_create, !121, !"__bpf_trace_tp_map_gb_module_create", i1 false, i1 false}
!279 = !{ptr @__bpf_trace_tp_map_gb_module_release, !125, !"__bpf_trace_tp_map_gb_module_release", i1 false, i1 false}
!280 = !{ptr @__bpf_trace_tp_map_gb_module_add, !129, !"__bpf_trace_tp_map_gb_module_add", i1 false, i1 false}
!281 = !{ptr @__bpf_trace_tp_map_gb_module_del, !133, !"__bpf_trace_tp_map_gb_module_del", i1 false, i1 false}
!282 = !{ptr @__bpf_trace_tp_map_gb_hd_create, !137, !"__bpf_trace_tp_map_gb_hd_create", i1 false, i1 false}
!283 = !{ptr @__bpf_trace_tp_map_gb_hd_release, !141, !"__bpf_trace_tp_map_gb_hd_release", i1 false, i1 false}
!284 = !{ptr @__bpf_trace_tp_map_gb_hd_add, !145, !"__bpf_trace_tp_map_gb_hd_add", i1 false, i1 false}
!285 = !{ptr @__bpf_trace_tp_map_gb_hd_del, !149, !"__bpf_trace_tp_map_gb_hd_del", i1 false, i1 false}
!286 = !{ptr @__bpf_trace_tp_map_gb_hd_in, !153, !"__bpf_trace_tp_map_gb_hd_in", i1 false, i1 false}
!287 = !{ptr @__param_nogreybus, !288, !"__param_nogreybus", i1 false, i1 false}
!288 = !{!"../drivers/greybus/core.c", i32 22, i32 1}
!289 = !{ptr @__ksymtab_greybus_disabled, !290, !"__ksymtab_greybus_disabled", i1 false, i1 false}
!290 = !{!"../drivers/greybus/core.c", i32 28, i32 1}
!291 = !{ptr @.str, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/greybus/core.c", i32 159, i32 11}
!293 = !{ptr @greybus_bus_type, !294, !"greybus_bus_type", i1 false, i1 false}
!294 = !{!"../drivers/greybus/core.c", i32 158, i32 17}
!295 = !{ptr @.str.1, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/greybus/core.c", i32 287, i32 2}
!297 = !{ptr @.str.2, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.3, !296, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @greybus_register_driver._entry, !296, !"_entry", i1 false, i1 false}
!300 = !{ptr @greybus_register_driver._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @__ksymtab_greybus_register_driver, !302, !"__ksymtab_greybus_register_driver", i1 false, i1 false}
!302 = !{!"../drivers/greybus/core.c", i32 290, i32 1}
!303 = !{ptr @__ksymtab_greybus_deregister_driver, !304, !"__ksymtab_greybus_deregister_driver", i1 false, i1 false}
!304 = !{!"../drivers/greybus/core.c", i32 296, i32 1}
!305 = !{ptr @__initcall__kmod_greybus__450_337_gb_init6, !306, !"__initcall__kmod_greybus__450_337_gb_init6", i1 false, i1 false}
!306 = !{!"../drivers/greybus/core.c", i32 337, i32 1}
!307 = !{ptr @__exitcall_gb_exit, !308, !"__exitcall_gb_exit", i1 false, i1 false}
!308 = !{!"../drivers/greybus/core.c", i32 347, i32 1}
!309 = !{ptr @__UNIQUE_ID_file451, !310, !"__UNIQUE_ID_file451", i1 false, i1 false}
!310 = !{!"../drivers/greybus/core.c", i32 348, i32 1}
!311 = !{ptr @__UNIQUE_ID_license452, !310, !"__UNIQUE_ID_license452", i1 false, i1 false}
!312 = !{ptr @__UNIQUE_ID_author453, !313, !"__UNIQUE_ID_author453", i1 false, i1 false}
!313 = !{!"../drivers/greybus/core.c", i32 349, i32 1}
!314 = !{ptr @nogreybus, !315, !"nogreybus", i1 false, i1 false}
!315 = !{!"../drivers/greybus/core.c", i32 18, i32 13}
!316 = !{ptr @__tpstrtab_gb_message_send, !1, !"__tpstrtab_gb_message_send", i1 false, i1 false}
!317 = !{ptr @__tpstrtab_gb_message_recv_request, !5, !"__tpstrtab_gb_message_recv_request", i1 false, i1 false}
!318 = !{ptr @__tpstrtab_gb_message_recv_response, !9, !"__tpstrtab_gb_message_recv_response", i1 false, i1 false}
!319 = !{ptr @__tpstrtab_gb_message_cancel_outgoing, !13, !"__tpstrtab_gb_message_cancel_outgoing", i1 false, i1 false}
!320 = !{ptr @__tpstrtab_gb_message_cancel_incoming, !17, !"__tpstrtab_gb_message_cancel_incoming", i1 false, i1 false}
!321 = !{ptr @__tpstrtab_gb_message_submit, !21, !"__tpstrtab_gb_message_submit", i1 false, i1 false}
!322 = !{ptr @__tpstrtab_gb_operation_create, !25, !"__tpstrtab_gb_operation_create", i1 false, i1 false}
!323 = !{ptr @__tpstrtab_gb_operation_create_core, !29, !"__tpstrtab_gb_operation_create_core", i1 false, i1 false}
!324 = !{ptr @__tpstrtab_gb_operation_create_incoming, !33, !"__tpstrtab_gb_operation_create_incoming", i1 false, i1 false}
!325 = !{ptr @__tpstrtab_gb_operation_destroy, !37, !"__tpstrtab_gb_operation_destroy", i1 false, i1 false}
!326 = !{ptr @__tpstrtab_gb_operation_get_active, !41, !"__tpstrtab_gb_operation_get_active", i1 false, i1 false}
!327 = !{ptr @__tpstrtab_gb_operation_put_active, !45, !"__tpstrtab_gb_operation_put_active", i1 false, i1 false}
!328 = !{ptr @__tpstrtab_gb_connection_create, !49, !"__tpstrtab_gb_connection_create", i1 false, i1 false}
!329 = !{ptr @__tpstrtab_gb_connection_release, !53, !"__tpstrtab_gb_connection_release", i1 false, i1 false}
!330 = !{ptr @__tpstrtab_gb_connection_get, !57, !"__tpstrtab_gb_connection_get", i1 false, i1 false}
!331 = !{ptr @__tpstrtab_gb_connection_put, !61, !"__tpstrtab_gb_connection_put", i1 false, i1 false}
!332 = !{ptr @__tpstrtab_gb_connection_enable, !65, !"__tpstrtab_gb_connection_enable", i1 false, i1 false}
!333 = !{ptr @__tpstrtab_gb_connection_disable, !69, !"__tpstrtab_gb_connection_disable", i1 false, i1 false}
!334 = !{ptr @__tpstrtab_gb_bundle_create, !73, !"__tpstrtab_gb_bundle_create", i1 false, i1 false}
!335 = !{ptr @__tpstrtab_gb_bundle_release, !77, !"__tpstrtab_gb_bundle_release", i1 false, i1 false}
!336 = !{ptr @__tpstrtab_gb_bundle_add, !81, !"__tpstrtab_gb_bundle_add", i1 false, i1 false}
!337 = !{ptr @__tpstrtab_gb_bundle_destroy, !85, !"__tpstrtab_gb_bundle_destroy", i1 false, i1 false}
!338 = !{ptr @__tpstrtab_gb_interface_create, !89, !"__tpstrtab_gb_interface_create", i1 false, i1 false}
!339 = !{ptr @__tpstrtab_gb_interface_release, !93, !"__tpstrtab_gb_interface_release", i1 false, i1 false}
!340 = !{ptr @__tpstrtab_gb_interface_add, !97, !"__tpstrtab_gb_interface_add", i1 false, i1 false}
!341 = !{ptr @__tpstrtab_gb_interface_del, !101, !"__tpstrtab_gb_interface_del", i1 false, i1 false}
!342 = !{ptr @__tpstrtab_gb_interface_activate, !105, !"__tpstrtab_gb_interface_activate", i1 false, i1 false}
!343 = !{ptr @__tpstrtab_gb_interface_deactivate, !109, !"__tpstrtab_gb_interface_deactivate", i1 false, i1 false}
!344 = !{ptr @__tpstrtab_gb_interface_enable, !113, !"__tpstrtab_gb_interface_enable", i1 false, i1 false}
!345 = !{ptr @__tpstrtab_gb_interface_disable, !117, !"__tpstrtab_gb_interface_disable", i1 false, i1 false}
!346 = !{ptr @__tpstrtab_gb_module_create, !121, !"__tpstrtab_gb_module_create", i1 false, i1 false}
!347 = !{ptr @__tpstrtab_gb_module_release, !125, !"__tpstrtab_gb_module_release", i1 false, i1 false}
!348 = !{ptr @__tpstrtab_gb_module_add, !129, !"__tpstrtab_gb_module_add", i1 false, i1 false}
!349 = !{ptr @__tpstrtab_gb_module_del, !133, !"__tpstrtab_gb_module_del", i1 false, i1 false}
!350 = !{ptr @__tpstrtab_gb_hd_create, !137, !"__tpstrtab_gb_hd_create", i1 false, i1 false}
!351 = !{ptr @__tpstrtab_gb_hd_release, !141, !"__tpstrtab_gb_hd_release", i1 false, i1 false}
!352 = !{ptr @__tpstrtab_gb_hd_add, !145, !"__tpstrtab_gb_hd_add", i1 false, i1 false}
!353 = !{ptr @__tpstrtab_gb_hd_del, !149, !"__tpstrtab_gb_hd_del", i1 false, i1 false}
!354 = !{ptr @__tpstrtab_gb_hd_in, !153, !"__tpstrtab_gb_hd_in", i1 false, i1 false}
!355 = !{ptr @str__greybus__trace_system_name, !356, !"str__greybus__trace_system_name", i1 false, i1 false}
!356 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!357 = !{ptr @.str.4, !157, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.5, !157, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.6, !157, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.7, !157, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.8, !157, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.9, !157, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @trace_event_fields_gb_message, !157, !"trace_event_fields_gb_message", i1 false, i1 false}
!364 = !{ptr @trace_event_type_funcs_gb_message, !157, !"trace_event_type_funcs_gb_message", i1 false, i1 false}
!365 = !{ptr @.str.10, !157, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @print_fmt_gb_message, !157, !"print_fmt_gb_message", i1 false, i1 false}
!367 = !{ptr @.str.11, !171, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.12, !171, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.13, !171, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.14, !171, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.15, !171, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.16, !171, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.17, !171, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.18, !171, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @trace_event_fields_gb_operation, !171, !"trace_event_fields_gb_operation", i1 false, i1 false}
!376 = !{ptr @trace_event_type_funcs_gb_operation, !171, !"trace_event_type_funcs_gb_operation", i1 false, i1 false}
!377 = !{ptr @.str.19, !171, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @print_fmt_gb_operation, !171, !"print_fmt_gb_operation", i1 false, i1 false}
!379 = !{ptr @.str.20, !185, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.21, !185, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.22, !185, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.23, !185, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.24, !185, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.25, !185, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @trace_event_fields_gb_connection, !185, !"trace_event_fields_gb_connection", i1 false, i1 false}
!386 = !{ptr @trace_event_type_funcs_gb_connection, !185, !"trace_event_type_funcs_gb_connection", i1 false, i1 false}
!387 = !{ptr @.str.26, !185, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @print_fmt_gb_connection, !185, !"print_fmt_gb_connection", i1 false, i1 false}
!389 = !{ptr @.str.27, !199, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.28, !199, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.29, !199, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.30, !199, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @trace_event_fields_gb_bundle, !199, !"trace_event_fields_gb_bundle", i1 false, i1 false}
!394 = !{ptr @trace_event_type_funcs_gb_bundle, !199, !"trace_event_type_funcs_gb_bundle", i1 false, i1 false}
!395 = !{ptr @.str.31, !199, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @print_fmt_gb_bundle, !199, !"print_fmt_gb_bundle", i1 false, i1 false}
!397 = !{ptr @.str.32, !209, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.33, !209, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.34, !209, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.35, !209, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.36, !209, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.37, !209, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @trace_event_fields_gb_interface, !209, !"trace_event_fields_gb_interface", i1 false, i1 false}
!404 = !{ptr @trace_event_type_funcs_gb_interface, !209, !"trace_event_type_funcs_gb_interface", i1 false, i1 false}
!405 = !{ptr @.str.38, !209, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @print_fmt_gb_interface, !209, !"print_fmt_gb_interface", i1 false, i1 false}
!407 = !{ptr @.str.39, !227, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @trace_event_fields_gb_module, !227, !"trace_event_fields_gb_module", i1 false, i1 false}
!409 = !{ptr @trace_event_type_funcs_gb_module, !227, !"trace_event_type_funcs_gb_module", i1 false, i1 false}
!410 = !{ptr @.str.40, !227, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @print_fmt_gb_module, !227, !"print_fmt_gb_module", i1 false, i1 false}
!412 = !{ptr @.str.41, !237, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.42, !237, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @trace_event_fields_gb_host_device, !237, !"trace_event_fields_gb_host_device", i1 false, i1 false}
!415 = !{ptr @trace_event_type_funcs_gb_host_device, !237, !"trace_event_type_funcs_gb_host_device", i1 false, i1 false}
!416 = !{ptr @.str.43, !237, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @print_fmt_gb_host_device, !237, !"print_fmt_gb_host_device", i1 false, i1 false}
!418 = !{ptr @___asan_gen_.246, !288, !"__param_str_nogreybus", i1 false, i1 false}
!419 = !{ptr @.str.44, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/greybus/core.c", i32 113, i32 3}
!421 = !{ptr @.str.45, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/greybus/core.c", i32 117, i32 26}
!423 = !{ptr @.str.46, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/greybus/core.c", i32 121, i32 27}
!425 = !{ptr @.str.47, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/greybus/core.c", i32 126, i32 27}
!427 = !{ptr @.str.48, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/greybus/core.c", i32 128, i32 27}
!429 = !{ptr @.str.49, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/greybus/core.c", i32 139, i32 27}
!431 = !{ptr @.str.50, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/greybus/core.c", i32 141, i32 27}
!433 = !{ptr @.str.51, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/greybus/core.c", i32 234, i32 3}
!435 = !{ptr @.str.52, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.53, !434, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.54, !434, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @greybus_remove._entry, !434, !"_entry", i1 false, i1 false}
!439 = !{ptr @greybus_remove._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.55, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/greybus/core.c", i32 311, i32 3}
!442 = !{ptr @.str.56, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @gb_init._entry, !441, !"_entry", i1 false, i1 false}
!444 = !{ptr @gb_init._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.58, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/greybus/core.c", i32 317, i32 3}
!447 = !{ptr @gb_init._entry.57, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @gb_init._entry_ptr.59, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.61, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/greybus/core.c", i32 323, i32 3}
!451 = !{ptr @gb_init._entry.60, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @gb_init._entry_ptr.62, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{!"sp"}
!454 = !{i32 1, !"wchar_size", i32 2}
!455 = !{i32 1, !"min_enum_size", i32 4}
!456 = !{i32 8, !"branch-target-enforcement", i32 0}
!457 = !{i32 8, !"sign-return-address", i32 0}
!458 = !{i32 8, !"sign-return-address-all", i32 0}
!459 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!460 = !{i32 7, !"uwtable", i32 1}
!461 = !{i32 7, !"frame-pointer", i32 2}
!462 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!463 = !{!"branch_weights", i32 2000, i32 1}
!464 = !{!"branch_weights", i32 1, i32 2000}
!465 = !{!"auto-init"}
!466 = !{i8 0, i8 2}
!467 = !{i64 2148219631}
!468 = !{i64 704454, i64 704479, i64 704501, i64 704517, i64 704529, i64 704549, i64 704573, i64 704589, i64 704601}
!469 = !{i64 2148219819}
!470 = !{i64 2148220212, i64 2148220238, i64 2148220267, i64 2148220301, i64 2148220332, i64 2148220355}
